; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/util/extr_cs-etm.c_cs_etm__synth_instruction_sample.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/util/extr_cs-etm.c_cs_etm__synth_instruction_sample.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cs_etm_queue = type { %struct.cs_etm_auxtrace* }
%struct.cs_etm_auxtrace = type { %struct.TYPE_9__, i32, i32, i32 }
%struct.TYPE_9__ = type { i64, i64 }
%struct.cs_etm_traceid_queue = type { i32, %struct.TYPE_10__*, i32, %struct.TYPE_6__*, i32, i32, %union.perf_event* }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_6__ = type { i32 }
%union.perf_event = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32, i32, i32 }
%struct.perf_sample = type { i32, i32, i32, i32, i8*, i32, i32, i32, i32, i8* }

@PERF_RECORD_SAMPLE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [61 x i8] c"CS ETM Trace: failed to deliver instruction event, error %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cs_etm_queue*, %struct.cs_etm_traceid_queue*, i8*, i8*)* @cs_etm__synth_instruction_sample to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cs_etm__synth_instruction_sample(%struct.cs_etm_queue* %0, %struct.cs_etm_traceid_queue* %1, i8* %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.cs_etm_queue*, align 8
  %7 = alloca %struct.cs_etm_traceid_queue*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.cs_etm_auxtrace*, align 8
  %12 = alloca %union.perf_event*, align 8
  %13 = alloca %struct.perf_sample, align 8
  store %struct.cs_etm_queue* %0, %struct.cs_etm_queue** %6, align 8
  store %struct.cs_etm_traceid_queue* %1, %struct.cs_etm_traceid_queue** %7, align 8
  store i8* %2, i8** %8, align 8
  store i8* %3, i8** %9, align 8
  store i32 0, i32* %10, align 4
  %14 = load %struct.cs_etm_queue*, %struct.cs_etm_queue** %6, align 8
  %15 = getelementptr inbounds %struct.cs_etm_queue, %struct.cs_etm_queue* %14, i32 0, i32 0
  %16 = load %struct.cs_etm_auxtrace*, %struct.cs_etm_auxtrace** %15, align 8
  store %struct.cs_etm_auxtrace* %16, %struct.cs_etm_auxtrace** %11, align 8
  %17 = load %struct.cs_etm_traceid_queue*, %struct.cs_etm_traceid_queue** %7, align 8
  %18 = getelementptr inbounds %struct.cs_etm_traceid_queue, %struct.cs_etm_traceid_queue* %17, i32 0, i32 6
  %19 = load %union.perf_event*, %union.perf_event** %18, align 8
  store %union.perf_event* %19, %union.perf_event** %12, align 8
  %20 = bitcast %struct.perf_sample* %13 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %20, i8 0, i64 48, i1 false)
  %21 = load i32, i32* @PERF_RECORD_SAMPLE, align 4
  %22 = load %union.perf_event*, %union.perf_event** %12, align 8
  %23 = bitcast %union.perf_event* %22 to %struct.TYPE_8__*
  %24 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %24, i32 0, i32 2
  store i32 %21, i32* %25, align 4
  %26 = load %struct.cs_etm_queue*, %struct.cs_etm_queue** %6, align 8
  %27 = load i8*, i8** %8, align 8
  %28 = call i32 @cs_etm__cpu_mode(%struct.cs_etm_queue* %26, i8* %27)
  %29 = load %union.perf_event*, %union.perf_event** %12, align 8
  %30 = bitcast %union.perf_event* %29 to %struct.TYPE_8__*
  %31 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %31, i32 0, i32 1
  store i32 %28, i32* %32, align 4
  %33 = load %union.perf_event*, %union.perf_event** %12, align 8
  %34 = bitcast %union.perf_event* %33 to %struct.TYPE_8__*
  %35 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %35, i32 0, i32 0
  store i32 4, i32* %36, align 4
  %37 = load i8*, i8** %8, align 8
  %38 = getelementptr inbounds %struct.perf_sample, %struct.perf_sample* %13, i32 0, i32 9
  store i8* %37, i8** %38, align 8
  %39 = load %struct.cs_etm_traceid_queue*, %struct.cs_etm_traceid_queue** %7, align 8
  %40 = getelementptr inbounds %struct.cs_etm_traceid_queue, %struct.cs_etm_traceid_queue* %39, i32 0, i32 5
  %41 = load i32, i32* %40, align 4
  %42 = getelementptr inbounds %struct.perf_sample, %struct.perf_sample* %13, i32 0, i32 8
  store i32 %41, i32* %42, align 4
  %43 = load %struct.cs_etm_traceid_queue*, %struct.cs_etm_traceid_queue** %7, align 8
  %44 = getelementptr inbounds %struct.cs_etm_traceid_queue, %struct.cs_etm_traceid_queue* %43, i32 0, i32 4
  %45 = load i32, i32* %44, align 8
  %46 = getelementptr inbounds %struct.perf_sample, %struct.perf_sample* %13, i32 0, i32 7
  store i32 %45, i32* %46, align 8
  %47 = load %struct.cs_etm_queue*, %struct.cs_etm_queue** %6, align 8
  %48 = getelementptr inbounds %struct.cs_etm_queue, %struct.cs_etm_queue* %47, i32 0, i32 0
  %49 = load %struct.cs_etm_auxtrace*, %struct.cs_etm_auxtrace** %48, align 8
  %50 = getelementptr inbounds %struct.cs_etm_auxtrace, %struct.cs_etm_auxtrace* %49, i32 0, i32 3
  %51 = load i32, i32* %50, align 8
  %52 = getelementptr inbounds %struct.perf_sample, %struct.perf_sample* %13, i32 0, i32 6
  store i32 %51, i32* %52, align 4
  %53 = load %struct.cs_etm_queue*, %struct.cs_etm_queue** %6, align 8
  %54 = getelementptr inbounds %struct.cs_etm_queue, %struct.cs_etm_queue* %53, i32 0, i32 0
  %55 = load %struct.cs_etm_auxtrace*, %struct.cs_etm_auxtrace** %54, align 8
  %56 = getelementptr inbounds %struct.cs_etm_auxtrace, %struct.cs_etm_auxtrace* %55, i32 0, i32 3
  %57 = load i32, i32* %56, align 8
  %58 = getelementptr inbounds %struct.perf_sample, %struct.perf_sample* %13, i32 0, i32 5
  store i32 %57, i32* %58, align 8
  %59 = load i8*, i8** %9, align 8
  %60 = getelementptr inbounds %struct.perf_sample, %struct.perf_sample* %13, i32 0, i32 4
  store i8* %59, i8** %60, align 8
  %61 = load %struct.cs_etm_traceid_queue*, %struct.cs_etm_traceid_queue** %7, align 8
  %62 = getelementptr inbounds %struct.cs_etm_traceid_queue, %struct.cs_etm_traceid_queue* %61, i32 0, i32 1
  %63 = load %struct.TYPE_10__*, %struct.TYPE_10__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = getelementptr inbounds %struct.perf_sample, %struct.perf_sample* %13, i32 0, i32 3
  store i32 %65, i32* %66, align 4
  %67 = load %struct.cs_etm_traceid_queue*, %struct.cs_etm_traceid_queue** %7, align 8
  %68 = getelementptr inbounds %struct.cs_etm_traceid_queue, %struct.cs_etm_traceid_queue* %67, i32 0, i32 3
  %69 = load %struct.TYPE_6__*, %struct.TYPE_6__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = getelementptr inbounds %struct.perf_sample, %struct.perf_sample* %13, i32 0, i32 2
  store i32 %71, i32* %72, align 8
  %73 = load %union.perf_event*, %union.perf_event** %12, align 8
  %74 = bitcast %union.perf_event* %73 to %struct.TYPE_8__*
  %75 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 4
  %78 = getelementptr inbounds %struct.perf_sample, %struct.perf_sample* %13, i32 0, i32 1
  store i32 %77, i32* %78, align 4
  %79 = load %struct.cs_etm_queue*, %struct.cs_etm_queue** %6, align 8
  %80 = load %struct.cs_etm_traceid_queue*, %struct.cs_etm_traceid_queue** %7, align 8
  %81 = getelementptr inbounds %struct.cs_etm_traceid_queue, %struct.cs_etm_traceid_queue* %80, i32 0, i32 2
  %82 = load i32, i32* %81, align 8
  %83 = load %struct.cs_etm_traceid_queue*, %struct.cs_etm_traceid_queue** %7, align 8
  %84 = getelementptr inbounds %struct.cs_etm_traceid_queue, %struct.cs_etm_traceid_queue* %83, i32 0, i32 1
  %85 = load %struct.TYPE_10__*, %struct.TYPE_10__** %84, align 8
  %86 = call i32 @cs_etm__copy_insn(%struct.cs_etm_queue* %79, i32 %82, %struct.TYPE_10__* %85, %struct.perf_sample* %13)
  %87 = load %struct.cs_etm_auxtrace*, %struct.cs_etm_auxtrace** %11, align 8
  %88 = getelementptr inbounds %struct.cs_etm_auxtrace, %struct.cs_etm_auxtrace* %87, i32 0, i32 0
  %89 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %88, i32 0, i32 0
  %90 = load i64, i64* %89, align 8
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %92, label %100

