; ModuleID = '/home/carl/AnghaBench/linux/net/ipv6/extr_tcpv6_offload.c_tcp6_gso_segment.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv6/extr_tcpv6_offload.c_tcp6_gso_segment.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i64 }
%struct.tcphdr = type { i64 }
%struct.ipv6hdr = type { i32, i32 }
%struct.TYPE_2__ = type { i32 }

@SKB_GSO_TCPV6 = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@CHECKSUM_PARTIAL = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.sk_buff* (%struct.sk_buff*, i32)* @tcp6_gso_segment to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.sk_buff* @tcp6_gso_segment(%struct.sk_buff* %0, i32 %1) #0 {
  %3 = alloca %struct.sk_buff*, align 8
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.tcphdr*, align 8
  %7 = alloca %struct.ipv6hdr*, align 8
  %8 = alloca %struct.tcphdr*, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %10 = call %struct.TYPE_2__* @skb_shinfo(%struct.sk_buff* %9)
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = load i32, i32* @SKB_GSO_TCPV6, align 4
  %14 = and i32 %12, %13
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %20, label %16

16:                                               ; preds = %2
  %17 = load i32, i32* @EINVAL, align 4
  %18 = sub nsw i32 0, %17
  %19 = call %struct.sk_buff* @ERR_PTR(i32 %18)
  store %struct.sk_buff* %19, %struct.sk_buff** %3, align 8
  br label %57

20:                                               ; preds = %2
  %21 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %22 = call i32 @pskb_may_pull(%struct.sk_buff* %21, i32 8)
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %28, label %24

24:                                               ; preds = %20
  %25 = load i32, i32* @EINVAL, align 4
  %26 = sub nsw i32 0, %25
  %27 = call %struct.sk_buff* @ERR_PTR(i32 %26)
  store %struct.sk_buff* %27, %struct.sk_buff** %3, align 8
  br label %57

28:                                               ; preds = %20
  %29 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %30 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* @CHECKSUM_PARTIAL, align 8
  %33 = icmp ne i64 %31, %32
  %34 = zext i1 %33 to i32
  %35 = call i64 @unlikely(i32 %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %53

37:                                               ; preds = %28
  %38 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %39 = call %struct.ipv6hdr* @ipv6_hdr(%struct.sk_buff* %38)
  store %struct.ipv6hdr* %39, %struct.ipv6hdr** %7, align 8
  %40 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %41 = call %struct.tcphdr* @tcp_hdr(%struct.sk_buff* %40)
  store %struct.tcphdr* %41, %struct.tcphdr** %8, align 8
  %42 = load %struct.tcphdr*, %struct.tcphdr** %8, align 8
  %43 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %42, i32 0, i32 0
  store i64 0, i64* %43, align 8
  %44 = load i64, i64* @CHECKSUM_PARTIAL, align 8
  %45 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %46 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %45, i32 0, i32 0
  store i64 %44, i64* %46, align 8
  %47 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %48 = load %struct.ipv6hdr*, %struct.ipv6hdr** %7, align 8
  %49 = getelementptr inbounds %struct.ipv6hdr, %struct.ipv6hdr* %48, i32 0, i32 1
  %50 = load %struct.ipv6hdr*, %struct.ipv6hdr** %7, align 8
  %51 = getelementptr inbounds %struct.ipv6hdr, %struct.ipv6hdr* %50, i32 0, i32 0
  %52 = call i32 @__tcp_v6_send_check(%struct.sk_buff* %47, i32* %49, i32* %51)
  br label %53

53:                                               ; preds = %37, %28
  %54 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %55 = load i32, i32* %5, align 4
  %56 = call %struct.sk_buff* @tcp_gso_segment(%struct.sk_buff* %54, i32 %55)
  store %struct.sk_buff* %56, %struct.sk_buff** %3, align 8
  br label %57

57:                                               ; preds = %53, %24, %16
  %58 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  ret %struct.sk_buff* %58
}

declare dso_local %struct.TYPE_2__* @skb_shinfo(%struct.sk_buff*) #1

declare dso_local %struct.sk_buff* @ERR_PTR(i32) #1

declare dso_local i32 @pskb_may_pull(%struct.sk_buff*, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local %struct.ipv6hdr* @ipv6_hdr(%struct.sk_buff*) #1

declare dso_local %struct.tcphdr* @tcp_hdr(%struct.sk_buff*) #1

declare dso_local i32 @__tcp_v6_send_check(%struct.sk_buff*, i32*, i32*) #1

declare dso_local %struct.sk_buff* @tcp_gso_segment(%struct.sk_buff*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
