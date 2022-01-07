; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/tests/extr_parse-events.c_test__checkevent_symbolic_name_config.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/tests/extr_parse-events.c_test__checkevent_symbolic_name_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.evlist = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }
%struct.evsel = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64, i64, i64, i64, i32 }

@.str = private unnamed_addr constant [24 x i8] c"wrong number of entries\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"wrong type\00", align 1
@PERF_TYPE_HARDWARE = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [13 x i8] c"wrong config\00", align 1
@PERF_COUNT_HW_CPU_CYCLES = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [13 x i8] c"wrong period\00", align 1
@.str.4 = private unnamed_addr constant [14 x i8] c"wrong config1\00", align 1
@.str.5 = private unnamed_addr constant [14 x i8] c"wrong config2\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.evlist*)* @test__checkevent_symbolic_name_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @test__checkevent_symbolic_name_config(%struct.evlist* %0) #0 {
  %2 = alloca %struct.evlist*, align 8
  %3 = alloca %struct.evsel*, align 8
  store %struct.evlist* %0, %struct.evlist** %2, align 8
  %4 = load %struct.evlist*, %struct.evlist** %2, align 8
  %5 = call %struct.evsel* @evlist__first(%struct.evlist* %4)
  store %struct.evsel* %5, %struct.evsel** %3, align 8
  %6 = load %struct.evlist*, %struct.evlist** %2, align 8
  %7 = getelementptr inbounds %struct.evlist, %struct.evlist* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = icmp eq i32 1, %9
  %11 = zext i1 %10 to i32
  %12 = call i32 @TEST_ASSERT_VAL(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 %11)
  %13 = load i64, i64* @PERF_TYPE_HARDWARE, align 8
  %14 = load %struct.evsel*, %struct.evsel** %3, align 8
  %15 = getelementptr inbounds %struct.evsel, %struct.evsel* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = icmp eq i64 %13, %18
  %20 = zext i1 %19 to i32
  %21 = call i32 @TEST_ASSERT_VAL(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i32 %20)
  %22 = load i64, i64* @PERF_COUNT_HW_CPU_CYCLES, align 8
  %23 = load %struct.evsel*, %struct.evsel** %3, align 8
  %24 = getelementptr inbounds %struct.evsel, %struct.evsel* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  %28 = icmp eq i64 %22, %27
  %29 = zext i1 %28 to i32
  %30 = call i32 @TEST_ASSERT_VAL(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0), i32 %29)
  %31 = load %struct.evsel*, %struct.evsel** %3, align 8
  %32 = getelementptr inbounds %struct.evsel, %struct.evsel* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 2
  %35 = load i64, i64* %34, align 8
  %36 = icmp eq i64 0, %35
  %37 = zext i1 %36 to i32
  %38 = call i32 @TEST_ASSERT_VAL(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i64 0, i64 0), i32 %37)
  %39 = load %struct.evsel*, %struct.evsel** %3, align 8
  %40 = getelementptr inbounds %struct.evsel, %struct.evsel* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 3
  %43 = load i64, i64* %42, align 8
  %44 = icmp eq i64 0, %43
  %45 = zext i1 %44 to i32
  %46 = call i32 @TEST_ASSERT_VAL(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i64 0, i64 0), i32 %45)
  %47 = load %struct.evsel*, %struct.evsel** %3, align 8
  %48 = getelementptr inbounds %struct.evsel, %struct.evsel* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 4
  %51 = load i32, i32* %50, align 8
  %52 = icmp eq i32 1, %51
  %53 = zext i1 %52 to i32
  %54 = call i32 @TEST_ASSERT_VAL(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.5, i64 0, i64 0), i32 %53)
  ret i32 0
}

declare dso_local %struct.evsel* @evlist__first(%struct.evlist*) #1

declare dso_local i32 @TEST_ASSERT_VAL(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
