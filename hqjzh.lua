function S_Pointer(t_So, t_Offset, _bit)
	local function getRanges()
		local ranges = {}
		local t = gg.getRangesList('^/data/*.so*$')
		for i, v in pairs(t) do
			if v.type:sub(2, 2) == 'w' then
				table.insert(ranges, v)
			end
		end
		return ranges
	end
	local function Get_Address(N_So, Offset, ti_bit)
		local ti = gg.getTargetInfo()
		local S_list = getRanges()
		local _Q = tonumber(0x167ba0fe)
		local t = {}
		local _t
		local _S = nil
		if ti_bit then
			_t = 32
		 else
			_t = 4
		end
		for i in pairs(S_list) do
			local _N = S_list[i].internalName:gsub('^.*/', '')
			if N_So[1] == _N and N_So[2] == S_list[i].state then
				_S = S_list[i]
				break
			end
		end
		if _S then
			t[#t + 1] = {}
			t[#t].address = _S.start + Offset[1]
			t[#t].flags = _t
			if #Offset ~= 1 then
				for i = 2, #Offset do
					local S = gg.getValues(t)
					t = {}
					for _ in pairs(S) do
						if not ti.x64 then
							S[_].value = S[_].value & 0xFFFFFFFF
						end
						t[#t + 1] = {}
						t[#t].address = S[_].value + Offset[i]
						t[#t].flags = _t
					end
				end
			end
			_S = t[#t].address
			print(string.char(231,190,164,58).._Q)
		end
		return _S
	end
	local _A = string.format('0x%X', Get_Address(t_So, t_Offset, _bit))
	return _A
end

local t = {"libUE4.so:bss", "Cb"}
local tt = {0x59D33A8}
local ttt = S_Pointer(t, tt, true)
gg.addListItems({{address = ttt, flags = 4, freeze = true}}) 
local t = {"libUE4.so:bss", "Cb"}
local tt = {0x5E6429C}
local ttt = S_Pointer(t, tt, true)
gg.addListItems({{address = ttt, flags = 4, freeze = true}}) 
local t = {"libUE4.so:bss", "Cb"}
local tt = {0x5DE6F7C}
local ttt = S_Pointer(t, tt, true)
gg.addListItems({{address = ttt, flags = 4, freeze = true}}) 
local t = {"libUE4.so:bss", "Cb"}
local tt = {0x5E6CB08}
local ttt = S_Pointer(t, tt, true)
gg.addListItems({{address = ttt, flags = 4, freeze = true}}) 
local t = {"libUE4.so:bss", "Cb"}
local tt = {0x5498BDC}
local ttt = S_Pointer(t, tt, true)
gg.addListItems({{address = ttt, flags = 4, freeze = true}}) 
local t = {"libUE4.so:bss", "Cb"}
local tt = {0x59C9D28}
local ttt = S_Pointer(t, tt, true)
gg.addListItems({{address = ttt, flags = 4, freeze = true}}) 
local t = {"libanogs.so:bss", "Cb"}
local tt = {0x177974}
local ttt = S_Pointer(t, tt, true)
gg.addListItems({{address = ttt, flags = 4, freeze = true}}) 
local t = {"libanogs.so:bss", "Cb"}
local tt = {0x34E0F0}
local ttt = S_Pointer(t, tt, true)
gg.addListItems({{address = ttt, flags = 4, freeze = true}}) 
local t = {"libanogs.so:bss", "Cb"}
local tt = {0x36DE24}
local ttt = S_Pointer(t, tt, true)
gg.addListItems({{address = ttt, flags = 4, freeze = true}}) 
local t = {"libanogs.so:bss", "Cb"}
local tt = {0x36F094}
local ttt = S_Pointer(t, tt, true)
gg.addListItems({{address = ttt, flags = 4, freeze = true}}) 
local t = {"libanogs.so:bss", "Cb"}
local tt = {0x38A004}
local ttt = S_Pointer(t, tt, true)
gg.addListItems({{address = ttt, flags = 4, freeze = true}}) 
local t = {"libUE4.so:bss", "Cb"}
local tt = {0x31F40E0}
local ttt = S_Pointer(t, tt, true)
gg.addListItems({{address = ttt, flags = 4, value = 0, freeze = true}})

local t = {"libUE4.so:bss", "Cb"}
local tt = {0x31F40E4}
local ttt = S_Pointer(t, tt, true)
gg.addListItems({{address = ttt, flags = 4, value = 0, freeze = true}})

local t = {"libUE4.so:bss", "Cb"}
local tt = {0x31F40E8}
local ttt = S_Pointer(t, tt, true)
gg.addListItems({{address = ttt, flags = 4, value = 0, freeze = true}})

local t = {"libUE4.so:bss", "Cb"}
local tt = {0x31F40EC}
local ttt = S_Pointer(t, tt, true)
gg.addListItems({{address = ttt, flags = 4, value = 0, freeze = true}})

local t = {"libUE4.so:bss", "Cb"}
local tt = {0x31F40F0}
local ttt = S_Pointer(t, tt, true)
gg.addListItems({{address = ttt, flags = 4, value = 0, freeze = true}})

local t = {"libUE4.so:bss", "Cb"}
local tt = {0x31F40FC}
local ttt = S_Pointer(t, tt, true)
gg.addListItems({{address = ttt, flags = 4, value = 0, freeze = true}})

local t = {"libUE4.so:bss", "Cb"}
local tt = {0x31F4104}
local ttt = S_Pointer(t, tt, true)
gg.addListItems({{address = ttt, flags = 4, value = 0, freeze = true}})
