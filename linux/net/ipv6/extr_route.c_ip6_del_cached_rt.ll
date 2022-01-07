; ModuleID = '/home/carl/AnghaBench/linux/net/ipv6/extr_route.c_ip6_del_cached_rt.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv6/extr_route.c_ip6_del_cached_rt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fib6_config = type { i32, i32 }
%struct.fib6_info = type { i32 }
%struct.fib6_nh = type { i32 }
%struct.fib6_result = type { %struct.fib6_nh*, %struct.fib6_info* }
%struct.rt6_info = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fib6_config*, %struct.fib6_info*, %struct.fib6_nh*)* @ip6_del_cached_rt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ip6_del_cached_rt(%struct.fib6_config* %0, %struct.fib6_info* %1, %struct.fib6_nh* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.fib6_config*, align 8
  %6 = alloca %struct.fib6_info*, align 8
  %7 = alloca %struct.fib6_nh*, align 8
  %8 = alloca %struct.fib6_result, align 8
  %9 = alloca %struct.rt6_info*, align 8
  store %struct.fib6_config* %0, %struct.fib6_config** %5, align 8
  store %struct.fib6_info* %1, %struct.fib6_info** %6, align 8
  store %struct.fib6_nh* %2, %struct.fib6_nh** %7, align 8
  %10 = getelementptr inbounds %struct.fib6_result, %struct.fib6_result* %8, i32 0, i32 0
  %11 = load %struct.fib6_nh*, %struct.fib6_nh** %7, align 8
  store %struct.fib6_nh* %11, %struct.fib6_nh** %10, align 8
  %12 = getelementptr inbounds %struct.fib6_result, %struct.fib6_result* %8, i32 0, i32 1
  %13 = load %struct.fib6_info*, %struct.fib6_info** %6, align 8
  store %struct.fib6_info* %13, %struct.fib6_info** %12, align 8
  %14 = load %struct.fib6_config*, %struct.fib6_config** %5, align 8
  %15 = getelementptr inbounds %struct.fib6_config, %struct.fib6_config* %14, i32 0, i32 1
  %16 = load %struct.fib6_config*, %struct.fib6_config** %5, align 8
  %17 = getelementptr inbounds %struct.fib6_config, %struct.fib6_config* %16, i32 0, i32 0
  %18 = call %struct.rt6_info* @rt6_find_cached_rt(%struct.fib6_result* %8, i32* %15, i32* %17)
  store %struct.rt6_info* %18, %struct.rt6_info** %9, align 8
  %19 = load %struct.rt6_info*, %struct.rt6_info** %9, align 8
  %20 = icmp ne %struct.rt6_info* %19, null
  br i1 %20, label %21, label %25

21:                                               ; preds = %3
  %22 = load %struct.rt6_info*, %struct.rt6_info** %9, align 8
  %23 = load %struct.fib6_config*, %struct.fib6_config** %5, align 8
  %24 = call i32 @__ip6_del_cached_rt(%struct.rt6_info* %22, %struct.fib6_config* %23)
  store i32 %24, i32* %4, align 4
  br label %26

25:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %26

26:                                               ; preds = %25, %21
  %27 = load i32, i32* %4, align 4
  ret i32 %27
}

declare dso_local %struct.rt6_info* @rt6_find_cached_rt(%struct.fib6_result*, i32*, i32*) #1

declare dso_local i32 @__ip6_del_cached_rt(%struct.rt6_info*, %struct.fib6_config*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
