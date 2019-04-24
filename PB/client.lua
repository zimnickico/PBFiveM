--------------------------------
------ PANIC BUTTON SCRIPT -----
--------- MADE BY CHRIS --------

blip = nil
blips = {}

-- Intial

Citizen.CreateThread(function()
    while true do
        Citizen.Wait(0)
        if IsControlPressed(1, 19) and IsControlJustPressed(1, 104) then

local location = GetStreetNameAtCoord(playerPos, streetName, crossingRoad)
local location2 = GetStreetNameFromHashKey(location)
print (playerPos)
print (location2)

local name = GetPlayerName(PlayerId())
Info()
Citizen.Wait(100)
Info2(location2)
PlaySound(-1, "5_Second_Timer", "DLC_HEISTS_GENERAL_FRONTEND_SOUNDS", 0);

 local name = GetPlayerName(PlayerId())
local ped = GetPlayerPed(-1)
local playerPos = GetEntityCoords(ped, true)
print (playerPos)

-- Blip

blip = AddBlipForCoord (playerPos)
SetBlipSprite(blip, 459)
SetBlipScale(blip, 1.5)
SetBlipColour(blip, 1)
 BeginTextCommandSetBlipName("STRING")
 AddTextComponentString('Panic Button by ' .. name)
 EndTextCommandSetBlipName(blip)
 table.insert(blips, blip)
     Wait(60000)
    for i, blip in pairs(blips) do
        RemoveBlip(blip)
    end

end
end
end)

-- Info

function Info(text)
    local txd = "CHAR_CALL911"

    SetNotificationTextEntry("STRING")
    SetNotificationFlashColor(6)
    SetNotificationBackgroundColor(6)
    AddTextComponentSubstringPlayerName('An officer has activated his Panic Button!')

    -- Set the notification icon, title and subtitle.
    local title = GetPlayerName(PlayerId())
    local subtitle = "Panic Button"
    local iconType = 0
    local flash = false
    SetNotificationMessage(txd, txd, flash, iconType, title, subtitle)
    DrawNotification(true, true)
end

function Info2(text)
	SetNotificationTextEntry("STRING")
	AddTextComponentSubstringPlayerName('Respond to ' .. text)
  SetNotificationFlashColor(6)
  SetNotificationBackgroundColor(6)
	DrawNotification(true, true)
end


--- YOU MAY MODIFY THE CODE ABOVE, ---
--- ALTHOUGH YOU MAY NOT REALESE IT ---
--- WITHOUT MY EXPLICIT PERMISSION ---
