; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/util/extr_synthetic-events.c_perf_tool__process_synth_event.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/util/extr_synthetic-events.c_perf_tool__process_synth_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.perf_tool = type { i32 }
%union.perf_event = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.machine = type { i32 }
%struct.perf_sample = type { i32, i32, i32, i32, i32, i32, i32 }

@PERF_RECORD_MISC_CPUMODE_MASK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @perf_tool__process_synth_event(%struct.perf_tool* %0, %union.perf_event* %1, %struct.machine* %2, i32 (%struct.perf_tool*, %union.perf_event*, %struct.perf_sample*, %struct.machine*)* %3) #0 {
  %5 = alloca %struct.perf_tool*, align 8
  %6 = alloca %union.perf_event*, align 8
  %7 = alloca %struct.machine*, align 8
  %8 = alloca i32 (%struct.perf_tool*, %union.perf_event*, %struct.perf_sample*, %struct.machine*)*, align 8
  %9 = alloca %struct.perf_sample, align 4
  store %struct.perf_tool* %0, %struct.perf_tool** %5, align 8
  store %union.perf_event* %1, %union.perf_event** %6, align 8
  store %struct.machine* %2, %struct.machine** %7, align 8
  store i32 (%struct.perf_tool*, %union.perf_event*, %struct.perf_sample*, %struct.machine*)* %3, i32 (%struct.perf_tool*, %union.perf_event*, %struct.perf_sample*, %struct.machine*)** %8, align 8
  %10 = getelementptr inbounds %struct.perf_sample, %struct.perf_sample* %9, i32 0, i32 0
  store i32 -1, i32* %10, align 4
  %11 = getelementptr inbounds %struct.perf_sample, %struct.perf_sample* %9, i32 0, i32 1
  store i32 -1, i32* %11, align 4
  %12 = getelementptr inbounds %struct.perf_sample, %struct.perf_sample* %9, i32 0, i32 2
  store i32 -1, i32* %12, align 4
  %13 = getelementptr inbounds %struct.perf_sample, %struct.perf_sample* %9, i32 0, i32 3
  store i32 -1, i32* %13, align 4
  %14 = getelementptr inbounds %struct.perf_sample, %struct.perf_sample* %9, i32 0, i32 4
  store i32 -1, i32* %14, align 4
  %15 = getelementptr inbounds %struct.perf_sample, %struct.perf_sample* %9, i32 0, i32 5
  store i32 1, i32* %15, align 4
  %16 = getelementptr inbounds %struct.perf_sample, %struct.perf_sample* %9, i32 0, i32 6
  %17 = load %union.perf_event*, %union.perf_event** %6, align 8
  %18 = bitcast %union.perf_event* %17 to %struct.TYPE_2__*
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* @PERF_RECORD_MISC_CPUMODE_MASK, align 4
  %22 = and i32 %20, %21
  store i32 %22, i32* %16, align 4
  %23 = load i32 (%struct.perf_tool*, %union.perf_event*, %struct.perf_sample*, %struct.machine*)*, i32 (%struct.perf_tool*, %union.perf_event*, %struct.perf_sample*, %struct.machine*)** %8, align 8
  %24 = load %struct.perf_tool*, %struct.perf_tool** %5, align 8
  %25 = load %union.perf_event*, %union.perf_event** %6, align 8
  %26 = load %struct.machine*, %struct.machine** %7, align 8
  %27 = call i32 %23(%struct.perf_tool* %24, %union.perf_event* %25, %struct.perf_sample* %9, %struct.machine* %26)
  ret i32 %27
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
