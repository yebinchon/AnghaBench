; ModuleID = '/home/carl/AnghaBench/linux/net/ieee802154/extr_core.c_wpan_phy_idx_to_wpan_phy.c'
source_filename = "/home/carl/AnghaBench/linux/net/ieee802154/extr_core.c_wpan_phy_idx_to_wpan_phy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wpan_phy = type { i32 }
%struct.cfg802154_registered_device = type { %struct.wpan_phy }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.wpan_phy* @wpan_phy_idx_to_wpan_phy(i32 %0) #0 {
  %2 = alloca %struct.wpan_phy*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.cfg802154_registered_device*, align 8
  store i32 %0, i32* %3, align 4
  %5 = call i32 (...) @ASSERT_RTNL()
  %6 = load i32, i32* %3, align 4
  %7 = call %struct.cfg802154_registered_device* @cfg802154_rdev_by_wpan_phy_idx(i32 %6)
  store %struct.cfg802154_registered_device* %7, %struct.cfg802154_registered_device** %4, align 8
  %8 = load %struct.cfg802154_registered_device*, %struct.cfg802154_registered_device** %4, align 8
  %9 = icmp ne %struct.cfg802154_registered_device* %8, null
  br i1 %9, label %11, label %10

10:                                               ; preds = %1
  store %struct.wpan_phy* null, %struct.wpan_phy** %2, align 8
  br label %14

11:                                               ; preds = %1
  %12 = load %struct.cfg802154_registered_device*, %struct.cfg802154_registered_device** %4, align 8
  %13 = getelementptr inbounds %struct.cfg802154_registered_device, %struct.cfg802154_registered_device* %12, i32 0, i32 0
  store %struct.wpan_phy* %13, %struct.wpan_phy** %2, align 8
  br label %14

14:                                               ; preds = %11, %10
  %15 = load %struct.wpan_phy*, %struct.wpan_phy** %2, align 8
  ret %struct.wpan_phy* %15
}

declare dso_local i32 @ASSERT_RTNL(...) #1

declare dso_local %struct.cfg802154_registered_device* @cfg802154_rdev_by_wpan_phy_idx(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
