; ModuleID = '/home/carl/AnghaBench/linux/net/bridge/netfilter/extr_nft_reject_bridge.c_nft_reject_br_send_v6_tcp_reset.c'
source_filename = "/home/carl/AnghaBench/linux/net/bridge/netfilter/extr_nft_reject_bridge.c_nft_reject_br_send_v6_tcp_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.sk_buff = type { i64 }
%struct.net_device = type { i32 }
%struct.tcphdr = type { i32 }
%struct.ipv6hdr = type { i32 }

@LL_MAX_HEADER = common dso_local global i64 0, align 8
@GFP_ATOMIC = common dso_local global i32 0, align 4
@IPPROTO_TCP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net*, %struct.sk_buff*, %struct.net_device*, i32)* @nft_reject_br_send_v6_tcp_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nft_reject_br_send_v6_tcp_reset(%struct.net* %0, %struct.sk_buff* %1, %struct.net_device* %2, i32 %3) #0 {
  %5 = alloca %struct.net*, align 8
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca %struct.net_device*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.sk_buff*, align 8
  %10 = alloca %struct.tcphdr*, align 8
  %11 = alloca %struct.tcphdr, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.ipv6hdr*, align 8
  store %struct.net* %0, %struct.net** %5, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %6, align 8
  store %struct.net_device* %2, %struct.net_device** %7, align 8
  store i32 %3, i32* %8, align 4
  %14 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %15 = call i32 @nft_bridge_ip6hdr_validate(%struct.sk_buff* %14)
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %18, label %17

17:                                               ; preds = %4
  br label %66

18:                                               ; preds = %4
  %19 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %20 = load i32, i32* %8, align 4
  %21 = call %struct.tcphdr* @nf_reject_ip6_tcphdr_get(%struct.sk_buff* %19, %struct.tcphdr* %11, i32* %12, i32 %20)
  store %struct.tcphdr* %21, %struct.tcphdr** %10, align 8
  %22 = load %struct.tcphdr*, %struct.tcphdr** %10, align 8
  %23 = icmp ne %struct.tcphdr* %22, null
  br i1 %23, label %25, label %24

24:                                               ; preds = %18
  br label %66

25:                                               ; preds = %18
  %26 = load i64, i64* @LL_MAX_HEADER, align 8
  %27 = add i64 8, %26
  %28 = load i32, i32* @GFP_ATOMIC, align 4
  %29 = call %struct.sk_buff* @alloc_skb(i64 %27, i32 %28)
  store %struct.sk_buff* %29, %struct.sk_buff** %9, align 8
  %30 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %31 = icmp ne %struct.sk_buff* %30, null
  br i1 %31, label %33, label %32

32:                                               ; preds = %25
  br label %66

33:                                               ; preds = %25
  %34 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %35 = load i64, i64* @LL_MAX_HEADER, align 8
  %36 = call i32 @skb_reserve(%struct.sk_buff* %34, i64 %35)
  %37 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %38 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %39 = load i32, i32* @IPPROTO_TCP, align 4
  %40 = load %struct.net*, %struct.net** %5, align 8
  %41 = getelementptr inbounds %struct.net, %struct.net* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 0
  %43 = load %struct.TYPE_3__*, %struct.TYPE_3__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = call %struct.ipv6hdr* @nf_reject_ip6hdr_put(%struct.sk_buff* %37, %struct.sk_buff* %38, i32 %39, i32 %45)
  store %struct.ipv6hdr* %46, %struct.ipv6hdr** %13, align 8
  %47 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %48 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %49 = load %struct.tcphdr*, %struct.tcphdr** %10, align 8
  %50 = load i32, i32* %12, align 4
  %51 = call i32 @nf_reject_ip6_tcphdr_put(%struct.sk_buff* %47, %struct.sk_buff* %48, %struct.tcphdr* %49, i32 %50)
  %52 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %53 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = sub i64 %54, 4
  %56 = call i32 @htons(i64 %55)
  %57 = load %struct.ipv6hdr*, %struct.ipv6hdr** %13, align 8
  %58 = getelementptr inbounds %struct.ipv6hdr, %struct.ipv6hdr* %57, i32 0, i32 0
  store i32 %56, i32* %58, align 4
  %59 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %60 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %61 = call i32 @nft_reject_br_push_etherhdr(%struct.sk_buff* %59, %struct.sk_buff* %60)
  %62 = load %struct.net_device*, %struct.net_device** %7, align 8
  %63 = call i32 @br_port_get_rcu(%struct.net_device* %62)
  %64 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %65 = call i32 @br_forward(i32 %63, %struct.sk_buff* %64, i32 0, i32 1)
  br label %66

66:                                               ; preds = %33, %32, %24, %17
  ret void
}

declare dso_local i32 @nft_bridge_ip6hdr_validate(%struct.sk_buff*) #1

declare dso_local %struct.tcphdr* @nf_reject_ip6_tcphdr_get(%struct.sk_buff*, %struct.tcphdr*, i32*, i32) #1

declare dso_local %struct.sk_buff* @alloc_skb(i64, i32) #1

declare dso_local i32 @skb_reserve(%struct.sk_buff*, i64) #1

declare dso_local %struct.ipv6hdr* @nf_reject_ip6hdr_put(%struct.sk_buff*, %struct.sk_buff*, i32, i32) #1

declare dso_local i32 @nf_reject_ip6_tcphdr_put(%struct.sk_buff*, %struct.sk_buff*, %struct.tcphdr*, i32) #1

declare dso_local i32 @htons(i64) #1

declare dso_local i32 @nft_reject_br_push_etherhdr(%struct.sk_buff*, %struct.sk_buff*) #1

declare dso_local i32 @br_forward(i32, %struct.sk_buff*, i32, i32) #1

declare dso_local i32 @br_port_get_rcu(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
