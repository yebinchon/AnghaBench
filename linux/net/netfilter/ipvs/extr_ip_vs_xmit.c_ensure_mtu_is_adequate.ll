; ModuleID = '/home/carl/AnghaBench/linux/net/netfilter/ipvs/extr_ip_vs_xmit.c_ensure_mtu_is_adequate.c'
source_filename = "/home/carl/AnghaBench/linux/net/netfilter/ipvs/extr_ip_vs_xmit.c_ensure_mtu_is_adequate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.netns_ipvs = type { %struct.net* }
%struct.net = type { i32 }
%struct.ip_vs_iphdr = type { i32 }
%struct.sk_buff = type { i32, i32 }
%struct.TYPE_4__ = type { i32, i32 }

@IP_VS_RT_MODE_TUNNEL = common dso_local global i32 0, align 4
@IP_DF = common dso_local global i32 0, align 4
@ICMP_DEST_UNREACH = common dso_local global i32 0, align 4
@ICMP_FRAG_NEEDED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"frag needed for %pI4\0A\00", align 1
@AF_INET6 = common dso_local global i32 0, align 4
@ICMPV6_PKT_TOOBIG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.netns_ipvs*, i32, i32, %struct.ip_vs_iphdr*, %struct.sk_buff*, i32)* @ensure_mtu_is_adequate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ensure_mtu_is_adequate(%struct.netns_ipvs* %0, i32 %1, i32 %2, %struct.ip_vs_iphdr* %3, %struct.sk_buff* %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.netns_ipvs*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.ip_vs_iphdr*, align 8
  %12 = alloca %struct.sk_buff*, align 8
  %13 = alloca i32, align 4
  store %struct.netns_ipvs* %0, %struct.netns_ipvs** %8, align 8
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store %struct.ip_vs_iphdr* %3, %struct.ip_vs_iphdr** %11, align 8
  store %struct.sk_buff* %4, %struct.sk_buff** %12, align 8
  store i32 %5, i32* %13, align 4
  %14 = load i32, i32* %10, align 4
  %15 = load i32, i32* @IP_VS_RT_MODE_TUNNEL, align 4
  %16 = and i32 %14, %15
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %23

18:                                               ; preds = %6
  %19 = load %struct.netns_ipvs*, %struct.netns_ipvs** %8, align 8
  %20 = call i32 @sysctl_pmtu_disc(%struct.netns_ipvs* %19)
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %23, label %22

22:                                               ; preds = %18
  store i32 1, i32* %7, align 4
  br label %64

23:                                               ; preds = %18, %6
  %24 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %25 = call %struct.TYPE_4__* @ip_hdr(%struct.sk_buff* %24)
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* @IP_DF, align 4
  %29 = call i32 @htons(i32 %28)
  %30 = and i32 %27, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %47

32:                                               ; preds = %23
  %33 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %34 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* %13, align 4
  %37 = icmp sgt i32 %35, %36
  br i1 %37, label %38, label %47

38:                                               ; preds = %32
  %39 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %40 = call i32 @skb_is_gso(%struct.sk_buff* %39)
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %47, label %42

42:                                               ; preds = %38
  %43 = load %struct.ip_vs_iphdr*, %struct.ip_vs_iphdr** %11, align 8
  %44 = call i32 @ip_vs_iph_icmp(%struct.ip_vs_iphdr* %43)
  %45 = icmp ne i32 %44, 0
  %46 = xor i1 %45, true
  br label %47

47:                                               ; preds = %42, %38, %32, %23
  %48 = phi i1 [ false, %38 ], [ false, %32 ], [ false, %23 ], [ %46, %42 ]
  %49 = zext i1 %48 to i32
  %50 = call i64 @unlikely(i32 %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %63

52:                                               ; preds = %47
  %53 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %54 = load i32, i32* @ICMP_DEST_UNREACH, align 4
  %55 = load i32, i32* @ICMP_FRAG_NEEDED, align 4
  %56 = load i32, i32* %13, align 4
  %57 = call i32 @htonl(i32 %56)
  %58 = call i32 @icmp_send(%struct.sk_buff* %53, i32 %54, i32 %55, i32 %57)
  %59 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %60 = call %struct.TYPE_4__* @ip_hdr(%struct.sk_buff* %59)
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %60, i32 0, i32 1
  %62 = call i32 @IP_VS_DBG(i32 1, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32* %61)
  store i32 0, i32* %7, align 4
  br label %64

63:                                               ; preds = %47
  store i32 1, i32* %7, align 4
  br label %64

64:                                               ; preds = %63, %52, %22
  %65 = load i32, i32* %7, align 4
  ret i32 %65
}

declare dso_local i32 @sysctl_pmtu_disc(%struct.netns_ipvs*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local %struct.TYPE_4__* @ip_hdr(%struct.sk_buff*) #1

declare dso_local i32 @htons(i32) #1

declare dso_local i32 @skb_is_gso(%struct.sk_buff*) #1

declare dso_local i32 @ip_vs_iph_icmp(%struct.ip_vs_iphdr*) #1

declare dso_local i32 @icmp_send(%struct.sk_buff*, i32, i32, i32) #1

declare dso_local i32 @htonl(i32) #1

declare dso_local i32 @IP_VS_DBG(i32, i8*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
