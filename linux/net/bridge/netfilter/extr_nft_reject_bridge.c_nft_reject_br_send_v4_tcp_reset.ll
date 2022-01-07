; ModuleID = '/home/carl/AnghaBench/linux/net/bridge/netfilter/extr_nft_reject_bridge.c_nft_reject_br_send_v4_tcp_reset.c'
source_filename = "/home/carl/AnghaBench/linux/net/bridge/netfilter/extr_nft_reject_bridge.c_nft_reject_br_send_v4_tcp_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.sk_buff = type { i32 }
%struct.net_device = type { i32 }
%struct.iphdr = type { i32 }
%struct.tcphdr = type { i32 }

@LL_MAX_HEADER = common dso_local global i64 0, align 8
@GFP_ATOMIC = common dso_local global i32 0, align 4
@IPPROTO_TCP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net*, %struct.sk_buff*, %struct.net_device*, i32)* @nft_reject_br_send_v4_tcp_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nft_reject_br_send_v4_tcp_reset(%struct.net* %0, %struct.sk_buff* %1, %struct.net_device* %2, i32 %3) #0 {
  %5 = alloca %struct.net*, align 8
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca %struct.net_device*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.sk_buff*, align 8
  %10 = alloca %struct.iphdr*, align 8
  %11 = alloca %struct.tcphdr*, align 8
  %12 = alloca %struct.tcphdr, align 4
  store %struct.net* %0, %struct.net** %5, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %6, align 8
  store %struct.net_device* %2, %struct.net_device** %7, align 8
  store i32 %3, i32* %8, align 4
  %13 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %14 = call i32 @nft_bridge_iphdr_validate(%struct.sk_buff* %13)
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %17, label %16

16:                                               ; preds = %4
  br label %63

17:                                               ; preds = %4
  %18 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %19 = load i32, i32* %8, align 4
  %20 = call %struct.tcphdr* @nf_reject_ip_tcphdr_get(%struct.sk_buff* %18, %struct.tcphdr* %12, i32 %19)
  store %struct.tcphdr* %20, %struct.tcphdr** %11, align 8
  %21 = load %struct.tcphdr*, %struct.tcphdr** %11, align 8
  %22 = icmp ne %struct.tcphdr* %21, null
  br i1 %22, label %24, label %23

23:                                               ; preds = %17
  br label %63

24:                                               ; preds = %17
  %25 = load i64, i64* @LL_MAX_HEADER, align 8
  %26 = add i64 8, %25
  %27 = load i32, i32* @GFP_ATOMIC, align 4
  %28 = call %struct.sk_buff* @alloc_skb(i64 %26, i32 %27)
  store %struct.sk_buff* %28, %struct.sk_buff** %9, align 8
  %29 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %30 = icmp ne %struct.sk_buff* %29, null
  br i1 %30, label %32, label %31

31:                                               ; preds = %24
  br label %63

32:                                               ; preds = %24
  %33 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %34 = load i64, i64* @LL_MAX_HEADER, align 8
  %35 = call i32 @skb_reserve(%struct.sk_buff* %33, i64 %34)
  %36 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %37 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %38 = load i32, i32* @IPPROTO_TCP, align 4
  %39 = load %struct.net*, %struct.net** %5, align 8
  %40 = getelementptr inbounds %struct.net, %struct.net* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = call %struct.iphdr* @nf_reject_iphdr_put(%struct.sk_buff* %36, %struct.sk_buff* %37, i32 %38, i32 %42)
  store %struct.iphdr* %43, %struct.iphdr** %10, align 8
  %44 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %45 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %46 = load %struct.tcphdr*, %struct.tcphdr** %11, align 8
  %47 = call i32 @nf_reject_ip_tcphdr_put(%struct.sk_buff* %44, %struct.sk_buff* %45, %struct.tcphdr* %46)
  %48 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %49 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @htons(i32 %50)
  %52 = load %struct.iphdr*, %struct.iphdr** %10, align 8
  %53 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %52, i32 0, i32 0
  store i32 %51, i32* %53, align 4
  %54 = load %struct.iphdr*, %struct.iphdr** %10, align 8
  %55 = call i32 @ip_send_check(%struct.iphdr* %54)
  %56 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %57 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %58 = call i32 @nft_reject_br_push_etherhdr(%struct.sk_buff* %56, %struct.sk_buff* %57)
  %59 = load %struct.net_device*, %struct.net_device** %7, align 8
  %60 = call i32 @br_port_get_rcu(%struct.net_device* %59)
  %61 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %62 = call i32 @br_forward(i32 %60, %struct.sk_buff* %61, i32 0, i32 1)
  br label %63

63:                                               ; preds = %32, %31, %23, %16
  ret void
}

declare dso_local i32 @nft_bridge_iphdr_validate(%struct.sk_buff*) #1

declare dso_local %struct.tcphdr* @nf_reject_ip_tcphdr_get(%struct.sk_buff*, %struct.tcphdr*, i32) #1

declare dso_local %struct.sk_buff* @alloc_skb(i64, i32) #1

declare dso_local i32 @skb_reserve(%struct.sk_buff*, i64) #1

declare dso_local %struct.iphdr* @nf_reject_iphdr_put(%struct.sk_buff*, %struct.sk_buff*, i32, i32) #1

declare dso_local i32 @nf_reject_ip_tcphdr_put(%struct.sk_buff*, %struct.sk_buff*, %struct.tcphdr*) #1

declare dso_local i32 @htons(i32) #1

declare dso_local i32 @ip_send_check(%struct.iphdr*) #1

declare dso_local i32 @nft_reject_br_push_etherhdr(%struct.sk_buff*, %struct.sk_buff*) #1

declare dso_local i32 @br_forward(i32, %struct.sk_buff*, i32, i32) #1

declare dso_local i32 @br_port_get_rcu(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
