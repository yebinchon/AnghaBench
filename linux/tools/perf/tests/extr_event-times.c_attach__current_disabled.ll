; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/tests/extr_event-times.c_attach__current_disabled.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/tests/extr_event-times.c_attach__current_disabled.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.evlist = type { i32 }
%struct.evsel = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.perf_thread_map = type { i32 }

@.str = private unnamed_addr constant [41 x i8] c"attaching to current thread as disabled\0A\00", align 1
@UINT_MAX = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [17 x i8] c"thread_map__new\0A\00", align 1
@.str.2 = private unnamed_addr constant [34 x i8] c"Failed to open event cpu-clock:u\0A\00", align 1
@TEST_OK = common dso_local global i32 0, align 4
@TEST_FAIL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.evlist*)* @attach__current_disabled to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @attach__current_disabled(%struct.evlist* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.evlist*, align 8
  %4 = alloca %struct.evsel*, align 8
  %5 = alloca %struct.perf_thread_map*, align 8
  %6 = alloca i32, align 4
  store %struct.evlist* %0, %struct.evlist** %3, align 8
  %7 = load %struct.evlist*, %struct.evlist** %3, align 8
  %8 = call %struct.evsel* @evlist__last(%struct.evlist* %7)
  store %struct.evsel* %8, %struct.evsel** %4, align 8
  %9 = call i32 @pr_debug(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0))
  %10 = call i32 (...) @getpid()
  %11 = load i32, i32* @UINT_MAX, align 4
  %12 = call %struct.perf_thread_map* @thread_map__new(i32 -1, i32 %10, i32 %11)
  store %struct.perf_thread_map* %12, %struct.perf_thread_map** %5, align 8
  %13 = load %struct.perf_thread_map*, %struct.perf_thread_map** %5, align 8
  %14 = icmp eq %struct.perf_thread_map* %13, null
  br i1 %14, label %15, label %17

15:                                               ; preds = %1
  %16 = call i32 @pr_debug(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0))
  store i32 -1, i32* %2, align 4
  br label %42

17:                                               ; preds = %1
  %18 = load %struct.evsel*, %struct.evsel** %4, align 8
  %19 = getelementptr inbounds %struct.evsel, %struct.evsel* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 0
  store i32 1, i32* %21, align 4
  %22 = load %struct.evsel*, %struct.evsel** %4, align 8
  %23 = load %struct.perf_thread_map*, %struct.perf_thread_map** %5, align 8
  %24 = call i32 @perf_evsel__open_per_thread(%struct.evsel* %22, %struct.perf_thread_map* %23)
  store i32 %24, i32* %6, align 4
  %25 = load i32, i32* %6, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %17
  %28 = call i32 @pr_debug(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0))
  %29 = load i32, i32* %6, align 4
  store i32 %29, i32* %2, align 4
  br label %42

30:                                               ; preds = %17
  %31 = load %struct.perf_thread_map*, %struct.perf_thread_map** %5, align 8
  %32 = call i32 @perf_thread_map__put(%struct.perf_thread_map* %31)
  %33 = load %struct.evsel*, %struct.evsel** %4, align 8
  %34 = call i64 @evsel__enable(%struct.evsel* %33)
  %35 = icmp eq i64 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %30
  %37 = load i32, i32* @TEST_OK, align 4
  br label %40

38:                                               ; preds = %30
  %39 = load i32, i32* @TEST_FAIL, align 4
  br label %40

40:                                               ; preds = %38, %36
  %41 = phi i32 [ %37, %36 ], [ %39, %38 ]
  store i32 %41, i32* %2, align 4
  br label %42

42:                                               ; preds = %40, %27, %15
  %43 = load i32, i32* %2, align 4
  ret i32 %43
}

declare dso_local %struct.evsel* @evlist__last(%struct.evlist*) #1

declare dso_local i32 @pr_debug(i8*) #1

declare dso_local %struct.perf_thread_map* @thread_map__new(i32, i32, i32) #1

declare dso_local i32 @getpid(...) #1

declare dso_local i32 @perf_evsel__open_per_thread(%struct.evsel*, %struct.perf_thread_map*) #1

declare dso_local i32 @perf_thread_map__put(%struct.perf_thread_map*) #1

declare dso_local i64 @evsel__enable(%struct.evsel*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
