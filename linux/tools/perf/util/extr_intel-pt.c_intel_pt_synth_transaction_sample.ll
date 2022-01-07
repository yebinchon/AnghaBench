; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/util/extr_intel-pt.c_intel_pt_synth_transaction_sample.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/util/extr_intel-pt.c_intel_pt_synth_transaction_sample.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_pt_queue = type { %struct.intel_pt*, %union.perf_event* }
%struct.intel_pt = type { i32, i32 }
%union.perf_event = type { i32 }
%struct.perf_sample = type { i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.intel_pt_queue*)* @intel_pt_synth_transaction_sample to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @intel_pt_synth_transaction_sample(%struct.intel_pt_queue* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.intel_pt_queue*, align 8
  %4 = alloca %struct.intel_pt*, align 8
  %5 = alloca %union.perf_event*, align 8
  %6 = alloca %struct.perf_sample, align 4
  store %struct.intel_pt_queue* %0, %struct.intel_pt_queue** %3, align 8
  %7 = load %struct.intel_pt_queue*, %struct.intel_pt_queue** %3, align 8
  %8 = getelementptr inbounds %struct.intel_pt_queue, %struct.intel_pt_queue* %7, i32 0, i32 0
  %9 = load %struct.intel_pt*, %struct.intel_pt** %8, align 8
  store %struct.intel_pt* %9, %struct.intel_pt** %4, align 8
  %10 = load %struct.intel_pt_queue*, %struct.intel_pt_queue** %3, align 8
  %11 = getelementptr inbounds %struct.intel_pt_queue, %struct.intel_pt_queue* %10, i32 0, i32 1
  %12 = load %union.perf_event*, %union.perf_event** %11, align 8
  store %union.perf_event* %12, %union.perf_event** %5, align 8
  %13 = bitcast %struct.perf_sample* %6 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %13, i8 0, i64 12, i1 false)
  %14 = load %struct.intel_pt*, %struct.intel_pt** %4, align 8
  %15 = call i64 @intel_pt_skip_event(%struct.intel_pt* %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %42

18:                                               ; preds = %1
  %19 = load %struct.intel_pt*, %struct.intel_pt** %4, align 8
  %20 = load %struct.intel_pt_queue*, %struct.intel_pt_queue** %3, align 8
  %21 = load %union.perf_event*, %union.perf_event** %5, align 8
  %22 = call i32 @intel_pt_prep_sample(%struct.intel_pt* %19, %struct.intel_pt_queue* %20, %union.perf_event* %21, %struct.perf_sample* %6)
  %23 = load %struct.intel_pt_queue*, %struct.intel_pt_queue** %3, align 8
  %24 = getelementptr inbounds %struct.intel_pt_queue, %struct.intel_pt_queue* %23, i32 0, i32 0
  %25 = load %struct.intel_pt*, %struct.intel_pt** %24, align 8
  %26 = getelementptr inbounds %struct.intel_pt, %struct.intel_pt* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = getelementptr inbounds %struct.perf_sample, %struct.perf_sample* %6, i32 0, i32 1
  store i32 %27, i32* %28, align 4
  %29 = load %struct.intel_pt_queue*, %struct.intel_pt_queue** %3, align 8
  %30 = getelementptr inbounds %struct.intel_pt_queue, %struct.intel_pt_queue* %29, i32 0, i32 0
  %31 = load %struct.intel_pt*, %struct.intel_pt** %30, align 8
  %32 = getelementptr inbounds %struct.intel_pt, %struct.intel_pt* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = getelementptr inbounds %struct.perf_sample, %struct.perf_sample* %6, i32 0, i32 0
  store i32 %33, i32* %34, align 4
  %35 = load %struct.intel_pt*, %struct.intel_pt** %4, align 8
  %36 = load %struct.intel_pt_queue*, %struct.intel_pt_queue** %3, align 8
  %37 = load %union.perf_event*, %union.perf_event** %5, align 8
  %38 = load %struct.intel_pt*, %struct.intel_pt** %4, align 8
  %39 = getelementptr inbounds %struct.intel_pt, %struct.intel_pt* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @intel_pt_deliver_synth_event(%struct.intel_pt* %35, %struct.intel_pt_queue* %36, %union.perf_event* %37, %struct.perf_sample* %6, i32 %40)
  store i32 %41, i32* %2, align 4
  br label %42

42:                                               ; preds = %18, %17
  %43 = load i32, i32* %2, align 4
  ret i32 %43
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i64 @intel_pt_skip_event(%struct.intel_pt*) #2

declare dso_local i32 @intel_pt_prep_sample(%struct.intel_pt*, %struct.intel_pt_queue*, %union.perf_event*, %struct.perf_sample*) #2

declare dso_local i32 @intel_pt_deliver_synth_event(%struct.intel_pt*, %struct.intel_pt_queue*, %union.perf_event*, %struct.perf_sample*, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
