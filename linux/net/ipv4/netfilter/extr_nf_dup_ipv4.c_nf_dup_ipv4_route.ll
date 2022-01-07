; ModuleID = '/home/carl/AnghaBench/linux/net/ipv4/netfilter/extr_nf_dup_ipv4.c_nf_dup_ipv4_route.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv4/netfilter/extr_nf_dup_ipv4.c_nf_dup_ipv4_route.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net = type { i32 }
%struct.sk_buff = type { i32, i32 }
%struct.in_addr = type { i32 }
%struct.iphdr = type { i32 }
%struct.rtable = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.flowi4 = type { i32, i32, i32, i32, i32 }

@RT_SCOPE_UNIVERSE = common dso_local global i32 0, align 4
@FLOWI_FLAG_KNOWN_NH = common dso_local global i32 0, align 4
@ETH_P_IP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net*, %struct.sk_buff*, %struct.in_addr*, i32)* @nf_dup_ipv4_route to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nf_dup_ipv4_route(%struct.net* %0, %struct.sk_buff* %1, %struct.in_addr* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.net*, align 8
  %7 = alloca %struct.sk_buff*, align 8
  %8 = alloca %struct.in_addr*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.iphdr*, align 8
  %11 = alloca %struct.rtable*, align 8
  %12 = alloca %struct.flowi4, align 4
  store %struct.net* %0, %struct.net** %6, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %7, align 8
  store %struct.in_addr* %2, %struct.in_addr** %8, align 8
  store i32 %3, i32* %9, align 4
  %13 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %14 = call %struct.iphdr* @ip_hdr(%struct.sk_buff* %13)
  store %struct.iphdr* %14, %struct.iphdr** %10, align 8
  %15 = call i32 @memset(%struct.flowi4* %12, i32 0, i32 20)
  %16 = load i32, i32* %9, align 4
  %17 = icmp ne i32 %16, -1
  br i1 %17, label %18, label %21

18:                                               ; preds = %4
  %19 = load i32, i32* %9, align 4
  %20 = getelementptr inbounds %struct.flowi4, %struct.flowi4* %12, i32 0, i32 0
  store i32 %19, i32* %20, align 4
  br label %21

21:                                               ; preds = %18, %4
  %22 = load %struct.in_addr*, %struct.in_addr** %8, align 8
  %23 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = getelementptr inbounds %struct.flowi4, %struct.flowi4* %12, i32 0, i32 4
  store i32 %24, i32* %25, align 4
  %26 = load %struct.iphdr*, %struct.iphdr** %10, align 8
  %27 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @RT_TOS(i32 %28)
  %30 = getelementptr inbounds %struct.flowi4, %struct.flowi4* %12, i32 0, i32 3
  store i32 %29, i32* %30, align 4
  %31 = load i32, i32* @RT_SCOPE_UNIVERSE, align 4
  %32 = getelementptr inbounds %struct.flowi4, %struct.flowi4* %12, i32 0, i32 2
  store i32 %31, i32* %32, align 4
  %33 = load i32, i32* @FLOWI_FLAG_KNOWN_NH, align 4
  %34 = getelementptr inbounds %struct.flowi4, %struct.flowi4* %12, i32 0, i32 1
  store i32 %33, i32* %34, align 4
  %35 = load %struct.net*, %struct.net** %6, align 8
  %36 = call %struct.rtable* @ip_route_output_key(%struct.net* %35, %struct.flowi4* %12)
  store %struct.rtable* %36, %struct.rtable** %11, align 8
  %37 = load %struct.rtable*, %struct.rtable** %11, align 8
  %38 = call i64 @IS_ERR(%struct.rtable* %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %21
  store i32 0, i32* %5, align 4
  br label %58

41:                                               ; preds = %21
  %42 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %43 = call i32 @skb_dst_drop(%struct.sk_buff* %42)
  %44 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %45 = load %struct.rtable*, %struct.rtable** %11, align 8
  %46 = getelementptr inbounds %struct.rtable, %struct.rtable* %45, i32 0, i32 0
  %47 = call i32 @skb_dst_set(%struct.sk_buff* %44, %struct.TYPE_2__* %46)
  %48 = load %struct.rtable*, %struct.rtable** %11, align 8
  %49 = getelementptr inbounds %struct.rtable, %struct.rtable* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %53 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %52, i32 0, i32 1
  store i32 %51, i32* %53, align 4
  %54 = load i32, i32* @ETH_P_IP, align 4
  %55 = call i32 @htons(i32 %54)
  %56 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %57 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %56, i32 0, i32 0
  store i32 %55, i32* %57, align 4
  store i32 1, i32* %5, align 4
  br label %58

58:                                               ; preds = %41, %40
  %59 = load i32, i32* %5, align 4
  ret i32 %59
}

declare dso_local %struct.iphdr* @ip_hdr(%struct.sk_buff*) #1

declare dso_local i32 @memset(%struct.flowi4*, i32, i32) #1

declare dso_local i32 @RT_TOS(i32) #1

declare dso_local %struct.rtable* @ip_route_output_key(%struct.net*, %struct.flowi4*) #1

declare dso_local i64 @IS_ERR(%struct.rtable*) #1

declare dso_local i32 @skb_dst_drop(%struct.sk_buff*) #1

declare dso_local i32 @skb_dst_set(%struct.sk_buff*, %struct.TYPE_2__*) #1

declare dso_local i32 @htons(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
