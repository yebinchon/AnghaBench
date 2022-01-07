; ModuleID = '/home/carl/AnghaBench/linux/net/bridge/extr_br_vlan_tunnel.c_vlan_tunnel_info_del.c'
source_filename = "/home/carl/AnghaBench/linux/net/bridge/extr_br_vlan_tunnel.c_vlan_tunnel_info_del.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_bridge_vlan_group = type { i32 }
%struct.net_bridge_vlan = type { %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__*, i64 }
%struct.TYPE_3__ = type { i32 }

@br_vlan_tunnel_rht_params = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @vlan_tunnel_info_del(%struct.net_bridge_vlan_group* %0, %struct.net_bridge_vlan* %1) #0 {
  %3 = alloca %struct.net_bridge_vlan_group*, align 8
  %4 = alloca %struct.net_bridge_vlan*, align 8
  store %struct.net_bridge_vlan_group* %0, %struct.net_bridge_vlan_group** %3, align 8
  store %struct.net_bridge_vlan* %1, %struct.net_bridge_vlan** %4, align 8
  %5 = load %struct.net_bridge_vlan*, %struct.net_bridge_vlan** %4, align 8
  %6 = getelementptr inbounds %struct.net_bridge_vlan, %struct.net_bridge_vlan* %5, i32 0, i32 0
  %7 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %6, i32 0, i32 0
  %8 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %9 = icmp ne %struct.TYPE_3__* %8, null
  br i1 %9, label %11, label %10

10:                                               ; preds = %2
  br label %30

11:                                               ; preds = %2
  %12 = load %struct.net_bridge_vlan_group*, %struct.net_bridge_vlan_group** %3, align 8
  %13 = getelementptr inbounds %struct.net_bridge_vlan_group, %struct.net_bridge_vlan_group* %12, i32 0, i32 0
  %14 = load %struct.net_bridge_vlan*, %struct.net_bridge_vlan** %4, align 8
  %15 = getelementptr inbounds %struct.net_bridge_vlan, %struct.net_bridge_vlan* %14, i32 0, i32 1
  %16 = load i32, i32* @br_vlan_tunnel_rht_params, align 4
  %17 = call i32 @rhashtable_remove_fast(i32* %13, i32* %15, i32 %16)
  %18 = load %struct.net_bridge_vlan*, %struct.net_bridge_vlan** %4, align 8
  %19 = getelementptr inbounds %struct.net_bridge_vlan, %struct.net_bridge_vlan* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 1
  store i64 0, i64* %20, align 8
  %21 = load %struct.net_bridge_vlan*, %struct.net_bridge_vlan** %4, align 8
  %22 = getelementptr inbounds %struct.net_bridge_vlan, %struct.net_bridge_vlan* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 0
  %24 = load %struct.TYPE_3__*, %struct.TYPE_3__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 0
  %26 = call i32 @dst_release(i32* %25)
  %27 = load %struct.net_bridge_vlan*, %struct.net_bridge_vlan** %4, align 8
  %28 = getelementptr inbounds %struct.net_bridge_vlan, %struct.net_bridge_vlan* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 0
  store %struct.TYPE_3__* null, %struct.TYPE_3__** %29, align 8
  br label %30

30:                                               ; preds = %11, %10
  ret void
}

declare dso_local i32 @rhashtable_remove_fast(i32*, i32*, i32) #1

declare dso_local i32 @dst_release(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