92:                                               ; preds = %4
  %93 = load %struct.cs_etm_queue*, %struct.cs_etm_queue** %6, align 8
  %94 = load %struct.cs_etm_traceid_queue*, %struct.cs_etm_traceid_queue** %7, align 8
  %95 = call i32 @cs_etm__copy_last_branch_rb(%struct.cs_etm_queue* %93, %struct.cs_etm_traceid_queue* %94)
  %96 = load %struct.cs_etm_traceid_queue*, %struct.cs_etm_traceid_queue** %7, align 8
  %97 = getelementptr inbounds %struct.cs_etm_traceid_queue, %struct.cs_etm_traceid_queue* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 8
  %99 = getelementptr inbounds %struct.perf_sample, %struct.perf_sample* %13, i32 0, i32 0
  store i32 %98, i32* %99, align 8
  br label %100

100:                                              ; preds = %92, %4
  %101 = load %struct.cs_etm_auxtrace*, %struct.cs_etm_auxtrace** %11, align 8
  %102 = getelementptr inbounds %struct.cs_etm_auxtrace, %struct.cs_etm_auxtrace* %101, i32 0, i32 0
  %103 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %102, i32 0, i32 1
  %104 = load i64, i64* %103, align 8
  %105 = icmp ne i64 %104, 0
  br i1 %105, label %106, label %117

