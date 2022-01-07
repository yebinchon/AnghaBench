; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/util/extr_cs-etm.c_cs_etm__end_block.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/util/extr_cs-etm.c_cs_etm__end_block.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cs_etm_queue = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64 }
%struct.cs_etm_traceid_queue = type { i32, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i64 }

@CS_ETM_RANGE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cs_etm_queue*, %struct.cs_etm_traceid_queue*)* @cs_etm__end_block to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cs_etm__end_block(%struct.cs_etm_queue* %0, %struct.cs_etm_traceid_queue* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.cs_etm_queue*, align 8
  %5 = alloca %struct.cs_etm_traceid_queue*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.cs_etm_queue* %0, %struct.cs_etm_queue** %4, align 8
  store %struct.cs_etm_traceid_queue* %1, %struct.cs_etm_traceid_queue** %5, align 8
  %8 = load %struct.cs_etm_queue*, %struct.cs_etm_queue** %4, align 8
  %9 = getelementptr inbounds %struct.cs_etm_queue, %struct.cs_etm_queue* %8, i32 0, i32 0
  %10 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %42

15:                                               ; preds = %2
  %16 = load %struct.cs_etm_traceid_queue*, %struct.cs_etm_traceid_queue** %5, align 8
  %17 = getelementptr inbounds %struct.cs_etm_traceid_queue, %struct.cs_etm_traceid_queue* %16, i32 0, i32 1
  %18 = load %struct.TYPE_6__*, %struct.TYPE_6__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @CS_ETM_RANGE, align 8
  %22 = icmp eq i64 %20, %21
  br i1 %22, label %23, label %42

23:                                               ; preds = %15
  %24 = load %struct.cs_etm_traceid_queue*, %struct.cs_etm_traceid_queue** %5, align 8
  %25 = getelementptr inbounds %struct.cs_etm_traceid_queue, %struct.cs_etm_traceid_queue* %24, i32 0, i32 1
  %26 = load %struct.TYPE_6__*, %struct.TYPE_6__** %25, align 8
  %27 = call i32 @cs_etm__last_executed_instr(%struct.TYPE_6__* %26)
  store i32 %27, i32* %7, align 4
  %28 = load %struct.cs_etm_queue*, %struct.cs_etm_queue** %4, align 8
  %29 = load %struct.cs_etm_traceid_queue*, %struct.cs_etm_traceid_queue** %5, align 8
  %30 = load i32, i32* %7, align 4
  %31 = load %struct.cs_etm_traceid_queue*, %struct.cs_etm_traceid_queue** %5, align 8
  %32 = getelementptr inbounds %struct.cs_etm_traceid_queue, %struct.cs_etm_traceid_queue* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = call i32 @cs_etm__synth_instruction_sample(%struct.cs_etm_queue* %28, %struct.cs_etm_traceid_queue* %29, i32 %30, i32 %33)
  store i32 %34, i32* %6, align 4
  %35 = load i32, i32* %6, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %23
  %38 = load i32, i32* %6, align 4
  store i32 %38, i32* %3, align 4
  br label %43

39:                                               ; preds = %23
  %40 = load %struct.cs_etm_traceid_queue*, %struct.cs_etm_traceid_queue** %5, align 8
  %41 = getelementptr inbounds %struct.cs_etm_traceid_queue, %struct.cs_etm_traceid_queue* %40, i32 0, i32 0
  store i32 0, i32* %41, align 8
  br label %42

42:                                               ; preds = %39, %15, %2
  store i32 0, i32* %3, align 4
  br label %43

43:                                               ; preds = %42, %37
  %44 = load i32, i32* %3, align 4
  ret i32 %44
}

declare dso_local i32 @cs_etm__last_executed_instr(%struct.TYPE_6__*) #1

declare dso_local i32 @cs_etm__synth_instruction_sample(%struct.cs_etm_queue*, %struct.cs_etm_traceid_queue*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
