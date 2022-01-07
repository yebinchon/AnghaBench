; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/util/extr_intel-pt.c_intel_pt_prep_b_sample.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/util/extr_intel-pt.c_intel_pt_prep_b_sample.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_pt = type { i32, i32 }
%struct.intel_pt_queue = type { i32, %struct.TYPE_4__*, i32 }
%struct.TYPE_4__ = type { i32, i32 }
%union.perf_event = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }
%struct.perf_sample = type { i32, i32, i32, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.intel_pt*, %struct.intel_pt_queue*, %union.perf_event*, %struct.perf_sample*)* @intel_pt_prep_b_sample to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @intel_pt_prep_b_sample(%struct.intel_pt* %0, %struct.intel_pt_queue* %1, %union.perf_event* %2, %struct.perf_sample* %3) #0 {
  %5 = alloca %struct.intel_pt*, align 8
  %6 = alloca %struct.intel_pt_queue*, align 8
  %7 = alloca %union.perf_event*, align 8
  %8 = alloca %struct.perf_sample*, align 8
  store %struct.intel_pt* %0, %struct.intel_pt** %5, align 8
  store %struct.intel_pt_queue* %1, %struct.intel_pt_queue** %6, align 8
  store %union.perf_event* %2, %union.perf_event** %7, align 8
  store %struct.perf_sample* %3, %struct.perf_sample** %8, align 8
  %9 = load %struct.intel_pt_queue*, %struct.intel_pt_queue** %6, align 8
  %10 = load %union.perf_event*, %union.perf_event** %7, align 8
  %11 = load %struct.perf_sample*, %struct.perf_sample** %8, align 8
  %12 = call i32 @intel_pt_prep_a_sample(%struct.intel_pt_queue* %9, %union.perf_event* %10, %struct.perf_sample* %11)
  %13 = load %struct.intel_pt*, %struct.intel_pt** %5, align 8
  %14 = getelementptr inbounds %struct.intel_pt, %struct.intel_pt* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %26, label %17

17:                                               ; preds = %4
  %18 = load %struct.intel_pt_queue*, %struct.intel_pt_queue** %6, align 8
  %19 = getelementptr inbounds %struct.intel_pt_queue, %struct.intel_pt_queue* %18, i32 0, i32 2
  %20 = load i32, i32* %19, align 8
  %21 = load %struct.intel_pt*, %struct.intel_pt** %5, align 8
  %22 = getelementptr inbounds %struct.intel_pt, %struct.intel_pt* %21, i32 0, i32 0
  %23 = call i32 @tsc_to_perf_time(i32 %20, i32* %22)
  %24 = load %struct.perf_sample*, %struct.perf_sample** %8, align 8
  %25 = getelementptr inbounds %struct.perf_sample, %struct.perf_sample* %24, i32 0, i32 5
  store i32 %23, i32* %25, align 4
  br label %26

26:                                               ; preds = %17, %4
  %27 = load %struct.intel_pt_queue*, %struct.intel_pt_queue** %6, align 8
  %28 = getelementptr inbounds %struct.intel_pt_queue, %struct.intel_pt_queue* %27, i32 0, i32 1
  %29 = load %struct.TYPE_4__*, %struct.TYPE_4__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.perf_sample*, %struct.perf_sample** %8, align 8
  %33 = getelementptr inbounds %struct.perf_sample, %struct.perf_sample* %32, i32 0, i32 4
  store i32 %31, i32* %33, align 4
  %34 = load %struct.intel_pt*, %struct.intel_pt** %5, align 8
  %35 = load %struct.perf_sample*, %struct.perf_sample** %8, align 8
  %36 = getelementptr inbounds %struct.perf_sample, %struct.perf_sample* %35, i32 0, i32 4
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @intel_pt_cpumode(%struct.intel_pt* %34, i32 %37)
  %39 = load %struct.perf_sample*, %struct.perf_sample** %8, align 8
  %40 = getelementptr inbounds %struct.perf_sample, %struct.perf_sample* %39, i32 0, i32 1
  store i32 %38, i32* %40, align 4
  %41 = load %struct.intel_pt_queue*, %struct.intel_pt_queue** %6, align 8
  %42 = getelementptr inbounds %struct.intel_pt_queue, %struct.intel_pt_queue* %41, i32 0, i32 1
  %43 = load %struct.TYPE_4__*, %struct.TYPE_4__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.perf_sample*, %struct.perf_sample** %8, align 8
  %47 = getelementptr inbounds %struct.perf_sample, %struct.perf_sample* %46, i32 0, i32 3
  store i32 %45, i32* %47, align 4
  %48 = load %struct.perf_sample*, %struct.perf_sample** %8, align 8
  %49 = getelementptr inbounds %struct.perf_sample, %struct.perf_sample* %48, i32 0, i32 0
  store i32 1, i32* %49, align 4
  %50 = load %struct.intel_pt_queue*, %struct.intel_pt_queue** %6, align 8
  %51 = getelementptr inbounds %struct.intel_pt_queue, %struct.intel_pt_queue* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = load %struct.perf_sample*, %struct.perf_sample** %8, align 8
  %54 = getelementptr inbounds %struct.perf_sample, %struct.perf_sample* %53, i32 0, i32 2
  store i32 %52, i32* %54, align 4
  %55 = load %struct.perf_sample*, %struct.perf_sample** %8, align 8
  %56 = getelementptr inbounds %struct.perf_sample, %struct.perf_sample* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = load %union.perf_event*, %union.perf_event** %7, align 8
  %59 = bitcast %union.perf_event* %58 to %struct.TYPE_6__*
  %60 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %60, i32 0, i32 0
  store i32 %57, i32* %61, align 4
  ret void
}

declare dso_local i32 @intel_pt_prep_a_sample(%struct.intel_pt_queue*, %union.perf_event*, %struct.perf_sample*) #1

declare dso_local i32 @tsc_to_perf_time(i32, i32*) #1

declare dso_local i32 @intel_pt_cpumode(%struct.intel_pt*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
