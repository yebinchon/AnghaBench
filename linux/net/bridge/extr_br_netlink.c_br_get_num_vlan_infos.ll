; ModuleID = '/home/carl/AnghaBench/linux/net/bridge/extr_br_netlink.c_br_get_num_vlan_infos.c'
source_filename = "/home/carl/AnghaBench/linux/net/bridge/extr_br_netlink.c_br_get_num_vlan_infos.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_bridge_vlan_group = type { i32 }

@RTEXT_FILTER_BRVLAN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_bridge_vlan_group*, i32)* @br_get_num_vlan_infos to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @br_get_num_vlan_infos(%struct.net_bridge_vlan_group* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.net_bridge_vlan_group*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.net_bridge_vlan_group* %0, %struct.net_bridge_vlan_group** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.net_bridge_vlan_group*, %struct.net_bridge_vlan_group** %4, align 8
  %8 = icmp ne %struct.net_bridge_vlan_group* %7, null
  br i1 %8, label %10, label %9

9:                                                ; preds = %2
  store i32 0, i32* %3, align 4
  br label %26

10:                                               ; preds = %2
  %11 = load i32, i32* %5, align 4
  %12 = load i32, i32* @RTEXT_FILTER_BRVLAN, align 4
  %13 = and i32 %11, %12
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %19

15:                                               ; preds = %10
  %16 = load %struct.net_bridge_vlan_group*, %struct.net_bridge_vlan_group** %4, align 8
  %17 = getelementptr inbounds %struct.net_bridge_vlan_group, %struct.net_bridge_vlan_group* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  store i32 %18, i32* %3, align 4
  br label %26

19:                                               ; preds = %10
  %20 = call i32 (...) @rcu_read_lock()
  %21 = load %struct.net_bridge_vlan_group*, %struct.net_bridge_vlan_group** %4, align 8
  %22 = load i32, i32* %5, align 4
  %23 = call i32 @__get_num_vlan_infos(%struct.net_bridge_vlan_group* %21, i32 %22)
  store i32 %23, i32* %6, align 4
  %24 = call i32 (...) @rcu_read_unlock()
  %25 = load i32, i32* %6, align 4
  store i32 %25, i32* %3, align 4
  br label %26

26:                                               ; preds = %19, %15, %9
  %27 = load i32, i32* %3, align 4
  ret i32 %27
}

declare dso_local i32 @rcu_read_lock(...) #1

declare dso_local i32 @__get_num_vlan_infos(%struct.net_bridge_vlan_group*, i32) #1

declare dso_local i32 @rcu_read_unlock(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
