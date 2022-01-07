; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/util/extr_intel-pt.c_intel_pt_synth_instruction_sample.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/util/extr_intel-pt.c_intel_pt_synth_instruction_sample.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_pt_queue = type { %struct.TYPE_2__*, i64, i64, i64, i64, i64, %struct.intel_pt*, %union.perf_event* }
%struct.TYPE_2__ = type { i64 }
%struct.intel_pt = type { i32, i32 }
%union.perf_event = type { i32 }
%struct.perf_sample = type { i64, i64, i64, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.intel_pt_queue*)* @intel_pt_synth_instruction_sample to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @intel_pt_synth_instruction_sample(%struct.intel_pt_queue* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.intel_pt_queue*, align 8
  %4 = alloca %struct.intel_pt*, align 8
  %5 = alloca %union.perf_event*, align 8
  %6 = alloca %struct.perf_sample, align 8
  store %struct.intel_pt_queue* %0, %struct.intel_pt_queue** %3, align 8
  %7 = load %struct.intel_pt_queue*, %struct.intel_pt_queue** %3, align 8
  %8 = getelementptr inbounds %struct.intel_pt_queue, %struct.intel_pt_queue* %7, i32 0, i32 6
  %9 = load %struct.intel_pt*, %struct.intel_pt** %8, align 8
  store %struct.intel_pt* %9, %struct.intel_pt** %4, align 8
  %10 = load %struct.intel_pt_queue*, %struct.intel_pt_queue** %3, align 8
  %11 = getelementptr inbounds %struct.intel_pt_queue, %struct.intel_pt_queue* %10, i32 0, i32 7
  %12 = load %union.perf_event*, %union.perf_event** %11, align 8
  store %union.perf_event* %12, %union.perf_event** %5, align 8
  %13 = bitcast %struct.perf_sample* %6 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %13, i8 0, i64 40, i1 false)
  %14 = load %struct.intel_pt*, %struct.intel_pt** %4, align 8
  %15 = call i64 @intel_pt_skip_event(%struct.intel_pt* %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %90

18:                                               ; preds = %1
  %19 = load %struct.intel_pt*, %struct.intel_pt** %4, align 8
  %20 = load %struct.intel_pt_queue*, %struct.intel_pt_queue** %3, align 8
  %21 = load %union.perf_event*, %union.perf_event** %5, align 8
  %22 = call i32 @intel_pt_prep_sample(%struct.intel_pt* %19, %struct.intel_pt_queue* %20, %union.perf_event* %21, %struct.perf_sample* %6)
  %23 = load %struct.intel_pt_queue*, %struct.intel_pt_queue** %3, align 8
  %24 = getelementptr inbounds %struct.intel_pt_queue, %struct.intel_pt_queue* %23, i32 0, i32 6
  %25 = load %struct.intel_pt*, %struct.intel_pt** %24, align 8
  %26 = getelementptr inbounds %struct.intel_pt, %struct.intel_pt* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = getelementptr inbounds %struct.perf_sample, %struct.perf_sample* %6, i32 0, i32 4
  store i32 %27, i32* %28, align 4
  %29 = load %struct.intel_pt_queue*, %struct.intel_pt_queue** %3, align 8
  %30 = getelementptr inbounds %struct.intel_pt_queue, %struct.intel_pt_queue* %29, i32 0, i32 6
  %31 = load %struct.intel_pt*, %struct.intel_pt** %30, align 8
  %32 = getelementptr inbounds %struct.intel_pt, %struct.intel_pt* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = getelementptr inbounds %struct.perf_sample, %struct.perf_sample* %6, i32 0, i32 3
  store i32 %33, i32* %34, align 8
  %35 = load %struct.intel_pt_queue*, %struct.intel_pt_queue** %3, align 8
  %36 = getelementptr inbounds %struct.intel_pt_queue, %struct.intel_pt_queue* %35, i32 0, i32 0
  %37 = load %struct.TYPE_2__*, %struct.TYPE_2__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = load %struct.intel_pt_queue*, %struct.intel_pt_queue** %3, align 8
  %41 = getelementptr inbounds %struct.intel_pt_queue, %struct.intel_pt_queue* %40, i32 0, i32 1
  %42 = load i64, i64* %41, align 8
  %43 = sub nsw i64 %39, %42
  %44 = getelementptr inbounds %struct.perf_sample, %struct.perf_sample* %6, i32 0, i32 2
  store i64 %43, i64* %44, align 8
  %45 = load %struct.intel_pt_queue*, %struct.intel_pt_queue** %3, align 8
  %46 = getelementptr inbounds %struct.intel_pt_queue, %struct.intel_pt_queue* %45, i32 0, i32 2
  %47 = load i64, i64* %46, align 8
  %48 = load %struct.intel_pt_queue*, %struct.intel_pt_queue** %3, align 8
  %49 = getelementptr inbounds %struct.intel_pt_queue, %struct.intel_pt_queue* %48, i32 0, i32 3
  %50 = load i64, i64* %49, align 8
  %51 = sub nsw i64 %47, %50
  %52 = getelementptr inbounds %struct.perf_sample, %struct.perf_sample* %6, i32 0, i32 1
  store i64 %51, i64* %52, align 8
  %53 = getelementptr inbounds %struct.perf_sample, %struct.perf_sample* %6, i32 0, i32 1
  %54 = load i64, i64* %53, align 8
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %75

56:                                               ; preds = %18
  %57 = load %struct.intel_pt_queue*, %struct.intel_pt_queue** %3, align 8
  %58 = getelementptr inbounds %struct.intel_pt_queue, %struct.intel_pt_queue* %57, i32 0, i32 4
  %59 = load i64, i64* %58, align 8
  %60 = load %struct.intel_pt_queue*, %struct.intel_pt_queue** %3, align 8
  %61 = getelementptr inbounds %struct.intel_pt_queue, %struct.intel_pt_queue* %60, i32 0, i32 5
  %62 = load i64, i64* %61, align 8
  %63 = sub nsw i64 %59, %62
  %64 = getelementptr inbounds %struct.perf_sample, %struct.perf_sample* %6, i32 0, i32 0
  store i64 %63, i64* %64, align 8
  %65 = load %struct.intel_pt_queue*, %struct.intel_pt_queue** %3, align 8
  %66 = getelementptr inbounds %struct.intel_pt_queue, %struct.intel_pt_queue* %65, i32 0, i32 4
  %67 = load i64, i64* %66, align 8
  %68 = load %struct.intel_pt_queue*, %struct.intel_pt_queue** %3, align 8
  %69 = getelementptr inbounds %struct.intel_pt_queue, %struct.intel_pt_queue* %68, i32 0, i32 5
  store i64 %67, i64* %69, align 8
  %70 = load %struct.intel_pt_queue*, %struct.intel_pt_queue** %3, align 8
  %71 = getelementptr inbounds %struct.intel_pt_queue, %struct.intel_pt_queue* %70, i32 0, i32 2
  %72 = load i64, i64* %71, align 8
  %73 = load %struct.intel_pt_queue*, %struct.intel_pt_queue** %3, align 8
  %74 = getelementptr inbounds %struct.intel_pt_queue, %struct.intel_pt_queue* %73, i32 0, i32 3
  store i64 %72, i64* %74, align 8
  br label %75

75:                                               ; preds = %56, %18
  %76 = load %struct.intel_pt_queue*, %struct.intel_pt_queue** %3, align 8
  %77 = getelementptr inbounds %struct.intel_pt_queue, %struct.intel_pt_queue* %76, i32 0, i32 0
  %78 = load %struct.TYPE_2__*, %struct.TYPE_2__** %77, align 8
  %79 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %78, i32 0, i32 0
  %80 = load i64, i64* %79, align 8
  %81 = load %struct.intel_pt_queue*, %struct.intel_pt_queue** %3, align 8
  %82 = getelementptr inbounds %struct.intel_pt_queue, %struct.intel_pt_queue* %81, i32 0, i32 1
  store i64 %80, i64* %82, align 8
  %83 = load %struct.intel_pt*, %struct.intel_pt** %4, align 8
  %84 = load %struct.intel_pt_queue*, %struct.intel_pt_queue** %3, align 8
  %85 = load %union.perf_event*, %union.perf_event** %5, align 8
  %86 = load %struct.intel_pt*, %struct.intel_pt** %4, align 8
  %87 = getelementptr inbounds %struct.intel_pt, %struct.intel_pt* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = call i32 @intel_pt_deliver_synth_event(%struct.intel_pt* %83, %struct.intel_pt_queue* %84, %union.perf_event* %85, %struct.perf_sample* %6, i32 %88)
  store i32 %89, i32* %2, align 4
  br label %90

90:                                               ; preds = %75, %17
  %91 = load i32, i32* %2, align 4
  ret i32 %91
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
