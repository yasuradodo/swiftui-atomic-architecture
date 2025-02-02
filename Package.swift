// swift-tools-version:5.6

import PackageDescription

let package = Package(
    name: "swiftui-atomic-architecture",
    platforms: [
        .iOS(.v14),
        .macOS(.v11),
        .tvOS(.v14),
        .watchOS(.v7),
    ],
    products: [
        .library(name: "Atoms", targets: ["Atoms"])
    ],
    targets: [
        .target(
            name: "Atoms",
            swiftSettings: [
                .unsafeFlags([
                    "-Xfrontend",
                    "-enable-actor-data-race-checks",
                ])
            ]
        ),
        .testTarget(
            name: "AtomsTests",
            dependencies: [
                "Atoms"
            ]
        ),
    ],
    swiftLanguageVersions: [.v5]
)
