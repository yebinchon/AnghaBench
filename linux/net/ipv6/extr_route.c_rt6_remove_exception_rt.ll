; ModuleID = '/home/carl/AnghaBench/linux/net/ipv6/extr_route.c_rt6_remove_exception_rt.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv6/extr_route.c_rt6_remove_exception_rt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rt6_info = type { i32, i32 }
%struct.fib6_info = type { %struct.TYPE_2__, i32, i64 }
%struct.TYPE_2__ = type { i32 }
%struct.fib6_nh_excptn_arg = type { i32, %struct.rt6_info* }

@RTF_CACHE = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@rt6_nh_remove_exception_rt = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rt6_info*)* @rt6_remove_exception_rt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rt6_remove_exception_rt(%struct.rt6_info* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.rt6_info*, align 8
  %4 = alloca %struct.fib6_info*, align 8
  %5 = alloca %struct.fib6_nh_excptn_arg, align 8
  %6 = alloca i32, align 4
  store %struct.rt6_info* %0, %struct.rt6_info** %3, align 8
  %7 = load %struct.rt6_info*, %struct.rt6_info** %3, align 8
  %8 = getelementptr inbounds %struct.rt6_info, %struct.rt6_info* %7, i32 0, i32 1
  %9 = load i32, i32* %8, align 4
  %10 = call %struct.fib6_info* @rcu_dereference(i32 %9)
  store %struct.fib6_info* %10, %struct.fib6_info** %4, align 8
  %11 = load %struct.fib6_info*, %struct.fib6_info** %4, align 8
  %12 = icmp ne %struct.fib6_info* %11, null
  br i1 %12, label %13, label %20

13:                                               ; preds = %1
  %14 = load %struct.rt6_info*, %struct.rt6_info** %3, align 8
  %15 = getelementptr inbounds %struct.rt6_info, %struct.rt6_info* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* @RTF_CACHE, align 4
  %18 = and i32 %16, %17
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %23, label %20

20:                                               ; preds = %13, %1
  %21 = load i32, i32* @EINVAL, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %2, align 4
  br label %59

23:                                               ; preds = %13
  %24 = load %struct.fib6_info*, %struct.fib6_info** %4, align 8
  %25 = getelementptr inbounds %struct.fib6_info, %struct.fib6_info* %24, i32 0, i32 2
  %26 = load i64, i64* %25, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %49

28:                                               ; preds = %23
  %29 = getelementptr inbounds %struct.fib6_nh_excptn_arg, %struct.fib6_nh_excptn_arg* %5, i32 0, i32 0
  %30 = load %struct.fib6_info*, %struct.fib6_info** %4, align 8
  %31 = getelementptr inbounds %struct.fib6_info, %struct.fib6_info* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  store i32 %33, i32* %29, align 8
  %34 = getelementptr inbounds %struct.fib6_nh_excptn_arg, %struct.fib6_nh_excptn_arg* %5, i32 0, i32 1
  %35 = load %struct.rt6_info*, %struct.rt6_info** %3, align 8
  store %struct.rt6_info* %35, %struct.rt6_info** %34, align 8
  %36 = load %struct.fib6_info*, %struct.fib6_info** %4, align 8
  %37 = getelementptr inbounds %struct.fib6_info, %struct.fib6_info* %36, i32 0, i32 2
  %38 = load i64, i64* %37, align 8
  %39 = load i32, i32* @rt6_nh_remove_exception_rt, align 4
  %40 = call i32 @nexthop_for_each_fib6_nh(i64 %38, i32 %39, %struct.fib6_nh_excptn_arg* %5)
  store i32 %40, i32* %6, align 4
  %41 = load i32, i32* %6, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %28
  br label %47

44:                                               ; preds = %28
  %45 = load i32, i32* @ENOENT, align 4
  %46 = sub nsw i32 0, %45
  br label %47

47:                                               ; preds = %44, %43
  %48 = phi i32 [ 0, %43 ], [ %46, %44 ]
  store i32 %48, i32* %2, align 4
  br label %59

49:                                               ; preds = %23
  %50 = load %struct.fib6_info*, %struct.fib6_info** %4, align 8
  %51 = getelementptr inbounds %struct.fib6_info, %struct.fib6_info* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.fib6_info*, %struct.fib6_info** %4, align 8
  %54 = getelementptr inbounds %struct.fib6_info, %struct.fib6_info* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = load %struct.rt6_info*, %struct.rt6_info** %3, align 8
  %58 = call i32 @fib6_nh_remove_exception(i32 %52, i32 %56, %struct.rt6_info* %57)
  store i32 %58, i32* %2, align 4
  br label %59

59:                                               ; preds = %49, %47, %20
  %60 = load i32, i32* %2, align 4
  ret i32 %60
}

declare dso_local %struct.fib6_info* @rcu_dereference(i32) #1

declare dso_local i32 @nexthop_for_each_fib6_nh(i64, i32, %struct.fib6_nh_excptn_arg*) #1

declare dso_local i32 @fib6_nh_remove_exception(i32, i32, %struct.rt6_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
