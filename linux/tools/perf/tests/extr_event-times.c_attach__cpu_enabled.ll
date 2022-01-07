; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/tests/extr_event-times.c_attach__cpu_enabled.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/tests/extr_event-times.c_attach__cpu_enabled.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.evlist = type { i32 }
%struct.evsel = type { i32 }
%struct.perf_cpu_map = type { i32 }

@.str = private unnamed_addr constant [31 x i8] c"attaching to CPU 0 as enabled\0A\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"0\00", align 1
@.str.2 = private unnamed_addr constant [34 x i8] c"failed to call perf_cpu_map__new\0A\00", align 1
@EACCES = common dso_local global i32 0, align 4
@TEST_SKIP = common dso_local global i32 0, align 4
@TEST_FAIL = common dso_local global i32 0, align 4
@TEST_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.evlist*)* @attach__cpu_enabled to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @attach__cpu_enabled(%struct.evlist* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.evlist*, align 8
  %4 = alloca %struct.evsel*, align 8
  %5 = alloca %struct.perf_cpu_map*, align 8
  %6 = alloca i32, align 4
  store %struct.evlist* %0, %struct.evlist** %3, align 8
  %7 = load %struct.evlist*, %struct.evlist** %3, align 8
  %8 = call %struct.evsel* @evlist__last(%struct.evlist* %7)
  store %struct.evsel* %8, %struct.evsel** %4, align 8
  %9 = call i32 @pr_debug(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  %10 = call %struct.perf_cpu_map* @perf_cpu_map__new(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  store %struct.perf_cpu_map* %10, %struct.perf_cpu_map** %5, align 8
  %11 = load %struct.perf_cpu_map*, %struct.perf_cpu_map** %5, align 8
  %12 = icmp eq %struct.perf_cpu_map* %11, null
  br i1 %12, label %13, label %15

13:                                               ; preds = %1
  %14 = call i32 @pr_debug(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0))
  store i32 -1, i32* %2, align 4
  br label %36

15:                                               ; preds = %1
  %16 = load %struct.evsel*, %struct.evsel** %4, align 8
  %17 = load %struct.perf_cpu_map*, %struct.perf_cpu_map** %5, align 8
  %18 = call i32 @perf_evsel__open_per_cpu(%struct.evsel* %16, %struct.perf_cpu_map* %17)
  store i32 %18, i32* %6, align 4
  %19 = load i32, i32* %6, align 4
  %20 = load i32, i32* @EACCES, align 4
  %21 = sub nsw i32 0, %20
  %22 = icmp eq i32 %19, %21
  br i1 %22, label %23, label %25

23:                                               ; preds = %15
  %24 = load i32, i32* @TEST_SKIP, align 4
  store i32 %24, i32* %2, align 4
  br label %36

25:                                               ; preds = %15
  %26 = load %struct.perf_cpu_map*, %struct.perf_cpu_map** %5, align 8
  %27 = call i32 @perf_cpu_map__put(%struct.perf_cpu_map* %26)
  %28 = load i32, i32* %6, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %25
  %31 = load i32, i32* @TEST_FAIL, align 4
  br label %34

32:                                               ; preds = %25
  %33 = load i32, i32* @TEST_OK, align 4
  br label %34

34:                                               ; preds = %32, %30
  %35 = phi i32 [ %31, %30 ], [ %33, %32 ]
  store i32 %35, i32* %2, align 4
  br label %36

36:                                               ; preds = %34, %23, %13
  %37 = load i32, i32* %2, align 4
  ret i32 %37
}

declare dso_local %struct.evsel* @evlist__last(%struct.evlist*) #1

declare dso_local i32 @pr_debug(i8*) #1

declare dso_local %struct.perf_cpu_map* @perf_cpu_map__new(i8*) #1

declare dso_local i32 @perf_evsel__open_per_cpu(%struct.evsel*, %struct.perf_cpu_map*) #1

declare dso_local i32 @perf_cpu_map__put(%struct.perf_cpu_map*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
