; ModuleID = '/home/carl/AnghaBench/linux/net/ipv4/extr_ip_tunnel_core.c___iptunnel_pull_header.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv4/extr_ip_tunnel_core.c___iptunnel_pull_header.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i64, i64 }
%struct.ethhdr = type { i64 }

@ENOMEM = common dso_local global i32 0, align 4
@ETH_P_TEB = common dso_local global i32 0, align 4
@ETH_HLEN = common dso_local global i32 0, align 4
@ETH_P_802_2 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @__iptunnel_pull_header(%struct.sk_buff* %0, i32 %1, i64 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.sk_buff*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.ethhdr*, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %7, align 8
  store i32 %1, i32* %8, align 4
  store i64 %2, i64* %9, align 8
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %13 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %14 = load i32, i32* %8, align 4
  %15 = call i32 @pskb_may_pull(%struct.sk_buff* %13, i32 %14)
  %16 = icmp ne i32 %15, 0
  %17 = xor i1 %16, true
  %18 = zext i1 %17 to i32
  %19 = call i64 @unlikely(i32 %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %5
  %22 = load i32, i32* @ENOMEM, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %6, align 4
  br label %86

24:                                               ; preds = %5
  %25 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %26 = load i32, i32* %8, align 4
  %27 = call i32 @skb_pull_rcsum(%struct.sk_buff* %25, i32 %26)
  %28 = load i32, i32* %10, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %70, label %30

30:                                               ; preds = %24
  %31 = load i64, i64* %9, align 8
  %32 = load i32, i32* @ETH_P_TEB, align 4
  %33 = call i64 @htons(i32 %32)
  %34 = icmp eq i64 %31, %33
  br i1 %34, label %35, label %70

35:                                               ; preds = %30
  %36 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %37 = load i32, i32* @ETH_HLEN, align 4
  %38 = call i32 @pskb_may_pull(%struct.sk_buff* %36, i32 %37)
  %39 = icmp ne i32 %38, 0
  %40 = xor i1 %39, true
  %41 = zext i1 %40 to i32
  %42 = call i64 @unlikely(i32 %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %47

44:                                               ; preds = %35
  %45 = load i32, i32* @ENOMEM, align 4
  %46 = sub nsw i32 0, %45
  store i32 %46, i32* %6, align 4
  br label %86

47:                                               ; preds = %35
  %48 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %49 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %48, i32 0, i32 1
  %50 = load i64, i64* %49, align 8
  %51 = inttoptr i64 %50 to %struct.ethhdr*
  store %struct.ethhdr* %51, %struct.ethhdr** %12, align 8
  %52 = load %struct.ethhdr*, %struct.ethhdr** %12, align 8
  %53 = getelementptr inbounds %struct.ethhdr, %struct.ethhdr* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = call i32 @eth_proto_is_802_3(i64 %54)
  %56 = call i64 @likely(i32 %55)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %64

58:                                               ; preds = %47
  %59 = load %struct.ethhdr*, %struct.ethhdr** %12, align 8
  %60 = getelementptr inbounds %struct.ethhdr, %struct.ethhdr* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %63 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %62, i32 0, i32 0
  store i64 %61, i64* %63, align 8
  br label %69

64:                                               ; preds = %47
  %65 = load i32, i32* @ETH_P_802_2, align 4
  %66 = call i64 @htons(i32 %65)
  %67 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %68 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %67, i32 0, i32 0
  store i64 %66, i64* %68, align 8
  br label %69

69:                                               ; preds = %64, %58
  br label %74

70:                                               ; preds = %30, %24
  %71 = load i64, i64* %9, align 8
  %72 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %73 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %72, i32 0, i32 0
  store i64 %71, i64* %73, align 8
  br label %74

74:                                               ; preds = %70, %69
  %75 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %76 = call i32 @skb_clear_hash_if_not_l4(%struct.sk_buff* %75)
  %77 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %78 = call i32 @__vlan_hwaccel_clear_tag(%struct.sk_buff* %77)
  %79 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %80 = call i32 @skb_set_queue_mapping(%struct.sk_buff* %79, i32 0)
  %81 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %82 = load i32, i32* %11, align 4
  %83 = call i32 @skb_scrub_packet(%struct.sk_buff* %81, i32 %82)
  %84 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %85 = call i32 @iptunnel_pull_offloads(%struct.sk_buff* %84)
  store i32 %85, i32* %6, align 4
  br label %86

86:                                               ; preds = %74, %44, %21
  %87 = load i32, i32* %6, align 4
  ret i32 %87
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @pskb_may_pull(%struct.sk_buff*, i32) #1

declare dso_local i32 @skb_pull_rcsum(%struct.sk_buff*, i32) #1

declare dso_local i64 @htons(i32) #1

declare dso_local i64 @likely(i32) #1

declare dso_local i32 @eth_proto_is_802_3(i64) #1

declare dso_local i32 @skb_clear_hash_if_not_l4(%struct.sk_buff*) #1

declare dso_local i32 @__vlan_hwaccel_clear_tag(%struct.sk_buff*) #1

declare dso_local i32 @skb_set_queue_mapping(%struct.sk_buff*, i32) #1

declare dso_local i32 @skb_scrub_packet(%struct.sk_buff*, i32) #1

declare dso_local i32 @iptunnel_pull_offloads(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
