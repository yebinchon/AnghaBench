; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/lib/tests/extr_test-evsel.c_test_stat_thread.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/lib/tests/extr_test-evsel.c_test_stat_thread.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.perf_counts_values = type { i64 }
%struct.perf_thread_map = type { i32 }
%struct.perf_evsel = type { i32 }
%struct.perf_event_attr = type { i32, i32 }

@PERF_COUNT_SW_TASK_CLOCK = common dso_local global i32 0, align 4
@PERF_TYPE_SOFTWARE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"failed to create threads\00", align 1
@.str.1 = private unnamed_addr constant [23 x i8] c"failed to create evsel\00", align 1
@.str.2 = private unnamed_addr constant [21 x i8] c"failed to open evsel\00", align 1
@.str.3 = private unnamed_addr constant [31 x i8] c"failed to read value for evsel\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @test_stat_thread to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @test_stat_thread() #0 {
  %1 = alloca %struct.perf_counts_values, align 8
  %2 = alloca %struct.perf_thread_map*, align 8
  %3 = alloca %struct.perf_evsel*, align 8
  %4 = alloca %struct.perf_event_attr, align 4
  %5 = alloca i32, align 4
  %6 = bitcast %struct.perf_counts_values* %1 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %6, i8 0, i64 8, i1 false)
  %7 = getelementptr inbounds %struct.perf_event_attr, %struct.perf_event_attr* %4, i32 0, i32 0
  %8 = load i32, i32* @PERF_COUNT_SW_TASK_CLOCK, align 4
  store i32 %8, i32* %7, align 4
  %9 = getelementptr inbounds %struct.perf_event_attr, %struct.perf_event_attr* %4, i32 0, i32 1
  %10 = load i32, i32* @PERF_TYPE_SOFTWARE, align 4
  store i32 %10, i32* %9, align 4
  %11 = call %struct.perf_thread_map* (...) @perf_thread_map__new_dummy()
  store %struct.perf_thread_map* %11, %struct.perf_thread_map** %2, align 8
  %12 = load %struct.perf_thread_map*, %struct.perf_thread_map** %2, align 8
  %13 = ptrtoint %struct.perf_thread_map* %12 to i32
  %14 = call i32 @__T(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 %13)
  %15 = load %struct.perf_thread_map*, %struct.perf_thread_map** %2, align 8
  %16 = call i32 @perf_thread_map__set_pid(%struct.perf_thread_map* %15, i32 0, i32 0)
  %17 = call %struct.perf_evsel* @perf_evsel__new(%struct.perf_event_attr* %4)
  store %struct.perf_evsel* %17, %struct.perf_evsel** %3, align 8
  %18 = load %struct.perf_evsel*, %struct.perf_evsel** %3, align 8
  %19 = ptrtoint %struct.perf_evsel* %18 to i32
  %20 = call i32 @__T(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i32 %19)
  %21 = load %struct.perf_evsel*, %struct.perf_evsel** %3, align 8
  %22 = load %struct.perf_thread_map*, %struct.perf_thread_map** %2, align 8
  %23 = call i32 @perf_evsel__open(%struct.perf_evsel* %21, i32* null, %struct.perf_thread_map* %22)
  store i32 %23, i32* %5, align 4
  %24 = load i32, i32* %5, align 4
  %25 = icmp eq i32 %24, 0
  %26 = zext i1 %25 to i32
  %27 = call i32 @__T(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0), i32 %26)
  %28 = load %struct.perf_evsel*, %struct.perf_evsel** %3, align 8
  %29 = call i32 @perf_evsel__read(%struct.perf_evsel* %28, i32 0, i32 0, %struct.perf_counts_values* %1)
  %30 = getelementptr inbounds %struct.perf_counts_values, %struct.perf_counts_values* %1, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = icmp ne i64 %31, 0
  %33 = zext i1 %32 to i32
  %34 = call i32 @__T(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i64 0, i64 0), i32 %33)
  %35 = load %struct.perf_evsel*, %struct.perf_evsel** %3, align 8
  %36 = call i32 @perf_evsel__close(%struct.perf_evsel* %35)
  %37 = load %struct.perf_evsel*, %struct.perf_evsel** %3, align 8
  %38 = call i32 @perf_evsel__delete(%struct.perf_evsel* %37)
  %39 = load %struct.perf_thread_map*, %struct.perf_thread_map** %2, align 8
  %40 = call i32 @perf_thread_map__put(%struct.perf_thread_map* %39)
  ret i32 0
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local %struct.perf_thread_map* @perf_thread_map__new_dummy(...) #2

declare dso_local i32 @__T(i8*, i32) #2

declare dso_local i32 @perf_thread_map__set_pid(%struct.perf_thread_map*, i32, i32) #2

declare dso_local %struct.perf_evsel* @perf_evsel__new(%struct.perf_event_attr*) #2

declare dso_local i32 @perf_evsel__open(%struct.perf_evsel*, i32*, %struct.perf_thread_map*) #2

declare dso_local i32 @perf_evsel__read(%struct.perf_evsel*, i32, i32, %struct.perf_counts_values*) #2

declare dso_local i32 @perf_evsel__close(%struct.perf_evsel*) #2

declare dso_local i32 @perf_evsel__delete(%struct.perf_evsel*) #2

declare dso_local i32 @perf_thread_map__put(%struct.perf_thread_map*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
