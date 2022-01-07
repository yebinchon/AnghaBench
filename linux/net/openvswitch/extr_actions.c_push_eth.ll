; ModuleID = '/home/carl/AnghaBench/linux/net/openvswitch/extr_actions.c_push_eth.c'
source_filename = "/home/carl/AnghaBench/linux/net/openvswitch/extr_actions.c_push_eth.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.sw_flow_key = type { i32 }
%struct.ovs_action_push_eth = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }
%struct.ethhdr = type { i32, i32, i32 }

@ETH_HLEN = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@MAC_PROTO_ETHERNET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.sw_flow_key*, %struct.ovs_action_push_eth*)* @push_eth to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @push_eth(%struct.sk_buff* %0, %struct.sw_flow_key* %1, %struct.ovs_action_push_eth* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca %struct.sw_flow_key*, align 8
  %7 = alloca %struct.ovs_action_push_eth*, align 8
  %8 = alloca %struct.ethhdr*, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %5, align 8
  store %struct.sw_flow_key* %1, %struct.sw_flow_key** %6, align 8
  store %struct.ovs_action_push_eth* %2, %struct.ovs_action_push_eth** %7, align 8
  %9 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %10 = load i32, i32* @ETH_HLEN, align 4
  %11 = call i64 @skb_cow_head(%struct.sk_buff* %9, i32 %10)
  %12 = icmp slt i64 %11, 0
  br i1 %12, label %13, label %16

13:                                               ; preds = %3
  %14 = load i32, i32* @ENOMEM, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %4, align 4
  br label %56

16:                                               ; preds = %3
  %17 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %18 = load i32, i32* @ETH_HLEN, align 4
  %19 = call i32 @skb_push(%struct.sk_buff* %17, i32 %18)
  %20 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %21 = call i32 @skb_reset_mac_header(%struct.sk_buff* %20)
  %22 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %23 = call i32 @skb_reset_mac_len(%struct.sk_buff* %22)
  %24 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %25 = call %struct.ethhdr* @eth_hdr(%struct.sk_buff* %24)
  store %struct.ethhdr* %25, %struct.ethhdr** %8, align 8
  %26 = load %struct.ethhdr*, %struct.ethhdr** %8, align 8
  %27 = getelementptr inbounds %struct.ethhdr, %struct.ethhdr* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.ovs_action_push_eth*, %struct.ovs_action_push_eth** %7, align 8
  %30 = getelementptr inbounds %struct.ovs_action_push_eth, %struct.ovs_action_push_eth* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @ether_addr_copy(i32 %28, i32 %32)
  %34 = load %struct.ethhdr*, %struct.ethhdr** %8, align 8
  %35 = getelementptr inbounds %struct.ethhdr, %struct.ethhdr* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.ovs_action_push_eth*, %struct.ovs_action_push_eth** %7, align 8
  %38 = getelementptr inbounds %struct.ovs_action_push_eth, %struct.ovs_action_push_eth* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @ether_addr_copy(i32 %36, i32 %40)
  %42 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %43 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.ethhdr*, %struct.ethhdr** %8, align 8
  %46 = getelementptr inbounds %struct.ethhdr, %struct.ethhdr* %45, i32 0, i32 0
  store i32 %44, i32* %46, align 4
  %47 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %48 = load %struct.ethhdr*, %struct.ethhdr** %8, align 8
  %49 = load i32, i32* @ETH_HLEN, align 4
  %50 = call i32 @skb_postpush_rcsum(%struct.sk_buff* %47, %struct.ethhdr* %48, i32 %49)
  %51 = load i32, i32* @MAC_PROTO_ETHERNET, align 4
  %52 = load %struct.sw_flow_key*, %struct.sw_flow_key** %6, align 8
  %53 = getelementptr inbounds %struct.sw_flow_key, %struct.sw_flow_key* %52, i32 0, i32 0
  store i32 %51, i32* %53, align 4
  %54 = load %struct.sw_flow_key*, %struct.sw_flow_key** %6, align 8
  %55 = call i32 @invalidate_flow_key(%struct.sw_flow_key* %54)
  store i32 0, i32* %4, align 4
  br label %56

56:                                               ; preds = %16, %13
  %57 = load i32, i32* %4, align 4
  ret i32 %57
}

declare dso_local i64 @skb_cow_head(%struct.sk_buff*, i32) #1

declare dso_local i32 @skb_push(%struct.sk_buff*, i32) #1

declare dso_local i32 @skb_reset_mac_header(%struct.sk_buff*) #1

declare dso_local i32 @skb_reset_mac_len(%struct.sk_buff*) #1

declare dso_local %struct.ethhdr* @eth_hdr(%struct.sk_buff*) #1

declare dso_local i32 @ether_addr_copy(i32, i32) #1

declare dso_local i32 @skb_postpush_rcsum(%struct.sk_buff*, %struct.ethhdr*, i32) #1

declare dso_local i32 @invalidate_flow_key(%struct.sw_flow_key*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
