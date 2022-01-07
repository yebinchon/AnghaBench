; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/lib/tests/extr_test-evsel.c_test_stat_thread_enable.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/lib/tests/extr_test-evsel.c_test_stat_thread_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.perf_counts_values = type { i64 }
%struct.perf_thread_map = type { i32 }
%struct.perf_evsel = type { i32 }
%struct.perf_event_attr = type { i32, i32, i32 }

@PERF_COUNT_SW_TASK_CLOCK = common dso_local global i32 0, align 4
@PERF_TYPE_SOFTWARE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"failed to create threads\00", align 1
@.str.1 = private unnamed_addr constant [23 x i8] c"failed to create evsel\00", align 1
@.str.2 = private unnamed_addr constant [21 x i8] c"failed to open evsel\00", align 1
@.str.3 = private unnamed_addr constant [31 x i8] c"failed to read value for evsel\00", align 1
@.str.4 = private unnamed_addr constant [23 x i8] c"failed to enable evsel\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @test_stat_thread_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @test_stat_thread_enable() #0 {
  %1 = alloca %struct.perf_counts_values, align 8
  %2 = alloca %struct.perf_thread_map*, align 8
  %3 = alloca %struct.perf_evsel*, align 8
  %4 = alloca %struct.perf_event_attr, align 4
  %5 = alloca i32, align 4
  %6 = bitcast %struct.perf_counts_values* %1 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %6, i8 0, i64 8, i1 false)
  %7 = getelementptr inbounds %struct.perf_event_attr, %struct.perf_event_attr* %4, i32 0, i32 0
  store i32 1, i32* %7, align 4
  %8 = getelementptr inbounds %struct.perf_event_attr, %struct.perf_event_attr* %4, i32 0, i32 1
  %9 = load i32, i32* @PERF_COUNT_SW_TASK_CLOCK, align 4
  store i32 %9, i32* %8, align 4
  %10 = getelementptr inbounds %struct.perf_event_attr, %struct.perf_event_attr* %4, i32 0, i32 2
  %11 = load i32, i32* @PERF_TYPE_SOFTWARE, align 4
  store i32 %11, i32* %10, align 4
  %12 = call %struct.perf_thread_map* (...) @perf_thread_map__new_dummy()
  store %struct.perf_thread_map* %12, %struct.perf_thread_map** %2, align 8
  %13 = load %struct.perf_thread_map*, %struct.perf_thread_map** %2, align 8
  %14 = ptrtoint %struct.perf_thread_map* %13 to i32
  %15 = call i32 @__T(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 %14)
  %16 = load %struct.perf_thread_map*, %struct.perf_thread_map** %2, align 8
  %17 = call i32 @perf_thread_map__set_pid(%struct.perf_thread_map* %16, i32 0, i32 0)
  %18 = call %struct.perf_evsel* @perf_evsel__new(%struct.perf_event_attr* %4)
  store %struct.perf_evsel* %18, %struct.perf_evsel** %3, align 8
  %19 = load %struct.perf_evsel*, %struct.perf_evsel** %3, align 8
  %20 = ptrtoint %struct.perf_evsel* %19 to i32
  %21 = call i32 @__T(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i32 %20)
  %22 = load %struct.perf_evsel*, %struct.perf_evsel** %3, align 8
  %23 = load %struct.perf_thread_map*, %struct.perf_thread_map** %2, align 8
  %24 = call i32 @perf_evsel__open(%struct.perf_evsel* %22, i32* null, %struct.perf_thread_map* %23)
  store i32 %24, i32* %5, align 4
  %25 = load i32, i32* %5, align 4
  %26 = icmp eq i32 %25, 0
  %27 = zext i1 %26 to i32
  %28 = call i32 @__T(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0), i32 %27)
  %29 = load %struct.perf_evsel*, %struct.perf_evsel** %3, align 8
  %30 = call i32 @perf_evsel__read(%struct.perf_evsel* %29, i32 0, i32 0, %struct.perf_counts_values* %1)
  %31 = getelementptr inbounds %struct.perf_counts_values, %struct.perf_counts_values* %1, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = icmp eq i64 %32, 0
  %34 = zext i1 %33 to i32
  %35 = call i32 @__T(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i64 0, i64 0), i32 %34)
  %36 = load %struct.perf_evsel*, %struct.perf_evsel** %3, align 8
  %37 = call i32 @perf_evsel__enable(%struct.perf_evsel* %36)
  store i32 %37, i32* %5, align 4
  %38 = load i32, i32* %5, align 4
  %39 = icmp eq i32 %38, 0
  %40 = zext i1 %39 to i32
  %41 = call i32 @__T(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.4, i64 0, i64 0), i32 %40)
  %42 = load %struct.perf_evsel*, %struct.perf_evsel** %3, align 8
  %43 = call i32 @perf_evsel__read(%struct.perf_evsel* %42, i32 0, i32 0, %struct.perf_counts_values* %1)
  %44 = getelementptr inbounds %struct.perf_counts_values, %struct.perf_counts_values* %1, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = icmp ne i64 %45, 0
  %47 = zext i1 %46 to i32
  %48 = call i32 @__T(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i64 0, i64 0), i32 %47)
  %49 = load %struct.perf_evsel*, %struct.perf_evsel** %3, align 8
  %50 = call i32 @perf_evsel__disable(%struct.perf_evsel* %49)
  store i32 %50, i32* %5, align 4
  %51 = load i32, i32* %5, align 4
  %52 = icmp eq i32 %51, 0
  %53 = zext i1 %52 to i32
  %54 = call i32 @__T(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.4, i64 0, i64 0), i32 %53)
  %55 = load %struct.perf_evsel*, %struct.perf_evsel** %3, align 8
  %56 = call i32 @perf_evsel__close(%struct.perf_evsel* %55)
  %57 = load %struct.perf_evsel*, %struct.perf_evsel** %3, align 8
  %58 = call i32 @perf_evsel__delete(%struct.perf_evsel* %57)
  %59 = load %struct.perf_thread_map*, %struct.perf_thread_map** %2, align 8
  %60 = call i32 @perf_thread_map__put(%struct.perf_thread_map* %59)
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

declare dso_local i32 @perf_evsel__enable(%struct.perf_evsel*) #2

declare dso_local i32 @perf_evsel__disable(%struct.perf_evsel*) #2

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
