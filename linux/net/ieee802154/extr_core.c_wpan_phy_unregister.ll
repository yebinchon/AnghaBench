; ModuleID = '/home/carl/AnghaBench/linux/net/ieee802154/extr_core.c_wpan_phy_unregister.c'
source_filename = "/home/carl/AnghaBench/linux/net/ieee802154/extr_core.c_wpan_phy_unregister.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wpan_phy = type { i32 }
%struct.cfg802154_registered_device = type { i32, i32, i32, i32 }

@cfg802154_rdev_list_generation = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @wpan_phy_unregister(%struct.wpan_phy* %0) #0 {
  %2 = alloca %struct.wpan_phy*, align 8
  %3 = alloca %struct.cfg802154_registered_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.wpan_phy* %0, %struct.wpan_phy** %2, align 8
  %6 = load %struct.wpan_phy*, %struct.wpan_phy** %2, align 8
  %7 = call %struct.cfg802154_registered_device* @wpan_phy_to_rdev(%struct.wpan_phy* %6)
  store %struct.cfg802154_registered_device* %7, %struct.cfg802154_registered_device** %3, align 8
  %8 = load %struct.cfg802154_registered_device*, %struct.cfg802154_registered_device** %3, align 8
  %9 = getelementptr inbounds %struct.cfg802154_registered_device, %struct.cfg802154_registered_device* %8, i32 0, i32 3
  %10 = load i32, i32* %9, align 4
  %11 = call i32 (...) @rtnl_lock()
  %12 = load %struct.cfg802154_registered_device*, %struct.cfg802154_registered_device** %3, align 8
  %13 = getelementptr inbounds %struct.cfg802154_registered_device, %struct.cfg802154_registered_device* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  store i32 %14, i32* %4, align 4
  %15 = call i32 (...) @rtnl_unlock()
  %16 = load i32, i32* %4, align 4
  %17 = icmp eq i32 %16, 0
  %18 = zext i1 %17 to i32
  store i32 %18, i32* %5, align 4
  %19 = load i32, i32* %5, align 4
  %20 = call i32 @wait_event(i32 %10, i32 %19)
  %21 = call i32 (...) @rtnl_lock()
  %22 = load %struct.cfg802154_registered_device*, %struct.cfg802154_registered_device** %3, align 8
  %23 = getelementptr inbounds %struct.cfg802154_registered_device, %struct.cfg802154_registered_device* %22, i32 0, i32 2
  %24 = call i32 @list_empty(i32* %23)
  %25 = icmp ne i32 %24, 0
  %26 = xor i1 %25, true
  %27 = zext i1 %26 to i32
  %28 = call i32 @WARN_ON(i32 %27)
  %29 = load %struct.cfg802154_registered_device*, %struct.cfg802154_registered_device** %3, align 8
  %30 = getelementptr inbounds %struct.cfg802154_registered_device, %struct.cfg802154_registered_device* %29, i32 0, i32 1
  %31 = call i32 @list_del_rcu(i32* %30)
  %32 = call i32 (...) @synchronize_rcu()
  %33 = load i32, i32* @cfg802154_rdev_list_generation, align 4
  %34 = add nsw i32 %33, 1
  store i32 %34, i32* @cfg802154_rdev_list_generation, align 4
  %35 = load %struct.wpan_phy*, %struct.wpan_phy** %2, align 8
  %36 = getelementptr inbounds %struct.wpan_phy, %struct.wpan_phy* %35, i32 0, i32 0
  %37 = call i32 @device_del(i32* %36)
  %38 = call i32 (...) @rtnl_unlock()
  ret void
}

declare dso_local %struct.cfg802154_registered_device* @wpan_phy_to_rdev(%struct.wpan_phy*) #1

declare dso_local i32 @wait_event(i32, i32) #1

declare dso_local i32 @rtnl_lock(...) #1

declare dso_local i32 @rtnl_unlock(...) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @list_empty(i32*) #1

declare dso_local i32 @list_del_rcu(i32*) #1

declare dso_local i32 @synchronize_rcu(...) #1

declare dso_local i32 @device_del(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
