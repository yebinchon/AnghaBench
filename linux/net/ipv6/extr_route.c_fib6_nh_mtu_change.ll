; ModuleID = '/home/carl/AnghaBench/linux/net/ipv6/extr_route.c_fib6_nh_mtu_change.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv6/extr_route.c_fib6_nh_mtu_change.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fib6_nh = type { i64 }
%struct.rt6_mtu_change_arg = type { i64, i64, %struct.fib6_info* }
%struct.fib6_info = type { i64 }
%struct.inet6_dev = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }

@RTAX_MTU = common dso_local global i32 0, align 4
@rt6_exception_lock = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fib6_nh*, i8*)* @fib6_nh_mtu_change to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fib6_nh_mtu_change(%struct.fib6_nh* %0, i8* %1) #0 {
  %3 = alloca %struct.fib6_nh*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.rt6_mtu_change_arg*, align 8
  %6 = alloca %struct.fib6_info*, align 8
  %7 = alloca %struct.inet6_dev*, align 8
  %8 = alloca i64, align 8
  store %struct.fib6_nh* %0, %struct.fib6_nh** %3, align 8
  store i8* %1, i8** %4, align 8
  %9 = load i8*, i8** %4, align 8
  %10 = bitcast i8* %9 to %struct.rt6_mtu_change_arg*
  store %struct.rt6_mtu_change_arg* %10, %struct.rt6_mtu_change_arg** %5, align 8
  %11 = load %struct.rt6_mtu_change_arg*, %struct.rt6_mtu_change_arg** %5, align 8
  %12 = getelementptr inbounds %struct.rt6_mtu_change_arg, %struct.rt6_mtu_change_arg* %11, i32 0, i32 2
  %13 = load %struct.fib6_info*, %struct.fib6_info** %12, align 8
  store %struct.fib6_info* %13, %struct.fib6_info** %6, align 8
  %14 = load %struct.fib6_nh*, %struct.fib6_nh** %3, align 8
  %15 = getelementptr inbounds %struct.fib6_nh, %struct.fib6_nh* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load %struct.rt6_mtu_change_arg*, %struct.rt6_mtu_change_arg** %5, align 8
  %18 = getelementptr inbounds %struct.rt6_mtu_change_arg, %struct.rt6_mtu_change_arg* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = icmp eq i64 %16, %19
  br i1 %20, label %21, label %63

21:                                               ; preds = %2
  %22 = load %struct.rt6_mtu_change_arg*, %struct.rt6_mtu_change_arg** %5, align 8
  %23 = getelementptr inbounds %struct.rt6_mtu_change_arg, %struct.rt6_mtu_change_arg* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = call %struct.inet6_dev* @__in6_dev_get(i64 %24)
  store %struct.inet6_dev* %25, %struct.inet6_dev** %7, align 8
  %26 = load %struct.fib6_info*, %struct.fib6_info** %6, align 8
  %27 = getelementptr inbounds %struct.fib6_info, %struct.fib6_info* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  store i64 %28, i64* %8, align 8
  %29 = load i64, i64* %8, align 8
  %30 = load %struct.rt6_mtu_change_arg*, %struct.rt6_mtu_change_arg** %5, align 8
  %31 = getelementptr inbounds %struct.rt6_mtu_change_arg, %struct.rt6_mtu_change_arg* %30, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  %33 = icmp sge i64 %29, %32
  br i1 %33, label %47, label %34

34:                                               ; preds = %21
  %35 = load i64, i64* %8, align 8
  %36 = load %struct.rt6_mtu_change_arg*, %struct.rt6_mtu_change_arg** %5, align 8
  %37 = getelementptr inbounds %struct.rt6_mtu_change_arg, %struct.rt6_mtu_change_arg* %36, i32 0, i32 1
  %38 = load i64, i64* %37, align 8
  %39 = icmp slt i64 %35, %38
  br i1 %39, label %40, label %54

40:                                               ; preds = %34
  %41 = load i64, i64* %8, align 8
  %42 = load %struct.inet6_dev*, %struct.inet6_dev** %7, align 8
  %43 = getelementptr inbounds %struct.inet6_dev, %struct.inet6_dev* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = icmp eq i64 %41, %45
  br i1 %46, label %47, label %54

47:                                               ; preds = %40, %21
  %48 = load %struct.fib6_info*, %struct.fib6_info** %6, align 8
  %49 = load i32, i32* @RTAX_MTU, align 4
  %50 = load %struct.rt6_mtu_change_arg*, %struct.rt6_mtu_change_arg** %5, align 8
  %51 = getelementptr inbounds %struct.rt6_mtu_change_arg, %struct.rt6_mtu_change_arg* %50, i32 0, i32 1
  %52 = load i64, i64* %51, align 8
  %53 = call i32 @fib6_metric_set(%struct.fib6_info* %48, i32 %49, i64 %52)
  br label %54

54:                                               ; preds = %47, %40, %34
  %55 = call i32 @spin_lock_bh(i32* @rt6_exception_lock)
  %56 = load %struct.inet6_dev*, %struct.inet6_dev** %7, align 8
  %57 = load %struct.fib6_nh*, %struct.fib6_nh** %3, align 8
  %58 = load %struct.rt6_mtu_change_arg*, %struct.rt6_mtu_change_arg** %5, align 8
  %59 = getelementptr inbounds %struct.rt6_mtu_change_arg, %struct.rt6_mtu_change_arg* %58, i32 0, i32 1
  %60 = load i64, i64* %59, align 8
  %61 = call i32 @rt6_exceptions_update_pmtu(%struct.inet6_dev* %56, %struct.fib6_nh* %57, i64 %60)
  %62 = call i32 @spin_unlock_bh(i32* @rt6_exception_lock)
  br label %63

63:                                               ; preds = %54, %2
  ret i32 0
}

declare dso_local %struct.inet6_dev* @__in6_dev_get(i64) #1

declare dso_local i32 @fib6_metric_set(%struct.fib6_info*, i32, i64) #1

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i32 @rt6_exceptions_update_pmtu(%struct.inet6_dev*, %struct.fib6_nh*, i64) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
