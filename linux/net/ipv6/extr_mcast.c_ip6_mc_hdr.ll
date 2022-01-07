; ModuleID = '/home/carl/AnghaBench/linux/net/ipv6/extr_mcast.c_ip6_mc_hdr.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv6/extr_mcast.c_ip6_mc_hdr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i32 }
%struct.sk_buff = type { %struct.net_device*, i8* }
%struct.net_device = type { i32 }
%struct.in6_addr = type { i32 }
%struct.ipv6hdr = type { i32, %struct.in6_addr, %struct.in6_addr, i32, i8* }
%struct.TYPE_2__ = type { i32 }

@ETH_P_IPV6 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sock*, %struct.sk_buff*, %struct.net_device*, %struct.in6_addr*, %struct.in6_addr*, i32, i32)* @ip6_mc_hdr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ip6_mc_hdr(%struct.sock* %0, %struct.sk_buff* %1, %struct.net_device* %2, %struct.in6_addr* %3, %struct.in6_addr* %4, i32 %5, i32 %6) #0 {
  %8 = alloca %struct.sock*, align 8
  %9 = alloca %struct.sk_buff*, align 8
  %10 = alloca %struct.net_device*, align 8
  %11 = alloca %struct.in6_addr*, align 8
  %12 = alloca %struct.in6_addr*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.ipv6hdr*, align 8
  store %struct.sock* %0, %struct.sock** %8, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %9, align 8
  store %struct.net_device* %2, %struct.net_device** %10, align 8
  store %struct.in6_addr* %3, %struct.in6_addr** %11, align 8
  store %struct.in6_addr* %4, %struct.in6_addr** %12, align 8
  store i32 %5, i32* %13, align 4
  store i32 %6, i32* %14, align 4
  %16 = load i32, i32* @ETH_P_IPV6, align 4
  %17 = call i8* @htons(i32 %16)
  %18 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %19 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %18, i32 0, i32 1
  store i8* %17, i8** %19, align 8
  %20 = load %struct.net_device*, %struct.net_device** %10, align 8
  %21 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %22 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %21, i32 0, i32 0
  store %struct.net_device* %20, %struct.net_device** %22, align 8
  %23 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %24 = call i32 @skb_reset_network_header(%struct.sk_buff* %23)
  %25 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %26 = call i32 @skb_put(%struct.sk_buff* %25, i32 24)
  %27 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %28 = call %struct.ipv6hdr* @ipv6_hdr(%struct.sk_buff* %27)
  store %struct.ipv6hdr* %28, %struct.ipv6hdr** %15, align 8
  %29 = load %struct.ipv6hdr*, %struct.ipv6hdr** %15, align 8
  %30 = call i32 @ip6_flow_hdr(%struct.ipv6hdr* %29, i32 0, i32 0)
  %31 = load i32, i32* %14, align 4
  %32 = call i8* @htons(i32 %31)
  %33 = load %struct.ipv6hdr*, %struct.ipv6hdr** %15, align 8
  %34 = getelementptr inbounds %struct.ipv6hdr, %struct.ipv6hdr* %33, i32 0, i32 4
  store i8* %32, i8** %34, align 8
  %35 = load i32, i32* %13, align 4
  %36 = load %struct.ipv6hdr*, %struct.ipv6hdr** %15, align 8
  %37 = getelementptr inbounds %struct.ipv6hdr, %struct.ipv6hdr* %36, i32 0, i32 0
  store i32 %35, i32* %37, align 8
  %38 = load %struct.sock*, %struct.sock** %8, align 8
  %39 = call %struct.TYPE_2__* @inet6_sk(%struct.sock* %38)
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.ipv6hdr*, %struct.ipv6hdr** %15, align 8
  %43 = getelementptr inbounds %struct.ipv6hdr, %struct.ipv6hdr* %42, i32 0, i32 3
  store i32 %41, i32* %43, align 4
  %44 = load %struct.ipv6hdr*, %struct.ipv6hdr** %15, align 8
  %45 = getelementptr inbounds %struct.ipv6hdr, %struct.ipv6hdr* %44, i32 0, i32 2
  %46 = load %struct.in6_addr*, %struct.in6_addr** %11, align 8
  %47 = bitcast %struct.in6_addr* %45 to i8*
  %48 = bitcast %struct.in6_addr* %46 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %47, i8* align 4 %48, i64 4, i1 false)
  %49 = load %struct.ipv6hdr*, %struct.ipv6hdr** %15, align 8
  %50 = getelementptr inbounds %struct.ipv6hdr, %struct.ipv6hdr* %49, i32 0, i32 1
  %51 = load %struct.in6_addr*, %struct.in6_addr** %12, align 8
  %52 = bitcast %struct.in6_addr* %50 to i8*
  %53 = bitcast %struct.in6_addr* %51 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %52, i8* align 4 %53, i64 4, i1 false)
  ret void
}

declare dso_local i8* @htons(i32) #1

declare dso_local i32 @skb_reset_network_header(%struct.sk_buff*) #1

declare dso_local i32 @skb_put(%struct.sk_buff*, i32) #1

declare dso_local %struct.ipv6hdr* @ipv6_hdr(%struct.sk_buff*) #1

declare dso_local i32 @ip6_flow_hdr(%struct.ipv6hdr*, i32, i32) #1

declare dso_local %struct.TYPE_2__* @inet6_sk(%struct.sock*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
