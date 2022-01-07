; ModuleID = '/home/carl/AnghaBench/linux/net/bridge/extr_br_input.c_br_pass_frame_up.c'
source_filename = "/home/carl/AnghaBench/linux/net/bridge/extr_br_input.c_br_pass_frame_up.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { %struct.net_device*, i64 }
%struct.net_device = type { i32 }
%struct.net_bridge = type { i32 }
%struct.net_bridge_vlan_group = type { i32 }
%struct.pcpu_sw_netstats = type { i32, i32, i32 }
%struct.TYPE_2__ = type { %struct.net_device* }

@IFF_PROMISC = common dso_local global i32 0, align 4
@NET_RX_DROP = common dso_local global i32 0, align 4
@BR_MCAST_DIR_TX = common dso_local global i32 0, align 4
@NFPROTO_BRIDGE = common dso_local global i32 0, align 4
@NF_BR_LOCAL_IN = common dso_local global i32 0, align 4
@br_netif_receive_skb = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*)* @br_pass_frame_up to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @br_pass_frame_up(%struct.sk_buff* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.sk_buff*, align 8
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca %struct.net_bridge*, align 8
  %7 = alloca %struct.net_bridge_vlan_group*, align 8
  %8 = alloca %struct.pcpu_sw_netstats*, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %3, align 8
  %9 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %10 = call %struct.TYPE_2__* @BR_INPUT_SKB_CB(%struct.sk_buff* %9)
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load %struct.net_device*, %struct.net_device** %11, align 8
  store %struct.net_device* %12, %struct.net_device** %5, align 8
  %13 = load %struct.net_device*, %struct.net_device** %5, align 8
  %14 = call %struct.net_bridge* @netdev_priv(%struct.net_device* %13)
  store %struct.net_bridge* %14, %struct.net_bridge** %6, align 8
  %15 = load %struct.net_bridge*, %struct.net_bridge** %6, align 8
  %16 = getelementptr inbounds %struct.net_bridge, %struct.net_bridge* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call %struct.pcpu_sw_netstats* @this_cpu_ptr(i32 %17)
  store %struct.pcpu_sw_netstats* %18, %struct.pcpu_sw_netstats** %8, align 8
  %19 = load %struct.pcpu_sw_netstats*, %struct.pcpu_sw_netstats** %8, align 8
  %20 = getelementptr inbounds %struct.pcpu_sw_netstats, %struct.pcpu_sw_netstats* %19, i32 0, i32 0
  %21 = call i32 @u64_stats_update_begin(i32* %20)
  %22 = load %struct.pcpu_sw_netstats*, %struct.pcpu_sw_netstats** %8, align 8
  %23 = getelementptr inbounds %struct.pcpu_sw_netstats, %struct.pcpu_sw_netstats* %22, i32 0, i32 2
  %24 = load i32, i32* %23, align 4
  %25 = add nsw i32 %24, 1
  store i32 %25, i32* %23, align 4
  %26 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %27 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %26, i32 0, i32 1
  %28 = load i64, i64* %27, align 8
  %29 = load %struct.pcpu_sw_netstats*, %struct.pcpu_sw_netstats** %8, align 8
  %30 = getelementptr inbounds %struct.pcpu_sw_netstats, %struct.pcpu_sw_netstats* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = sext i32 %31 to i64
  %33 = add nsw i64 %32, %28
  %34 = trunc i64 %33 to i32
  store i32 %34, i32* %30, align 4
  %35 = load %struct.pcpu_sw_netstats*, %struct.pcpu_sw_netstats** %8, align 8
  %36 = getelementptr inbounds %struct.pcpu_sw_netstats, %struct.pcpu_sw_netstats* %35, i32 0, i32 0
  %37 = call i32 @u64_stats_update_end(i32* %36)
  %38 = load %struct.net_bridge*, %struct.net_bridge** %6, align 8
  %39 = call %struct.net_bridge_vlan_group* @br_vlan_group_rcu(%struct.net_bridge* %38)
  store %struct.net_bridge_vlan_group* %39, %struct.net_bridge_vlan_group** %7, align 8
  %40 = load %struct.net_device*, %struct.net_device** %5, align 8
  %41 = getelementptr inbounds %struct.net_device, %struct.net_device* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* @IFF_PROMISC, align 4
  %44 = and i32 %42, %43
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %55, label %46

46:                                               ; preds = %1
  %47 = load %struct.net_bridge_vlan_group*, %struct.net_bridge_vlan_group** %7, align 8
  %48 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %49 = call i32 @br_allowed_egress(%struct.net_bridge_vlan_group* %47, %struct.sk_buff* %48)
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %55, label %51

51:                                               ; preds = %46
  %52 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %53 = call i32 @kfree_skb(%struct.sk_buff* %52)
  %54 = load i32, i32* @NET_RX_DROP, align 4
  store i32 %54, i32* %2, align 4
  br label %85

55:                                               ; preds = %46, %1
  %56 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %57 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %56, i32 0, i32 0
  %58 = load %struct.net_device*, %struct.net_device** %57, align 8
  store %struct.net_device* %58, %struct.net_device** %4, align 8
  %59 = load %struct.net_device*, %struct.net_device** %5, align 8
  %60 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %61 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %60, i32 0, i32 0
  store %struct.net_device* %59, %struct.net_device** %61, align 8
  %62 = load %struct.net_bridge*, %struct.net_bridge** %6, align 8
  %63 = load %struct.net_bridge_vlan_group*, %struct.net_bridge_vlan_group** %7, align 8
  %64 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %65 = call %struct.sk_buff* @br_handle_vlan(%struct.net_bridge* %62, i32* null, %struct.net_bridge_vlan_group* %63, %struct.sk_buff* %64)
  store %struct.sk_buff* %65, %struct.sk_buff** %3, align 8
  %66 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %67 = icmp ne %struct.sk_buff* %66, null
  br i1 %67, label %70, label %68

68:                                               ; preds = %55
  %69 = load i32, i32* @NET_RX_DROP, align 4
  store i32 %69, i32* %2, align 4
  br label %85

70:                                               ; preds = %55
  %71 = load %struct.net_bridge*, %struct.net_bridge** %6, align 8
  %72 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %73 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %74 = call i32 @br_multicast_igmp_type(%struct.sk_buff* %73)
  %75 = load i32, i32* @BR_MCAST_DIR_TX, align 4
  %76 = call i32 @br_multicast_count(%struct.net_bridge* %71, i32* null, %struct.sk_buff* %72, i32 %74, i32 %75)
  %77 = load i32, i32* @NFPROTO_BRIDGE, align 4
  %78 = load i32, i32* @NF_BR_LOCAL_IN, align 4
  %79 = load %struct.net_device*, %struct.net_device** %4, align 8
  %80 = call i32 @dev_net(%struct.net_device* %79)
  %81 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %82 = load %struct.net_device*, %struct.net_device** %4, align 8
  %83 = load i32, i32* @br_netif_receive_skb, align 4
  %84 = call i32 @NF_HOOK(i32 %77, i32 %78, i32 %80, i32* null, %struct.sk_buff* %81, %struct.net_device* %82, i32* null, i32 %83)
  store i32 %84, i32* %2, align 4
  br label %85

85:                                               ; preds = %70, %68, %51
  %86 = load i32, i32* %2, align 4
  ret i32 %86
}

