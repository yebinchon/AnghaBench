; ModuleID = '/home/carl/AnghaBench/linux/net/netfilter/ipvs/extr_ip_vs_core.c_ip_vs_route_me_harder.c'
source_filename = "/home/carl/AnghaBench/linux/net/netfilter/ipvs/extr_ip_vs_core.c_ip_vs_route_me_harder.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.netns_ipvs = type { i32 }
%struct.sk_buff = type { i32 }
%struct.TYPE_4__ = type { i32 }

@NF_INET_LOCAL_IN = common dso_local global i32 0, align 4
@RTCF_LOCAL = common dso_local global i32 0, align 4
@RTN_LOCAL = common dso_local global i32 0, align 4
@AF_INET6 = common dso_local global i32 0, align 4
@IFF_LOOPBACK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.netns_ipvs*, i32, %struct.sk_buff*, i32)* @ip_vs_route_me_harder to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ip_vs_route_me_harder(%struct.netns_ipvs* %0, i32 %1, %struct.sk_buff* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.netns_ipvs*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.sk_buff*, align 8
  %9 = alloca i32, align 4
  store %struct.netns_ipvs* %0, %struct.netns_ipvs** %6, align 8
  store i32 %1, i32* %7, align 4
  store %struct.sk_buff* %2, %struct.sk_buff** %8, align 8
  store i32 %3, i32* %9, align 4
  %10 = load %struct.netns_ipvs*, %struct.netns_ipvs** %6, align 8
  %11 = call i32 @sysctl_snat_reroute(%struct.netns_ipvs* %10)
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %14, label %13

13:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  br label %37

14:                                               ; preds = %4
  %15 = load i32, i32* @NF_INET_LOCAL_IN, align 4
  %16 = load i32, i32* %9, align 4
  %17 = icmp eq i32 %15, %16
  br i1 %17, label %18, label %19

18:                                               ; preds = %14
  store i32 0, i32* %5, align 4
  br label %37

19:                                               ; preds = %14
  %20 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %21 = call %struct.TYPE_4__* @skb_rtable(%struct.sk_buff* %20)
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* @RTCF_LOCAL, align 4
  %25 = and i32 %23, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %36, label %27

27:                                               ; preds = %19
  %28 = load %struct.netns_ipvs*, %struct.netns_ipvs** %6, align 8
  %29 = getelementptr inbounds %struct.netns_ipvs, %struct.netns_ipvs* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %32 = load i32, i32* @RTN_LOCAL, align 4
  %33 = call i64 @ip_route_me_harder(i32 %30, %struct.sk_buff* %31, i32 %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %27
  store i32 1, i32* %5, align 4
  br label %37

36:                                               ; preds = %27, %19
  store i32 0, i32* %5, align 4
  br label %37

37:                                               ; preds = %36, %35, %18, %13
  %38 = load i32, i32* %5, align 4
  ret i32 %38
}

declare dso_local i32 @sysctl_snat_reroute(%struct.netns_ipvs*) #1

declare dso_local %struct.TYPE_4__* @skb_rtable(%struct.sk_buff*) #1

declare dso_local i64 @ip_route_me_harder(i32, %struct.sk_buff*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
