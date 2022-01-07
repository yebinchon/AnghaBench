; ModuleID = '/home/carl/AnghaBench/linux/net/ipv6/extr_route.c_ip6_rt_cache_alloc.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv6/extr_route.c_ip6_rt_cache_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rt6_info = type { %struct.TYPE_8__, i32, %struct.TYPE_6__, %struct.TYPE_5__ }
%struct.TYPE_8__ = type { i32, %struct.in6_addr }
%struct.in6_addr = type { i32 }
%struct.TYPE_6__ = type { i32, %struct.in6_addr }
%struct.TYPE_5__ = type { i32 }
%struct.fib6_result = type { %struct.fib6_info* }
%struct.fib6_info = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32, i32 }
%struct.net_device = type { i32 }

@RTF_CACHE = common dso_local global i32 0, align 4
@DST_HOST = common dso_local global i32 0, align 4
@RTF_ANYCAST = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.rt6_info* (%struct.fib6_result*, %struct.in6_addr*, %struct.in6_addr*)* @ip6_rt_cache_alloc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.rt6_info* @ip6_rt_cache_alloc(%struct.fib6_result* %0, %struct.in6_addr* %1, %struct.in6_addr* %2) #0 {
  %4 = alloca %struct.rt6_info*, align 8
  %5 = alloca %struct.fib6_result*, align 8
  %6 = alloca %struct.in6_addr*, align 8
  %7 = alloca %struct.in6_addr*, align 8
  %8 = alloca %struct.fib6_info*, align 8
  %9 = alloca %struct.net_device*, align 8
  %10 = alloca %struct.rt6_info*, align 8
  store %struct.fib6_result* %0, %struct.fib6_result** %5, align 8
  store %struct.in6_addr* %1, %struct.in6_addr** %6, align 8
  store %struct.in6_addr* %2, %struct.in6_addr** %7, align 8
  %11 = load %struct.fib6_result*, %struct.fib6_result** %5, align 8
  %12 = getelementptr inbounds %struct.fib6_result, %struct.fib6_result* %11, i32 0, i32 0
  %13 = load %struct.fib6_info*, %struct.fib6_info** %12, align 8
  store %struct.fib6_info* %13, %struct.fib6_info** %8, align 8
  %14 = load %struct.fib6_info*, %struct.fib6_info** %8, align 8
  %15 = call i32 @fib6_info_hold_safe(%struct.fib6_info* %14)
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %18, label %17

17:                                               ; preds = %3
  store %struct.rt6_info* null, %struct.rt6_info** %4, align 8
  br label %79

18:                                               ; preds = %3
  %19 = load %struct.fib6_result*, %struct.fib6_result** %5, align 8
  %20 = call %struct.net_device* @ip6_rt_get_dev_rcu(%struct.fib6_result* %19)
  store %struct.net_device* %20, %struct.net_device** %9, align 8
  %21 = load %struct.net_device*, %struct.net_device** %9, align 8
  %22 = call i32 @dev_net(%struct.net_device* %21)
  %23 = load %struct.net_device*, %struct.net_device** %9, align 8
  %24 = call %struct.rt6_info* @ip6_dst_alloc(i32 %22, %struct.net_device* %23, i32 0)
  store %struct.rt6_info* %24, %struct.rt6_info** %10, align 8
  %25 = load %struct.rt6_info*, %struct.rt6_info** %10, align 8
  %26 = icmp ne %struct.rt6_info* %25, null
  br i1 %26, label %30, label %27

27:                                               ; preds = %18
  %28 = load %struct.fib6_info*, %struct.fib6_info** %8, align 8
  %29 = call i32 @fib6_info_release(%struct.fib6_info* %28)
  store %struct.rt6_info* null, %struct.rt6_info** %4, align 8
  br label %79

