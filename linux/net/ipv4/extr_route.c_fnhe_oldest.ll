; ModuleID = '/home/carl/AnghaBench/linux/net/ipv4/extr_route.c_fnhe_oldest.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv4/extr_route.c_fnhe_oldest.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fib_nh_exception = type { i32, i32 }
%struct.fnhe_hash_bucket = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.fib_nh_exception* (%struct.fnhe_hash_bucket*)* @fnhe_oldest to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.fib_nh_exception* @fnhe_oldest(%struct.fnhe_hash_bucket* %0) #0 {
  %2 = alloca %struct.fnhe_hash_bucket*, align 8
  %3 = alloca %struct.fib_nh_exception*, align 8
  %4 = alloca %struct.fib_nh_exception*, align 8
  store %struct.fnhe_hash_bucket* %0, %struct.fnhe_hash_bucket** %2, align 8
  %5 = load %struct.fnhe_hash_bucket*, %struct.fnhe_hash_bucket** %2, align 8
  %6 = getelementptr inbounds %struct.fnhe_hash_bucket, %struct.fnhe_hash_bucket* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  %8 = call %struct.fib_nh_exception* @rcu_dereference(i32 %7)
  store %struct.fib_nh_exception* %8, %struct.fib_nh_exception** %4, align 8
  %9 = load %struct.fib_nh_exception*, %struct.fib_nh_exception** %4, align 8
  %10 = getelementptr inbounds %struct.fib_nh_exception, %struct.fib_nh_exception* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 4
  %12 = call %struct.fib_nh_exception* @rcu_dereference(i32 %11)
  store %struct.fib_nh_exception* %12, %struct.fib_nh_exception** %3, align 8
  br label %13

13:                                               ; preds = %28, %1
  %14 = load %struct.fib_nh_exception*, %struct.fib_nh_exception** %3, align 8
  %15 = icmp ne %struct.fib_nh_exception* %14, null
  br i1 %15, label %16, label %33

16:                                               ; preds = %13
  %17 = load %struct.fib_nh_exception*, %struct.fib_nh_exception** %3, align 8
  %18 = getelementptr inbounds %struct.fib_nh_exception, %struct.fib_nh_exception* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.fib_nh_exception*, %struct.fib_nh_exception** %4, align 8
  %21 = getelementptr inbounds %struct.fib_nh_exception, %struct.fib_nh_exception* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call i64 @time_before(i32 %19, i32 %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %16
  %26 = load %struct.fib_nh_exception*, %struct.fib_nh_exception** %3, align 8
  store %struct.fib_nh_exception* %26, %struct.fib_nh_exception** %4, align 8
  br label %27

27:                                               ; preds = %25, %16
  br label %28

28:                                               ; preds = %27
  %29 = load %struct.fib_nh_exception*, %struct.fib_nh_exception** %3, align 8
  %30 = getelementptr inbounds %struct.fib_nh_exception, %struct.fib_nh_exception* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = call %struct.fib_nh_exception* @rcu_dereference(i32 %31)
  store %struct.fib_nh_exception* %32, %struct.fib_nh_exception** %3, align 8
  br label %13

33:                                               ; preds = %13
  %34 = load %struct.fib_nh_exception*, %struct.fib_nh_exception** %4, align 8
  %35 = call i32 @fnhe_flush_routes(%struct.fib_nh_exception* %34)
  %36 = load %struct.fib_nh_exception*, %struct.fib_nh_exception** %4, align 8
  ret %struct.fib_nh_exception* %36
}

declare dso_local %struct.fib_nh_exception* @rcu_dereference(i32) #1

declare dso_local i64 @time_before(i32, i32) #1

declare dso_local i32 @fnhe_flush_routes(%struct.fib_nh_exception*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
