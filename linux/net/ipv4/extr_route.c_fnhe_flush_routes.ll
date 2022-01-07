; ModuleID = '/home/carl/AnghaBench/linux/net/ipv4/extr_route.c_fnhe_flush_routes.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv4/extr_route.c_fnhe_flush_routes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fib_nh_exception = type { i32, i32 }
%struct.rtable = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.fib_nh_exception*)* @fnhe_flush_routes to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fnhe_flush_routes(%struct.fib_nh_exception* %0) #0 {
  %2 = alloca %struct.fib_nh_exception*, align 8
  %3 = alloca %struct.rtable*, align 8
  store %struct.fib_nh_exception* %0, %struct.fib_nh_exception** %2, align 8
  %4 = load %struct.fib_nh_exception*, %struct.fib_nh_exception** %2, align 8
  %5 = getelementptr inbounds %struct.fib_nh_exception, %struct.fib_nh_exception* %4, i32 0, i32 1
  %6 = load i32, i32* %5, align 4
  %7 = call %struct.rtable* @rcu_dereference(i32 %6)
  store %struct.rtable* %7, %struct.rtable** %3, align 8
  %8 = load %struct.rtable*, %struct.rtable** %3, align 8
  %9 = icmp ne %struct.rtable* %8, null
  br i1 %9, label %10, label %21

10:                                               ; preds = %1
  %11 = load %struct.fib_nh_exception*, %struct.fib_nh_exception** %2, align 8
  %12 = getelementptr inbounds %struct.fib_nh_exception, %struct.fib_nh_exception* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @RCU_INIT_POINTER(i32 %13, i32* null)
  %15 = load %struct.rtable*, %struct.rtable** %3, align 8
  %16 = getelementptr inbounds %struct.rtable, %struct.rtable* %15, i32 0, i32 0
  %17 = call i32 @dst_dev_put(i32* %16)
  %18 = load %struct.rtable*, %struct.rtable** %3, align 8
  %19 = getelementptr inbounds %struct.rtable, %struct.rtable* %18, i32 0, i32 0
  %20 = call i32 @dst_release(i32* %19)
  br label %21

21:                                               ; preds = %10, %1
  %22 = load %struct.fib_nh_exception*, %struct.fib_nh_exception** %2, align 8
  %23 = getelementptr inbounds %struct.fib_nh_exception, %struct.fib_nh_exception* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call %struct.rtable* @rcu_dereference(i32 %24)
  store %struct.rtable* %25, %struct.rtable** %3, align 8
  %26 = load %struct.rtable*, %struct.rtable** %3, align 8
  %27 = icmp ne %struct.rtable* %26, null
  br i1 %27, label %28, label %39

28:                                               ; preds = %21
  %29 = load %struct.fib_nh_exception*, %struct.fib_nh_exception** %2, align 8
  %30 = getelementptr inbounds %struct.fib_nh_exception, %struct.fib_nh_exception* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @RCU_INIT_POINTER(i32 %31, i32* null)
  %33 = load %struct.rtable*, %struct.rtable** %3, align 8
  %34 = getelementptr inbounds %struct.rtable, %struct.rtable* %33, i32 0, i32 0
  %35 = call i32 @dst_dev_put(i32* %34)
  %36 = load %struct.rtable*, %struct.rtable** %3, align 8
  %37 = getelementptr inbounds %struct.rtable, %struct.rtable* %36, i32 0, i32 0
  %38 = call i32 @dst_release(i32* %37)
  br label %39

39:                                               ; preds = %28, %21
  ret void
}

declare dso_local %struct.rtable* @rcu_dereference(i32) #1

declare dso_local i32 @RCU_INIT_POINTER(i32, i32*) #1

declare dso_local i32 @dst_dev_put(i32*) #1

declare dso_local i32 @dst_release(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
