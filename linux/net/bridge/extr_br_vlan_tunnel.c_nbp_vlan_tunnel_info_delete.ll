; ModuleID = '/home/carl/AnghaBench/linux/net/bridge/extr_br_vlan_tunnel.c_nbp_vlan_tunnel_info_delete.c'
source_filename = "/home/carl/AnghaBench/linux/net/bridge/extr_br_vlan_tunnel.c_nbp_vlan_tunnel_info_delete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_bridge_port = type { i32 }
%struct.net_bridge_vlan_group = type { i32 }
%struct.net_bridge_vlan = type { i32 }

@ENOENT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nbp_vlan_tunnel_info_delete(%struct.net_bridge_port* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.net_bridge_port*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.net_bridge_vlan_group*, align 8
  %7 = alloca %struct.net_bridge_vlan*, align 8
  store %struct.net_bridge_port* %0, %struct.net_bridge_port** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = call i32 (...) @ASSERT_RTNL()
  %9 = load %struct.net_bridge_port*, %struct.net_bridge_port** %4, align 8
  %10 = call %struct.net_bridge_vlan_group* @nbp_vlan_group(%struct.net_bridge_port* %9)
  store %struct.net_bridge_vlan_group* %10, %struct.net_bridge_vlan_group** %6, align 8
  %11 = load %struct.net_bridge_vlan_group*, %struct.net_bridge_vlan_group** %6, align 8
  %12 = load i32, i32* %5, align 4
  %13 = call %struct.net_bridge_vlan* @br_vlan_find(%struct.net_bridge_vlan_group* %11, i32 %12)
  store %struct.net_bridge_vlan* %13, %struct.net_bridge_vlan** %7, align 8
  %14 = load %struct.net_bridge_vlan*, %struct.net_bridge_vlan** %7, align 8
  %15 = icmp ne %struct.net_bridge_vlan* %14, null
  br i1 %15, label %19, label %16

16:                                               ; preds = %2
  %17 = load i32, i32* @ENOENT, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %3, align 4
  br label %23

19:                                               ; preds = %2
  %20 = load %struct.net_bridge_vlan_group*, %struct.net_bridge_vlan_group** %6, align 8
  %21 = load %struct.net_bridge_vlan*, %struct.net_bridge_vlan** %7, align 8
  %22 = call i32 @vlan_tunnel_info_del(%struct.net_bridge_vlan_group* %20, %struct.net_bridge_vlan* %21)
  store i32 0, i32* %3, align 4
  br label %23

23:                                               ; preds = %19, %16
  %24 = load i32, i32* %3, align 4
  ret i32 %24
}

declare dso_local i32 @ASSERT_RTNL(...) #1

declare dso_local %struct.net_bridge_vlan_group* @nbp_vlan_group(%struct.net_bridge_port*) #1

declare dso_local %struct.net_bridge_vlan* @br_vlan_find(%struct.net_bridge_vlan_group*, i32) #1

declare dso_local i32 @vlan_tunnel_info_del(%struct.net_bridge_vlan_group*, %struct.net_bridge_vlan*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
