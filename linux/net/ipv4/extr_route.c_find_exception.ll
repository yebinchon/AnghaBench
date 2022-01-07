; ModuleID = '/home/carl/AnghaBench/linux/net/ipv4/extr_route.c_find_exception.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv4/extr_route.c_find_exception.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fib_nh_exception = type { i64, i64, i32 }
%struct.fib_nh_common = type { i32 }
%struct.fnhe_hash_bucket = type { i32 }

@jiffies = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.fib_nh_exception* (%struct.fib_nh_common*, i64)* @find_exception to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.fib_nh_exception* @find_exception(%struct.fib_nh_common* %0, i64 %1) #0 {
  %3 = alloca %struct.fib_nh_exception*, align 8
  %4 = alloca %struct.fib_nh_common*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.fnhe_hash_bucket*, align 8
  %7 = alloca %struct.fib_nh_exception*, align 8
  %8 = alloca i64, align 8
  store %struct.fib_nh_common* %0, %struct.fib_nh_common** %4, align 8
  store i64 %1, i64* %5, align 8
  %9 = load %struct.fib_nh_common*, %struct.fib_nh_common** %4, align 8
  %10 = getelementptr inbounds %struct.fib_nh_common, %struct.fib_nh_common* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = call i8* @rcu_dereference(i32 %11)
  %13 = bitcast i8* %12 to %struct.fnhe_hash_bucket*
  store %struct.fnhe_hash_bucket* %13, %struct.fnhe_hash_bucket** %6, align 8
  %14 = load %struct.fnhe_hash_bucket*, %struct.fnhe_hash_bucket** %6, align 8
  %15 = icmp ne %struct.fnhe_hash_bucket* %14, null
  br i1 %15, label %17, label %16

16:                                               ; preds = %2
  store %struct.fib_nh_exception* null, %struct.fib_nh_exception** %3, align 8
  br label %62

17:                                               ; preds = %2
  %18 = load i64, i64* %5, align 8
  %19 = call i64 @fnhe_hashfun(i64 %18)
  store i64 %19, i64* %8, align 8
  %20 = load %struct.fnhe_hash_bucket*, %struct.fnhe_hash_bucket** %6, align 8
  %21 = load i64, i64* %8, align 8
  %22 = getelementptr inbounds %struct.fnhe_hash_bucket, %struct.fnhe_hash_bucket* %20, i64 %21
  %23 = getelementptr inbounds %struct.fnhe_hash_bucket, %struct.fnhe_hash_bucket* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call i8* @rcu_dereference(i32 %24)
  %26 = bitcast i8* %25 to %struct.fib_nh_exception*
  store %struct.fib_nh_exception* %26, %struct.fib_nh_exception** %7, align 8
  br label %27

27:                                               ; preds = %55, %17
  %28 = load %struct.fib_nh_exception*, %struct.fib_nh_exception** %7, align 8
  %29 = icmp ne %struct.fib_nh_exception* %28, null
  br i1 %29, label %30, label %61

30:                                               ; preds = %27
  %31 = load %struct.fib_nh_exception*, %struct.fib_nh_exception** %7, align 8
  %32 = getelementptr inbounds %struct.fib_nh_exception, %struct.fib_nh_exception* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* %5, align 8
  %35 = icmp eq i64 %33, %34
  br i1 %35, label %36, label %54

36:                                               ; preds = %30
  %37 = load %struct.fib_nh_exception*, %struct.fib_nh_exception** %7, align 8
  %38 = getelementptr inbounds %struct.fib_nh_exception, %struct.fib_nh_exception* %37, i32 0, i32 1
  %39 = load i64, i64* %38, align 8
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %52

41:                                               ; preds = %36
  %42 = load i32, i32* @jiffies, align 4
  %43 = load %struct.fib_nh_exception*, %struct.fib_nh_exception** %7, align 8
  %44 = getelementptr inbounds %struct.fib_nh_exception, %struct.fib_nh_exception* %43, i32 0, i32 1
  %45 = load i64, i64* %44, align 8
  %46 = call i64 @time_after(i32 %42, i64 %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %52

48:                                               ; preds = %41
  %49 = load %struct.fib_nh_common*, %struct.fib_nh_common** %4, align 8
  %50 = load i64, i64* %5, align 8
  %51 = call i32 @ip_del_fnhe(%struct.fib_nh_common* %49, i64 %50)
  br label %61

52:                                               ; preds = %41, %36
  %53 = load %struct.fib_nh_exception*, %struct.fib_nh_exception** %7, align 8
  store %struct.fib_nh_exception* %53, %struct.fib_nh_exception** %3, align 8
  br label %62

54:                                               ; preds = %30
  br label %55

55:                                               ; preds = %54
  %56 = load %struct.fib_nh_exception*, %struct.fib_nh_exception** %7, align 8
  %57 = getelementptr inbounds %struct.fib_nh_exception, %struct.fib_nh_exception* %56, i32 0, i32 2
  %58 = load i32, i32* %57, align 8
  %59 = call i8* @rcu_dereference(i32 %58)
  %60 = bitcast i8* %59 to %struct.fib_nh_exception*
  store %struct.fib_nh_exception* %60, %struct.fib_nh_exception** %7, align 8
  br label %27

61:                                               ; preds = %48, %27
  store %struct.fib_nh_exception* null, %struct.fib_nh_exception** %3, align 8
  br label %62

62:                                               ; preds = %61, %52, %16
  %63 = load %struct.fib_nh_exception*, %struct.fib_nh_exception** %3, align 8
  ret %struct.fib_nh_exception* %63
}

declare dso_local i8* @rcu_dereference(i32) #1

declare dso_local i64 @fnhe_hashfun(i64) #1

declare dso_local i64 @time_after(i32, i64) #1

declare dso_local i32 @ip_del_fnhe(%struct.fib_nh_common*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
