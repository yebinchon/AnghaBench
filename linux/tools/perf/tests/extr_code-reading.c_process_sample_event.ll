; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/tests/extr_code-reading.c_process_sample_event.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/tests/extr_code-reading.c_process_sample_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.machine = type { i32 }
%struct.evlist = type { i32 }
%union.perf_event = type { i32 }
%struct.state = type { i32 }
%struct.perf_sample = type { i32, i32, i32, i32 }
%struct.thread = type { i32 }

@.str = private unnamed_addr constant [34 x i8] c"perf_evlist__parse_sample failed\0A\00", align 1
@.str.1 = private unnamed_addr constant [32 x i8] c"machine__findnew_thread failed\0A\00", align 1
@READLEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.machine*, %struct.evlist*, %union.perf_event*, %struct.state*)* @process_sample_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @process_sample_event(%struct.machine* %0, %struct.evlist* %1, %union.perf_event* %2, %struct.state* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.machine*, align 8
  %7 = alloca %struct.evlist*, align 8
  %8 = alloca %union.perf_event*, align 8
  %9 = alloca %struct.state*, align 8
  %10 = alloca %struct.perf_sample, align 4
  %11 = alloca %struct.thread*, align 8
  %12 = alloca i32, align 4
  store %struct.machine* %0, %struct.machine** %6, align 8
  store %struct.evlist* %1, %struct.evlist** %7, align 8
  store %union.perf_event* %2, %union.perf_event** %8, align 8
  store %struct.state* %3, %struct.state** %9, align 8
  %13 = load %struct.evlist*, %struct.evlist** %7, align 8
  %14 = load %union.perf_event*, %union.perf_event** %8, align 8
  %15 = call i64 @perf_evlist__parse_sample(%struct.evlist* %13, %union.perf_event* %14, %struct.perf_sample* %10)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %4
  %18 = call i32 @pr_debug(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %5, align 4
  br label %42

19:                                               ; preds = %4
  %20 = load %struct.machine*, %struct.machine** %6, align 8
  %21 = getelementptr inbounds %struct.perf_sample, %struct.perf_sample* %10, i32 0, i32 3
  %22 = load i32, i32* %21, align 4
  %23 = getelementptr inbounds %struct.perf_sample, %struct.perf_sample* %10, i32 0, i32 2
  %24 = load i32, i32* %23, align 4
  %25 = call %struct.thread* @machine__findnew_thread(%struct.machine* %20, i32 %22, i32 %24)
  store %struct.thread* %25, %struct.thread** %11, align 8
  %26 = load %struct.thread*, %struct.thread** %11, align 8
  %27 = icmp ne %struct.thread* %26, null
  br i1 %27, label %30, label %28

28:                                               ; preds = %19
  %29 = call i32 @pr_debug(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0))
  store i32 -1, i32* %5, align 4
  br label %42

30:                                               ; preds = %19
  %31 = getelementptr inbounds %struct.perf_sample, %struct.perf_sample* %10, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* @READLEN, align 4
  %34 = getelementptr inbounds %struct.perf_sample, %struct.perf_sample* %10, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.thread*, %struct.thread** %11, align 8
  %37 = load %struct.state*, %struct.state** %9, align 8
  %38 = call i32 @read_object_code(i32 %32, i32 %33, i32 %35, %struct.thread* %36, %struct.state* %37)
  store i32 %38, i32* %12, align 4
  %39 = load %struct.thread*, %struct.thread** %11, align 8
  %40 = call i32 @thread__put(%struct.thread* %39)
  %41 = load i32, i32* %12, align 4
  store i32 %41, i32* %5, align 4
  br label %42

42:                                               ; preds = %30, %28, %17
  %43 = load i32, i32* %5, align 4
  ret i32 %43
}

declare dso_local i64 @perf_evlist__parse_sample(%struct.evlist*, %union.perf_event*, %struct.perf_sample*) #1

declare dso_local i32 @pr_debug(i8*) #1

declare dso_local %struct.thread* @machine__findnew_thread(%struct.machine*, i32, i32) #1

declare dso_local i32 @read_object_code(i32, i32, i32, %struct.thread*, %struct.state*) #1

declare dso_local i32 @thread__put(%struct.thread*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
