; ModuleID = '/home/carl/AnghaBench/linux/net/openvswitch/extr_vport-internal_dev.c_internal_dev_recv.c'
source_filename = "/home/carl/AnghaBench/linux/net/openvswitch/extr_vport-internal_dev.c_internal_dev_recv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i64, i32, i32, %struct.net_device* }
%struct.net_device = type { i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.pcpu_sw_netstats = type { i32, i32, i32 }

@IFF_UP = common dso_local global i32 0, align 4
@NETDEV_TX_OK = common dso_local global i32 0, align 4
@PACKET_HOST = common dso_local global i32 0, align 4
@ETH_HLEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*)* @internal_dev_recv to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @internal_dev_recv(%struct.sk_buff* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.sk_buff*, align 8
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %struct.pcpu_sw_netstats*, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %3, align 8
  %6 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %7 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %6, i32 0, i32 3
  %8 = load %struct.net_device*, %struct.net_device** %7, align 8
  store %struct.net_device* %8, %struct.net_device** %4, align 8
  %9 = load %struct.net_device*, %struct.net_device** %4, align 8
  %10 = getelementptr inbounds %struct.net_device, %struct.net_device* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = load i32, i32* @IFF_UP, align 4
  %13 = and i32 %11, %12
  %14 = icmp ne i32 %13, 0
  %15 = xor i1 %14, true
  %16 = zext i1 %15 to i32
  %17 = call i64 @unlikely(i32 %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %28

19:                                               ; preds = %1
  %20 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %21 = call i32 @kfree_skb(%struct.sk_buff* %20)
  %22 = load %struct.net_device*, %struct.net_device** %4, align 8
  %23 = getelementptr inbounds %struct.net_device, %struct.net_device* %22, i32 0, i32 2
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = add nsw i32 %25, 1
  store i32 %26, i32* %24, align 4
  %27 = load i32, i32* @NETDEV_TX_OK, align 4
  store i32 %27, i32* %2, align 4
  br label %74

28:                                               ; preds = %1
  %29 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %30 = call i32 @skb_dst_drop(%struct.sk_buff* %29)
  %31 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %32 = call i32 @nf_reset_ct(%struct.sk_buff* %31)
  %33 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %34 = call i32 @secpath_reset(%struct.sk_buff* %33)
  %35 = load i32, i32* @PACKET_HOST, align 4
  %36 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %37 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %36, i32 0, i32 2
  store i32 %35, i32* %37, align 4
  %38 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %39 = load %struct.net_device*, %struct.net_device** %4, align 8
  %40 = call i32 @eth_type_trans(%struct.sk_buff* %38, %struct.net_device* %39)
  %41 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %42 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %41, i32 0, i32 1
  store i32 %40, i32* %42, align 8
  %43 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %44 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %45 = call i32 @eth_hdr(%struct.sk_buff* %44)
  %46 = load i32, i32* @ETH_HLEN, align 4
  %47 = call i32 @skb_postpull_rcsum(%struct.sk_buff* %43, i32 %45, i32 %46)
  %48 = load %struct.net_device*, %struct.net_device** %4, align 8
  %49 = getelementptr inbounds %struct.net_device, %struct.net_device* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = call %struct.pcpu_sw_netstats* @this_cpu_ptr(i32 %50)
  store %struct.pcpu_sw_netstats* %51, %struct.pcpu_sw_netstats** %5, align 8
  %52 = load %struct.pcpu_sw_netstats*, %struct.pcpu_sw_netstats** %5, align 8
  %53 = getelementptr inbounds %struct.pcpu_sw_netstats, %struct.pcpu_sw_netstats* %52, i32 0, i32 0
  %54 = call i32 @u64_stats_update_begin(i32* %53)
  %55 = load %struct.pcpu_sw_netstats*, %struct.pcpu_sw_netstats** %5, align 8
  %56 = getelementptr inbounds %struct.pcpu_sw_netstats, %struct.pcpu_sw_netstats* %55, i32 0, i32 2
  %57 = load i32, i32* %56, align 4
  %58 = add nsw i32 %57, 1
  store i32 %58, i32* %56, align 4
  %59 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %60 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = load %struct.pcpu_sw_netstats*, %struct.pcpu_sw_netstats** %5, align 8
  %63 = getelementptr inbounds %struct.pcpu_sw_netstats, %struct.pcpu_sw_netstats* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = sext i32 %64 to i64
  %66 = add nsw i64 %65, %61
  %67 = trunc i64 %66 to i32
  store i32 %67, i32* %63, align 4
  %68 = load %struct.pcpu_sw_netstats*, %struct.pcpu_sw_netstats** %5, align 8
  %69 = getelementptr inbounds %struct.pcpu_sw_netstats, %struct.pcpu_sw_netstats* %68, i32 0, i32 0
  %70 = call i32 @u64_stats_update_end(i32* %69)
  %71 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %72 = call i32 @netif_rx(%struct.sk_buff* %71)
  %73 = load i32, i32* @NETDEV_TX_OK, align 4
  store i32 %73, i32* %2, align 4
  br label %74

74:                                               ; preds = %28, %19
  %75 = load i32, i32* %2, align 4
  ret i32 %75
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

declare dso_local i32 @skb_dst_drop(%struct.sk_buff*) #1

declare dso_local i32 @nf_reset_ct(%struct.sk_buff*) #1

declare dso_local i32 @secpath_reset(%struct.sk_buff*) #1

declare dso_local i32 @eth_type_trans(%struct.sk_buff*, %struct.net_device*) #1

declare dso_local i32 @skb_postpull_rcsum(%struct.sk_buff*, i32, i32) #1

declare dso_local i32 @eth_hdr(%struct.sk_buff*) #1

declare dso_local %struct.pcpu_sw_netstats* @this_cpu_ptr(i32) #1

declare dso_local i32 @u64_stats_update_begin(i32*) #1

declare dso_local i32 @u64_stats_update_end(i32*) #1

declare dso_local i32 @netif_rx(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
