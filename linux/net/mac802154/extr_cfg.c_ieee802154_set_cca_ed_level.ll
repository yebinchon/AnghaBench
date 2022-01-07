; ModuleID = '/home/carl/AnghaBench/linux/net/mac802154/extr_cfg.c_ieee802154_set_cca_ed_level.c'
source_filename = "/home/carl/AnghaBench/linux/net/mac802154/extr_cfg.c_ieee802154_set_cca_ed_level.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wpan_phy = type { i32 }
%struct.ieee802154_local = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.wpan_phy*, i32)* @ieee802154_set_cca_ed_level to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ieee802154_set_cca_ed_level(%struct.wpan_phy* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.wpan_phy*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.ieee802154_local*, align 8
  %7 = alloca i32, align 4
  store %struct.wpan_phy* %0, %struct.wpan_phy** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.wpan_phy*, %struct.wpan_phy** %4, align 8
  %9 = call %struct.ieee802154_local* @wpan_phy_priv(%struct.wpan_phy* %8)
  store %struct.ieee802154_local* %9, %struct.ieee802154_local** %6, align 8
  %10 = call i32 (...) @ASSERT_RTNL()
  %11 = load %struct.wpan_phy*, %struct.wpan_phy** %4, align 8
  %12 = getelementptr inbounds %struct.wpan_phy, %struct.wpan_phy* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = load i32, i32* %5, align 4
  %15 = icmp eq i32 %13, %14
  br i1 %15, label %16, label %17

16:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %29

17:                                               ; preds = %2
  %18 = load %struct.ieee802154_local*, %struct.ieee802154_local** %6, align 8
  %19 = load i32, i32* %5, align 4
  %20 = call i32 @drv_set_cca_ed_level(%struct.ieee802154_local* %18, i32 %19)
  store i32 %20, i32* %7, align 4
  %21 = load i32, i32* %7, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %27, label %23

23:                                               ; preds = %17
  %24 = load i32, i32* %5, align 4
  %25 = load %struct.wpan_phy*, %struct.wpan_phy** %4, align 8
  %26 = getelementptr inbounds %struct.wpan_phy, %struct.wpan_phy* %25, i32 0, i32 0
  store i32 %24, i32* %26, align 4
  br label %27

27:                                               ; preds = %23, %17
  %28 = load i32, i32* %7, align 4
  store i32 %28, i32* %3, align 4
  br label %29

29:                                               ; preds = %27, %16
  %30 = load i32, i32* %3, align 4
  ret i32 %30
}

declare dso_local %struct.ieee802154_local* @wpan_phy_priv(%struct.wpan_phy*) #1

declare dso_local i32 @ASSERT_RTNL(...) #1

declare dso_local i32 @drv_set_cca_ed_level(%struct.ieee802154_local*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
