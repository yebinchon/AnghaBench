; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/tests/extr_parse-events.c_test__group_gh1.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/tests/extr_parse-events.c_test__group_gh1.c"
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
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.evlist*)* @test__group_gh1 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @test__group_gh1(%struct.evlist* %0) #0 {
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
  %50 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %49, i32 0, i32 6
  %51 = load i32, i32* %50, align 8
  %52 = icmp ne i32 %51, 0
  %53 = xor i1 %52, true
  %54 = zext i1 %53 to i32
  %55 = call i32 @TEST_ASSERT_VAL(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.5, i64 0, i64 0), i32 %54)
  %56 = load %struct.evsel*, %struct.evsel** %3, align 8
  %57 = getelementptr inbounds %struct.evsel, %struct.evsel* %56, i32 0, i32 1
  %58 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %57, i32 0, i32 1
  %59 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %58, i32 0, i32 5
  %60 = load i32, i32* %59, align 4
  %61 = icmp ne i32 %60, 0
  %62 = xor i1 %61, true
  %63 = zext i1 %62 to i32
  %64 = call i32 @TEST_ASSERT_VAL(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.6, i64 0, i64 0), i32 %63)
  %65 = load %struct.evsel*, %struct.evsel** %3, align 8
  %66 = getelementptr inbounds %struct.evsel, %struct.evsel* %65, i32 0, i32 1
  %67 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %66, i32 0, i32 1
  %68 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %67, i32 0, i32 2
  %69 = load i32, i32* %68, align 8
  %70 = call i32 @TEST_ASSERT_VAL(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.7, i64 0, i64 0), i32 %69)
  %71 = load %struct.evsel*, %struct.evsel** %3, align 8
  %72 = getelementptr inbounds %struct.evsel, %struct.evsel* %71, i32 0, i32 1
  %73 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %72, i32 0, i32 1
  %74 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %73, i32 0, i32 4
  %75 = load i32, i32* %74, align 8
  %76 = icmp ne i32 %75, 0
  %77 = xor i1 %76, true
  %78 = zext i1 %77 to i32
  %79 = call i32 @TEST_ASSERT_VAL(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.8, i64 0, i64 0), i32 %78)
  %80 = load %struct.evsel*, %struct.evsel** %3, align 8
  %81 = getelementptr inbounds %struct.evsel, %struct.evsel* %80, i32 0, i32 1
  %82 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %81, i32 0, i32 1
  %83 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %82, i32 0, i32 3
  %84 = load i32, i32* %83, align 4
  %85 = icmp ne i32 %84, 0
  %86 = xor i1 %85, true
  %87 = zext i1 %86 to i32
  %88 = call i32 @TEST_ASSERT_VAL(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.9, i64 0, i64 0), i32 %87)
  %89 = load %struct.evsel*, %struct.evsel** %3, align 8
  %90 = getelementptr inbounds %struct.evsel, %struct.evsel* %89, i32 0, i32 2
  %91 = load i32, i32* %90, align 8
  %92 = icmp ne i32 %91, 0
  %93 = xor i1 %92, true
  %94 = zext i1 %93 to i32
  %95 = call i32 @TEST_ASSERT_VAL(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.10, i64 0, i64 0), i32 %94)
  %96 = load %struct.evsel*, %struct.evsel** %3, align 8
  %97 = call i32 @perf_evsel__is_group_leader(%struct.evsel* %96)
  %98 = call i32 @TEST_ASSERT_VAL(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.11, i64 0, i64 0), i32 %97)
  %99 = load %struct.evsel*, %struct.evsel** %3, align 8
  %100 = getelementptr inbounds %struct.evsel, %struct.evsel* %99, i32 0, i32 1
  %101 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 8
  %103 = icmp eq i32 %102, 2
  %104 = zext i1 %103 to i32
  %105 = call i32 @TEST_ASSERT_VAL(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.12, i64 0, i64 0), i32 %104)
  %106 = load %struct.evsel*, %struct.evsel** %3, align 8
  %107 = call i32 @perf_evsel__group_idx(%struct.evsel* %106)
  %108 = icmp eq i32 %107, 0
  %109 = zext i1 %108 to i32
  %110 = call i32 @TEST_ASSERT_VAL(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.13, i64 0, i64 0), i32 %109)
  %111 = load %struct.evsel*, %struct.evsel** %3, align 8
  %112 = call %struct.evsel* @perf_evsel__next(%struct.evsel* %111)
  store %struct.evsel* %112, %struct.evsel** %3, align 8
  %113 = load i64, i64* @PERF_TYPE_HARDWARE, align 8
  %114 = load %struct.evsel*, %struct.evsel** %3, align 8
  %115 = getelementptr inbounds %struct.evsel, %struct.evsel* %114, i32 0, i32 1
  %116 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %115, i32 0, i32 1
  %117 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %116, i32 0, i32 0
  %118 = load i64, i64* %117, align 8
  %119 = icmp eq i64 %113, %118
  %120 = zext i1 %119 to i32
  %121 = call i32 @TEST_ASSERT_VAL(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0), i32 %120)
  %122 = load i64, i64* @PERF_COUNT_HW_CACHE_MISSES, align 8
  %123 = load %struct.evsel*, %struct.evsel** %3, align 8
  %124 = getelementptr inbounds %struct.evsel, %struct.evsel* %123, i32 0, i32 1
  %125 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %124, i32 0, i32 1
  %126 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %125, i32 0, i32 1
  %127 = load i64, i64* %126, align 8
  %128 = icmp eq i64 %122, %127
  %129 = zext i1 %128 to i32
  %130 = call i32 @TEST_ASSERT_VAL(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i64 0, i64 0), i32 %129)
  %131 = load %struct.evsel*, %struct.evsel** %3, align 8
  %132 = getelementptr inbounds %struct.evsel, %struct.evsel* %131, i32 0, i32 1
  %133 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %132, i32 0, i32 1
  %134 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %133, i32 0, i32 7
  %135 = load i32, i32* %134, align 4
  %136 = icmp ne i32 %135, 0
  %137 = xor i1 %136, true
  %138 = zext i1 %137 to i32
  %139 = call i32 @TEST_ASSERT_VAL(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.4, i64 0, i64 0), i32 %138)
  %140 = load %struct.evsel*, %struct.evsel** %3, align 8
  %141 = getelementptr inbounds %struct.evsel, %struct.evsel* %140, i32 0, i32 1
  %142 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %141, i32 0, i32 1
  %143 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %142, i32 0, i32 6
  %144 = load i32, i32* %143, align 8
  %145 = icmp ne i32 %144, 0
  %146 = xor i1 %145, true
  %147 = zext i1 %146 to i32
  %148 = call i32 @TEST_ASSERT_VAL(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.5, i64 0, i64 0), i32 %147)
  %149 = load %struct.evsel*, %struct.evsel** %3, align 8
  %150 = getelementptr inbounds %struct.evsel, %struct.evsel* %149, i32 0, i32 1
  %151 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %150, i32 0, i32 1
  %152 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %151, i32 0, i32 5
  %153 = load i32, i32* %152, align 4
  %154 = icmp ne i32 %153, 0
  %155 = xor i1 %154, true
  %156 = zext i1 %155 to i32
  %157 = call i32 @TEST_ASSERT_VAL(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.6, i64 0, i64 0), i32 %156)
  %158 = load %struct.evsel*, %struct.evsel** %3, align 8
  %159 = getelementptr inbounds %struct.evsel, %struct.evsel* %158, i32 0, i32 1
  %160 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %159, i32 0, i32 1
  %161 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %160, i32 0, i32 2
  %162 = load i32, i32* %161, align 8
  %163 = icmp ne i32 %162, 0
  %164 = xor i1 %163, true
  %165 = zext i1 %164 to i32
  %166 = call i32 @TEST_ASSERT_VAL(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.7, i64 0, i64 0), i32 %165)
  %167 = load %struct.evsel*, %struct.evsel** %3, align 8
  %168 = getelementptr inbounds %struct.evsel, %struct.evsel* %167, i32 0, i32 1
  %169 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %168, i32 0, i32 1
  %170 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %169, i32 0, i32 4
  %171 = load i32, i32* %170, align 8
  %172 = icmp ne i32 %171, 0
  %173 = xor i1 %172, true
  %174 = zext i1 %173 to i32
  %175 = call i32 @TEST_ASSERT_VAL(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.8, i64 0, i64 0), i32 %174)
  %176 = load %struct.evsel*, %struct.evsel** %3, align 8
  %177 = getelementptr inbounds %struct.evsel, %struct.evsel* %176, i32 0, i32 1
  %178 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %177, i32 0, i32 1
  %179 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %178, i32 0, i32 3
  %180 = load i32, i32* %179, align 4
  %181 = icmp ne i32 %180, 0
  %182 = xor i1 %181, true
  %183 = zext i1 %182 to i32
  %184 = call i32 @TEST_ASSERT_VAL(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.9, i64 0, i64 0), i32 %183)
  %185 = load %struct.evsel*, %struct.evsel** %3, align 8
  %186 = getelementptr inbounds %struct.evsel, %struct.evsel* %185, i32 0, i32 0
  %187 = load %struct.evsel*, %struct.evsel** %186, align 8
  %188 = load %struct.evsel*, %struct.evsel** %4, align 8
  %189 = icmp eq %struct.evsel* %187, %188
  %190 = zext i1 %189 to i32
  %191 = call i32 @TEST_ASSERT_VAL(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.11, i64 0, i64 0), i32 %190)
  %192 = load %struct.evsel*, %struct.evsel** %3, align 8
  %193 = call i32 @perf_evsel__group_idx(%struct.evsel* %192)
  %194 = icmp eq i32 %193, 1
  %195 = zext i1 %194 to i32
  %196 = call i32 @TEST_ASSERT_VAL(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.13, i64 0, i64 0), i32 %195)
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
