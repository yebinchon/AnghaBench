; ModuleID = '/home/carl/AnghaBench/linux/net/netfilter/ipvs/extr_ip_vs_xmit.c_decrement_ttl.c'
source_filename = "/home/carl/AnghaBench/linux/net/netfilter/ipvs/extr_ip_vs_xmit.c_decrement_ttl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.netns_ipvs = type { %struct.net* }
%struct.net = type { i32 }
%struct.sk_buff = type { i32 }
%struct.TYPE_5__ = type { i32 }

@IPSTATS_MIB_INHDRERRORS = common dso_local global i32 0, align 4
@ICMP_TIME_EXCEEDED = common dso_local global i32 0, align 4
@ICMP_EXC_TTL = common dso_local global i32 0, align 4
@AF_INET6 = common dso_local global i32 0, align 4
@ICMPV6_EXC_HOPLIMIT = common dso_local global i32 0, align 4
@ICMPV6_TIME_EXCEED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.netns_ipvs*, i32, %struct.sk_buff*)* @decrement_ttl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @decrement_ttl(%struct.netns_ipvs* %0, i32 %1, %struct.sk_buff* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.netns_ipvs*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.sk_buff*, align 8
  %8 = alloca %struct.net*, align 8
  store %struct.netns_ipvs* %0, %struct.netns_ipvs** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.sk_buff* %2, %struct.sk_buff** %7, align 8
  %9 = load %struct.netns_ipvs*, %struct.netns_ipvs** %5, align 8
  %10 = getelementptr inbounds %struct.netns_ipvs, %struct.netns_ipvs* %9, i32 0, i32 0
  %11 = load %struct.net*, %struct.net** %10, align 8
  store %struct.net* %11, %struct.net** %8, align 8
  %12 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %13 = call %struct.TYPE_5__* @ip_hdr(%struct.sk_buff* %12)
  %14 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = icmp sle i32 %15, 1
  br i1 %16, label %17, label %25

17:                                               ; preds = %3
  %18 = load %struct.net*, %struct.net** %8, align 8
  %19 = load i32, i32* @IPSTATS_MIB_INHDRERRORS, align 4
  %20 = call i32 @__IP_INC_STATS(%struct.net* %18, i32 %19)
  %21 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %22 = load i32, i32* @ICMP_TIME_EXCEEDED, align 4
  %23 = load i32, i32* @ICMP_EXC_TTL, align 4
  %24 = call i32 @icmp_send(%struct.sk_buff* %21, i32 %22, i32 %23, i32 0)
  store i32 0, i32* %4, align 4
  br label %34

25:                                               ; preds = %3
  %26 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %27 = call i64 @skb_ensure_writable(%struct.sk_buff* %26, i32 4)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %25
  store i32 0, i32* %4, align 4
  br label %34

30:                                               ; preds = %25
  %31 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %32 = call %struct.TYPE_5__* @ip_hdr(%struct.sk_buff* %31)
  %33 = call i32 @ip_decrease_ttl(%struct.TYPE_5__* %32)
  store i32 1, i32* %4, align 4
  br label %34

34:                                               ; preds = %30, %29, %17
  %35 = load i32, i32* %4, align 4
  ret i32 %35
}

declare dso_local %struct.TYPE_5__* @ip_hdr(%struct.sk_buff*) #1

declare dso_local i32 @__IP_INC_STATS(%struct.net*, i32) #1

declare dso_local i32 @icmp_send(%struct.sk_buff*, i32, i32, i32) #1

declare dso_local i64 @skb_ensure_writable(%struct.sk_buff*, i32) #1

declare dso_local i32 @ip_decrease_ttl(%struct.TYPE_5__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
