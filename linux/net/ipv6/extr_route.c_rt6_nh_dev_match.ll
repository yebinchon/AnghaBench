; ModuleID = '/home/carl/AnghaBench/linux/net/ipv6/extr_route.c_rt6_nh_dev_match.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv6/extr_route.c_rt6_nh_dev_match.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fib6_nh = type { i32 }
%struct.net = type { i32 }
%struct.nexthop = type { i32 }
%struct.fib6_result = type { i32 }
%struct.in6_addr = type { i32 }
%struct.fib6_nh_dm_arg = type { i32, i32, %struct.fib6_nh*, %struct.in6_addr*, %struct.net* }

@__rt6_nh_dev_match = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.fib6_nh* (%struct.net*, %struct.nexthop*, %struct.fib6_result*, %struct.in6_addr*, i32, i32)* @rt6_nh_dev_match to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.fib6_nh* @rt6_nh_dev_match(%struct.net* %0, %struct.nexthop* %1, %struct.fib6_result* %2, %struct.in6_addr* %3, i32 %4, i32 %5) #0 {
  %7 = alloca %struct.fib6_nh*, align 8
  %8 = alloca %struct.net*, align 8
  %9 = alloca %struct.nexthop*, align 8
  %10 = alloca %struct.fib6_result*, align 8
  %11 = alloca %struct.in6_addr*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.fib6_nh_dm_arg, align 8
  store %struct.net* %0, %struct.net** %8, align 8
  store %struct.nexthop* %1, %struct.nexthop** %9, align 8
  store %struct.fib6_result* %2, %struct.fib6_result** %10, align 8
  store %struct.in6_addr* %3, %struct.in6_addr** %11, align 8
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  %15 = getelementptr inbounds %struct.fib6_nh_dm_arg, %struct.fib6_nh_dm_arg* %14, i32 0, i32 0
  %16 = load i32, i32* %12, align 4
  store i32 %16, i32* %15, align 8
  %17 = getelementptr inbounds %struct.fib6_nh_dm_arg, %struct.fib6_nh_dm_arg* %14, i32 0, i32 1
  %18 = load i32, i32* %13, align 4
  store i32 %18, i32* %17, align 4
  %19 = getelementptr inbounds %struct.fib6_nh_dm_arg, %struct.fib6_nh_dm_arg* %14, i32 0, i32 2
  store %struct.fib6_nh* null, %struct.fib6_nh** %19, align 8
  %20 = getelementptr inbounds %struct.fib6_nh_dm_arg, %struct.fib6_nh_dm_arg* %14, i32 0, i32 3
  %21 = load %struct.in6_addr*, %struct.in6_addr** %11, align 8
  store %struct.in6_addr* %21, %struct.in6_addr** %20, align 8
  %22 = getelementptr inbounds %struct.fib6_nh_dm_arg, %struct.fib6_nh_dm_arg* %14, i32 0, i32 4
  %23 = load %struct.net*, %struct.net** %8, align 8
  store %struct.net* %23, %struct.net** %22, align 8
  %24 = load %struct.nexthop*, %struct.nexthop** %9, align 8
  %25 = call i64 @nexthop_is_blackhole(%struct.nexthop* %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %6
  store %struct.fib6_nh* null, %struct.fib6_nh** %7, align 8
  br label %37

28:                                               ; preds = %6
  %29 = load %struct.nexthop*, %struct.nexthop** %9, align 8
  %30 = load i32, i32* @__rt6_nh_dev_match, align 4
  %31 = call i64 @nexthop_for_each_fib6_nh(%struct.nexthop* %29, i32 %30, %struct.fib6_nh_dm_arg* %14)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %36

33:                                               ; preds = %28
  %34 = getelementptr inbounds %struct.fib6_nh_dm_arg, %struct.fib6_nh_dm_arg* %14, i32 0, i32 2
  %35 = load %struct.fib6_nh*, %struct.fib6_nh** %34, align 8
  store %struct.fib6_nh* %35, %struct.fib6_nh** %7, align 8
  br label %37

36:                                               ; preds = %28
  store %struct.fib6_nh* null, %struct.fib6_nh** %7, align 8
  br label %37

37:                                               ; preds = %36, %33, %27
  %38 = load %struct.fib6_nh*, %struct.fib6_nh** %7, align 8
  ret %struct.fib6_nh* %38
}

declare dso_local i64 @nexthop_is_blackhole(%struct.nexthop*) #1

declare dso_local i64 @nexthop_for_each_fib6_nh(%struct.nexthop*, i32, %struct.fib6_nh_dm_arg*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
