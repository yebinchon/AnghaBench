; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/util/extr_intel-pt.c_intel_pt_synth_cbr_sample.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/util/extr_intel-pt.c_intel_pt_synth_cbr_sample.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_pt_queue = type { %struct.TYPE_2__*, %struct.intel_pt*, i32, %union.perf_event* }
%struct.TYPE_2__ = type { i64, i32 }
%struct.intel_pt = type { i32, i32, i32, i32 }
%union.perf_event = type { i32 }
%struct.perf_sample = type { i32, i32, i32, i32, i32 }
%struct.perf_synth_intel_cbr = type { i32, i64, i8*, i8* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.intel_pt_queue*)* @intel_pt_synth_cbr_sample to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @intel_pt_synth_cbr_sample(%struct.intel_pt_queue* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.intel_pt_queue*, align 8
  %4 = alloca %struct.intel_pt*, align 8
  %5 = alloca %union.perf_event*, align 8
  %6 = alloca %struct.perf_sample, align 4
  %7 = alloca %struct.perf_synth_intel_cbr, align 8
  %8 = alloca i32, align 4
  store %struct.intel_pt_queue* %0, %struct.intel_pt_queue** %3, align 8
  %9 = load %struct.intel_pt_queue*, %struct.intel_pt_queue** %3, align 8
  %10 = getelementptr inbounds %struct.intel_pt_queue, %struct.intel_pt_queue* %9, i32 0, i32 1
  %11 = load %struct.intel_pt*, %struct.intel_pt** %10, align 8
  store %struct.intel_pt* %11, %struct.intel_pt** %4, align 8
  %12 = load %struct.intel_pt_queue*, %struct.intel_pt_queue** %3, align 8
  %13 = getelementptr inbounds %struct.intel_pt_queue, %struct.intel_pt_queue* %12, i32 0, i32 3
  %14 = load %union.perf_event*, %union.perf_event** %13, align 8
  store %union.perf_event* %14, %union.perf_event** %5, align 8
  %15 = bitcast %struct.perf_sample* %6 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %15, i8 0, i64 20, i1 false)
  %16 = load %struct.intel_pt*, %struct.intel_pt** %4, align 8
  %17 = call i64 @intel_pt_skip_cbr_event(%struct.intel_pt* %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %78

20:                                               ; preds = %1
  %21 = load %struct.intel_pt_queue*, %struct.intel_pt_queue** %3, align 8
  %22 = getelementptr inbounds %struct.intel_pt_queue, %struct.intel_pt_queue* %21, i32 0, i32 0
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 8
  %26 = load %struct.intel_pt_queue*, %struct.intel_pt_queue** %3, align 8
  %27 = getelementptr inbounds %struct.intel_pt_queue, %struct.intel_pt_queue* %26, i32 0, i32 2
  store i32 %25, i32* %27, align 8
  %28 = load %struct.intel_pt*, %struct.intel_pt** %4, align 8
  %29 = load %struct.intel_pt_queue*, %struct.intel_pt_queue** %3, align 8
  %30 = load %union.perf_event*, %union.perf_event** %5, align 8
  %31 = call i32 @intel_pt_prep_p_sample(%struct.intel_pt* %28, %struct.intel_pt_queue* %29, %union.perf_event* %30, %struct.perf_sample* %6)
  %32 = load %struct.intel_pt_queue*, %struct.intel_pt_queue** %3, align 8
  %33 = getelementptr inbounds %struct.intel_pt_queue, %struct.intel_pt_queue* %32, i32 0, i32 1
  %34 = load %struct.intel_pt*, %struct.intel_pt** %33, align 8
  %35 = getelementptr inbounds %struct.intel_pt, %struct.intel_pt* %34, i32 0, i32 3
  %36 = load i32, i32* %35, align 4
  %37 = getelementptr inbounds %struct.perf_sample, %struct.perf_sample* %6, i32 0, i32 3
  store i32 %36, i32* %37, align 4
  %38 = load %struct.intel_pt_queue*, %struct.intel_pt_queue** %3, align 8
  %39 = getelementptr inbounds %struct.intel_pt_queue, %struct.intel_pt_queue* %38, i32 0, i32 1
  %40 = load %struct.intel_pt*, %struct.intel_pt** %39, align 8
  %41 = getelementptr inbounds %struct.intel_pt, %struct.intel_pt* %40, i32 0, i32 3
  %42 = load i32, i32* %41, align 4
  %43 = getelementptr inbounds %struct.perf_sample, %struct.perf_sample* %6, i32 0, i32 2
  store i32 %42, i32* %43, align 4
  %44 = load %struct.intel_pt_queue*, %struct.intel_pt_queue** %3, align 8
  %45 = getelementptr inbounds %struct.intel_pt_queue, %struct.intel_pt_queue* %44, i32 0, i32 0
  %46 = load %struct.TYPE_2__*, %struct.TYPE_2__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = trunc i64 %48 to i32
  %50 = load %struct.intel_pt*, %struct.intel_pt** %4, align 8
  %51 = getelementptr inbounds %struct.intel_pt, %struct.intel_pt* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = shl i32 %52, 16
  %54 = or i32 %49, %53
  store i32 %54, i32* %8, align 4
  %55 = load i32, i32* %8, align 4
  %56 = call i8* @cpu_to_le32(i32 %55)
  %57 = getelementptr inbounds %struct.perf_synth_intel_cbr, %struct.perf_synth_intel_cbr* %7, i32 0, i32 3
  store i8* %56, i8** %57, align 8
  %58 = getelementptr inbounds %struct.perf_synth_intel_cbr, %struct.perf_synth_intel_cbr* %7, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = load %struct.intel_pt*, %struct.intel_pt** %4, align 8
  %61 = getelementptr inbounds %struct.intel_pt, %struct.intel_pt* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = mul nsw i32 %59, %62
  %64 = call i8* @cpu_to_le32(i32 %63)
  %65 = getelementptr inbounds %struct.perf_synth_intel_cbr, %struct.perf_synth_intel_cbr* %7, i32 0, i32 2
  store i8* %64, i8** %65, align 8
  %66 = getelementptr inbounds %struct.perf_synth_intel_cbr, %struct.perf_synth_intel_cbr* %7, i32 0, i32 1
  store i64 0, i64* %66, align 8
  %67 = call i32 @perf_synth__raw_size(%struct.perf_synth_intel_cbr* byval(%struct.perf_synth_intel_cbr) align 8 %7)
  %68 = getelementptr inbounds %struct.perf_sample, %struct.perf_sample* %6, i32 0, i32 1
  store i32 %67, i32* %68, align 4
  %69 = call i32 @perf_synth__raw_data(%struct.perf_synth_intel_cbr* %7)
  %70 = getelementptr inbounds %struct.perf_sample, %struct.perf_sample* %6, i32 0, i32 0
  store i32 %69, i32* %70, align 4
  %71 = load %struct.intel_pt*, %struct.intel_pt** %4, align 8
  %72 = load %struct.intel_pt_queue*, %struct.intel_pt_queue** %3, align 8
  %73 = load %union.perf_event*, %union.perf_event** %5, align 8
  %74 = load %struct.intel_pt*, %struct.intel_pt** %4, align 8
  %75 = getelementptr inbounds %struct.intel_pt, %struct.intel_pt* %74, i32 0, i32 2
  %76 = load i32, i32* %75, align 4
  %77 = call i32 @intel_pt_deliver_synth_event(%struct.intel_pt* %71, %struct.intel_pt_queue* %72, %union.perf_event* %73, %struct.perf_sample* %6, i32 %76)
  store i32 %77, i32* %2, align 4
  br label %78

78:                                               ; preds = %20, %19
  %79 = load i32, i32* %2, align 4
  ret i32 %79
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i64 @intel_pt_skip_cbr_event(%struct.intel_pt*) #2

declare dso_local i32 @intel_pt_prep_p_sample(%struct.intel_pt*, %struct.intel_pt_queue*, %union.perf_event*, %struct.perf_sample*) #2

declare dso_local i8* @cpu_to_le32(i32) #2

declare dso_local i32 @perf_synth__raw_size(%struct.perf_synth_intel_cbr* byval(%struct.perf_synth_intel_cbr) align 8) #2

declare dso_local i32 @perf_synth__raw_data(%struct.perf_synth_intel_cbr*) #2

declare dso_local i32 @intel_pt_deliver_synth_event(%struct.intel_pt*, %struct.intel_pt_queue*, %union.perf_event*, %struct.perf_sample*, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
