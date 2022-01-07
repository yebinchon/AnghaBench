; ModuleID = '/home/carl/AnghaBench/linux/net/ipv6/extr_route.c_ip6_route_redirect.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv6/extr_route.c_ip6_route_redirect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dst_entry = type { i32 }
%struct.net = type { i32 }
%struct.flowi6 = type { i32 }
%struct.sk_buff = type { i32 }
%struct.in6_addr = type { i32 }
%struct.ip6rd_flowi = type { %struct.flowi6, %struct.in6_addr }

@RT6_LOOKUP_F_HAS_SADDR = common dso_local global i32 0, align 4
@__ip6_route_redirect = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.dst_entry* (%struct.net*, %struct.flowi6*, %struct.sk_buff*, %struct.in6_addr*)* @ip6_route_redirect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.dst_entry* @ip6_route_redirect(%struct.net* %0, %struct.flowi6* %1, %struct.sk_buff* %2, %struct.in6_addr* %3) #0 {
  %5 = alloca %struct.net*, align 8
  %6 = alloca %struct.flowi6*, align 8
  %7 = alloca %struct.sk_buff*, align 8
  %8 = alloca %struct.in6_addr*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.ip6rd_flowi, align 4
  store %struct.net* %0, %struct.net** %5, align 8
  store %struct.flowi6* %1, %struct.flowi6** %6, align 8
  store %struct.sk_buff* %2, %struct.sk_buff** %7, align 8
  store %struct.in6_addr* %3, %struct.in6_addr** %8, align 8
  %11 = load i32, i32* @RT6_LOOKUP_F_HAS_SADDR, align 4
  store i32 %11, i32* %9, align 4
  %12 = getelementptr inbounds %struct.ip6rd_flowi, %struct.ip6rd_flowi* %10, i32 0, i32 0
  %13 = load %struct.flowi6*, %struct.flowi6** %6, align 8
  %14 = bitcast %struct.flowi6* %12 to i8*
  %15 = bitcast %struct.flowi6* %13 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %14, i8* align 4 %15, i64 4, i1 false)
  %16 = getelementptr inbounds %struct.ip6rd_flowi, %struct.ip6rd_flowi* %10, i32 0, i32 1
  %17 = load %struct.in6_addr*, %struct.in6_addr** %8, align 8
  %18 = bitcast %struct.in6_addr* %16 to i8*
  %19 = bitcast %struct.in6_addr* %17 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %18, i8* align 4 %19, i64 4, i1 false)
  %20 = load %struct.net*, %struct.net** %5, align 8
  %21 = getelementptr inbounds %struct.ip6rd_flowi, %struct.ip6rd_flowi* %10, i32 0, i32 0
  %22 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %23 = load i32, i32* %9, align 4
  %24 = load i32, i32* @__ip6_route_redirect, align 4
  %25 = call %struct.dst_entry* @fib6_rule_lookup(%struct.net* %20, %struct.flowi6* %21, %struct.sk_buff* %22, i32 %23, i32 %24)
  ret %struct.dst_entry* %25
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local %struct.dst_entry* @fib6_rule_lookup(%struct.net*, %struct.flowi6*, %struct.sk_buff*, i32, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