declare dso_local %struct.TYPE_2__* @BR_INPUT_SKB_CB(%struct.sk_buff*) #1

declare dso_local %struct.net_bridge* @netdev_priv(%struct.net_device*) #1

declare dso_local %struct.pcpu_sw_netstats* @this_cpu_ptr(i32) #1

declare dso_local i32 @u64_stats_update_begin(i32*) #1

declare dso_local i32 @u64_stats_update_end(i32*) #1

declare dso_local %struct.net_bridge_vlan_group* @br_vlan_group_rcu(%struct.net_bridge*) #1

declare dso_local i32 @br_allowed_egress(%struct.net_bridge_vlan_group*, %struct.sk_buff*) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

declare dso_local %struct.sk_buff* @br_handle_vlan(%struct.net_bridge*, i32*, %struct.net_bridge_vlan_group*, %struct.sk_buff*) #1

declare dso_local i32 @br_multicast_count(%struct.net_bridge*, i32*, %struct.sk_buff*, i32, i32) #1

declare dso_local i32 @br_multicast_igmp_type(%struct.sk_buff*) #1

declare dso_local i32 @NF_HOOK(i32, i32, i32, i32*, %struct.sk_buff*, %struct.net_device*, i32*, i32) #1

declare dso_local i32 @dev_net(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
