; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/extr_builtin-timechart.c_process_sample_sched_wakeup.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/extr_builtin-timechart.c_process_sample_sched_wakeup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.timechart = type { i32 }
%struct.evsel = type { i32 }
%struct.perf_sample = type { i32, i32 }

@.str = private unnamed_addr constant [13 x i8] c"common_flags\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"common_pid\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"pid\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.timechart*, %struct.evsel*, %struct.perf_sample*, i8*)* @process_sample_sched_wakeup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @process_sample_sched_wakeup(%struct.timechart* %0, %struct.evsel* %1, %struct.perf_sample* %2, i8* %3) #0 {
  %5 = alloca %struct.timechart*, align 8
  %6 = alloca %struct.evsel*, align 8
  %7 = alloca %struct.perf_sample*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.timechart* %0, %struct.timechart** %5, align 8
  store %struct.evsel* %1, %struct.evsel** %6, align 8
  store %struct.perf_sample* %2, %struct.perf_sample** %7, align 8
  store i8* %3, i8** %8, align 8
  %12 = load %struct.evsel*, %struct.evsel** %6, align 8
  %13 = load %struct.perf_sample*, %struct.perf_sample** %7, align 8
  %14 = call i8* @perf_evsel__intval(%struct.evsel* %12, %struct.perf_sample* %13, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  store i8* %14, i8** %9, align 8
  %15 = load %struct.evsel*, %struct.evsel** %6, align 8
  %16 = load %struct.perf_sample*, %struct.perf_sample** %7, align 8
  %17 = call i8* @perf_evsel__intval(%struct.evsel* %15, %struct.perf_sample* %16, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0))
  %18 = ptrtoint i8* %17 to i32
  store i32 %18, i32* %10, align 4
  %19 = load %struct.evsel*, %struct.evsel** %6, align 8
  %20 = load %struct.perf_sample*, %struct.perf_sample** %7, align 8
  %21 = call i8* @perf_evsel__intval(%struct.evsel* %19, %struct.perf_sample* %20, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0))
  %22 = ptrtoint i8* %21 to i32
  store i32 %22, i32* %11, align 4
  %23 = load %struct.timechart*, %struct.timechart** %5, align 8
  %24 = load %struct.perf_sample*, %struct.perf_sample** %7, align 8
  %25 = getelementptr inbounds %struct.perf_sample, %struct.perf_sample* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.perf_sample*, %struct.perf_sample** %7, align 8
  %28 = getelementptr inbounds %struct.perf_sample, %struct.perf_sample* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* %10, align 4
  %31 = load i32, i32* %11, align 4
  %32 = load i8*, i8** %9, align 8
  %33 = load i8*, i8** %8, align 8
  %34 = call i32 @sched_wakeup(%struct.timechart* %23, i32 %26, i32 %29, i32 %30, i32 %31, i8* %32, i8* %33)
  ret i32 0
}

declare dso_local i8* @perf_evsel__intval(%struct.evsel*, %struct.perf_sample*, i8*) #1

declare dso_local i32 @sched_wakeup(%struct.timechart*, i32, i32, i32, i32, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
