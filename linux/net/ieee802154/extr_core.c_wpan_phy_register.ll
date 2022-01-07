; ModuleID = '/home/carl/AnghaBench/linux/net/ieee802154/extr_core.c_wpan_phy_register.c'
source_filename = "/home/carl/AnghaBench/linux/net/ieee802154/extr_core.c_wpan_phy_register.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wpan_phy = type { i32 }
%struct.cfg802154_registered_device = type { i32 }

@cfg802154_rdev_list = common dso_local global i32 0, align 4
@cfg802154_rdev_list_generation = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @wpan_phy_register(%struct.wpan_phy* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.wpan_phy*, align 8
  %4 = alloca %struct.cfg802154_registered_device*, align 8
  %5 = alloca i32, align 4
  store %struct.wpan_phy* %0, %struct.wpan_phy** %3, align 8
  %6 = load %struct.wpan_phy*, %struct.wpan_phy** %3, align 8
  %7 = call %struct.cfg802154_registered_device* @wpan_phy_to_rdev(%struct.wpan_phy* %6)
  store %struct.cfg802154_registered_device* %7, %struct.cfg802154_registered_device** %4, align 8
  %8 = call i32 (...) @rtnl_lock()
  %9 = load %struct.wpan_phy*, %struct.wpan_phy** %3, align 8
  %10 = getelementptr inbounds %struct.wpan_phy, %struct.wpan_phy* %9, i32 0, i32 0
  %11 = call i32 @device_add(i32* %10)
  store i32 %11, i32* %5, align 4
  %12 = load i32, i32* %5, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %17

14:                                               ; preds = %1
  %15 = call i32 (...) @rtnl_unlock()
  %16 = load i32, i32* %5, align 4
  store i32 %16, i32* %2, align 4
  br label %24

17:                                               ; preds = %1
  %18 = load %struct.cfg802154_registered_device*, %struct.cfg802154_registered_device** %4, align 8
  %19 = getelementptr inbounds %struct.cfg802154_registered_device, %struct.cfg802154_registered_device* %18, i32 0, i32 0
  %20 = call i32 @list_add_rcu(i32* %19, i32* @cfg802154_rdev_list)
  %21 = load i32, i32* @cfg802154_rdev_list_generation, align 4
  %22 = add nsw i32 %21, 1
  store i32 %22, i32* @cfg802154_rdev_list_generation, align 4
  %23 = call i32 (...) @rtnl_unlock()
  store i32 0, i32* %2, align 4
  br label %24

24:                                               ; preds = %17, %14
  %25 = load i32, i32* %2, align 4
  ret i32 %25
}

declare dso_local %struct.cfg802154_registered_device* @wpan_phy_to_rdev(%struct.wpan_phy*) #1

declare dso_local i32 @rtnl_lock(...) #1

declare dso_local i32 @device_add(i32*) #1

declare dso_local i32 @rtnl_unlock(...) #1

declare dso_local i32 @list_add_rcu(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
