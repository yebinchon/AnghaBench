; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/tests/extr_parse-events.c_test__group_gh4.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/tests/extr_parse-events.c_test__group_gh4.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.evlist = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.evsel = type { %struct.evsel*, %struct.TYPE_6__, i32 }
%struct.TYPE_6__ = type { i32, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i64, i64, i32, i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [24 x i8] c"wrong number of entries\00", align 1
@.str.1 = private unnamed_addr constant [23 x i8] c"wrong number of groups\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"wrong type\00", align 1
@PERF_TYPE_HARDWARE = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [13 x i8] c"wrong config\00", align 1
@PERF_COUNT_HW_CPU_CYCLES = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [19 x i8] c"wrong exclude_user\00", align 1
@.str.5 = private unnamed_addr constant [21 x i8] c"wrong exclude_kernel\00", align 1
@.str.6 = private unnamed_addr constant [17 x i8] c"wrong exclude_hv\00", align 1
@.str.7 = private unnamed_addr constant [20 x i8] c"wrong exclude guest\00", align 1
@.str.8 = private unnamed_addr constant [19 x i8] c"wrong exclude host\00", align 1
@.str.9 = private unnamed_addr constant [17 x i8] c"wrong precise_ip\00", align 1
@.str.10 = private unnamed_addr constant [17 x i8] c"wrong group name\00", align 1
@.str.11 = private unnamed_addr constant [13 x i8] c"wrong leader\00", align 1
@.str.12 = private unnamed_addr constant [22 x i8] c"wrong core.nr_members\00", align 1
@.str.13 = private unnamed_addr constant [16 x i8] c"wrong group_idx\00", align 1
@PERF_COUNT_HW_CACHE_MISSES = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.evlist*)* @test__group_gh4 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @test__group_gh4(%struct.evlist* %0) #0 {
  %2 = alloca %struct.evlist*, align 8
  %3 = alloca %struct.evsel*, align 8
  %4 = alloca %struct.evsel*, align 8
  store %struct.evlist* %0, %struct.evlist** %2, align 8
  %5 = load %struct.evlist*, %struct.evlist** %2, align 8
  %6 = getelementptr inbounds %struct.evlist, %struct.evlist* %5, i32 0, i32 1
  %7 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = icmp eq i32 2, %8
  %10 = zext i1 %9 to i32
  %11 = call i32 @TEST_ASSERT_VAL(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 %10)
  %12 = load %struct.evlist*, %struct.evlist** %2, align 8
  %13 = getelementptr inbounds %struct.evlist, %struct.evlist* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = icmp eq i32 1, %14
  %16 = zext i1 %15 to i32
  %17 = call i32 @TEST_ASSERT_VAL(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i32 %16)
  %18 = load %struct.evlist*, %struct.evlist** %2, align 8
  %19 = call %struct.evsel* @evlist__first(%struct.evlist* %18)
  store %struct.evsel* %19, %struct.evsel** %4, align 8
  store %struct.evsel* %19, %struct.evsel** %3, align 8
  %20 = load i64, i64* @PERF_TYPE_HARDWARE, align 8
  %21 = load %struct.evsel*, %struct.evsel** %3, align 8
  %22 = getelementptr inbounds %struct.evsel, %struct.evsel* %21, i32 0, i32 1
  %23 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %22, i32 0, i32 1
  %24 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = icmp eq i64 %20, %25
  %27 = zext i1 %26 to i32
  %28 = call i32 @TEST_ASSERT_VAL(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0), i32 %27)
  %29 = load i64, i64* @PERF_COUNT_HW_CPU_CYCLES, align 8
  %30 = load %struct.evsel*, %struct.evsel** %3, align 8
  %31 = getelementptr inbounds %struct.evsel, %struct.evsel* %30, i32 0, i32 1
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %31, i32 0, i32 1
  %33 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %32, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  %35 = icmp eq i64 %29, %34
  %36 = zext i1 %35 to i32
  %37 = call i32 @TEST_ASSERT_VAL(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i64 0, i64 0), i32 %36)
  %38 = load %struct.evsel*, %struct.evsel** %3, align 8
  %39 = getelementptr inbounds %struct.evsel, %struct.evsel* %38, i32 0, i32 1
  %40 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %39, i32 0, i32 1
  %41 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %40, i32 0, i32 7
  %42 = load i32, i32* %41, align 4
  %43 = icmp ne i32 %42, 0
  %44 = xor i1 %43, true
  %45 = zext i1 %44 to i32
  %46 = call i32 @TEST_ASSERT_VAL(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.4, i64 0, i64 0), i32 %45)
  %47 = load %struct.evsel*, %struct.evsel** %3, align 8
  %48 = getelementptr inbounds %struct.evsel, %struct.evsel* %47, i32 0, i32 1
  %49 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %48, i32 0, i32 1
  %50 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %49, i32 0, i32 2
  %51 = load i32, i32* %50, align 8
  %52 = call i32 @TEST_ASSERT_VAL(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.5, i64 0, i64 0), i32 %51)
  %53 = load %struct.evsel*, %struct.evsel** %3, align 8
  %54 = getelementptr inbounds %struct.evsel, %struct.evsel* %53, i32 0, i32 1
  %55 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %54, i32 0, i32 1
  %56 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %55, i32 0, i32 3
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @TEST_ASSERT_VAL(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.6, i64 0, i64 0), i32 %57)
  %59 = load %struct.evsel*, %struct.evsel** %3, align 8
  %60 = getelementptr inbounds %struct.evsel, %struct.evsel* %59, i32 0, i32 1
  %61 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %60, i32 0, i32 1
  %62 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %61, i32 0, i32 6
  %63 = load i32, i32* %62, align 8
  %64 = icmp ne i32 %63, 0
  %65 = xor i1 %64, true
  %66 = zext i1 %65 to i32
  %67 = call i32 @TEST_ASSERT_VAL(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.7, i64 0, i64 0), i32 %66)
  %68 = load %struct.evsel*, %struct.evsel** %3, align 8
  %69 = getelementptr inbounds %struct.evsel, %struct.evsel* %68, i32 0, i32 1
  %70 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %69, i32 0, i32 1
  %71 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %70, i32 0, i32 4
  %72 = load i32, i32* %71, align 8
  %73 = call i32 @TEST_ASSERT_VAL(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.8, i64 0, i64 0), i32 %72)
  %74 = load %struct.evsel*, %struct.evsel** %3, align 8
  %75 = getelementptr inbounds %struct.evsel, %struct.evsel* %74, i32 0, i32 1
  %76 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %75, i32 0, i32 1
  %77 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %76, i32 0, i32 5
  %78 = load i32, i32* %77, align 4
  %79 = icmp ne i32 %78, 0
  %80 = xor i1 %79, true
  %81 = zext i1 %80 to i32
  %82 = call i32 @TEST_ASSERT_VAL(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.9, i64 0, i64 0), i32 %81)
  %83 = load %struct.evsel*, %struct.evsel** %3, align 8
  %84 = getelementptr inbounds %struct.evsel, %struct.evsel* %83, i32 0, i32 2
  %85 = load i32, i32* %84, align 8
  %86 = icmp ne i32 %85, 0
  %87 = xor i1 %86, true
  %88 = zext i1 %87 to i32
  %89 = call i32 @TEST_ASSERT_VAL(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.10, i64 0, i64 0), i32 %88)
  %90 = load %struct.evsel*, %struct.evsel** %3, align 8
  %91 = call i32 @perf_evsel__is_group_leader(%struct.evsel* %90)
  %92 = call i32 @TEST_ASSERT_VAL(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.11, i64 0, i64 0), i32 %91)
  %93 = load %struct.evsel*, %struct.evsel** %3, align 8
  %94 = getelementptr inbounds %struct.evsel, %struct.evsel* %93, i32 0, i32 1
  %95 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 8
  %97 = icmp eq i32 %96, 2
  %98 = zext i1 %97 to i32
  %99 = call i32 @TEST_ASSERT_VAL(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.12, i64 0, i64 0), i32 %98)
  %100 = load %struct.evsel*, %struct.evsel** %3, align 8
  %101 = call i32 @perf_evsel__group_idx(%struct.evsel* %100)
  %102 = icmp eq i32 %101, 0
  %103 = zext i1 %102 to i32
  %104 = call i32 @TEST_ASSERT_VAL(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.13, i64 0, i64 0), i32 %103)
  %105 = load %struct.evsel*, %struct.evsel** %3, align 8
  %106 = call %struct.evsel* @perf_evsel__next(%struct.evsel* %105)
  store %struct.evsel* %106, %struct.evsel** %3, align 8
  %107 = load i64, i64* @PERF_TYPE_HARDWARE, align 8
  %108 = load %struct.evsel*, %struct.evsel** %3, align 8
  %109 = getelementptr inbounds %struct.evsel, %struct.evsel* %108, i32 0, i32 1
  %110 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %109, i32 0, i32 1
  %111 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %110, i32 0, i32 0
  %112 = load i64, i64* %111, align 8
  %113 = icmp eq i64 %107, %112
  %114 = zext i1 %113 to i32
  %115 = call i32 @TEST_ASSERT_VAL(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0), i32 %114)
  %116 = load i64, i64* @PERF_COUNT_HW_CACHE_MISSES, align 8
  %117 = load %struct.evsel*, %struct.evsel** %3, align 8
  %118 = getelementptr inbounds %struct.evsel, %struct.evsel* %117, i32 0, i32 1
  %119 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %118, i32 0, i32 1
  %120 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %119, i32 0, i32 1
  %121 = load i64, i64* %120, align 8
  %122 = icmp eq i64 %116, %121
  %123 = zext i1 %122 to i32
  %124 = call i32 @TEST_ASSERT_VAL(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i64 0, i64 0), i32 %123)
  %125 = load %struct.evsel*, %struct.evsel** %3, align 8
  %126 = getelementptr inbounds %struct.evsel, %struct.evsel* %125, i32 0, i32 1
  %127 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %126, i32 0, i32 1
  %128 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %127, i32 0, i32 7
  %129 = load i32, i32* %128, align 4
  %130 = icmp ne i32 %129, 0
  %131 = xor i1 %130, true
  %132 = zext i1 %131 to i32
  %133 = call i32 @TEST_ASSERT_VAL(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.4, i64 0, i64 0), i32 %132)
  %134 = load %struct.evsel*, %struct.evsel** %3, align 8
  %135 = getelementptr inbounds %struct.evsel, %struct.evsel* %134, i32 0, i32 1
  %136 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %135, i32 0, i32 1
  %137 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %136, i32 0, i32 2
  %138 = load i32, i32* %137, align 8
  %139 = call i32 @TEST_ASSERT_VAL(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.5, i64 0, i64 0), i32 %138)
  %140 = load %struct.evsel*, %struct.evsel** %3, align 8
  %141 = getelementptr inbounds %struct.evsel, %struct.evsel* %140, i32 0, i32 1
  %142 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %141, i32 0, i32 1
  %143 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %142, i32 0, i32 3
  %144 = load i32, i32* %143, align 4
  %145 = call i32 @TEST_ASSERT_VAL(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.6, i64 0, i64 0), i32 %144)
  %146 = load %struct.evsel*, %struct.evsel** %3, align 8
  %147 = getelementptr inbounds %struct.evsel, %struct.evsel* %146, i32 0, i32 1
  %148 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %147, i32 0, i32 1
  %149 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %148, i32 0, i32 6
  %150 = load i32, i32* %149, align 8
  %151 = icmp ne i32 %150, 0
  %152 = xor i1 %151, true
  %153 = zext i1 %152 to i32
  %154 = call i32 @TEST_ASSERT_VAL(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.7, i64 0, i64 0), i32 %153)
  %155 = load %struct.evsel*, %struct.evsel** %3, align 8
  %156 = getelementptr inbounds %struct.evsel, %struct.evsel* %155, i32 0, i32 1
  %157 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %156, i32 0, i32 1
  %158 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %157, i32 0, i32 4
  %159 = load i32, i32* %158, align 8
  %160 = icmp ne i32 %159, 0
  %161 = xor i1 %160, true
  %162 = zext i1 %161 to i32
  %163 = call i32 @TEST_ASSERT_VAL(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.8, i64 0, i64 0), i32 %162)
  %164 = load %struct.evsel*, %struct.evsel** %3, align 8
  %165 = getelementptr inbounds %struct.evsel, %struct.evsel* %164, i32 0, i32 1
  %166 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %165, i32 0, i32 1
  %167 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %166, i32 0, i32 5
  %168 = load i32, i32* %167, align 4
  %169 = icmp ne i32 %168, 0
  %170 = xor i1 %169, true
  %171 = zext i1 %170 to i32
  %172 = call i32 @TEST_ASSERT_VAL(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.9, i64 0, i64 0), i32 %171)
  %173 = load %struct.evsel*, %struct.evsel** %3, align 8
  %174 = getelementptr inbounds %struct.evsel, %struct.evsel* %173, i32 0, i32 0
  %175 = load %struct.evsel*, %struct.evsel** %174, align 8
  %176 = load %struct.evsel*, %struct.evsel** %4, align 8
  %177 = icmp eq %struct.evsel* %175, %176
  %178 = zext i1 %177 to i32
  %179 = call i32 @TEST_ASSERT_VAL(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.11, i64 0, i64 0), i32 %178)
  %180 = load %struct.evsel*, %struct.evsel** %3, align 8
  %181 = call i32 @perf_evsel__group_idx(%struct.evsel* %180)
  %182 = icmp eq i32 %181, 1
  %183 = zext i1 %182 to i32
  %184 = call i32 @TEST_ASSERT_VAL(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.13, i64 0, i64 0), i32 %183)
  ret i32 0
}

declare dso_local i32 @TEST_ASSERT_VAL(i8*, i32) #1

declare dso_local %struct.evsel* @evlist__first(%struct.evlist*) #1

declare dso_local i32 @perf_evsel__is_group_leader(%struct.evsel*) #1

declare dso_local i32 @perf_evsel__group_idx(%struct.evsel*) #1

declare dso_local %struct.evsel* @perf_evsel__next(%struct.evsel*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
