; ModuleID = '/home/carl/AnghaBench/linux/net/bridge/extr_br_netlink.c_br_get_link_af_size_filtered.c'
source_filename = "/home/carl/AnghaBench/linux/net/bridge/extr_br_netlink.c_br_get_link_af_size_filtered.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.net_bridge_vlan_group = type { i32 }
%struct.net_bridge_port = type { i32 }
%struct.net_bridge = type { i32 }

@IFF_EBRIDGE = common dso_local global i32 0, align 4
@BR_VLAN_TUNNEL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.net_device*, i32)* @br_get_link_af_size_filtered to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @br_get_link_af_size_filtered(%struct.net_device* %0, i32 %1) #0 {
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.net_bridge_vlan_group*, align 8
  %6 = alloca %struct.net_bridge_port*, align 8
  %7 = alloca %struct.net_bridge*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  store i32 %1, i32* %4, align 4
  store %struct.net_bridge_vlan_group* null, %struct.net_bridge_vlan_group** %5, align 8
  store %struct.net_bridge_port* null, %struct.net_bridge_port** %6, align 8
  store i64 0, i64* %9, align 8
  %10 = call i32 (...) @rcu_read_lock()
  %11 = load %struct.net_device*, %struct.net_device** %3, align 8
  %12 = call i64 @netif_is_bridge_port(%struct.net_device* %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %19

14:                                               ; preds = %2
  %15 = load %struct.net_device*, %struct.net_device** %3, align 8
  %16 = call %struct.net_bridge_port* @br_port_get_rcu(%struct.net_device* %15)
  store %struct.net_bridge_port* %16, %struct.net_bridge_port** %6, align 8
  %17 = load %struct.net_bridge_port*, %struct.net_bridge_port** %6, align 8
  %18 = call %struct.net_bridge_vlan_group* @nbp_vlan_group_rcu(%struct.net_bridge_port* %17)
  store %struct.net_bridge_vlan_group* %18, %struct.net_bridge_vlan_group** %5, align 8
  br label %32

19:                                               ; preds = %2
  %20 = load %struct.net_device*, %struct.net_device** %3, align 8
  %21 = getelementptr inbounds %struct.net_device, %struct.net_device* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* @IFF_EBRIDGE, align 4
  %24 = and i32 %22, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %31

26:                                               ; preds = %19
  %27 = load %struct.net_device*, %struct.net_device** %3, align 8
  %28 = call %struct.net_bridge* @netdev_priv(%struct.net_device* %27)
  store %struct.net_bridge* %28, %struct.net_bridge** %7, align 8
  %29 = load %struct.net_bridge*, %struct.net_bridge** %7, align 8
  %30 = call %struct.net_bridge_vlan_group* @br_vlan_group_rcu(%struct.net_bridge* %29)
  store %struct.net_bridge_vlan_group* %30, %struct.net_bridge_vlan_group** %5, align 8
  br label %31

31:                                               ; preds = %26, %19
  br label %32

32:                                               ; preds = %31, %14
  %33 = load %struct.net_bridge_vlan_group*, %struct.net_bridge_vlan_group** %5, align 8
  %34 = load i32, i32* %4, align 4
  %35 = call i32 @br_get_num_vlan_infos(%struct.net_bridge_vlan_group* %33, i32 %34)
  store i32 %35, i32* %8, align 4
  %36 = call i32 (...) @rcu_read_unlock()
  %37 = load %struct.net_bridge_port*, %struct.net_bridge_port** %6, align 8
  %38 = icmp ne %struct.net_bridge_port* %37, null
  br i1 %38, label %39, label %51

39:                                               ; preds = %32
  %40 = load %struct.net_bridge_port*, %struct.net_bridge_port** %6, align 8
  %41 = getelementptr inbounds %struct.net_bridge_port, %struct.net_bridge_port* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* @BR_VLAN_TUNNEL, align 4
  %44 = and i32 %42, %43
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %51

46:                                               ; preds = %39
  %47 = load %struct.net_bridge_vlan_group*, %struct.net_bridge_vlan_group** %5, align 8
  %48 = call i64 @br_get_vlan_tunnel_info_size(%struct.net_bridge_vlan_group* %47)
  %49 = load i64, i64* %9, align 8
  %50 = add i64 %49, %48
  store i64 %50, i64* %9, align 8
  br label %51

51:                                               ; preds = %46, %39, %32
  %52 = load i32, i32* %8, align 4
  %53 = call i32 @nla_total_size(i32 4)
  %54 = mul nsw i32 %52, %53
  %55 = sext i32 %54 to i64
  %56 = load i64, i64* %9, align 8
  %57 = add i64 %56, %55
  store i64 %57, i64* %9, align 8
  %58 = load i64, i64* %9, align 8
  ret i64 %58
}

declare dso_local i32 @rcu_read_lock(...) #1

declare dso_local i64 @netif_is_bridge_port(%struct.net_device*) #1

declare dso_local %struct.net_bridge_port* @br_port_get_rcu(%struct.net_device*) #1

declare dso_local %struct.net_bridge_vlan_group* @nbp_vlan_group_rcu(%struct.net_bridge_port*) #1

declare dso_local %struct.net_bridge* @netdev_priv(%struct.net_device*) #1

declare dso_local %struct.net_bridge_vlan_group* @br_vlan_group_rcu(%struct.net_bridge*) #1

declare dso_local i32 @br_get_num_vlan_infos(%struct.net_bridge_vlan_group*, i32) #1

declare dso_local i32 @rcu_read_unlock(...) #1

declare dso_local i64 @br_get_vlan_tunnel_info_size(%struct.net_bridge_vlan_group*) #1

declare dso_local i32 @nla_total_size(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
