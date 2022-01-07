; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/util/extr_intel-pt.c_intel_pt_prep_p_sample.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/util/extr_intel-pt.c_intel_pt_prep_p_sample.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_pt = type { i32 }
%struct.intel_pt_queue = type { i32 }
%union.perf_event = type { i32 }
%struct.perf_sample = type { i64, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.intel_pt*, %struct.intel_pt_queue*, %union.perf_event*, %struct.perf_sample*)* @intel_pt_prep_p_sample to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @intel_pt_prep_p_sample(%struct.intel_pt* %0, %struct.intel_pt_queue* %1, %union.perf_event* %2, %struct.perf_sample* %3) #0 {
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
  %13 = call i32 @intel_pt_prep_sample(%struct.intel_pt* %9, %struct.intel_pt_queue* %10, %union.perf_event* %11, %struct.perf_sample* %12)
  %14 = load %struct.perf_sample*, %struct.perf_sample** %8, align 8
  %15 = getelementptr inbounds %struct.perf_sample, %struct.perf_sample* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 8
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %21, label %18

18:                                               ; preds = %4
  %19 = load %struct.perf_sample*, %struct.perf_sample** %8, align 8
  %20 = getelementptr inbounds %struct.perf_sample, %struct.perf_sample* %19, i32 0, i32 0
  store i64 0, i64* %20, align 8
  br label %21

21:                                               ; preds = %18, %4
  ret void
}

declare dso_local i32 @intel_pt_prep_sample(%struct.intel_pt*, %struct.intel_pt_queue*, %union.perf_event*, %struct.perf_sample*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
