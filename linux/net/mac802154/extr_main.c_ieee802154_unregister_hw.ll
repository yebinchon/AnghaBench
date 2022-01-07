; ModuleID = '/home/carl/AnghaBench/linux/net/mac802154/extr_main.c_ieee802154_unregister_hw.c'
source_filename = "/home/carl/AnghaBench/linux/net/mac802154/extr_main.c_ieee802154_unregister_hw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee802154_hw = type { i32 }
%struct.ieee802154_local = type { i32, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ieee802154_unregister_hw(%struct.ieee802154_hw* %0) #0 {
  %2 = alloca %struct.ieee802154_hw*, align 8
  %3 = alloca %struct.ieee802154_local*, align 8
  store %struct.ieee802154_hw* %0, %struct.ieee802154_hw** %2, align 8
  %4 = load %struct.ieee802154_hw*, %struct.ieee802154_hw** %2, align 8
  %5 = call %struct.ieee802154_local* @hw_to_local(%struct.ieee802154_hw* %4)
  store %struct.ieee802154_local* %5, %struct.ieee802154_local** %3, align 8
  %6 = load %struct.ieee802154_local*, %struct.ieee802154_local** %3, align 8
  %7 = getelementptr inbounds %struct.ieee802154_local, %struct.ieee802154_local* %6, i32 0, i32 2
  %8 = call i32 @tasklet_kill(i32* %7)
  %9 = load %struct.ieee802154_local*, %struct.ieee802154_local** %3, align 8
  %10 = getelementptr inbounds %struct.ieee802154_local, %struct.ieee802154_local* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 4
  %12 = call i32 @flush_workqueue(i32 %11)
  %13 = call i32 (...) @rtnl_lock()
  %14 = load %struct.ieee802154_local*, %struct.ieee802154_local** %3, align 8
  %15 = call i32 @ieee802154_remove_interfaces(%struct.ieee802154_local* %14)
  %16 = call i32 (...) @rtnl_unlock()
  %17 = load %struct.ieee802154_local*, %struct.ieee802154_local** %3, align 8
  %18 = getelementptr inbounds %struct.ieee802154_local, %struct.ieee802154_local* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @destroy_workqueue(i32 %19)
  %21 = load %struct.ieee802154_local*, %struct.ieee802154_local** %3, align 8
  %22 = getelementptr inbounds %struct.ieee802154_local, %struct.ieee802154_local* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @wpan_phy_unregister(i32 %23)
  ret void
}

declare dso_local %struct.ieee802154_local* @hw_to_local(%struct.ieee802154_hw*) #1

declare dso_local i32 @tasklet_kill(i32*) #1

declare dso_local i32 @flush_workqueue(i32) #1

declare dso_local i32 @rtnl_lock(...) #1

declare dso_local i32 @ieee802154_remove_interfaces(%struct.ieee802154_local*) #1

declare dso_local i32 @rtnl_unlock(...) #1

declare dso_local i32 @destroy_workqueue(i32) #1

declare dso_local i32 @wpan_phy_unregister(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
