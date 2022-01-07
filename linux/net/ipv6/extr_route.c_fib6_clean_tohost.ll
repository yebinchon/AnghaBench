; ModuleID = '/home/carl/AnghaBench/linux/net/ipv6/extr_route.c_fib6_clean_tohost.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv6/extr_route.c_fib6_clean_tohost.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fib6_info = type { i32, %struct.fib6_nh*, i64 }
%struct.fib6_nh = type { i32, i64 }
%struct.in6_addr = type { i32 }

@RTF_RA_ROUTER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fib6_info*, i8*)* @fib6_clean_tohost to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fib6_clean_tohost(%struct.fib6_info* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.fib6_info*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.in6_addr*, align 8
  %7 = alloca %struct.fib6_nh*, align 8
  store %struct.fib6_info* %0, %struct.fib6_info** %4, align 8
  store i8* %1, i8** %5, align 8
  %8 = load i8*, i8** %5, align 8
  %9 = bitcast i8* %8 to %struct.in6_addr*
  store %struct.in6_addr* %9, %struct.in6_addr** %6, align 8
  %10 = load %struct.fib6_info*, %struct.fib6_info** %4, align 8
  %11 = getelementptr inbounds %struct.fib6_info, %struct.fib6_info* %10, i32 0, i32 2
  %12 = load i64, i64* %11, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %42

15:                                               ; preds = %2
  %16 = load %struct.fib6_info*, %struct.fib6_info** %4, align 8
  %17 = getelementptr inbounds %struct.fib6_info, %struct.fib6_info* %16, i32 0, i32 1
  %18 = load %struct.fib6_nh*, %struct.fib6_nh** %17, align 8
  store %struct.fib6_nh* %18, %struct.fib6_nh** %7, align 8
  %19 = load %struct.fib6_info*, %struct.fib6_info** %4, align 8
  %20 = getelementptr inbounds %struct.fib6_info, %struct.fib6_info* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = load i32, i32* @RTF_RA_ROUTER, align 4
  %23 = and i32 %21, %22
  %24 = load i32, i32* @RTF_RA_ROUTER, align 4
  %25 = icmp eq i32 %23, %24
  br i1 %25, label %26, label %38

26:                                               ; preds = %15
  %27 = load %struct.fib6_nh*, %struct.fib6_nh** %7, align 8
  %28 = getelementptr inbounds %struct.fib6_nh, %struct.fib6_nh* %27, i32 0, i32 1
  %29 = load i64, i64* %28, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %38

31:                                               ; preds = %26
  %32 = load %struct.in6_addr*, %struct.in6_addr** %6, align 8
  %33 = load %struct.fib6_nh*, %struct.fib6_nh** %7, align 8
  %34 = getelementptr inbounds %struct.fib6_nh, %struct.fib6_nh* %33, i32 0, i32 0
  %35 = call i64 @ipv6_addr_equal(%struct.in6_addr* %32, i32* %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %31
  store i32 -1, i32* %3, align 4
  br label %42

38:                                               ; preds = %31, %26, %15
  %39 = load %struct.fib6_nh*, %struct.fib6_nh** %7, align 8
  %40 = load %struct.in6_addr*, %struct.in6_addr** %6, align 8
  %41 = call i32 @fib6_nh_exceptions_clean_tohost(%struct.fib6_nh* %39, %struct.in6_addr* %40)
  store i32 0, i32* %3, align 4
  br label %42

42:                                               ; preds = %38, %37, %14
  %43 = load i32, i32* %3, align 4
  ret i32 %43
}

declare dso_local i64 @ipv6_addr_equal(%struct.in6_addr*, i32*) #1

declare dso_local i32 @fib6_nh_exceptions_clean_tohost(%struct.fib6_nh*, %struct.in6_addr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