30:                                               ; preds = %18
  %31 = load %struct.rt6_info*, %struct.rt6_info** %10, align 8
  %32 = load %struct.fib6_result*, %struct.fib6_result** %5, align 8
  %33 = call i32 @ip6_rt_copy_init(%struct.rt6_info* %31, %struct.fib6_result* %32)
  %34 = load i32, i32* @RTF_CACHE, align 4
  %35 = load %struct.rt6_info*, %struct.rt6_info** %10, align 8
  %36 = getelementptr inbounds %struct.rt6_info, %struct.rt6_info* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = or i32 %37, %34
  store i32 %38, i32* %36, align 4
  %39 = load i32, i32* @DST_HOST, align 4
  %40 = load %struct.rt6_info*, %struct.rt6_info** %10, align 8
  %41 = getelementptr inbounds %struct.rt6_info, %struct.rt6_info* %40, i32 0, i32 3
  %42 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = or i32 %43, %39
  store i32 %44, i32* %42, align 4
  %45 = load %struct.rt6_info*, %struct.rt6_info** %10, align 8
  %46 = getelementptr inbounds %struct.rt6_info, %struct.rt6_info* %45, i32 0, i32 2
  %47 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %46, i32 0, i32 1
  %48 = load %struct.in6_addr*, %struct.in6_addr** %6, align 8
  %49 = bitcast %struct.in6_addr* %47 to i8*
  %50 = bitcast %struct.in6_addr* %48 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %49, i8* align 4 %50, i64 4, i1 false)
  %51 = load %struct.rt6_info*, %struct.rt6_info** %10, align 8
  %52 = getelementptr inbounds %struct.rt6_info, %struct.rt6_info* %51, i32 0, i32 2
  %53 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %52, i32 0, i32 0
  store i32 128, i32* %53, align 4
  %54 = load %struct.fib6_result*, %struct.fib6_result** %5, align 8
  %55 = call i32 @rt6_is_gw_or_nonexthop(%struct.fib6_result* %54)
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %77, label %57

57:                                               ; preds = %30
  %58 = load %struct.fib6_info*, %struct.fib6_info** %8, align 8
  %59 = getelementptr inbounds %struct.fib6_info, %struct.fib6_info* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = icmp ne i32 %61, 128
  br i1 %62, label %63, label %76

63:                                               ; preds = %57
  %64 = load %struct.fib6_info*, %struct.fib6_info** %8, align 8
  %65 = getelementptr inbounds %struct.fib6_info, %struct.fib6_info* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %65, i32 0, i32 1
  %67 = load %struct.in6_addr*, %struct.in6_addr** %6, align 8
  %68 = call i64 @ipv6_addr_equal(i32* %66, %struct.in6_addr* %67)
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %76

70:                                               ; preds = %63
  %71 = load i32, i32* @RTF_ANYCAST, align 4
  %72 = load %struct.rt6_info*, %struct.rt6_info** %10, align 8
  %73 = getelementptr inbounds %struct.rt6_info, %struct.rt6_info* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 4
  %75 = or i32 %74, %71
  store i32 %75, i32* %73, align 4
  br label %76

76:                                               ; preds = %70, %63, %57
  br label %77

77:                                               ; preds = %76, %30
  %78 = load %struct.rt6_info*, %struct.rt6_info** %10, align 8
  store %struct.rt6_info* %78, %struct.rt6_info** %4, align 8
  br label %79

79:                                               ; preds = %77, %27, %17
  %80 = load %struct.rt6_info*, %struct.rt6_info** %4, align 8
  ret %struct.rt6_info* %80
}

declare dso_local i32 @fib6_info_hold_safe(%struct.fib6_info*) #1

declare dso_local %struct.net_device* @ip6_rt_get_dev_rcu(%struct.fib6_result*) #1

declare dso_local %struct.rt6_info* @ip6_dst_alloc(i32, %struct.net_device*, i32) #1

declare dso_local i32 @dev_net(%struct.net_device*) #1

declare dso_local i32 @fib6_info_release(%struct.fib6_info*) #1

declare dso_local i32 @ip6_rt_copy_init(%struct.rt6_info*, %struct.fib6_result*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @rt6_is_gw_or_nonexthop(%struct.fib6_result*) #1

declare dso_local i64 @ipv6_addr_equal(i32*, %struct.in6_addr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
