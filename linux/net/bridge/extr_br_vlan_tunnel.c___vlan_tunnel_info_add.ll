; ModuleID = '/home/carl/AnghaBench/linux/net/bridge/extr_br_vlan_tunnel.c___vlan_tunnel_info_add.c'
source_filename = "/home/carl/AnghaBench/linux/net/bridge/extr_br_vlan_tunnel.c___vlan_tunnel_info_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_bridge_vlan_group = type { i32 }
%struct.net_bridge_vlan = type { %struct.TYPE_6__, i32 }
%struct.TYPE_6__ = type { i32, %struct.metadata_dst* }
%struct.metadata_dst = type { i32, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }

@EEXIST = common dso_local global i32 0, align 4
@TUNNEL_KEY = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@IP_TUNNEL_INFO_TX = common dso_local global i32 0, align 4
@IP_TUNNEL_INFO_BRIDGE = common dso_local global i32 0, align 4
@br_vlan_tunnel_rht_params = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_bridge_vlan_group*, %struct.net_bridge_vlan*, i32)* @__vlan_tunnel_info_add to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__vlan_tunnel_info_add(%struct.net_bridge_vlan_group* %0, %struct.net_bridge_vlan* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.net_bridge_vlan_group*, align 8
  %6 = alloca %struct.net_bridge_vlan*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.metadata_dst*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.net_bridge_vlan_group* %0, %struct.net_bridge_vlan_group** %5, align 8
  store %struct.net_bridge_vlan* %1, %struct.net_bridge_vlan** %6, align 8
  store i32 %2, i32* %7, align 4
  store %struct.metadata_dst* null, %struct.metadata_dst** %8, align 8
  %11 = load i32, i32* %7, align 4
  %12 = call i32 @cpu_to_be32(i32 %11)
  %13 = call i32 @key32_to_tunnel_id(i32 %12)
  store i32 %13, i32* %9, align 4
  %14 = load %struct.net_bridge_vlan*, %struct.net_bridge_vlan** %6, align 8
  %15 = getelementptr inbounds %struct.net_bridge_vlan, %struct.net_bridge_vlan* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %15, i32 0, i32 1
  %17 = load %struct.metadata_dst*, %struct.metadata_dst** %16, align 8
  %18 = icmp ne %struct.metadata_dst* %17, null
  br i1 %18, label %19, label %22

19:                                               ; preds = %3
  %20 = load i32, i32* @EEXIST, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %4, align 4
  br label %73

22:                                               ; preds = %3
  %23 = load i32, i32* @TUNNEL_KEY, align 4
  %24 = load i32, i32* %9, align 4
  %25 = call %struct.metadata_dst* @__ip_tun_set_dst(i32 0, i32 0, i32 0, i32 0, i32 0, i32 %23, i32 %24, i32 0)
  store %struct.metadata_dst* %25, %struct.metadata_dst** %8, align 8
  %26 = load %struct.metadata_dst*, %struct.metadata_dst** %8, align 8
  %27 = icmp ne %struct.metadata_dst* %26, null
  br i1 %27, label %31, label %28

28:                                               ; preds = %22
  %29 = load i32, i32* @EINVAL, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %4, align 4
  br label %73

31:                                               ; preds = %22
  %32 = load i32, i32* @IP_TUNNEL_INFO_TX, align 4
  %33 = load i32, i32* @IP_TUNNEL_INFO_BRIDGE, align 4
  %34 = or i32 %32, %33
  %35 = load %struct.metadata_dst*, %struct.metadata_dst** %8, align 8
  %36 = getelementptr inbounds %struct.metadata_dst, %struct.metadata_dst* %35, i32 0, i32 1
  %37 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = or i32 %39, %34
  store i32 %40, i32* %38, align 4
  %41 = load %struct.metadata_dst*, %struct.metadata_dst** %8, align 8
  %42 = load %struct.net_bridge_vlan*, %struct.net_bridge_vlan** %6, align 8
  %43 = getelementptr inbounds %struct.net_bridge_vlan, %struct.net_bridge_vlan* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %43, i32 0, i32 1
  store %struct.metadata_dst* %41, %struct.metadata_dst** %44, align 8
  %45 = load i32, i32* %9, align 4
  %46 = load %struct.net_bridge_vlan*, %struct.net_bridge_vlan** %6, align 8
  %47 = getelementptr inbounds %struct.net_bridge_vlan, %struct.net_bridge_vlan* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %47, i32 0, i32 0
  store i32 %45, i32* %48, align 8
  %49 = load %struct.net_bridge_vlan_group*, %struct.net_bridge_vlan_group** %5, align 8
  %50 = getelementptr inbounds %struct.net_bridge_vlan_group, %struct.net_bridge_vlan_group* %49, i32 0, i32 0
  %51 = load %struct.net_bridge_vlan*, %struct.net_bridge_vlan** %6, align 8
  %52 = getelementptr inbounds %struct.net_bridge_vlan, %struct.net_bridge_vlan* %51, i32 0, i32 1
  %53 = load i32, i32* @br_vlan_tunnel_rht_params, align 4
  %54 = call i32 @rhashtable_lookup_insert_fast(i32* %50, i32* %52, i32 %53)
  store i32 %54, i32* %10, align 4
  %55 = load i32, i32* %10, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %58

57:                                               ; preds = %31
  br label %59

58:                                               ; preds = %31
  store i32 0, i32* %4, align 4
  br label %73

59:                                               ; preds = %57
  %60 = load %struct.net_bridge_vlan*, %struct.net_bridge_vlan** %6, align 8
  %61 = getelementptr inbounds %struct.net_bridge_vlan, %struct.net_bridge_vlan* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %61, i32 0, i32 1
  %63 = load %struct.metadata_dst*, %struct.metadata_dst** %62, align 8
  %64 = getelementptr inbounds %struct.metadata_dst, %struct.metadata_dst* %63, i32 0, i32 0
  %65 = call i32 @dst_release(i32* %64)
  %66 = load %struct.net_bridge_vlan*, %struct.net_bridge_vlan** %6, align 8
  %67 = getelementptr inbounds %struct.net_bridge_vlan, %struct.net_bridge_vlan* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %67, i32 0, i32 1
  store %struct.metadata_dst* null, %struct.metadata_dst** %68, align 8
  %69 = load %struct.net_bridge_vlan*, %struct.net_bridge_vlan** %6, align 8
  %70 = getelementptr inbounds %struct.net_bridge_vlan, %struct.net_bridge_vlan* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %70, i32 0, i32 0
  store i32 0, i32* %71, align 8
  %72 = load i32, i32* %10, align 4
  store i32 %72, i32* %4, align 4
  br label %73

73:                                               ; preds = %59, %58, %28, %19
  %74 = load i32, i32* %4, align 4
  ret i32 %74
}

declare dso_local i32 @key32_to_tunnel_id(i32) #1

declare dso_local i32 @cpu_to_be32(i32) #1

declare dso_local %struct.metadata_dst* @__ip_tun_set_dst(i32, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @rhashtable_lookup_insert_fast(i32*, i32*, i32) #1

declare dso_local i32 @dst_release(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
