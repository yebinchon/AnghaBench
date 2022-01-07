; ModuleID = '/home/carl/AnghaBench/linux/fs/xfs/scrub/extr_fscounters.c_xchk_fscount_within_range.c'
source_filename = "/home/carl/AnghaBench/linux/fs/xfs/scrub/extr_fscounters.c_xchk_fscount_within_range.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xfs_scrub = type { i32 }
%struct.percpu_counter = type { i32 }

@XCHK_FSCOUNT_MIN_VARIANCE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.xfs_scrub*, i64, %struct.percpu_counter*, i64)* @xchk_fscount_within_range to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xchk_fscount_within_range(%struct.xfs_scrub* %0, i64 %1, %struct.percpu_counter* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.xfs_scrub*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.percpu_counter*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  store %struct.xfs_scrub* %0, %struct.xfs_scrub** %6, align 8
  store i64 %1, i64* %7, align 8
  store %struct.percpu_counter* %2, %struct.percpu_counter** %8, align 8
  store i64 %3, i64* %9, align 8
  %13 = load %struct.percpu_counter*, %struct.percpu_counter** %8, align 8
  %14 = call i64 @percpu_counter_sum(%struct.percpu_counter* %13)
  store i64 %14, i64* %12, align 8
  %15 = load %struct.xfs_scrub*, %struct.xfs_scrub** %6, align 8
  %16 = getelementptr inbounds %struct.xfs_scrub, %struct.xfs_scrub* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load i64, i64* %9, align 8
  %19 = load i64, i64* %12, align 8
  %20 = load i64, i64* %7, align 8
  %21 = call i32 @trace_xchk_fscounters_within_range(i32 %17, i64 %18, i64 %19, i64 %20)
  %22 = load i64, i64* %12, align 8
  %23 = icmp slt i64 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  br label %55

25:                                               ; preds = %4
  %26 = load i64, i64* %12, align 8
  %27 = load i64, i64* %9, align 8
  %28 = icmp eq i64 %26, %27
  br i1 %28, label %29, label %30

29:                                               ; preds = %25
  store i32 1, i32* %5, align 4
  br label %55

30:                                               ; preds = %25
  %31 = load i64, i64* %7, align 8
  %32 = load i64, i64* %12, align 8
  %33 = call i64 @min(i64 %31, i64 %32)
  store i64 %33, i64* %10, align 8
  %34 = load i64, i64* %7, align 8
  %35 = load i64, i64* %12, align 8
  %36 = call i64 @max(i64 %34, i64 %35)
  store i64 %36, i64* %11, align 8
  %37 = load i64, i64* %9, align 8
  %38 = load i64, i64* %10, align 8
  %39 = icmp sge i64 %37, %38
  br i1 %39, label %40, label %45

40:                                               ; preds = %30
  %41 = load i64, i64* %9, align 8
  %42 = load i64, i64* %11, align 8
  %43 = icmp sle i64 %41, %42
  br i1 %43, label %44, label %45

44:                                               ; preds = %40
  store i32 1, i32* %5, align 4
  br label %55

45:                                               ; preds = %40, %30
  %46 = load i64, i64* %11, align 8
  %47 = load i64, i64* %10, align 8
  %48 = sub nsw i64 %46, %47
  %49 = load i64, i64* @XCHK_FSCOUNT_MIN_VARIANCE, align 8
  %50 = icmp sge i64 %48, %49
  br i1 %50, label %51, label %54

51:                                               ; preds = %45
  %52 = load %struct.xfs_scrub*, %struct.xfs_scrub** %6, align 8
  %53 = call i32 @xchk_set_incomplete(%struct.xfs_scrub* %52)
  store i32 1, i32* %5, align 4
  br label %55

54:                                               ; preds = %45
  store i32 0, i32* %5, align 4
  br label %55

55:                                               ; preds = %54, %51, %44, %29, %24
  %56 = load i32, i32* %5, align 4
  ret i32 %56
}

declare dso_local i64 @percpu_counter_sum(%struct.percpu_counter*) #1

declare dso_local i32 @trace_xchk_fscounters_within_range(i32, i64, i64, i64) #1

declare dso_local i64 @min(i64, i64) #1

declare dso_local i64 @max(i64, i64) #1

declare dso_local i32 @xchk_set_incomplete(%struct.xfs_scrub*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
