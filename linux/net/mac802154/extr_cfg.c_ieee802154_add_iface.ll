; ModuleID = '/home/carl/AnghaBench/linux/net/mac802154/extr_cfg.c_ieee802154_add_iface.c'
source_filename = "/home/carl/AnghaBench/linux/net/mac802154/extr_cfg.c_ieee802154_add_iface.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wpan_phy = type { i32 }
%struct.ieee802154_local = type { i32 }
%struct.net_device = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.wpan_phy*, i8*, i8, i32, i32)* @ieee802154_add_iface to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ieee802154_add_iface(%struct.wpan_phy* %0, i8* %1, i8 zeroext %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.wpan_phy*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8, align 1
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.ieee802154_local*, align 8
  %12 = alloca %struct.net_device*, align 8
  store %struct.wpan_phy* %0, %struct.wpan_phy** %6, align 8
  store i8* %1, i8** %7, align 8
  store i8 %2, i8* %8, align 1
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %13 = load %struct.wpan_phy*, %struct.wpan_phy** %6, align 8
  %14 = call %struct.ieee802154_local* @wpan_phy_priv(%struct.wpan_phy* %13)
  store %struct.ieee802154_local* %14, %struct.ieee802154_local** %11, align 8
  %15 = load %struct.ieee802154_local*, %struct.ieee802154_local** %11, align 8
  %16 = load i8*, i8** %7, align 8
  %17 = load i8, i8* %8, align 1
  %18 = load i32, i32* %9, align 4
  %19 = load i32, i32* %10, align 4
  %20 = call %struct.net_device* @ieee802154_if_add(%struct.ieee802154_local* %15, i8* %16, i8 zeroext %17, i32 %18, i32 %19)
  store %struct.net_device* %20, %struct.net_device** %12, align 8
  %21 = load %struct.net_device*, %struct.net_device** %12, align 8
  %22 = call i32 @PTR_ERR_OR_ZERO(%struct.net_device* %21)
  ret i32 %22
}

declare dso_local %struct.ieee802154_local* @wpan_phy_priv(%struct.wpan_phy*) #1

declare dso_local %struct.net_device* @ieee802154_if_add(%struct.ieee802154_local*, i8*, i8 zeroext, i32, i32) #1

declare dso_local i32 @PTR_ERR_OR_ZERO(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
