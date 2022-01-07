; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/util/extr_intel-pt.c_intel_pt_synth_mwait_sample.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/util/extr_intel-pt.c_intel_pt_synth_mwait_sample.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_pt_queue = type { %struct.TYPE_2__*, %struct.intel_pt*, %union.perf_event* }
%struct.TYPE_2__ = type { i32 }
%struct.intel_pt = type { i32, i32 }
%union.perf_event = type { i32 }
%struct.perf_sample = type { i32, i32, i32, i32, i32 }
%struct.perf_synth_intel_mwait = type { i32, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.intel_pt_queue*)* @intel_pt_synth_mwait_sample to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @intel_pt_synth_mwait_sample(%struct.intel_pt_queue* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.intel_pt_queue*, align 8
  %4 = alloca %struct.intel_pt*, align 8
  %5 = alloca %union.perf_event*, align 8
  %6 = alloca %struct.perf_sample, align 4
  %7 = alloca %struct.perf_synth_intel_mwait, align 8
  store %struct.intel_pt_queue* %0, %struct.intel_pt_queue** %3, align 8
  %8 = load %struct.intel_pt_queue*, %struct.intel_pt_queue** %3, align 8
  %9 = getelementptr inbounds %struct.intel_pt_queue, %struct.intel_pt_queue* %8, i32 0, i32 1
  %10 = load %struct.intel_pt*, %struct.intel_pt** %9, align 8
  store %struct.intel_pt* %10, %struct.intel_pt** %4, align 8
  %11 = load %struct.intel_pt_queue*, %struct.intel_pt_queue** %3, align 8
  %12 = getelementptr inbounds %struct.intel_pt_queue, %struct.intel_pt_queue* %11, i32 0, i32 2
  %13 = load %union.perf_event*, %union.perf_event** %12, align 8
  store %union.perf_event* %13, %union.perf_event** %5, align 8
  %14 = bitcast %struct.perf_sample* %6 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %14, i8 0, i64 20, i1 false)
  %15 = load %struct.intel_pt*, %struct.intel_pt** %4, align 8
  %16 = call i64 @intel_pt_skip_event(%struct.intel_pt* %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %60

19:                                               ; preds = %1
  %20 = load %struct.intel_pt*, %struct.intel_pt** %4, align 8
  %21 = load %struct.intel_pt_queue*, %struct.intel_pt_queue** %3, align 8
  %22 = load %union.perf_event*, %union.perf_event** %5, align 8
  %23 = call i32 @intel_pt_prep_p_sample(%struct.intel_pt* %20, %struct.intel_pt_queue* %21, %union.perf_event* %22, %struct.perf_sample* %6)
  %24 = load %struct.intel_pt_queue*, %struct.intel_pt_queue** %3, align 8
  %25 = getelementptr inbounds %struct.intel_pt_queue, %struct.intel_pt_queue* %24, i32 0, i32 1
  %26 = load %struct.intel_pt*, %struct.intel_pt** %25, align 8
  %27 = getelementptr inbounds %struct.intel_pt, %struct.intel_pt* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = getelementptr inbounds %struct.perf_sample, %struct.perf_sample* %6, i32 0, i32 3
  store i32 %28, i32* %29, align 4
  %30 = load %struct.intel_pt_queue*, %struct.intel_pt_queue** %3, align 8
  %31 = getelementptr inbounds %struct.intel_pt_queue, %struct.intel_pt_queue* %30, i32 0, i32 1
  %32 = load %struct.intel_pt*, %struct.intel_pt** %31, align 8
  %33 = getelementptr inbounds %struct.intel_pt, %struct.intel_pt* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = getelementptr inbounds %struct.perf_sample, %struct.perf_sample* %6, i32 0, i32 2
  store i32 %34, i32* %35, align 4
  %36 = getelementptr inbounds %struct.perf_synth_intel_mwait, %struct.perf_synth_intel_mwait* %7, i32 0, i32 1
  store i64 0, i64* %36, align 8
  %37 = load %struct.intel_pt_queue*, %struct.intel_pt_queue** %3, align 8
  %38 = getelementptr inbounds %struct.intel_pt_queue, %struct.intel_pt_queue* %37, i32 0, i32 0
  %39 = load %struct.TYPE_2__*, %struct.TYPE_2__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @cpu_to_le64(i32 %41)
  %43 = getelementptr inbounds %struct.perf_synth_intel_mwait, %struct.perf_synth_intel_mwait* %7, i32 0, i32 0
  store i32 %42, i32* %43, align 8
  %44 = bitcast %struct.perf_synth_intel_mwait* %7 to { i32, i64 }*
  %45 = getelementptr inbounds { i32, i64 }, { i32, i64 }* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = getelementptr inbounds { i32, i64 }, { i32, i64 }* %44, i32 0, i32 1
  %48 = load i64, i64* %47, align 8
  %49 = call i32 @perf_synth__raw_size(i32 %46, i64 %48)
  %50 = getelementptr inbounds %struct.perf_sample, %struct.perf_sample* %6, i32 0, i32 1
  store i32 %49, i32* %50, align 4
  %51 = call i32 @perf_synth__raw_data(%struct.perf_synth_intel_mwait* %7)
  %52 = getelementptr inbounds %struct.perf_sample, %struct.perf_sample* %6, i32 0, i32 0
  store i32 %51, i32* %52, align 4
  %53 = load %struct.intel_pt*, %struct.intel_pt** %4, align 8
  %54 = load %struct.intel_pt_queue*, %struct.intel_pt_queue** %3, align 8
  %55 = load %union.perf_event*, %union.perf_event** %5, align 8
  %56 = load %struct.intel_pt*, %struct.intel_pt** %4, align 8
  %57 = getelementptr inbounds %struct.intel_pt, %struct.intel_pt* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = call i32 @intel_pt_deliver_synth_event(%struct.intel_pt* %53, %struct.intel_pt_queue* %54, %union.perf_event* %55, %struct.perf_sample* %6, i32 %58)
  store i32 %59, i32* %2, align 4
  br label %60

60:                                               ; preds = %19, %18
  %61 = load i32, i32* %2, align 4
  ret i32 %61
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i64 @intel_pt_skip_event(%struct.intel_pt*) #2

declare dso_local i32 @intel_pt_prep_p_sample(%struct.intel_pt*, %struct.intel_pt_queue*, %union.perf_event*, %struct.perf_sample*) #2

declare dso_local i32 @cpu_to_le64(i32) #2

declare dso_local i32 @perf_synth__raw_size(i32, i64) #2

declare dso_local i32 @perf_synth__raw_data(%struct.perf_synth_intel_mwait*) #2

declare dso_local i32 @intel_pt_deliver_synth_event(%struct.intel_pt*, %struct.intel_pt_queue*, %union.perf_event*, %struct.perf_sample*, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
