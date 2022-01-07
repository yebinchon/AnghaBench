; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/util/extr_intel-pt.c_intel_ptq_synth_error.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/util/extr_intel-pt.c_intel_ptq_synth_error.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_pt_queue = type { i32, i32, i32, i32, %struct.intel_pt* }
%struct.intel_pt = type { i32, i64 }
%struct.intel_pt_state = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.intel_pt_queue*, %struct.intel_pt_state*)* @intel_ptq_synth_error to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @intel_ptq_synth_error(%struct.intel_pt_queue* %0, %struct.intel_pt_state* %1) #0 {
  %3 = alloca %struct.intel_pt_queue*, align 8
  %4 = alloca %struct.intel_pt_state*, align 8
  %5 = alloca %struct.intel_pt*, align 8
  %6 = alloca i32, align 4
  store %struct.intel_pt_queue* %0, %struct.intel_pt_queue** %3, align 8
  store %struct.intel_pt_state* %1, %struct.intel_pt_state** %4, align 8
  %7 = load %struct.intel_pt_queue*, %struct.intel_pt_queue** %3, align 8
  %8 = getelementptr inbounds %struct.intel_pt_queue, %struct.intel_pt_queue* %7, i32 0, i32 4
  %9 = load %struct.intel_pt*, %struct.intel_pt** %8, align 8
  store %struct.intel_pt* %9, %struct.intel_pt** %5, align 8
  %10 = load %struct.intel_pt_queue*, %struct.intel_pt_queue** %3, align 8
  %11 = getelementptr inbounds %struct.intel_pt_queue, %struct.intel_pt_queue* %10, i32 0, i32 3
  %12 = load i32, i32* %11, align 4
  store i32 %12, i32* %6, align 4
  %13 = load %struct.intel_pt*, %struct.intel_pt** %5, align 8
  %14 = getelementptr inbounds %struct.intel_pt, %struct.intel_pt* %13, i32 0, i32 1
  %15 = load i64, i64* %14, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %2
  br label %23

18:                                               ; preds = %2
  %19 = load i32, i32* %6, align 4
  %20 = load %struct.intel_pt*, %struct.intel_pt** %5, align 8
  %21 = getelementptr inbounds %struct.intel_pt, %struct.intel_pt* %20, i32 0, i32 0
  %22 = call i32 @tsc_to_perf_time(i32 %19, i32* %21)
  br label %23

23:                                               ; preds = %18, %17
  %24 = phi i32 [ 0, %17 ], [ %22, %18 ]
  store i32 %24, i32* %6, align 4
  %25 = load %struct.intel_pt*, %struct.intel_pt** %5, align 8
  %26 = load %struct.intel_pt_state*, %struct.intel_pt_state** %4, align 8
  %27 = getelementptr inbounds %struct.intel_pt_state, %struct.intel_pt_state* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.intel_pt_queue*, %struct.intel_pt_queue** %3, align 8
  %30 = getelementptr inbounds %struct.intel_pt_queue, %struct.intel_pt_queue* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 8
  %32 = load %struct.intel_pt_queue*, %struct.intel_pt_queue** %3, align 8
  %33 = getelementptr inbounds %struct.intel_pt_queue, %struct.intel_pt_queue* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.intel_pt_queue*, %struct.intel_pt_queue** %3, align 8
  %36 = getelementptr inbounds %struct.intel_pt_queue, %struct.intel_pt_queue* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = load %struct.intel_pt_state*, %struct.intel_pt_state** %4, align 8
  %39 = getelementptr inbounds %struct.intel_pt_state, %struct.intel_pt_state* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* %6, align 4
  %42 = call i32 @intel_pt_synth_error(%struct.intel_pt* %25, i32 %28, i32 %31, i32 %34, i32 %37, i32 %40, i32 %41)
  ret i32 %42
}

declare dso_local i32 @tsc_to_perf_time(i32, i32*) #1

declare dso_local i32 @intel_pt_synth_error(%struct.intel_pt*, i32, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
