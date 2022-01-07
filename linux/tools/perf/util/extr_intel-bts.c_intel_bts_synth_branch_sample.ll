; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/util/extr_intel-bts.c_intel_bts_synth_branch_sample.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/util/extr_intel-bts.c_intel_bts_synth_branch_sample.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_bts_queue = type { %struct.TYPE_5__, i32, i32, %struct.intel_bts*, i32, i32 }
%struct.TYPE_5__ = type { i32, i32 }
%struct.intel_bts = type { i32, i32, i32, %struct.TYPE_6__, i32, i32 }
%struct.TYPE_6__ = type { i64, i64 }
%struct.branch = type { i32, i32 }
%union.perf_event = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32, i32, i32 }
%struct.perf_sample = type { i32, i32, i32, i32, i32, i32, i32, i32, i8*, i32, i32, i8* }

@INTEL_PT_INSN_BUF_SZ = common dso_local global i32 0, align 4
@PERF_RECORD_SAMPLE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [53 x i8] c"Intel BTS: failed to deliver branch event, error %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.intel_bts_queue*, %struct.branch*)* @intel_bts_synth_branch_sample to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @intel_bts_synth_branch_sample(%struct.intel_bts_queue* %0, %struct.branch* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.intel_bts_queue*, align 8
  %5 = alloca %struct.branch*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.intel_bts*, align 8
  %8 = alloca %union.perf_event, align 4
  %9 = alloca %struct.perf_sample, align 8
  store %struct.intel_bts_queue* %0, %struct.intel_bts_queue** %4, align 8
  store %struct.branch* %1, %struct.branch** %5, align 8
  %10 = load %struct.intel_bts_queue*, %struct.intel_bts_queue** %4, align 8
  %11 = getelementptr inbounds %struct.intel_bts_queue, %struct.intel_bts_queue* %10, i32 0, i32 3
  %12 = load %struct.intel_bts*, %struct.intel_bts** %11, align 8
  store %struct.intel_bts* %12, %struct.intel_bts** %7, align 8
  %13 = bitcast %struct.perf_sample* %9 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %13, i8 0, i64 56, i1 false)
  %14 = load %struct.intel_bts*, %struct.intel_bts** %7, align 8
  %15 = getelementptr inbounds %struct.intel_bts, %struct.intel_bts* %14, i32 0, i32 3
  %16 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %31

19:                                               ; preds = %2
  %20 = load %struct.intel_bts*, %struct.intel_bts** %7, align 8
  %21 = getelementptr inbounds %struct.intel_bts, %struct.intel_bts* %20, i32 0, i32 5
  %22 = load i32, i32* %21, align 4
  %23 = add nsw i32 %22, 1
  store i32 %23, i32* %21, align 4
  %24 = sext i32 %22 to i64
  %25 = load %struct.intel_bts*, %struct.intel_bts** %7, align 8
  %26 = getelementptr inbounds %struct.intel_bts, %struct.intel_bts* %25, i32 0, i32 3
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = icmp sle i64 %24, %28
  br i1 %29, label %30, label %31

30:                                               ; preds = %19
  store i32 0, i32* %3, align 4
  br label %134

