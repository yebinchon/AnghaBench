; ModuleID = '/home/carl/AnghaBench/linux/net/ipv6/extr_route.c_fib6_nh_find_match.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv6/extr_route.c_fib6_nh_find_match.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fib6_nh = type { i64, i32, i64 }
%struct.fib6_nh_match_arg = type { i64, %struct.fib6_nh*, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fib6_nh*, i8*)* @fib6_nh_find_match to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fib6_nh_find_match(%struct.fib6_nh* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.fib6_nh*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.fib6_nh_match_arg*, align 8
  store %struct.fib6_nh* %0, %struct.fib6_nh** %4, align 8
  store i8* %1, i8** %5, align 8
  %7 = load i8*, i8** %5, align 8
  %8 = bitcast i8* %7 to %struct.fib6_nh_match_arg*
  store %struct.fib6_nh_match_arg* %8, %struct.fib6_nh_match_arg** %6, align 8
  %9 = load %struct.fib6_nh_match_arg*, %struct.fib6_nh_match_arg** %6, align 8
  %10 = getelementptr inbounds %struct.fib6_nh_match_arg, %struct.fib6_nh_match_arg* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load %struct.fib6_nh*, %struct.fib6_nh** %4, align 8
  %13 = getelementptr inbounds %struct.fib6_nh, %struct.fib6_nh* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %11, %14
  br i1 %15, label %49, label %16

16:                                               ; preds = %2
  %17 = load %struct.fib6_nh_match_arg*, %struct.fib6_nh_match_arg** %6, align 8
  %18 = getelementptr inbounds %struct.fib6_nh_match_arg, %struct.fib6_nh_match_arg* %17, i32 0, i32 2
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %26

21:                                               ; preds = %16
  %22 = load %struct.fib6_nh*, %struct.fib6_nh** %4, align 8
  %23 = getelementptr inbounds %struct.fib6_nh, %struct.fib6_nh* %22, i32 0, i32 2
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %49

26:                                               ; preds = %21, %16
  %27 = load %struct.fib6_nh_match_arg*, %struct.fib6_nh_match_arg** %6, align 8
  %28 = getelementptr inbounds %struct.fib6_nh_match_arg, %struct.fib6_nh_match_arg* %27, i32 0, i32 2
  %29 = load i64, i64* %28, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %36, label %31

31:                                               ; preds = %26
  %32 = load %struct.fib6_nh*, %struct.fib6_nh** %4, align 8
  %33 = getelementptr inbounds %struct.fib6_nh, %struct.fib6_nh* %32, i32 0, i32 2
  %34 = load i64, i64* %33, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %49, label %36

36:                                               ; preds = %31, %26
  %37 = load %struct.fib6_nh_match_arg*, %struct.fib6_nh_match_arg** %6, align 8
  %38 = getelementptr inbounds %struct.fib6_nh_match_arg, %struct.fib6_nh_match_arg* %37, i32 0, i32 2
  %39 = load i64, i64* %38, align 8
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %50

41:                                               ; preds = %36
  %42 = load %struct.fib6_nh_match_arg*, %struct.fib6_nh_match_arg** %6, align 8
  %43 = getelementptr inbounds %struct.fib6_nh_match_arg, %struct.fib6_nh_match_arg* %42, i32 0, i32 2
  %44 = load i64, i64* %43, align 8
  %45 = load %struct.fib6_nh*, %struct.fib6_nh** %4, align 8
  %46 = getelementptr inbounds %struct.fib6_nh, %struct.fib6_nh* %45, i32 0, i32 1
  %47 = call i32 @ipv6_addr_equal(i64 %44, i32* %46)
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %50, label %49

49:                                               ; preds = %41, %31, %21, %2
  store i32 0, i32* %3, align 4
  br label %54

50:                                               ; preds = %41, %36
  %51 = load %struct.fib6_nh*, %struct.fib6_nh** %4, align 8
  %52 = load %struct.fib6_nh_match_arg*, %struct.fib6_nh_match_arg** %6, align 8
  %53 = getelementptr inbounds %struct.fib6_nh_match_arg, %struct.fib6_nh_match_arg* %52, i32 0, i32 1
  store %struct.fib6_nh* %51, %struct.fib6_nh** %53, align 8
  store i32 1, i32* %3, align 4
  br label %54

54:                                               ; preds = %50, %49
  %55 = load i32, i32* %3, align 4
  ret i32 %55
}

declare dso_local i32 @ipv6_addr_equal(i64, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
