; ModuleID = '/home/carl/AnghaBench/linux/net/ipv4/extr_fib_semantics.c_free_nh_exceptions.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv4/extr_fib_semantics.c_free_nh_exceptions.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fib_nh_common = type { i32 }
%struct.fnhe_hash_bucket = type { i32, i32, i32, i32 }
%struct.fib_nh_exception = type { i32, i32, i32, i32 }

@FNHE_HASH_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.fib_nh_common*)* @free_nh_exceptions to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @free_nh_exceptions(%struct.fib_nh_common* %0) #0 {
  %2 = alloca %struct.fib_nh_common*, align 8
  %3 = alloca %struct.fnhe_hash_bucket*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.fib_nh_exception*, align 8
  %6 = alloca %struct.fib_nh_exception*, align 8
  store %struct.fib_nh_common* %0, %struct.fib_nh_common** %2, align 8
  %7 = load %struct.fib_nh_common*, %struct.fib_nh_common** %2, align 8
  %8 = getelementptr inbounds %struct.fib_nh_common, %struct.fib_nh_common* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = call %struct.fnhe_hash_bucket* @rcu_dereference_protected(i32 %9, i32 1)
  store %struct.fnhe_hash_bucket* %10, %struct.fnhe_hash_bucket** %3, align 8
  %11 = load %struct.fnhe_hash_bucket*, %struct.fnhe_hash_bucket** %3, align 8
  %12 = icmp ne %struct.fnhe_hash_bucket* %11, null
  br i1 %12, label %14, label %13

13:                                               ; preds = %1
  br label %54

14:                                               ; preds = %1
  store i32 0, i32* %4, align 4
  br label %15

15:                                               ; preds = %48, %14
  %16 = load i32, i32* %4, align 4
  %17 = load i32, i32* @FNHE_HASH_SIZE, align 4
  %18 = icmp slt i32 %16, %17
  br i1 %18, label %19, label %51

19:                                               ; preds = %15
  %20 = load %struct.fnhe_hash_bucket*, %struct.fnhe_hash_bucket** %3, align 8
  %21 = load i32, i32* %4, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds %struct.fnhe_hash_bucket, %struct.fnhe_hash_bucket* %20, i64 %22
  %24 = getelementptr inbounds %struct.fnhe_hash_bucket, %struct.fnhe_hash_bucket* %23, i32 0, i32 3
  %25 = load i32, i32* %24, align 4
  %26 = call %struct.fnhe_hash_bucket* @rcu_dereference_protected(i32 %25, i32 1)
  %27 = bitcast %struct.fnhe_hash_bucket* %26 to %struct.fib_nh_exception*
  store %struct.fib_nh_exception* %27, %struct.fib_nh_exception** %5, align 8
  br label %28

28:                                               ; preds = %31, %19
  %29 = load %struct.fib_nh_exception*, %struct.fib_nh_exception** %5, align 8
  %30 = icmp ne %struct.fib_nh_exception* %29, null
  br i1 %30, label %31, label %47

31:                                               ; preds = %28
  %32 = load %struct.fib_nh_exception*, %struct.fib_nh_exception** %5, align 8
  %33 = getelementptr inbounds %struct.fib_nh_exception, %struct.fib_nh_exception* %32, i32 0, i32 2
  %34 = load i32, i32* %33, align 4
  %35 = call %struct.fnhe_hash_bucket* @rcu_dereference_protected(i32 %34, i32 1)
  %36 = bitcast %struct.fnhe_hash_bucket* %35 to %struct.fib_nh_exception*
  store %struct.fib_nh_exception* %36, %struct.fib_nh_exception** %6, align 8
  %37 = load %struct.fib_nh_exception*, %struct.fib_nh_exception** %5, align 8
  %38 = getelementptr inbounds %struct.fib_nh_exception, %struct.fib_nh_exception* %37, i32 0, i32 1
  %39 = call i32 @rt_fibinfo_free(i32* %38)
  %40 = load %struct.fib_nh_exception*, %struct.fib_nh_exception** %5, align 8
  %41 = getelementptr inbounds %struct.fib_nh_exception, %struct.fib_nh_exception* %40, i32 0, i32 0
  %42 = call i32 @rt_fibinfo_free(i32* %41)
  %43 = load %struct.fib_nh_exception*, %struct.fib_nh_exception** %5, align 8
  %44 = bitcast %struct.fib_nh_exception* %43 to %struct.fnhe_hash_bucket*
  %45 = call i32 @kfree(%struct.fnhe_hash_bucket* %44)
  %46 = load %struct.fib_nh_exception*, %struct.fib_nh_exception** %6, align 8
  store %struct.fib_nh_exception* %46, %struct.fib_nh_exception** %5, align 8
  br label %28

47:                                               ; preds = %28
  br label %48

48:                                               ; preds = %47
  %49 = load i32, i32* %4, align 4
  %50 = add nsw i32 %49, 1
  store i32 %50, i32* %4, align 4
  br label %15

51:                                               ; preds = %15
  %52 = load %struct.fnhe_hash_bucket*, %struct.fnhe_hash_bucket** %3, align 8
  %53 = call i32 @kfree(%struct.fnhe_hash_bucket* %52)
  br label %54

54:                                               ; preds = %51, %13
  ret void
}

declare dso_local %struct.fnhe_hash_bucket* @rcu_dereference_protected(i32, i32) #1

declare dso_local i32 @rt_fibinfo_free(i32*) #1

declare dso_local i32 @kfree(%struct.fnhe_hash_bucket*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
