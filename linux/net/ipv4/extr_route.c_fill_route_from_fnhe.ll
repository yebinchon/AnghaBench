; ModuleID = '/home/carl/AnghaBench/linux/net/ipv4/extr_route.c_fill_route_from_fnhe.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv4/extr_route.c_fill_route_from_fnhe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtable = type { i32, i64, i32, i32, %struct.TYPE_2__, i32, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.fib_nh_exception = type { i64, i32, i32, i32 }

@RTCF_REDIRECTED = common dso_local global i32 0, align 4
@AF_INET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rtable*, %struct.fib_nh_exception*)* @fill_route_from_fnhe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fill_route_from_fnhe(%struct.rtable* %0, %struct.fib_nh_exception* %1) #0 {
  %3 = alloca %struct.rtable*, align 8
  %4 = alloca %struct.fib_nh_exception*, align 8
  store %struct.rtable* %0, %struct.rtable** %3, align 8
  store %struct.fib_nh_exception* %1, %struct.fib_nh_exception** %4, align 8
  %5 = load %struct.fib_nh_exception*, %struct.fib_nh_exception** %4, align 8
  %6 = getelementptr inbounds %struct.fib_nh_exception, %struct.fib_nh_exception* %5, i32 0, i32 3
  %7 = load i32, i32* %6, align 8
  %8 = load %struct.rtable*, %struct.rtable** %3, align 8
  %9 = getelementptr inbounds %struct.rtable, %struct.rtable* %8, i32 0, i32 6
  store i32 %7, i32* %9, align 8
  %10 = load %struct.fib_nh_exception*, %struct.fib_nh_exception** %4, align 8
  %11 = getelementptr inbounds %struct.fib_nh_exception, %struct.fib_nh_exception* %10, i32 0, i32 2
  %12 = load i32, i32* %11, align 4
  %13 = load %struct.rtable*, %struct.rtable** %3, align 8
  %14 = getelementptr inbounds %struct.rtable, %struct.rtable* %13, i32 0, i32 5
  store i32 %12, i32* %14, align 4
  %15 = load %struct.fib_nh_exception*, %struct.fib_nh_exception** %4, align 8
  %16 = getelementptr inbounds %struct.fib_nh_exception, %struct.fib_nh_exception* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 8
  %18 = load %struct.rtable*, %struct.rtable** %3, align 8
  %19 = getelementptr inbounds %struct.rtable, %struct.rtable* %18, i32 0, i32 4
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  store i32 %17, i32* %20, align 8
  %21 = load %struct.fib_nh_exception*, %struct.fib_nh_exception** %4, align 8
  %22 = getelementptr inbounds %struct.fib_nh_exception, %struct.fib_nh_exception* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %41

25:                                               ; preds = %2
  %26 = load i32, i32* @RTCF_REDIRECTED, align 4
  %27 = load %struct.rtable*, %struct.rtable** %3, align 8
  %28 = getelementptr inbounds %struct.rtable, %struct.rtable* %27, i32 0, i32 3
  %29 = load i32, i32* %28, align 4
  %30 = or i32 %29, %26
  store i32 %30, i32* %28, align 4
  %31 = load %struct.rtable*, %struct.rtable** %3, align 8
  %32 = getelementptr inbounds %struct.rtable, %struct.rtable* %31, i32 0, i32 0
  store i32 1, i32* %32, align 8
  %33 = load i32, i32* @AF_INET, align 4
  %34 = load %struct.rtable*, %struct.rtable** %3, align 8
  %35 = getelementptr inbounds %struct.rtable, %struct.rtable* %34, i32 0, i32 2
  store i32 %33, i32* %35, align 8
  %36 = load %struct.fib_nh_exception*, %struct.fib_nh_exception** %4, align 8
  %37 = getelementptr inbounds %struct.fib_nh_exception, %struct.fib_nh_exception* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = load %struct.rtable*, %struct.rtable** %3, align 8
  %40 = getelementptr inbounds %struct.rtable, %struct.rtable* %39, i32 0, i32 1
  store i64 %38, i64* %40, align 8
  br label %41

41:                                               ; preds = %25, %2
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
