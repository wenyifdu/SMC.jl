using Pkg
Pkg.add("Documenter")
Pkg.add("Distributions")
Pkg.add("ModelConstructors")
using Documenter, ModelConstructors, SMC, Distributions

makedocs(modules = [SMC],
         clean = false,
         format = Documenter.HTML(),
         sitename = "SMC.jl",
         authors = "FRBNY-DSGE",
         linkcheck = false,
         strict = false,
         pages = Any[
                     "Home"                                   => "index.md",
                     "Using SMC"                              => "smc.md",
                     "Helper Functions"                       => "helpers.md",
                     "License"                                => "license.md"
         ],
         doctest = false # for now
)

deploydocs(
    repo = "github.com/FRBNY-DSGE/SMC.jl.git",
    target = "build",
    deps = nothing,
    devbranch = "main",
    branch = "gh-pages",
    make = nothing
)
