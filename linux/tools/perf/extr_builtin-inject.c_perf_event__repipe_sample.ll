; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/extr_builtin-inject.c_perf_event__repipe_sample.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/extr_builtin-inject.c_perf_event__repipe_sample.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.perf_tool = type { i32 }
%union.perf_event = type { i32 }
%struct.perf_sample = type { i32 }
%struct.evsel = type { {}* }
%struct.machine = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.perf_tool*, %union.perf_event*, %struct.perf_sample*, %struct.evsel*, %struct.machine*)* @perf_event__repipe_sample to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @perf_event__repipe_sample(%struct.perf_tool* %0, %union.perf_event* %1, %struct.perf_sample* %2, %struct.evsel* %3, %struct.machine* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.perf_tool*, align 8
  %8 = alloca %union.perf_event*, align 8
  %9 = alloca %struct.perf_sample*, align 8
  %10 = alloca %struct.evsel*, align 8
  %11 = alloca %struct.machine*, align 8
  %12 = alloca i32 (%struct.perf_tool*, %union.perf_event*, %struct.perf_sample*, %struct.evsel*, %struct.machine*)*, align 8
  store %struct.perf_tool* %0, %struct.perf_tool** %7, align 8
  store %union.perf_event* %1, %union.perf_event** %8, align 8
  store %struct.perf_sample* %2, %struct.perf_sample** %9, align 8
  store %struct.evsel* %3, %struct.evsel** %10, align 8
  store %struct.machine* %4, %struct.machine** %11, align 8
  %13 = load %struct.evsel*, %struct.evsel** %10, align 8
  %14 = icmp ne %struct.evsel* %13, null
  br i1 %14, label %15, label %33

15:                                               ; preds = %5
  %16 = load %struct.evsel*, %struct.evsel** %10, align 8
  %17 = getelementptr inbounds %struct.evsel, %struct.evsel* %16, i32 0, i32 0
  %18 = bitcast {}** %17 to i32 (%struct.perf_tool*, %union.perf_event*, %struct.perf_sample*, %struct.evsel*, %struct.machine*)**
  %19 = load i32 (%struct.perf_tool*, %union.perf_event*, %struct.perf_sample*, %struct.evsel*, %struct.machine*)*, i32 (%struct.perf_tool*, %union.perf_event*, %struct.perf_sample*, %struct.evsel*, %struct.machine*)** %18, align 8
  %20 = icmp ne i32 (%struct.perf_tool*, %union.perf_event*, %struct.perf_sample*, %struct.evsel*, %struct.machine*)* %19, null
  br i1 %20, label %21, label %33

21:                                               ; preds = %15
  %22 = load %struct.evsel*, %struct.evsel** %10, align 8
  %23 = getelementptr inbounds %struct.evsel, %struct.evsel* %22, i32 0, i32 0
  %24 = bitcast {}** %23 to i32 (%struct.perf_tool*, %union.perf_event*, %struct.perf_sample*, %struct.evsel*, %struct.machine*)**
  %25 = load i32 (%struct.perf_tool*, %union.perf_event*, %struct.perf_sample*, %struct.evsel*, %struct.machine*)*, i32 (%struct.perf_tool*, %union.perf_event*, %struct.perf_sample*, %struct.evsel*, %struct.machine*)** %24, align 8
  store i32 (%struct.perf_tool*, %union.perf_event*, %struct.perf_sample*, %struct.evsel*, %struct.machine*)* %25, i32 (%struct.perf_tool*, %union.perf_event*, %struct.perf_sample*, %struct.evsel*, %struct.machine*)** %12, align 8
  %26 = load i32 (%struct.perf_tool*, %union.perf_event*, %struct.perf_sample*, %struct.evsel*, %struct.machine*)*, i32 (%struct.perf_tool*, %union.perf_event*, %struct.perf_sample*, %struct.evsel*, %struct.machine*)** %12, align 8
  %27 = load %struct.perf_tool*, %struct.perf_tool** %7, align 8
  %28 = load %union.perf_event*, %union.perf_event** %8, align 8
  %29 = load %struct.perf_sample*, %struct.perf_sample** %9, align 8
  %30 = load %struct.evsel*, %struct.evsel** %10, align 8
  %31 = load %struct.machine*, %struct.machine** %11, align 8
  %32 = call i32 %26(%struct.perf_tool* %27, %union.perf_event* %28, %struct.perf_sample* %29, %struct.evsel* %30, %struct.machine* %31)
  store i32 %32, i32* %6, align 4
  br label %43

33:                                               ; preds = %15, %5
  %34 = load %struct.perf_tool*, %struct.perf_tool** %7, align 8
  %35 = load %union.perf_event*, %union.perf_event** %8, align 8
  %36 = load %struct.perf_sample*, %struct.perf_sample** %9, align 8
  %37 = load %struct.evsel*, %struct.evsel** %10, align 8
  %38 = load %struct.machine*, %struct.machine** %11, align 8
  %39 = call i32 @build_id__mark_dso_hit(%struct.perf_tool* %34, %union.perf_event* %35, %struct.perf_sample* %36, %struct.evsel* %37, %struct.machine* %38)
  %40 = load %struct.perf_tool*, %struct.perf_tool** %7, align 8
  %41 = load %union.perf_event*, %union.perf_event** %8, align 8
  %42 = call i32 @perf_event__repipe_synth(%struct.perf_tool* %40, %union.perf_event* %41)
  store i32 %42, i32* %6, align 4
  br label %43

43:                                               ; preds = %33, %21
  %44 = load i32, i32* %6, align 4
  ret i32 %44
}

declare dso_local i32 @build_id__mark_dso_hit(%struct.perf_tool*, %union.perf_event*, %struct.perf_sample*, %struct.evsel*, %struct.machine*) #1

declare dso_local i32 @perf_event__repipe_synth(%struct.perf_tool*, %union.perf_event*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
