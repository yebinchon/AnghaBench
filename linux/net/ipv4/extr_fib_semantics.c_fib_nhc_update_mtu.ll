; ModuleID = '/home/carl/AnghaBench/linux/net/ipv4/extr_fib_semantics.c_fib_nhc_update_mtu.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv4/extr_fib_semantics.c_fib_nhc_update_mtu.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fib_nh_common = type { i32 }
%struct.fnhe_hash_bucket = type { i32 }
%struct.fib_nh_exception = type { i32, i64, i32 }

@FNHE_HASH_SIZE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @fib_nhc_update_mtu(%struct.fib_nh_common* %0, i64 %1, i64 %2) #0 {
  %4 = alloca %struct.fib_nh_common*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.fnhe_hash_bucket*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.fib_nh_exception*, align 8
  store %struct.fib_nh_common* %0, %struct.fib_nh_common** %4, align 8
  store i64 %1, i64* %5, align 8
  store i64 %2, i64* %6, align 8
  %10 = load %struct.fib_nh_common*, %struct.fib_nh_common** %4, align 8
  %11 = getelementptr inbounds %struct.fib_nh_common, %struct.fib_nh_common* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call i8* @rcu_dereference_protected(i32 %12, i32 1)
  %14 = bitcast i8* %13 to %struct.fnhe_hash_bucket*
  store %struct.fnhe_hash_bucket* %14, %struct.fnhe_hash_bucket** %7, align 8
  %15 = load %struct.fnhe_hash_bucket*, %struct.fnhe_hash_bucket** %7, align 8
  %16 = icmp ne %struct.fnhe_hash_bucket* %15, null
  br i1 %16, label %18, label %17

17:                                               ; preds = %3
  br label %81

18:                                               ; preds = %3
  store i32 0, i32* %8, align 4
  br label %19

19:                                               ; preds = %78, %18
  %20 = load i32, i32* %8, align 4
  %21 = load i32, i32* @FNHE_HASH_SIZE, align 4
  %22 = icmp slt i32 %20, %21
  br i1 %22, label %23, label %81

23:                                               ; preds = %19
  %24 = load %struct.fnhe_hash_bucket*, %struct.fnhe_hash_bucket** %7, align 8
  %25 = load i32, i32* %8, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds %struct.fnhe_hash_bucket, %struct.fnhe_hash_bucket* %24, i64 %26
  %28 = getelementptr inbounds %struct.fnhe_hash_bucket, %struct.fnhe_hash_bucket* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call i8* @rcu_dereference_protected(i32 %29, i32 1)
  %31 = bitcast i8* %30 to %struct.fib_nh_exception*
  store %struct.fib_nh_exception* %31, %struct.fib_nh_exception** %9, align 8
  br label %32

32:                                               ; preds = %71, %23
  %33 = load %struct.fib_nh_exception*, %struct.fib_nh_exception** %9, align 8
  %34 = icmp ne %struct.fib_nh_exception* %33, null
  br i1 %34, label %35, label %77

35:                                               ; preds = %32
  %36 = load %struct.fib_nh_exception*, %struct.fib_nh_exception** %9, align 8
  %37 = getelementptr inbounds %struct.fib_nh_exception, %struct.fib_nh_exception* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %53

40:                                               ; preds = %35
  %41 = load i64, i64* %5, align 8
  %42 = load %struct.fib_nh_exception*, %struct.fib_nh_exception** %9, align 8
  %43 = getelementptr inbounds %struct.fib_nh_exception, %struct.fib_nh_exception* %42, i32 0, i32 1
  %44 = load i64, i64* %43, align 8
  %45 = icmp sle i64 %41, %44
  br i1 %45, label %46, label %52

46:                                               ; preds = %40
  %47 = load i64, i64* %5, align 8
  %48 = load %struct.fib_nh_exception*, %struct.fib_nh_exception** %9, align 8
  %49 = getelementptr inbounds %struct.fib_nh_exception, %struct.fib_nh_exception* %48, i32 0, i32 1
  store i64 %47, i64* %49, align 8
  %50 = load %struct.fib_nh_exception*, %struct.fib_nh_exception** %9, align 8
  %51 = getelementptr inbounds %struct.fib_nh_exception, %struct.fib_nh_exception* %50, i32 0, i32 0
  store i32 0, i32* %51, align 8
  br label %52

52:                                               ; preds = %46, %40
  br label %70

53:                                               ; preds = %35
  %54 = load i64, i64* %5, align 8
  %55 = load %struct.fib_nh_exception*, %struct.fib_nh_exception** %9, align 8
  %56 = getelementptr inbounds %struct.fib_nh_exception, %struct.fib_nh_exception* %55, i32 0, i32 1
  %57 = load i64, i64* %56, align 8
  %58 = icmp slt i64 %54, %57
  br i1 %58, label %65, label %59

59:                                               ; preds = %53
  %60 = load i64, i64* %6, align 8
  %61 = load %struct.fib_nh_exception*, %struct.fib_nh_exception** %9, align 8
  %62 = getelementptr inbounds %struct.fib_nh_exception, %struct.fib_nh_exception* %61, i32 0, i32 1
  %63 = load i64, i64* %62, align 8
  %64 = icmp eq i64 %60, %63
  br i1 %64, label %65, label %69

65:                                               ; preds = %59, %53
  %66 = load i64, i64* %5, align 8
  %67 = load %struct.fib_nh_exception*, %struct.fib_nh_exception** %9, align 8
  %68 = getelementptr inbounds %struct.fib_nh_exception, %struct.fib_nh_exception* %67, i32 0, i32 1
  store i64 %66, i64* %68, align 8
  br label %69

69:                                               ; preds = %65, %59
  br label %70

70:                                               ; preds = %69, %52
  br label %71

71:                                               ; preds = %70
  %72 = load %struct.fib_nh_exception*, %struct.fib_nh_exception** %9, align 8
  %73 = getelementptr inbounds %struct.fib_nh_exception, %struct.fib_nh_exception* %72, i32 0, i32 2
  %74 = load i32, i32* %73, align 8
  %75 = call i8* @rcu_dereference_protected(i32 %74, i32 1)
  %76 = bitcast i8* %75 to %struct.fib_nh_exception*
  store %struct.fib_nh_exception* %76, %struct.fib_nh_exception** %9, align 8
  br label %32

77:                                               ; preds = %32
  br label %78

78:                                               ; preds = %77
  %79 = load i32, i32* %8, align 4
  %80 = add nsw i32 %79, 1
  store i32 %80, i32* %8, align 4
  br label %19

81:                                               ; preds = %17, %19
  ret void
}

declare dso_local i8* @rcu_dereference_protected(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
