; ModuleID = '/home/carl/AnghaBench/linux/net/ipv6/extr_route.c_rt6_mtu_change_route.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv6/extr_route.c_rt6_mtu_change_route.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fib6_info = type { i32, i64 }
%struct.rt6_mtu_change_arg = type { %struct.fib6_info*, i32 }
%struct.inet6_dev = type { i32 }

@RTAX_MTU = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fib6_info*, i8*)* @rt6_mtu_change_route to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rt6_mtu_change_route(%struct.fib6_info* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.fib6_info*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.rt6_mtu_change_arg*, align 8
  %7 = alloca %struct.inet6_dev*, align 8
  store %struct.fib6_info* %0, %struct.fib6_info** %4, align 8
  store i8* %1, i8** %5, align 8
  %8 = load i8*, i8** %5, align 8
  %9 = bitcast i8* %8 to %struct.rt6_mtu_change_arg*
  store %struct.rt6_mtu_change_arg* %9, %struct.rt6_mtu_change_arg** %6, align 8
  %10 = load %struct.rt6_mtu_change_arg*, %struct.rt6_mtu_change_arg** %6, align 8
  %11 = getelementptr inbounds %struct.rt6_mtu_change_arg, %struct.rt6_mtu_change_arg* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 8
  %13 = call %struct.inet6_dev* @__in6_dev_get(i32 %12)
  store %struct.inet6_dev* %13, %struct.inet6_dev** %7, align 8
  %14 = load %struct.inet6_dev*, %struct.inet6_dev** %7, align 8
  %15 = icmp ne %struct.inet6_dev* %14, null
  br i1 %15, label %17, label %16

16:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %43

17:                                               ; preds = %2
  %18 = load %struct.fib6_info*, %struct.fib6_info** %4, align 8
  %19 = load i32, i32* @RTAX_MTU, align 4
  %20 = call i64 @fib6_metric_locked(%struct.fib6_info* %18, i32 %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %17
  store i32 0, i32* %3, align 4
  br label %43

23:                                               ; preds = %17
  %24 = load %struct.fib6_info*, %struct.fib6_info** %4, align 8
  %25 = load %struct.rt6_mtu_change_arg*, %struct.rt6_mtu_change_arg** %6, align 8
  %26 = getelementptr inbounds %struct.rt6_mtu_change_arg, %struct.rt6_mtu_change_arg* %25, i32 0, i32 0
  store %struct.fib6_info* %24, %struct.fib6_info** %26, align 8
  %27 = load %struct.fib6_info*, %struct.fib6_info** %4, align 8
  %28 = getelementptr inbounds %struct.fib6_info, %struct.fib6_info* %27, i32 0, i32 1
  %29 = load i64, i64* %28, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %37

31:                                               ; preds = %23
  %32 = load %struct.fib6_info*, %struct.fib6_info** %4, align 8
  %33 = getelementptr inbounds %struct.fib6_info, %struct.fib6_info* %32, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  %35 = load %struct.rt6_mtu_change_arg*, %struct.rt6_mtu_change_arg** %6, align 8
  %36 = call i32 @nexthop_for_each_fib6_nh(i64 %34, i32 (i32, %struct.rt6_mtu_change_arg*)* @fib6_nh_mtu_change, %struct.rt6_mtu_change_arg* %35)
  store i32 %36, i32* %3, align 4
  br label %43

37:                                               ; preds = %23
  %38 = load %struct.fib6_info*, %struct.fib6_info** %4, align 8
  %39 = getelementptr inbounds %struct.fib6_info, %struct.fib6_info* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = load %struct.rt6_mtu_change_arg*, %struct.rt6_mtu_change_arg** %6, align 8
  %42 = call i32 @fib6_nh_mtu_change(i32 %40, %struct.rt6_mtu_change_arg* %41)
  store i32 %42, i32* %3, align 4
  br label %43

43:                                               ; preds = %37, %31, %22, %16
  %44 = load i32, i32* %3, align 4
  ret i32 %44
}

declare dso_local %struct.inet6_dev* @__in6_dev_get(i32) #1

declare dso_local i64 @fib6_metric_locked(%struct.fib6_info*, i32) #1

declare dso_local i32 @nexthop_for_each_fib6_nh(i64, i32 (i32, %struct.rt6_mtu_change_arg*)*, %struct.rt6_mtu_change_arg*) #1

declare dso_local i32 @fib6_nh_mtu_change(i32, %struct.rt6_mtu_change_arg*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
