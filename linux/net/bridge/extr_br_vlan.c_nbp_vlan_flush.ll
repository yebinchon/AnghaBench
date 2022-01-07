; ModuleID = '/home/carl/AnghaBench/linux/net/bridge/extr_br_vlan.c_nbp_vlan_flush.c'
source_filename = "/home/carl/AnghaBench/linux/net/bridge/extr_br_vlan.c_nbp_vlan_flush.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_bridge_port = type { i32 }
%struct.net_bridge_vlan_group = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @nbp_vlan_flush(%struct.net_bridge_port* %0) #0 {
  %2 = alloca %struct.net_bridge_port*, align 8
  %3 = alloca %struct.net_bridge_vlan_group*, align 8
  store %struct.net_bridge_port* %0, %struct.net_bridge_port** %2, align 8
  %4 = call i32 (...) @ASSERT_RTNL()
  %5 = load %struct.net_bridge_port*, %struct.net_bridge_port** %2, align 8
  %6 = call %struct.net_bridge_vlan_group* @nbp_vlan_group(%struct.net_bridge_port* %5)
  store %struct.net_bridge_vlan_group* %6, %struct.net_bridge_vlan_group** %3, align 8
  %7 = load %struct.net_bridge_vlan_group*, %struct.net_bridge_vlan_group** %3, align 8
  %8 = call i32 @__vlan_flush(%struct.net_bridge_vlan_group* %7)
  %9 = load %struct.net_bridge_port*, %struct.net_bridge_port** %2, align 8
  %10 = getelementptr inbounds %struct.net_bridge_port, %struct.net_bridge_port* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = call i32 @RCU_INIT_POINTER(i32 %11, i32* null)
  %13 = call i32 (...) @synchronize_rcu()
  %14 = load %struct.net_bridge_vlan_group*, %struct.net_bridge_vlan_group** %3, align 8
  %15 = call i32 @__vlan_group_free(%struct.net_bridge_vlan_group* %14)
  ret void
}

declare dso_local i32 @ASSERT_RTNL(...) #1

declare dso_local %struct.net_bridge_vlan_group* @nbp_vlan_group(%struct.net_bridge_port*) #1

declare dso_local i32 @__vlan_flush(%struct.net_bridge_vlan_group*) #1

declare dso_local i32 @RCU_INIT_POINTER(i32, i32*) #1

declare dso_local i32 @synchronize_rcu(...) #1

declare dso_local i32 @__vlan_group_free(%struct.net_bridge_vlan_group*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
