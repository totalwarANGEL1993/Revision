-- |||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||| --
-- ||||                          LOKALES SKRIPT                          |||| --
-- ||||                    --------------------------                    |||| --
-- ||||                            QSB Testmap                           |||| --
-- ||||                           totalwarANGEL                          |||| --
-- |||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||| --

-- ========================================================================== --

function Mission_LocalOnMapStart()
end

function Mission_LocalVictory()
end

-- ========================================================================== --

-- -------------------------------------------------------------------------- --
-- Diese Funktion läd Skriptdateien bevor die Module initalisiert werden.
-- (der Pfad zur Map steht in der Variable gvMission.ContentPath)
--
-- Beispiel:
-- return {
--    gvMission.ContentPath .. "promotion.lua",
-- };
--
function Mission_LoadFiles()
    local MapPath = "maps/externalmap/demomap/";
    if false then
        MapPath = "E:/Repositories/revision/qsb/demo/QSB_3_Traderoutes/demomap.s6xmap.unpacked/" ..MapPath;
    end
    return {
        MapPath.. "script/qsb_1_guicontrol.lua",
        MapPath.. "script/qsb_1_trade.lua",
        MapPath.. "script/qsb_2_quest.lua",
        MapPath.. "script/qsb_3_traderoutes.lua",

        MapPath.. "script/localmapscript.lua",
    };
end

-- -------------------------------------------------------------------------- --
-- Diese Funktion wird nach Spielstart aufgerufen.
--
function Mission_LocalOnQsbLoaded()
    StartScript();
end

