; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/tests/extr_code-reading.c_process_event.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/tests/extr_code-reading.c_process_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.machine = type { i32 }
%struct.evlist = type { i32 }
%union.perf_event = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }
%struct.state = type { i32 }

@PERF_RECORD_SAMPLE = common dso_local global i64 0, align 8
@PERF_RECORD_THROTTLE = common dso_local global i64 0, align 8
@PERF_RECORD_UNTHROTTLE = common dso_local global i64 0, align 8
@PERF_RECORD_MAX = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [46 x i8] c"machine__process_event failed, event type %u\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.machine*, %struct.evlist*, %union.perf_event*, %struct.state*)* @process_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @process_event(%struct.machine* %0, %struct.evlist* %1, %union.perf_event* %2, %struct.state* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.machine*, align 8
  %7 = alloca %struct.evlist*, align 8
  %8 = alloca %union.perf_event*, align 8
  %9 = alloca %struct.state*, align 8
  %10 = alloca i32, align 4
  store %struct.machine* %0, %struct.machine** %6, align 8
  store %struct.evlist* %1, %struct.evlist** %7, align 8
  store %union.perf_event* %2, %union.perf_event** %8, align 8
  store %struct.state* %3, %struct.state** %9, align 8
  %11 = load %union.perf_event*, %union.perf_event** %8, align 8
  %12 = bitcast %union.perf_event* %11 to %struct.TYPE_2__*
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @PERF_RECORD_SAMPLE, align 8
  %16 = icmp eq i64 %14, %15
  br i1 %16, label %17, label %23

17:                                               ; preds = %4
  %18 = load %struct.machine*, %struct.machine** %6, align 8
  %19 = load %struct.evlist*, %struct.evlist** %7, align 8
  %20 = load %union.perf_event*, %union.perf_event** %8, align 8
  %21 = load %struct.state*, %struct.state** %9, align 8
  %22 = call i32 @process_sample_event(%struct.machine* %18, %struct.evlist* %19, %union.perf_event* %20, %struct.state* %21)
  store i32 %22, i32* %5, align 4
  br label %60

23:                                               ; preds = %4
  %24 = load %union.perf_event*, %union.perf_event** %8, align 8
  %25 = bitcast %union.perf_event* %24 to %struct.TYPE_2__*
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @PERF_RECORD_THROTTLE, align 8
  %29 = icmp eq i64 %27, %28
  br i1 %29, label %37, label %30

30:                                               ; preds = %23
  %31 = load %union.perf_event*, %union.perf_event** %8, align 8
  %32 = bitcast %union.perf_event* %31 to %struct.TYPE_2__*
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* @PERF_RECORD_UNTHROTTLE, align 8
  %36 = icmp eq i64 %34, %35
  br i1 %36, label %37, label %38

37:                                               ; preds = %30, %23
  store i32 0, i32* %5, align 4
  br label %60

38:                                               ; preds = %30
  %39 = load %union.perf_event*, %union.perf_event** %8, align 8
  %40 = bitcast %union.perf_event* %39 to %struct.TYPE_2__*
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = load i64, i64* @PERF_RECORD_MAX, align 8
  %44 = icmp slt i64 %42, %43
  br i1 %44, label %45, label %59

45:                                               ; preds = %38
  %46 = load %struct.machine*, %struct.machine** %6, align 8
  %47 = load %union.perf_event*, %union.perf_event** %8, align 8
  %48 = call i32 @machine__process_event(%struct.machine* %46, %union.perf_event* %47, i32* null)
  store i32 %48, i32* %10, align 4
  %49 = load i32, i32* %10, align 4
  %50 = icmp slt i32 %49, 0
  br i1 %50, label %51, label %57

51:                                               ; preds = %45
  %52 = load %union.perf_event*, %union.perf_event** %8, align 8
  %53 = bitcast %union.perf_event* %52 to %struct.TYPE_2__*
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = call i32 @pr_debug(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0), i64 %55)
  br label %57

57:                                               ; preds = %51, %45
  %58 = load i32, i32* %10, align 4
  store i32 %58, i32* %5, align 4
  br label %60

59:                                               ; preds = %38
  store i32 0, i32* %5, align 4
  br label %60

60:                                               ; preds = %59, %57, %37, %17
  %61 = load i32, i32* %5, align 4
  ret i32 %61
}

declare dso_local i32 @process_sample_event(%struct.machine*, %struct.evlist*, %union.perf_event*, %struct.state*) #1

declare dso_local i32 @machine__process_event(%struct.machine*, %union.perf_event*, i32*) #1

declare dso_local i32 @pr_debug(i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
