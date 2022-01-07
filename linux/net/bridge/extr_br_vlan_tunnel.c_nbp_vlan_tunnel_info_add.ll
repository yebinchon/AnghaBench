; ModuleID = '/home/carl/AnghaBench/linux/net/bridge/extr_br_vlan_tunnel.c_nbp_vlan_tunnel_info_add.c'
source_filename = "/home/carl/AnghaBench/linux/net/bridge/extr_br_vlan_tunnel.c_nbp_vlan_tunnel_info_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_bridge_port = type { i32 }
%struct.net_bridge_vlan_group = type { i32 }
%struct.net_bridge_vlan = type { i32 }

@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nbp_vlan_tunnel_info_add(%struct.net_bridge_port* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.net_bridge_port*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.net_bridge_vlan_group*, align 8
  %9 = alloca %struct.net_bridge_vlan*, align 8
  store %struct.net_bridge_port* %0, %struct.net_bridge_port** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %10 = call i32 (...) @ASSERT_RTNL()
  %11 = load %struct.net_bridge_port*, %struct.net_bridge_port** %5, align 8
  %12 = call %struct.net_bridge_vlan_group* @nbp_vlan_group(%struct.net_bridge_port* %11)
  store %struct.net_bridge_vlan_group* %12, %struct.net_bridge_vlan_group** %8, align 8
  %13 = load %struct.net_bridge_vlan_group*, %struct.net_bridge_vlan_group** %8, align 8
  %14 = load i32, i32* %6, align 4
  %15 = call %struct.net_bridge_vlan* @br_vlan_find(%struct.net_bridge_vlan_group* %13, i32 %14)
  store %struct.net_bridge_vlan* %15, %struct.net_bridge_vlan** %9, align 8
  %16 = load %struct.net_bridge_vlan*, %struct.net_bridge_vlan** %9, align 8
  %17 = icmp ne %struct.net_bridge_vlan* %16, null
  br i1 %17, label %21, label %18

18:                                               ; preds = %3
  %19 = load i32, i32* @EINVAL, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %4, align 4
  br label %26

21:                                               ; preds = %3
  %22 = load %struct.net_bridge_vlan_group*, %struct.net_bridge_vlan_group** %8, align 8
  %23 = load %struct.net_bridge_vlan*, %struct.net_bridge_vlan** %9, align 8
  %24 = load i32, i32* %7, align 4
  %25 = call i32 @__vlan_tunnel_info_add(%struct.net_bridge_vlan_group* %22, %struct.net_bridge_vlan* %23, i32 %24)
  store i32 %25, i32* %4, align 4
  br label %26

26:                                               ; preds = %21, %18
  %27 = load i32, i32* %4, align 4
  ret i32 %27
}

declare dso_local i32 @ASSERT_RTNL(...) #1

declare dso_local %struct.net_bridge_vlan_group* @nbp_vlan_group(%struct.net_bridge_port*) #1

declare dso_local %struct.net_bridge_vlan* @br_vlan_find(%struct.net_bridge_vlan_group*, i32) #1

declare dso_local i32 @__vlan_tunnel_info_add(%struct.net_bridge_vlan_group*, %struct.net_bridge_vlan*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
