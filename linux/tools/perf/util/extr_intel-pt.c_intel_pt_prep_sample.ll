; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/util/extr_intel-pt.c_intel_pt_prep_sample.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/util/extr_intel-pt.c_intel_pt_prep_sample.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_pt = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i64, i64, i64 }
%struct.intel_pt_queue = type { i32, i32, i32, i32 }
%union.perf_event = type { i32 }
%struct.perf_sample = type { i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.intel_pt*, %struct.intel_pt_queue*, %union.perf_event*, %struct.perf_sample*)* @intel_pt_prep_sample to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @intel_pt_prep_sample(%struct.intel_pt* %0, %struct.intel_pt_queue* %1, %union.perf_event* %2, %struct.perf_sample* %3) #0 {
  %5 = alloca %struct.intel_pt*, align 8
  %6 = alloca %struct.intel_pt_queue*, align 8
  %7 = alloca %union.perf_event*, align 8
  %8 = alloca %struct.perf_sample*, align 8
  store %struct.intel_pt* %0, %struct.intel_pt** %5, align 8
  store %struct.intel_pt_queue* %1, %struct.intel_pt_queue** %6, align 8
  store %union.perf_event* %2, %union.perf_event** %7, align 8
  store %struct.perf_sample* %3, %struct.perf_sample** %8, align 8
  %9 = load %struct.intel_pt*, %struct.intel_pt** %5, align 8
  %10 = load %struct.intel_pt_queue*, %struct.intel_pt_queue** %6, align 8
  %11 = load %union.perf_event*, %union.perf_event** %7, align 8
  %12 = load %struct.perf_sample*, %struct.perf_sample** %8, align 8
  %13 = call i32 @intel_pt_prep_b_sample(%struct.intel_pt* %9, %struct.intel_pt_queue* %10, %union.perf_event* %11, %struct.perf_sample* %12)
  %14 = load %struct.intel_pt*, %struct.intel_pt** %5, align 8
  %15 = getelementptr inbounds %struct.intel_pt, %struct.intel_pt* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 2
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %46

19:                                               ; preds = %4
  %20 = load %struct.intel_pt_queue*, %struct.intel_pt_queue** %6, align 8
  %21 = getelementptr inbounds %struct.intel_pt_queue, %struct.intel_pt_queue* %20, i32 0, i32 3
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.intel_pt_queue*, %struct.intel_pt_queue** %6, align 8
  %24 = getelementptr inbounds %struct.intel_pt_queue, %struct.intel_pt_queue* %23, i32 0, i32 2
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.intel_pt_queue*, %struct.intel_pt_queue** %6, align 8
  %27 = getelementptr inbounds %struct.intel_pt_queue, %struct.intel_pt_queue* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.intel_pt*, %struct.intel_pt** %5, align 8
  %30 = getelementptr inbounds %struct.intel_pt, %struct.intel_pt* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  %33 = add nsw i64 %32, 1
  %34 = load %struct.perf_sample*, %struct.perf_sample** %8, align 8
  %35 = getelementptr inbounds %struct.perf_sample, %struct.perf_sample* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.intel_pt*, %struct.intel_pt** %5, align 8
  %38 = getelementptr inbounds %struct.intel_pt, %struct.intel_pt* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 8
  %40 = call i32 @thread_stack__sample(i32 %22, i32 %25, i32 %28, i64 %33, i32 %36, i32 %39)
  %41 = load %struct.intel_pt_queue*, %struct.intel_pt_queue** %6, align 8
  %42 = getelementptr inbounds %struct.intel_pt_queue, %struct.intel_pt_queue* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.perf_sample*, %struct.perf_sample** %8, align 8
  %45 = getelementptr inbounds %struct.perf_sample, %struct.perf_sample* %44, i32 0, i32 1
  store i32 %43, i32* %45, align 4
  br label %46

46:                                               ; preds = %19, %4
  %47 = load %struct.intel_pt*, %struct.intel_pt** %5, align 8
  %48 = getelementptr inbounds %struct.intel_pt, %struct.intel_pt* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %60

52:                                               ; preds = %46
  %53 = load %struct.intel_pt_queue*, %struct.intel_pt_queue** %6, align 8
  %54 = call i32 @intel_pt_copy_last_branch_rb(%struct.intel_pt_queue* %53)
  %55 = load %struct.intel_pt_queue*, %struct.intel_pt_queue** %6, align 8
  %56 = getelementptr inbounds %struct.intel_pt_queue, %struct.intel_pt_queue* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = load %struct.perf_sample*, %struct.perf_sample** %8, align 8
  %59 = getelementptr inbounds %struct.perf_sample, %struct.perf_sample* %58, i32 0, i32 0
  store i32 %57, i32* %59, align 4
  br label %60

60:                                               ; preds = %52, %46
  ret void
}

declare dso_local i32 @intel_pt_prep_b_sample(%struct.intel_pt*, %struct.intel_pt_queue*, %union.perf_event*, %struct.perf_sample*) #1

declare dso_local i32 @thread_stack__sample(i32, i32, i32, i64, i32, i32) #1

declare dso_local i32 @intel_pt_copy_last_branch_rb(%struct.intel_pt_queue*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
