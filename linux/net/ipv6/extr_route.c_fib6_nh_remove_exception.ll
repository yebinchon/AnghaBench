; ModuleID = '/home/carl/AnghaBench/linux/net/ipv6/extr_route.c_fib6_nh_remove_exception.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv6/extr_route.c_fib6_nh_remove_exception.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fib6_nh = type { i32 }
%struct.rt6_info = type { %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { %struct.in6_addr }
%struct.in6_addr = type { i32 }
%struct.rt6_exception_bucket = type { i32 }
%struct.rt6_exception = type { i32 }

@ENOENT = common dso_local global i32 0, align 4
@rt6_exception_lock = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fib6_nh*, i32, %struct.rt6_info*)* @fib6_nh_remove_exception to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fib6_nh_remove_exception(%struct.fib6_nh* %0, i32 %1, %struct.rt6_info* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.fib6_nh*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.rt6_info*, align 8
  %8 = alloca %struct.in6_addr*, align 8
  %9 = alloca %struct.rt6_exception_bucket*, align 8
  %10 = alloca %struct.rt6_exception*, align 8
  %11 = alloca i32, align 4
  store %struct.fib6_nh* %0, %struct.fib6_nh** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.rt6_info* %2, %struct.rt6_info** %7, align 8
  store %struct.in6_addr* null, %struct.in6_addr** %8, align 8
  %12 = load %struct.fib6_nh*, %struct.fib6_nh** %5, align 8
  %13 = getelementptr inbounds %struct.fib6_nh, %struct.fib6_nh* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @rcu_access_pointer(i32 %14)
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %20, label %17

17:                                               ; preds = %3
  %18 = load i32, i32* @ENOENT, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %4, align 4
  br label %41

20:                                               ; preds = %3
  %21 = call i32 @spin_lock_bh(i32* @rt6_exception_lock)
  %22 = load %struct.fib6_nh*, %struct.fib6_nh** %5, align 8
  %23 = call %struct.rt6_exception_bucket* @fib6_nh_get_excptn_bucket(%struct.fib6_nh* %22, i32* @rt6_exception_lock)
  store %struct.rt6_exception_bucket* %23, %struct.rt6_exception_bucket** %9, align 8
  %24 = load %struct.rt6_info*, %struct.rt6_info** %7, align 8
  %25 = getelementptr inbounds %struct.rt6_info, %struct.rt6_info* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 0
  %27 = load %struct.in6_addr*, %struct.in6_addr** %8, align 8
  %28 = call %struct.rt6_exception* @__rt6_find_exception_spinlock(%struct.rt6_exception_bucket** %9, i32* %26, %struct.in6_addr* %27)
  store %struct.rt6_exception* %28, %struct.rt6_exception** %10, align 8
  %29 = load %struct.rt6_exception*, %struct.rt6_exception** %10, align 8
  %30 = icmp ne %struct.rt6_exception* %29, null
  br i1 %30, label %31, label %35

31:                                               ; preds = %20
  %32 = load %struct.rt6_exception_bucket*, %struct.rt6_exception_bucket** %9, align 8
  %33 = load %struct.rt6_exception*, %struct.rt6_exception** %10, align 8
  %34 = call i32 @rt6_remove_exception(%struct.rt6_exception_bucket* %32, %struct.rt6_exception* %33)
  store i32 0, i32* %11, align 4
  br label %38

35:                                               ; preds = %20
  %36 = load i32, i32* @ENOENT, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %11, align 4
  br label %38

38:                                               ; preds = %35, %31
  %39 = call i32 @spin_unlock_bh(i32* @rt6_exception_lock)
  %40 = load i32, i32* %11, align 4
  store i32 %40, i32* %4, align 4
  br label %41

41:                                               ; preds = %38, %17
  %42 = load i32, i32* %4, align 4
  ret i32 %42
}

declare dso_local i32 @rcu_access_pointer(i32) #1

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local %struct.rt6_exception_bucket* @fib6_nh_get_excptn_bucket(%struct.fib6_nh*, i32*) #1

declare dso_local %struct.rt6_exception* @__rt6_find_exception_spinlock(%struct.rt6_exception_bucket**, i32*, %struct.in6_addr*) #1

declare dso_local i32 @rt6_remove_exception(%struct.rt6_exception_bucket*, %struct.rt6_exception*) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
