; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/radix-tree/extr_benchmark.c_benchmark_tagging.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/radix-tree/extr_benchmark.c_benchmark_tagging.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radix_tree_root = type { i32 }
%struct.timespec = type { i64, i64 }

@CLOCK_MONOTONIC = common dso_local global i32 0, align 4
@NSEC_PER_SEC = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [44 x i8] c"Size: %8ld, step: %8ld, tagging: %17lld ns\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.radix_tree_root*, i64, i64)* @benchmark_tagging to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @benchmark_tagging(%struct.radix_tree_root* %0, i64 %1, i64 %2) #0 {
  %4 = alloca %struct.radix_tree_root*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.timespec, align 8
  %8 = alloca %struct.timespec, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  store %struct.radix_tree_root* %0, %struct.radix_tree_root** %4, align 8
  store i64 %1, i64* %5, align 8
  store i64 %2, i64* %6, align 8
  %11 = load i32, i32* @CLOCK_MONOTONIC, align 4
  %12 = call i32 @clock_gettime(i32 %11, %struct.timespec* %7)
  store i64 0, i64* %9, align 8
  br label %13

13:                                               ; preds = %21, %3
  %14 = load i64, i64* %9, align 8
  %15 = load i64, i64* %5, align 8
  %16 = icmp ult i64 %14, %15
  br i1 %16, label %17, label %25

17:                                               ; preds = %13
  %18 = load %struct.radix_tree_root*, %struct.radix_tree_root** %4, align 8
  %19 = load i64, i64* %9, align 8
  %20 = call i32 @radix_tree_tag_set(%struct.radix_tree_root* %18, i64 %19, i32 0)
  br label %21

21:                                               ; preds = %17
  %22 = load i64, i64* %6, align 8
  %23 = load i64, i64* %9, align 8
  %24 = add i64 %23, %22
  store i64 %24, i64* %9, align 8
  br label %13

25:                                               ; preds = %13
  %26 = load i32, i32* @CLOCK_MONOTONIC, align 4
  %27 = call i32 @clock_gettime(i32 %26, %struct.timespec* %8)
  %28 = getelementptr inbounds %struct.timespec, %struct.timespec* %8, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = getelementptr inbounds %struct.timespec, %struct.timespec* %7, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = sub nsw i64 %29, %31
  %33 = load i64, i64* @NSEC_PER_SEC, align 8
  %34 = mul nsw i64 %32, %33
  %35 = getelementptr inbounds %struct.timespec, %struct.timespec* %8, i32 0, i32 1
  %36 = load i64, i64* %35, align 8
  %37 = getelementptr inbounds %struct.timespec, %struct.timespec* %7, i32 0, i32 1
  %38 = load i64, i64* %37, align 8
  %39 = sub nsw i64 %36, %38
  %40 = add nsw i64 %34, %39
  store i64 %40, i64* %10, align 8
  %41 = load i64, i64* %5, align 8
  %42 = load i64, i64* %6, align 8
  %43 = load i64, i64* %10, align 8
  %44 = call i32 @printv(i32 2, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0), i64 %41, i64 %42, i64 %43)
  ret void
}

declare dso_local i32 @clock_gettime(i32, %struct.timespec*) #1

declare dso_local i32 @radix_tree_tag_set(%struct.radix_tree_root*, i64, i32) #1

declare dso_local i32 @printv(i32, i8*, i64, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
