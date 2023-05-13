workspace "Breakfast"
    configurations { "Debug", "Release" }
    architecture "amd64"

    location ("../../temp/solutions/" .. _ACTION)

project "Engine"
    kind "ConsoleApp"
    language "C++"

    targetdir ("../../temp/bin" .. _ACTION)
    objdir ("../../temp/obj" .. _ACTION)
    location ("../../temp/solutions/" .. _ACTION .. "/Engine")

    files { "../../src/Engine/**.h", "../../src/Engine/**.cpp" }

    filter { "configurations:Debug" }
        defines { "DEBUG" }
        symbols "On"

    filter { "configurations:Release" }
        optimize "On"

project "Editor"
    kind "ConsoleApp"
    language "C++"

    targetdir "../../temp/bin"
    objdir "../../temp/obj"
    location ("../../temp/solutions/" .. _ACTION .. "/Editor")

    files { "../../src/Editor/**.h", "../../src/Editor/**.cpp" }

    filter { "configurations:Debug" }
        defines { "DEBUG" }
        symbols "On"

    filter { "configurations:Release" }
        optimize "On"
