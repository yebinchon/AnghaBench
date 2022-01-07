; ModuleID = '/home/carl/AnghaBench/linux/net/ipv6/extr_route.c_rt6_update_exception_stamp_rt.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv6/extr_route.c_rt6_update_exception_stamp_rt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rt6_info = type { i32, i32, %struct.TYPE_3__, i32 }
%struct.TYPE_3__ = type { i32 }
%struct.fib6_info = type { %struct.TYPE_4__, %struct.fib6_nh*, i64 }
%struct.TYPE_4__ = type { i32 }
%struct.fib6_nh = type { i32 }
%struct.fib6_nh_match_arg = type { %struct.fib6_nh*, i32*, i32 }

@RTF_CACHE = common dso_local global i32 0, align 4
@fib6_nh_find_match = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rt6_info*)* @rt6_update_exception_stamp_rt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rt6_update_exception_stamp_rt(%struct.rt6_info* %0) #0 {
  %2 = alloca %struct.rt6_info*, align 8
  %3 = alloca %struct.fib6_info*, align 8
  %4 = alloca %struct.fib6_nh*, align 8
  %5 = alloca %struct.fib6_nh_match_arg, align 8
  store %struct.rt6_info* %0, %struct.rt6_info** %2, align 8
  %6 = call i32 (...) @rcu_read_lock()
  %7 = load %struct.rt6_info*, %struct.rt6_info** %2, align 8
  %8 = getelementptr inbounds %struct.rt6_info, %struct.rt6_info* %7, i32 0, i32 3
  %9 = load i32, i32* %8, align 4
  %10 = call %struct.fib6_info* @rcu_dereference(i32 %9)
  store %struct.fib6_info* %10, %struct.fib6_info** %3, align 8
  %11 = load %struct.fib6_info*, %struct.fib6_info** %3, align 8
  %12 = icmp ne %struct.fib6_info* %11, null
  br i1 %12, label %13, label %20

13:                                               ; preds = %1
  %14 = load %struct.rt6_info*, %struct.rt6_info** %2, align 8
  %15 = getelementptr inbounds %struct.rt6_info, %struct.rt6_info* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* @RTF_CACHE, align 4
  %18 = and i32 %16, %17
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %21, label %20

20:                                               ; preds = %13, %1
  br label %60

21:                                               ; preds = %13
  %22 = load %struct.fib6_info*, %struct.fib6_info** %3, align 8
  %23 = getelementptr inbounds %struct.fib6_info, %struct.fib6_info* %22, i32 0, i32 2
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %48

26:                                               ; preds = %21
  %27 = getelementptr inbounds %struct.fib6_nh_match_arg, %struct.fib6_nh_match_arg* %5, i32 0, i32 0
  store %struct.fib6_nh* null, %struct.fib6_nh** %27, align 8
  %28 = getelementptr inbounds %struct.fib6_nh_match_arg, %struct.fib6_nh_match_arg* %5, i32 0, i32 1
  %29 = load %struct.rt6_info*, %struct.rt6_info** %2, align 8
  %30 = getelementptr inbounds %struct.rt6_info, %struct.rt6_info* %29, i32 0, i32 1
  store i32* %30, i32** %28, align 8
  %31 = getelementptr inbounds %struct.fib6_nh_match_arg, %struct.fib6_nh_match_arg* %5, i32 0, i32 2
  %32 = load %struct.rt6_info*, %struct.rt6_info** %2, align 8
  %33 = getelementptr inbounds %struct.rt6_info, %struct.rt6_info* %32, i32 0, i32 2
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  store i32 %35, i32* %31, align 8
  %36 = load %struct.fib6_info*, %struct.fib6_info** %3, align 8
  %37 = getelementptr inbounds %struct.fib6_info, %struct.fib6_info* %36, i32 0, i32 2
  %38 = load i64, i64* %37, align 8
  %39 = load i32, i32* @fib6_nh_find_match, align 4
  %40 = call i32 @nexthop_for_each_fib6_nh(i64 %38, i32 %39, %struct.fib6_nh_match_arg* %5)
  %41 = getelementptr inbounds %struct.fib6_nh_match_arg, %struct.fib6_nh_match_arg* %5, i32 0, i32 0
  %42 = load %struct.fib6_nh*, %struct.fib6_nh** %41, align 8
  %43 = icmp ne %struct.fib6_nh* %42, null
  br i1 %43, label %45, label %44

44:                                               ; preds = %26
  br label %60

45:                                               ; preds = %26
  %46 = getelementptr inbounds %struct.fib6_nh_match_arg, %struct.fib6_nh_match_arg* %5, i32 0, i32 0
  %47 = load %struct.fib6_nh*, %struct.fib6_nh** %46, align 8
  store %struct.fib6_nh* %47, %struct.fib6_nh** %4, align 8
  br label %52

48:                                               ; preds = %21
  %49 = load %struct.fib6_info*, %struct.fib6_info** %3, align 8
  %50 = getelementptr inbounds %struct.fib6_info, %struct.fib6_info* %49, i32 0, i32 1
  %51 = load %struct.fib6_nh*, %struct.fib6_nh** %50, align 8
  store %struct.fib6_nh* %51, %struct.fib6_nh** %4, align 8
  br label %52

52:                                               ; preds = %48, %45
  %53 = load %struct.fib6_nh*, %struct.fib6_nh** %4, align 8
  %54 = load %struct.fib6_info*, %struct.fib6_info** %3, align 8
  %55 = getelementptr inbounds %struct.fib6_info, %struct.fib6_info* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = load %struct.rt6_info*, %struct.rt6_info** %2, align 8
  %59 = call i32 @fib6_nh_update_exception(%struct.fib6_nh* %53, i32 %57, %struct.rt6_info* %58)
  br label %60

60:                                               ; preds = %52, %44, %20
  %61 = call i32 (...) @rcu_read_unlock()
  ret void
}

declare dso_local i32 @rcu_read_lock(...) #1

declare dso_local %struct.fib6_info* @rcu_dereference(i32) #1

declare dso_local i32 @nexthop_for_each_fib6_nh(i64, i32, %struct.fib6_nh_match_arg*) #1

declare dso_local i32 @fib6_nh_update_exception(%struct.fib6_nh*, i32, %struct.rt6_info*) #1

declare dso_local i32 @rcu_read_unlock(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