31:                                               ; preds = %19, %2
  %32 = load %struct.branch*, %struct.branch** %5, align 8
  %33 = getelementptr inbounds %struct.branch, %struct.branch* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = call i8* @le64_to_cpu(i32 %34)
  %36 = getelementptr inbounds %struct.perf_sample, %struct.perf_sample* %9, i32 0, i32 11
  store i8* %35, i8** %36, align 8
  %37 = load %struct.intel_bts*, %struct.intel_bts** %7, align 8
  %38 = getelementptr inbounds %struct.perf_sample, %struct.perf_sample* %9, i32 0, i32 11
  %39 = load i8*, i8** %38, align 8
  %40 = call i32 @intel_bts_cpumode(%struct.intel_bts* %37, i8* %39)
  %41 = getelementptr inbounds %struct.perf_sample, %struct.perf_sample* %9, i32 0, i32 1
  store i32 %40, i32* %41, align 4
  %42 = load %struct.intel_bts_queue*, %struct.intel_bts_queue** %4, align 8
  %43 = getelementptr inbounds %struct.intel_bts_queue, %struct.intel_bts_queue* %42, i32 0, i32 5
  %44 = load i32, i32* %43, align 4
  %45 = getelementptr inbounds %struct.perf_sample, %struct.perf_sample* %9, i32 0, i32 10
  store i32 %44, i32* %45, align 4
  %46 = load %struct.intel_bts_queue*, %struct.intel_bts_queue** %4, align 8
  %47 = getelementptr inbounds %struct.intel_bts_queue, %struct.intel_bts_queue* %46, i32 0, i32 4
  %48 = load i32, i32* %47, align 8
  %49 = getelementptr inbounds %struct.perf_sample, %struct.perf_sample* %9, i32 0, i32 9
  store i32 %48, i32* %49, align 8
  %50 = load %struct.branch*, %struct.branch** %5, align 8
  %51 = getelementptr inbounds %struct.branch, %struct.branch* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = call i8* @le64_to_cpu(i32 %52)
  %54 = getelementptr inbounds %struct.perf_sample, %struct.perf_sample* %9, i32 0, i32 8
  store i8* %53, i8** %54, align 8
  %55 = load %struct.intel_bts_queue*, %struct.intel_bts_queue** %4, align 8
  %56 = getelementptr inbounds %struct.intel_bts_queue, %struct.intel_bts_queue* %55, i32 0, i32 3
  %57 = load %struct.intel_bts*, %struct.intel_bts** %56, align 8
  %58 = getelementptr inbounds %struct.intel_bts, %struct.intel_bts* %57, i32 0, i32 4
  %59 = load i32, i32* %58, align 8
  %60 = getelementptr inbounds %struct.perf_sample, %struct.perf_sample* %9, i32 0, i32 7
  store i32 %59, i32* %60, align 4
  %61 = load %struct.intel_bts_queue*, %struct.intel_bts_queue** %4, align 8
  %62 = getelementptr inbounds %struct.intel_bts_queue, %struct.intel_bts_queue* %61, i32 0, i32 3
  %63 = load %struct.intel_bts*, %struct.intel_bts** %62, align 8
  %64 = getelementptr inbounds %struct.intel_bts, %struct.intel_bts* %63, i32 0, i32 4
  %65 = load i32, i32* %64, align 8
  %66 = getelementptr inbounds %struct.perf_sample, %struct.perf_sample* %9, i32 0, i32 6
  store i32 %65, i32* %66, align 8
  %67 = getelementptr inbounds %struct.perf_sample, %struct.perf_sample* %9, i32 0, i32 0
  store i32 1, i32* %67, align 8
  %68 = load %struct.intel_bts_queue*, %struct.intel_bts_queue** %4, align 8
  %69 = getelementptr inbounds %struct.intel_bts_queue, %struct.intel_bts_queue* %68, i32 0, i32 2
  %70 = load i32, i32* %69, align 4
  %71 = getelementptr inbounds %struct.perf_sample, %struct.perf_sample* %9, i32 0, i32 5
  store i32 %70, i32* %71, align 4
  %72 = load %struct.intel_bts_queue*, %struct.intel_bts_queue** %4, align 8
  %73 = getelementptr inbounds %struct.intel_bts_queue, %struct.intel_bts_queue* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 8
  %75 = getelementptr inbounds %struct.perf_sample, %struct.perf_sample* %9, i32 0, i32 4
  store i32 %74, i32* %75, align 8
  %76 = load %struct.intel_bts_queue*, %struct.intel_bts_queue** %4, align 8
  %77 = getelementptr inbounds %struct.intel_bts_queue, %struct.intel_bts_queue* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 4
  %80 = getelementptr inbounds %struct.perf_sample, %struct.perf_sample* %9, i32 0, i32 3
  store i32 %79, i32* %80, align 4
  %81 = getelementptr inbounds %struct.perf_sample, %struct.perf_sample* %9, i32 0, i32 2
  %82 = load i32, i32* %81, align 8
  %83 = load %struct.intel_bts_queue*, %struct.intel_bts_queue** %4, align 8
  %84 = getelementptr inbounds %struct.intel_bts_queue, %struct.intel_bts_queue* %83, i32 0, i32 0
  %85 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 8
  %87 = load i32, i32* @INTEL_PT_INSN_BUF_SZ, align 4
  %88 = call i32 @memcpy(i32 %82, i32 %86, i32 %87)
  %89 = load i32, i32* @PERF_RECORD_SAMPLE, align 4
  %90 = bitcast %union.perf_event* %8 to %struct.TYPE_8__*
  %91 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %90, i32 0, i32 0
  %92 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %91, i32 0, i32 2
  store i32 %89, i32* %92, align 4
  %93 = getelementptr inbounds %struct.perf_sample, %struct.perf_sample* %9, i32 0, i32 1
  %94 = load i32, i32* %93, align 4
  %95 = bitcast %union.perf_event* %8 to %struct.TYPE_8__*
  %96 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %95, i32 0, i32 0
  %97 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %96, i32 0, i32 1
  store i32 %94, i32* %97, align 4
  %98 = bitcast %union.perf_event* %8 to %struct.TYPE_8__*
  %99 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %98, i32 0, i32 0
  %100 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %99, i32 0, i32 0
  store i32 4, i32* %100, align 4
  %101 = load %struct.intel_bts*, %struct.intel_bts** %7, align 8
  %102 = getelementptr inbounds %struct.intel_bts, %struct.intel_bts* %101, i32 0, i32 3
  %103 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %102, i32 0, i32 1
  %104 = load i64, i64* %103, align 8
  %105 = icmp ne i64 %104, 0
  br i1 %105, label %106, label %122

