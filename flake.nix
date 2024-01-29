{
    inputs = {
        pnpm2nix.url = "github:nzbr/pnpm2nix-nzbr";
    };

    outputs = {
        pnpm2nix,
        ...
    }: {
        packages.x86_64-linux.default = pnpm2nix.packages.x86_64-linux.mkPnpmPackage {
            src = ./.;
            # copyNodeModules = true; # This fix the issue
        };
    };
}

