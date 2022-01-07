; ModuleID = '/home/carl/AnghaBench/linux/net/ipv6/extr_ndisc.c_ip6_nd_hdr.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv6/extr_ndisc.c_ip6_nd_hdr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.in6_addr = type { i32 }
%struct.ipv6hdr = type { i32, %struct.in6_addr, %struct.in6_addr, i32, i32 }
%struct.inet6_dev = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@IPPROTO_ICMPV6 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sk_buff*, %struct.in6_addr*, %struct.in6_addr*, i32, i32)* @ip6_nd_hdr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ip6_nd_hdr(%struct.sk_buff* %0, %struct.in6_addr* %1, %struct.in6_addr* %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca %struct.in6_addr*, align 8
  %8 = alloca %struct.in6_addr*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.ipv6hdr*, align 8
  %12 = alloca %struct.inet6_dev*, align 8
  %13 = alloca i32, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %6, align 8
  store %struct.in6_addr* %1, %struct.in6_addr** %7, align 8
  store %struct.in6_addr* %2, %struct.in6_addr** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %14 = call i32 (...) @rcu_read_lock()
  %15 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %16 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call %struct.inet6_dev* @__in6_dev_get(i32 %17)
  store %struct.inet6_dev* %18, %struct.inet6_dev** %12, align 8
  %19 = load %struct.inet6_dev*, %struct.inet6_dev** %12, align 8
  %20 = icmp ne %struct.inet6_dev* %19, null
  br i1 %20, label %21, label %26

21:                                               ; preds = %5
  %22 = load %struct.inet6_dev*, %struct.inet6_dev** %12, align 8
  %23 = getelementptr inbounds %struct.inet6_dev, %struct.inet6_dev* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  br label %27

26:                                               ; preds = %5
  br label %27

27:                                               ; preds = %26, %21
  %28 = phi i32 [ %25, %21 ], [ 0, %26 ]
  store i32 %28, i32* %13, align 4
  %29 = call i32 (...) @rcu_read_unlock()
  %30 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %31 = call i32 @skb_push(%struct.sk_buff* %30, i32 20)
  %32 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %33 = call i32 @skb_reset_network_header(%struct.sk_buff* %32)
  %34 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %35 = call %struct.ipv6hdr* @ipv6_hdr(%struct.sk_buff* %34)
  store %struct.ipv6hdr* %35, %struct.ipv6hdr** %11, align 8
  %36 = load %struct.ipv6hdr*, %struct.ipv6hdr** %11, align 8
  %37 = load i32, i32* %13, align 4
  %38 = call i32 @ip6_flow_hdr(%struct.ipv6hdr* %36, i32 %37, i32 0)
  %39 = load i32, i32* %10, align 4
  %40 = call i32 @htons(i32 %39)
  %41 = load %struct.ipv6hdr*, %struct.ipv6hdr** %11, align 8
  %42 = getelementptr inbounds %struct.ipv6hdr, %struct.ipv6hdr* %41, i32 0, i32 4
  store i32 %40, i32* %42, align 4
  %43 = load i32, i32* @IPPROTO_ICMPV6, align 4
  %44 = load %struct.ipv6hdr*, %struct.ipv6hdr** %11, align 8
  %45 = getelementptr inbounds %struct.ipv6hdr, %struct.ipv6hdr* %44, i32 0, i32 3
  store i32 %43, i32* %45, align 4
  %46 = load i32, i32* %9, align 4
  %47 = load %struct.ipv6hdr*, %struct.ipv6hdr** %11, align 8
  %48 = getelementptr inbounds %struct.ipv6hdr, %struct.ipv6hdr* %47, i32 0, i32 0
  store i32 %46, i32* %48, align 4
  %49 = load %struct.ipv6hdr*, %struct.ipv6hdr** %11, align 8
  %50 = getelementptr inbounds %struct.ipv6hdr, %struct.ipv6hdr* %49, i32 0, i32 2
  %51 = load %struct.in6_addr*, %struct.in6_addr** %7, align 8
  %52 = bitcast %struct.in6_addr* %50 to i8*
  %53 = bitcast %struct.in6_addr* %51 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %52, i8* align 4 %53, i64 4, i1 false)
  %54 = load %struct.ipv6hdr*, %struct.ipv6hdr** %11, align 8
  %55 = getelementptr inbounds %struct.ipv6hdr, %struct.ipv6hdr* %54, i32 0, i32 1
  %56 = load %struct.in6_addr*, %struct.in6_addr** %8, align 8
  %57 = bitcast %struct.in6_addr* %55 to i8*
  %58 = bitcast %struct.in6_addr* %56 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %57, i8* align 4 %58, i64 4, i1 false)
  ret void
}

declare dso_local i32 @rcu_read_lock(...) #1

declare dso_local %struct.inet6_dev* @__in6_dev_get(i32) #1

declare dso_local i32 @rcu_read_unlock(...) #1

declare dso_local i32 @skb_push(%struct.sk_buff*, i32) #1

declare dso_local i32 @skb_reset_network_header(%struct.sk_buff*) #1

declare dso_local %struct.ipv6hdr* @ipv6_hdr(%struct.sk_buff*) #1

declare dso_local i32 @ip6_flow_hdr(%struct.ipv6hdr*, i32, i32) #1

declare dso_local i32 @htons(i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