106:                                              ; preds = %100
  %107 = load %union.perf_event*, %union.perf_event** %12, align 8
  %108 = load %struct.cs_etm_auxtrace*, %struct.cs_etm_auxtrace** %11, align 8
  %109 = getelementptr inbounds %struct.cs_etm_auxtrace, %struct.cs_etm_auxtrace* %108, i32 0, i32 2
  %110 = load i32, i32* %109, align 4
  %111 = call i32 @cs_etm__inject_event(%union.perf_event* %107, %struct.perf_sample* %13, i32 %110)
  store i32 %111, i32* %10, align 4
  %112 = load i32, i32* %10, align 4
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %114, label %116

114:                                              ; preds = %106
  %115 = load i32, i32* %10, align 4
  store i32 %115, i32* %5, align 4
  br label %139

116:                                              ; preds = %106
  br label %117

117:                                              ; preds = %116, %100
  %118 = load %struct.cs_etm_auxtrace*, %struct.cs_etm_auxtrace** %11, align 8
  %119 = getelementptr inbounds %struct.cs_etm_auxtrace, %struct.cs_etm_auxtrace* %118, i32 0, i32 1
  %120 = load i32, i32* %119, align 8
  %121 = load %union.perf_event*, %union.perf_event** %12, align 8
  %122 = call i32 @perf_session__deliver_synth_event(i32 %120, %union.perf_event* %121, %struct.perf_sample* %13)
  store i32 %122, i32* %10, align 4
  %123 = load i32, i32* %10, align 4
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %125, label %128

125:                                              ; preds = %117
  %126 = load i32, i32* %10, align 4
  %127 = call i32 @pr_err(i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str, i64 0, i64 0), i32 %126)
  br label %128

128:                                              ; preds = %125, %117
  %129 = load %struct.cs_etm_auxtrace*, %struct.cs_etm_auxtrace** %11, align 8
  %130 = getelementptr inbounds %struct.cs_etm_auxtrace, %struct.cs_etm_auxtrace* %129, i32 0, i32 0
  %131 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %130, i32 0, i32 0
  %132 = load i64, i64* %131, align 8
  %133 = icmp ne i64 %132, 0
  br i1 %133, label %134, label %137

134:                                              ; preds = %128
  %135 = load %struct.cs_etm_traceid_queue*, %struct.cs_etm_traceid_queue** %7, align 8
  %136 = call i32 @cs_etm__reset_last_branch_rb(%struct.cs_etm_traceid_queue* %135)
  br label %137

137:                                              ; preds = %134, %128
  %138 = load i32, i32* %10, align 4
  store i32 %138, i32* %5, align 4
  br label %139

139:                                              ; preds = %137, %114
  %140 = load i32, i32* %5, align 4
  ret i32 %140
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @cs_etm__cpu_mode(%struct.cs_etm_queue*, i8*) #2

declare dso_local i32 @cs_etm__copy_insn(%struct.cs_etm_queue*, i32, %struct.TYPE_10__*, %struct.perf_sample*) #2

declare dso_local i32 @cs_etm__copy_last_branch_rb(%struct.cs_etm_queue*, %struct.cs_etm_traceid_queue*) #2

declare dso_local i32 @cs_etm__inject_event(%union.perf_event*, %struct.perf_sample*, i32) #2

declare dso_local i32 @perf_session__deliver_synth_event(i32, %union.perf_event*, %struct.perf_sample*) #2

declare dso_local i32 @pr_err(i8*, i32) #2

declare dso_local i32 @cs_etm__reset_last_branch_rb(%struct.cs_etm_traceid_queue*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
