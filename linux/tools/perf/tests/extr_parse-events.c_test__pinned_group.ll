; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/tests/extr_parse-events.c_test__pinned_group.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/tests/extr_parse-events.c_test__pinned_group.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.evlist = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.evsel = type { %struct.TYPE_6__, %struct.evsel*, i32 }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i64, i64, i32 }

@.str = private unnamed_addr constant [24 x i8] c"wrong number of entries\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"wrong type\00", align 1
@PERF_TYPE_HARDWARE = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [13 x i8] c"wrong config\00", align 1
@PERF_COUNT_HW_CPU_CYCLES = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [17 x i8] c"wrong group name\00", align 1
@.str.4 = private unnamed_addr constant [13 x i8] c"wrong leader\00", align 1
@.str.5 = private unnamed_addr constant [13 x i8] c"wrong pinned\00", align 1
@PERF_COUNT_HW_CACHE_MISSES = common dso_local global i64 0, align 8
@PERF_COUNT_HW_BRANCH_MISSES = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.evlist*)* @test__pinned_group to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @test__pinned_group(%struct.evlist* %0) #0 {
  %2 = alloca %struct.evlist*, align 8
  %3 = alloca %struct.evsel*, align 8
  %4 = alloca %struct.evsel*, align 8
  store %struct.evlist* %0, %struct.evlist** %2, align 8
  %5 = load %struct.evlist*, %struct.evlist** %2, align 8
  %6 = getelementptr inbounds %struct.evlist, %struct.evlist* %5, i32 0, i32 0
  %7 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = icmp eq i32 3, %8
  %10 = zext i1 %9 to i32
  %11 = call i32 @TEST_ASSERT_VAL(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 %10)
  %12 = load %struct.evlist*, %struct.evlist** %2, align 8
  %13 = call %struct.evsel* @evlist__first(%struct.evlist* %12)
  store %struct.evsel* %13, %struct.evsel** %4, align 8
  store %struct.evsel* %13, %struct.evsel** %3, align 8
  %14 = load i64, i64* @PERF_TYPE_HARDWARE, align 8
  %15 = load %struct.evsel*, %struct.evsel** %3, align 8
  %16 = getelementptr inbounds %struct.evsel, %struct.evsel* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = icmp eq i64 %14, %19
  %21 = zext i1 %20 to i32
  %22 = call i32 @TEST_ASSERT_VAL(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i32 %21)
  %23 = load i64, i64* @PERF_COUNT_HW_CPU_CYCLES, align 8
  %24 = load %struct.evsel*, %struct.evsel** %3, align 8
  %25 = getelementptr inbounds %struct.evsel, %struct.evsel* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %26, i32 0, i32 1
  %28 = load i64, i64* %27, align 8
  %29 = icmp eq i64 %23, %28
  %30 = zext i1 %29 to i32
  %31 = call i32 @TEST_ASSERT_VAL(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0), i32 %30)
  %32 = load %struct.evsel*, %struct.evsel** %3, align 8
  %33 = getelementptr inbounds %struct.evsel, %struct.evsel* %32, i32 0, i32 2
  %34 = load i32, i32* %33, align 8
  %35 = icmp ne i32 %34, 0
  %36 = xor i1 %35, true
  %37 = zext i1 %36 to i32
  %38 = call i32 @TEST_ASSERT_VAL(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i64 0, i64 0), i32 %37)
  %39 = load %struct.evsel*, %struct.evsel** %3, align 8
  %40 = getelementptr inbounds %struct.evsel, %struct.evsel* %39, i32 0, i32 1
  %41 = load %struct.evsel*, %struct.evsel** %40, align 8
  %42 = load %struct.evsel*, %struct.evsel** %4, align 8
  %43 = icmp eq %struct.evsel* %41, %42
  %44 = zext i1 %43 to i32
  %45 = call i32 @TEST_ASSERT_VAL(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.4, i64 0, i64 0), i32 %44)
  %46 = load %struct.evsel*, %struct.evsel** %3, align 8
  %47 = getelementptr inbounds %struct.evsel, %struct.evsel* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %48, i32 0, i32 2
  %50 = load i32, i32* %49, align 8
  %51 = call i32 @TEST_ASSERT_VAL(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.5, i64 0, i64 0), i32 %50)
  %52 = load %struct.evsel*, %struct.evsel** %3, align 8
  %53 = call %struct.evsel* @perf_evsel__next(%struct.evsel* %52)
  store %struct.evsel* %53, %struct.evsel** %3, align 8
  %54 = load i64, i64* @PERF_TYPE_HARDWARE, align 8
  %55 = load %struct.evsel*, %struct.evsel** %3, align 8
  %56 = getelementptr inbounds %struct.evsel, %struct.evsel* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = icmp eq i64 %54, %59
  %61 = zext i1 %60 to i32
  %62 = call i32 @TEST_ASSERT_VAL(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i32 %61)
  %63 = load i64, i64* @PERF_COUNT_HW_CACHE_MISSES, align 8
  %64 = load %struct.evsel*, %struct.evsel** %3, align 8
  %65 = getelementptr inbounds %struct.evsel, %struct.evsel* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %66, i32 0, i32 1
  %68 = load i64, i64* %67, align 8
  %69 = icmp eq i64 %63, %68
  %70 = zext i1 %69 to i32
  %71 = call i32 @TEST_ASSERT_VAL(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0), i32 %70)
  %72 = load %struct.evsel*, %struct.evsel** %3, align 8
  %73 = getelementptr inbounds %struct.evsel, %struct.evsel* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %74, i32 0, i32 2
  %76 = load i32, i32* %75, align 8
  %77 = icmp ne i32 %76, 0
  %78 = xor i1 %77, true
  %79 = zext i1 %78 to i32
  %80 = call i32 @TEST_ASSERT_VAL(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.5, i64 0, i64 0), i32 %79)
  %81 = load %struct.evsel*, %struct.evsel** %3, align 8
  %82 = call %struct.evsel* @perf_evsel__next(%struct.evsel* %81)
  store %struct.evsel* %82, %struct.evsel** %3, align 8
  %83 = load i64, i64* @PERF_COUNT_HW_BRANCH_MISSES, align 8
  %84 = load %struct.evsel*, %struct.evsel** %3, align 8
  %85 = getelementptr inbounds %struct.evsel, %struct.evsel* %84, i32 0, i32 0
  %86 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %85, i32 0, i32 0
  %87 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %86, i32 0, i32 1
  %88 = load i64, i64* %87, align 8
  %89 = icmp eq i64 %83, %88
  %90 = zext i1 %89 to i32
  %91 = call i32 @TEST_ASSERT_VAL(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0), i32 %90)
  %92 = load %struct.evsel*, %struct.evsel** %3, align 8
  %93 = getelementptr inbounds %struct.evsel, %struct.evsel* %92, i32 0, i32 0
  %94 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %93, i32 0, i32 0
  %95 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %94, i32 0, i32 2
  %96 = load i32, i32* %95, align 8
  %97 = icmp ne i32 %96, 0
  %98 = xor i1 %97, true
  %99 = zext i1 %98 to i32
  %100 = call i32 @TEST_ASSERT_VAL(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.5, i64 0, i64 0), i32 %99)
  ret i32 0
}

declare dso_local i32 @TEST_ASSERT_VAL(i8*, i32) #1

declare dso_local %struct.evsel* @evlist__first(%struct.evlist*) #1

declare dso_local %struct.evsel* @perf_evsel__next(%struct.evsel*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
