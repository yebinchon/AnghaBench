; ModuleID = '/home/carl/AnghaBench/linux/net/ipv6/extr_route.c_ip6_redirect_nh_match.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv6/extr_route.c_ip6_redirect_nh_match.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fib6_result = type { %struct.fib6_nh* }
%struct.fib6_nh = type { i32, i32, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i64 }
%struct.flowi6 = type { i64, i32, i32 }
%struct.in6_addr = type { i32 }
%struct.rt6_info = type { i32 }

@RTNH_F_DEAD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fib6_result*, %struct.flowi6*, %struct.in6_addr*, %struct.rt6_info**)* @ip6_redirect_nh_match to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ip6_redirect_nh_match(%struct.fib6_result* %0, %struct.flowi6* %1, %struct.in6_addr* %2, %struct.rt6_info** %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.fib6_result*, align 8
  %7 = alloca %struct.flowi6*, align 8
  %8 = alloca %struct.in6_addr*, align 8
  %9 = alloca %struct.rt6_info**, align 8
  %10 = alloca %struct.fib6_nh*, align 8
  %11 = alloca %struct.rt6_info*, align 8
  store %struct.fib6_result* %0, %struct.fib6_result** %6, align 8
  store %struct.flowi6* %1, %struct.flowi6** %7, align 8
  store %struct.in6_addr* %2, %struct.in6_addr** %8, align 8
  store %struct.rt6_info** %3, %struct.rt6_info*** %9, align 8
  %12 = load %struct.fib6_result*, %struct.fib6_result** %6, align 8
  %13 = getelementptr inbounds %struct.fib6_result, %struct.fib6_result* %12, i32 0, i32 0
  %14 = load %struct.fib6_nh*, %struct.fib6_nh** %13, align 8
  store %struct.fib6_nh* %14, %struct.fib6_nh** %10, align 8
  %15 = load %struct.fib6_nh*, %struct.fib6_nh** %10, align 8
  %16 = getelementptr inbounds %struct.fib6_nh, %struct.fib6_nh* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = load i32, i32* @RTNH_F_DEAD, align 4
  %19 = and i32 %17, %18
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %36, label %21

21:                                               ; preds = %4
  %22 = load %struct.fib6_nh*, %struct.fib6_nh** %10, align 8
  %23 = getelementptr inbounds %struct.fib6_nh, %struct.fib6_nh* %22, i32 0, i32 3
  %24 = load i32, i32* %23, align 8
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %36

26:                                               ; preds = %21
  %27 = load %struct.flowi6*, %struct.flowi6** %7, align 8
  %28 = getelementptr inbounds %struct.flowi6, %struct.flowi6* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load %struct.fib6_nh*, %struct.fib6_nh** %10, align 8
  %31 = getelementptr inbounds %struct.fib6_nh, %struct.fib6_nh* %30, i32 0, i32 2
  %32 = load %struct.TYPE_2__*, %struct.TYPE_2__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = icmp ne i64 %29, %34
  br i1 %35, label %36, label %37

36:                                               ; preds = %26, %21, %4
  store i32 0, i32* %5, align 4
  br label %63

37:                                               ; preds = %26
  %38 = load %struct.in6_addr*, %struct.in6_addr** %8, align 8
  %39 = load %struct.fib6_nh*, %struct.fib6_nh** %10, align 8
  %40 = getelementptr inbounds %struct.fib6_nh, %struct.fib6_nh* %39, i32 0, i32 1
  %41 = call i64 @ipv6_addr_equal(%struct.in6_addr* %38, i32* %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %62, label %43

43:                                               ; preds = %37
  %44 = load %struct.fib6_result*, %struct.fib6_result** %6, align 8
  %45 = load %struct.flowi6*, %struct.flowi6** %7, align 8
  %46 = getelementptr inbounds %struct.flowi6, %struct.flowi6* %45, i32 0, i32 2
  %47 = load %struct.flowi6*, %struct.flowi6** %7, align 8
  %48 = getelementptr inbounds %struct.flowi6, %struct.flowi6* %47, i32 0, i32 1
  %49 = call %struct.rt6_info* @rt6_find_cached_rt(%struct.fib6_result* %44, i32* %46, i32* %48)
  store %struct.rt6_info* %49, %struct.rt6_info** %11, align 8
  %50 = load %struct.rt6_info*, %struct.rt6_info** %11, align 8
  %51 = icmp ne %struct.rt6_info* %50, null
  br i1 %51, label %52, label %61

52:                                               ; preds = %43
  %53 = load %struct.in6_addr*, %struct.in6_addr** %8, align 8
  %54 = load %struct.rt6_info*, %struct.rt6_info** %11, align 8
  %55 = getelementptr inbounds %struct.rt6_info, %struct.rt6_info* %54, i32 0, i32 0
  %56 = call i64 @ipv6_addr_equal(%struct.in6_addr* %53, i32* %55)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %61

58:                                               ; preds = %52
  %59 = load %struct.rt6_info*, %struct.rt6_info** %11, align 8
  %60 = load %struct.rt6_info**, %struct.rt6_info*** %9, align 8
  store %struct.rt6_info* %59, %struct.rt6_info** %60, align 8
  store i32 1, i32* %5, align 4
  br label %63

61:                                               ; preds = %52, %43
  store i32 0, i32* %5, align 4
  br label %63

62:                                               ; preds = %37
  store i32 1, i32* %5, align 4
  br label %63

63:                                               ; preds = %62, %61, %58, %36
  %64 = load i32, i32* %5, align 4
  ret i32 %64
}

declare dso_local i64 @ipv6_addr_equal(%struct.in6_addr*, i32*) #1

declare dso_local %struct.rt6_info* @rt6_find_cached_rt(%struct.fib6_result*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
