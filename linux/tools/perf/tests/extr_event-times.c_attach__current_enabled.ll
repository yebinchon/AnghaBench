; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/tests/extr_event-times.c_attach__current_enabled.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/tests/extr_event-times.c_attach__current_enabled.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.evlist = type { i32 }
%struct.evsel = type { i32 }
%struct.perf_thread_map = type { i32 }

@.str = private unnamed_addr constant [40 x i8] c"attaching to current thread as enabled\0A\00", align 1
@UINT_MAX = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [32 x i8] c"failed to call thread_map__new\0A\00", align 1
@TEST_OK = common dso_local global i32 0, align 4
@TEST_FAIL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.evlist*)* @attach__current_enabled to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @attach__current_enabled(%struct.evlist* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.evlist*, align 8
  %4 = alloca %struct.evsel*, align 8
  %5 = alloca %struct.perf_thread_map*, align 8
  %6 = alloca i32, align 4
  store %struct.evlist* %0, %struct.evlist** %3, align 8
  %7 = load %struct.evlist*, %struct.evlist** %3, align 8
  %8 = call %struct.evsel* @evlist__last(%struct.evlist* %7)
  store %struct.evsel* %8, %struct.evsel** %4, align 8
  %9 = call i32 @pr_debug(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0))
  %10 = call i32 (...) @getpid()
  %11 = load i32, i32* @UINT_MAX, align 4
  %12 = call %struct.perf_thread_map* @thread_map__new(i32 -1, i32 %10, i32 %11)
  store %struct.perf_thread_map* %12, %struct.perf_thread_map** %5, align 8
  %13 = load %struct.perf_thread_map*, %struct.perf_thread_map** %5, align 8
  %14 = icmp eq %struct.perf_thread_map* %13, null
  br i1 %14, label %15, label %17

15:                                               ; preds = %1
  %16 = call i32 @pr_debug(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0))
  store i32 -1, i32* %2, align 4
  br label %31

17:                                               ; preds = %1
  %18 = load %struct.evsel*, %struct.evsel** %4, align 8
  %19 = load %struct.perf_thread_map*, %struct.perf_thread_map** %5, align 8
  %20 = call i32 @perf_evsel__open_per_thread(%struct.evsel* %18, %struct.perf_thread_map* %19)
  store i32 %20, i32* %6, align 4
  %21 = load %struct.perf_thread_map*, %struct.perf_thread_map** %5, align 8
  %22 = call i32 @perf_thread_map__put(%struct.perf_thread_map* %21)
  %23 = load i32, i32* %6, align 4
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %17
  %26 = load i32, i32* @TEST_OK, align 4
  br label %29

27:                                               ; preds = %17
  %28 = load i32, i32* @TEST_FAIL, align 4
  br label %29

29:                                               ; preds = %27, %25
  %30 = phi i32 [ %26, %25 ], [ %28, %27 ]
  store i32 %30, i32* %2, align 4
  br label %31

31:                                               ; preds = %29, %15
  %32 = load i32, i32* %2, align 4
  ret i32 %32
}

declare dso_local %struct.evsel* @evlist__last(%struct.evlist*) #1

declare dso_local i32 @pr_debug(i8*) #1

declare dso_local %struct.perf_thread_map* @thread_map__new(i32, i32, i32) #1

declare dso_local i32 @getpid(...) #1

declare dso_local i32 @perf_evsel__open_per_thread(%struct.evsel*, %struct.perf_thread_map*) #1

declare dso_local i32 @perf_thread_map__put(%struct.perf_thread_map*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