106:                                              ; preds = %31
  %107 = load %struct.intel_bts*, %struct.intel_bts** %7, align 8
  %108 = getelementptr inbounds %struct.intel_bts, %struct.intel_bts* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 8
  %110 = bitcast %union.perf_event* %8 to %struct.TYPE_8__*
  %111 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %110, i32 0, i32 0
  %112 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %111, i32 0, i32 0
  store i32 %109, i32* %112, align 4
  %113 = load %struct.intel_bts*, %struct.intel_bts** %7, align 8
  %114 = getelementptr inbounds %struct.intel_bts, %struct.intel_bts* %113, i32 0, i32 2
  %115 = load i32, i32* %114, align 8
  %116 = call i32 @perf_event__synthesize_sample(%union.perf_event* %8, i32 %115, i32 0, %struct.perf_sample* %9)
  store i32 %116, i32* %6, align 4
  %117 = load i32, i32* %6, align 4
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %119, label %121

119:                                              ; preds = %106
  %120 = load i32, i32* %6, align 4
  store i32 %120, i32* %3, align 4
  br label %134

121:                                              ; preds = %106
  br label %122

122:                                              ; preds = %121, %31
  %123 = load %struct.intel_bts*, %struct.intel_bts** %7, align 8
  %124 = getelementptr inbounds %struct.intel_bts, %struct.intel_bts* %123, i32 0, i32 1
  %125 = load i32, i32* %124, align 4
  %126 = call i32 @perf_session__deliver_synth_event(i32 %125, %union.perf_event* %8, %struct.perf_sample* %9)
  store i32 %126, i32* %6, align 4
  %127 = load i32, i32* %6, align 4
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %129, label %132

129:                                              ; preds = %122
  %130 = load i32, i32* %6, align 4
  %131 = call i32 @pr_err(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str, i64 0, i64 0), i32 %130)
  br label %132

132:                                              ; preds = %129, %122
  %133 = load i32, i32* %6, align 4
  store i32 %133, i32* %3, align 4
  br label %134

134:                                              ; preds = %132, %119, %30
  %135 = load i32, i32* %3, align 4
  ret i32 %135
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i8* @le64_to_cpu(i32) #2

declare dso_local i32 @intel_bts_cpumode(%struct.intel_bts*, i8*) #2

declare dso_local i32 @memcpy(i32, i32, i32) #2

declare dso_local i32 @perf_event__synthesize_sample(%union.perf_event*, i32, i32, %struct.perf_sample*) #2

declare dso_local i32 @perf_session__deliver_synth_event(i32, %union.perf_event*, %struct.perf_sample*) #2

declare dso_local i32 @pr_err(i8*, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
