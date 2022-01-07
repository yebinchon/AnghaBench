; ModuleID = '/home/carl/AnghaBench/linux/net/sched/extr_act_csum.c_tcf_csum_ipv4_tcp.c'
source_filename = "/home/carl/AnghaBench/linux/net/sched/extr_act_csum.c_tcf_csum_ipv4_tcp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32, i32 }
%struct.tcphdr = type { i64 }
%struct.iphdr = type { i32, i32 }
%struct.TYPE_2__ = type { i32 }

@SKB_GSO_TCPV4 = common dso_local global i32 0, align 4
@CHECKSUM_NONE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, i32, i32)* @tcf_csum_ipv4_tcp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tcf_csum_ipv4_tcp(%struct.sk_buff* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.tcphdr*, align 8
  %9 = alloca %struct.iphdr*, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %10 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %11 = call i64 @skb_is_gso(%struct.sk_buff* %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %22

13:                                               ; preds = %3
  %14 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %15 = call %struct.TYPE_2__* @skb_shinfo(%struct.sk_buff* %14)
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* @SKB_GSO_TCPV4, align 4
  %19 = and i32 %17, %18
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %13
  store i32 1, i32* %4, align 4
  br label %60

22:                                               ; preds = %13, %3
  %23 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %24 = load i32, i32* %6, align 4
  %25 = load i32, i32* %7, align 4
  %26 = call %struct.tcphdr* @tcf_csum_skb_nextlayer(%struct.sk_buff* %23, i32 %24, i32 %25, i32 8)
  store %struct.tcphdr* %26, %struct.tcphdr** %8, align 8
  %27 = load %struct.tcphdr*, %struct.tcphdr** %8, align 8
  %28 = icmp eq %struct.tcphdr* %27, null
  br i1 %28, label %29, label %30

29:                                               ; preds = %22
  store i32 0, i32* %4, align 4
  br label %60

30:                                               ; preds = %22
  %31 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %32 = call %struct.iphdr* @ip_hdr(%struct.sk_buff* %31)
  store %struct.iphdr* %32, %struct.iphdr** %9, align 8
  %33 = load %struct.tcphdr*, %struct.tcphdr** %8, align 8
  %34 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %33, i32 0, i32 0
  store i64 0, i64* %34, align 8
  %35 = load %struct.tcphdr*, %struct.tcphdr** %8, align 8
  %36 = load i32, i32* %7, align 4
  %37 = load i32, i32* %6, align 4
  %38 = sub i32 %36, %37
  %39 = call i32 @csum_partial(%struct.tcphdr* %35, i32 %38, i32 0)
  %40 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %41 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %40, i32 0, i32 1
  store i32 %39, i32* %41, align 4
  %42 = load i32, i32* %7, align 4
  %43 = load i32, i32* %6, align 4
  %44 = sub i32 %42, %43
  %45 = load %struct.iphdr*, %struct.iphdr** %9, align 8
  %46 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.iphdr*, %struct.iphdr** %9, align 8
  %49 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %52 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = call i64 @tcp_v4_check(i32 %44, i32 %47, i32 %50, i32 %53)
  %55 = load %struct.tcphdr*, %struct.tcphdr** %8, align 8
  %56 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %55, i32 0, i32 0
  store i64 %54, i64* %56, align 8
  %57 = load i32, i32* @CHECKSUM_NONE, align 4
  %58 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %59 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %58, i32 0, i32 0
  store i32 %57, i32* %59, align 4
  store i32 1, i32* %4, align 4
  br label %60

60:                                               ; preds = %30, %29, %21
  %61 = load i32, i32* %4, align 4
  ret i32 %61
}

declare dso_local i64 @skb_is_gso(%struct.sk_buff*) #1

declare dso_local %struct.TYPE_2__* @skb_shinfo(%struct.sk_buff*) #1

declare dso_local %struct.tcphdr* @tcf_csum_skb_nextlayer(%struct.sk_buff*, i32, i32, i32) #1

declare dso_local %struct.iphdr* @ip_hdr(%struct.sk_buff*) #1

declare dso_local i32 @csum_partial(%struct.tcphdr*, i32, i32) #1

declare dso_local i64 @tcp_v4_check(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
