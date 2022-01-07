; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/tests/extr_parse-events.c_test__group1.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/tests/extr_parse-events.c_test__group1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.evlist = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.evsel = type { i32, %struct.evsel*, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i64, i64, i32, i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [24 x i8] c"wrong number of entries\00", align 1
@.str.1 = private unnamed_addr constant [23 x i8] c"wrong number of groups\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"wrong type\00", align 1
@PERF_TYPE_HARDWARE = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [13 x i8] c"wrong config\00", align 1
@PERF_COUNT_HW_INSTRUCTIONS = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [19 x i8] c"wrong exclude_user\00", align 1
@.str.5 = private unnamed_addr constant [21 x i8] c"wrong exclude_kernel\00", align 1
@.str.6 = private unnamed_addr constant [17 x i8] c"wrong exclude_hv\00", align 1
@.str.7 = private unnamed_addr constant [20 x i8] c"wrong exclude guest\00", align 1
@.str.8 = private unnamed_addr constant [19 x i8] c"wrong exclude host\00", align 1
@.str.9 = private unnamed_addr constant [17 x i8] c"wrong precise_ip\00", align 1
@.str.10 = private unnamed_addr constant [13 x i8] c"wrong leader\00", align 1
@.str.11 = private unnamed_addr constant [22 x i8] c"wrong core.nr_members\00", align 1
@.str.12 = private unnamed_addr constant [16 x i8] c"wrong group_idx\00", align 1
@.str.13 = private unnamed_addr constant [18 x i8] c"wrong sample_read\00", align 1
@PERF_COUNT_HW_CPU_CYCLES = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.evlist*)* @test__group1 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @test__group1(%struct.evlist* %0) #0 {
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
  %22 = getelementptr inbounds %struct.evsel, %struct.evsel* %21, i32 0, i32 2
  %23 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %22, i32 0, i32 1
  %24 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = icmp eq i64 %20, %25
  %27 = zext i1 %26 to i32
  %28 = call i32 @TEST_ASSERT_VAL(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0), i32 %27)
  %29 = load i64, i64* @PERF_COUNT_HW_INSTRUCTIONS, align 8
  %30 = load %struct.evsel*, %struct.evsel** %3, align 8
  %31 = getelementptr inbounds %struct.evsel, %struct.evsel* %30, i32 0, i32 2
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %31, i32 0, i32 1
  %33 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %32, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  %35 = icmp eq i64 %29, %34
  %36 = zext i1 %35 to i32
  %37 = call i32 @TEST_ASSERT_VAL(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i64 0, i64 0), i32 %36)
  %38 = load %struct.evsel*, %struct.evsel** %3, align 8
  %39 = getelementptr inbounds %struct.evsel, %struct.evsel* %38, i32 0, i32 2
  %40 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %39, i32 0, i32 1
  %41 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %40, i32 0, i32 2
  %42 = load i32, i32* %41, align 8
  %43 = call i32 @TEST_ASSERT_VAL(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.4, i64 0, i64 0), i32 %42)
  %44 = load %struct.evsel*, %struct.evsel** %3, align 8
  %45 = getelementptr inbounds %struct.evsel, %struct.evsel* %44, i32 0, i32 2
  %46 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %45, i32 0, i32 1
  %47 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %46, i32 0, i32 3
  %48 = load i32, i32* %47, align 4
  %49 = icmp ne i32 %48, 0
  %50 = xor i1 %49, true
  %51 = zext i1 %50 to i32
  %52 = call i32 @TEST_ASSERT_VAL(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.5, i64 0, i64 0), i32 %51)
  %53 = load %struct.evsel*, %struct.evsel** %3, align 8
  %54 = getelementptr inbounds %struct.evsel, %struct.evsel* %53, i32 0, i32 2
  %55 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %54, i32 0, i32 1
  %56 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %55, i32 0, i32 4
  %57 = load i32, i32* %56, align 8
  %58 = call i32 @TEST_ASSERT_VAL(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.6, i64 0, i64 0), i32 %57)
  %59 = load %struct.evsel*, %struct.evsel** %3, align 8
  %60 = getelementptr inbounds %struct.evsel, %struct.evsel* %59, i32 0, i32 2
  %61 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %60, i32 0, i32 1
  %62 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %61, i32 0, i32 5
  %63 = load i32, i32* %62, align 4
  %64 = icmp ne i32 %63, 0
  %65 = xor i1 %64, true
  %66 = zext i1 %65 to i32
  %67 = call i32 @TEST_ASSERT_VAL(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.7, i64 0, i64 0), i32 %66)
  %68 = load %struct.evsel*, %struct.evsel** %3, align 8
  %69 = getelementptr inbounds %struct.evsel, %struct.evsel* %68, i32 0, i32 2
  %70 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %69, i32 0, i32 1
  %71 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %70, i32 0, i32 7
  %72 = load i32, i32* %71, align 4
  %73 = icmp ne i32 %72, 0
  %74 = xor i1 %73, true
  %75 = zext i1 %74 to i32
  %76 = call i32 @TEST_ASSERT_VAL(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.8, i64 0, i64 0), i32 %75)
  %77 = load %struct.evsel*, %struct.evsel** %3, align 8
  %78 = getelementptr inbounds %struct.evsel, %struct.evsel* %77, i32 0, i32 2
  %79 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %78, i32 0, i32 1
  %80 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %79, i32 0, i32 6
  %81 = load i32, i32* %80, align 8
  %82 = icmp ne i32 %81, 0
  %83 = xor i1 %82, true
  %84 = zext i1 %83 to i32
  %85 = call i32 @TEST_ASSERT_VAL(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.9, i64 0, i64 0), i32 %84)
  %86 = load %struct.evsel*, %struct.evsel** %3, align 8
  %87 = call i32 @perf_evsel__is_group_leader(%struct.evsel* %86)
  %88 = call i32 @TEST_ASSERT_VAL(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.10, i64 0, i64 0), i32 %87)
  %89 = load %struct.evsel*, %struct.evsel** %3, align 8
  %90 = getelementptr inbounds %struct.evsel, %struct.evsel* %89, i32 0, i32 2
  %91 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 8
  %93 = icmp eq i32 %92, 2
  %94 = zext i1 %93 to i32
  %95 = call i32 @TEST_ASSERT_VAL(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.11, i64 0, i64 0), i32 %94)
  %96 = load %struct.evsel*, %struct.evsel** %3, align 8
  %97 = call i32 @perf_evsel__group_idx(%struct.evsel* %96)
  %98 = icmp eq i32 %97, 0
  %99 = zext i1 %98 to i32
  %100 = call i32 @TEST_ASSERT_VAL(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.12, i64 0, i64 0), i32 %99)
  %101 = load %struct.evsel*, %struct.evsel** %3, align 8
  %102 = getelementptr inbounds %struct.evsel, %struct.evsel* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 8
  %104 = icmp ne i32 %103, 0
  %105 = xor i1 %104, true
  %106 = zext i1 %105 to i32
  %107 = call i32 @TEST_ASSERT_VAL(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.13, i64 0, i64 0), i32 %106)
  %108 = load %struct.evsel*, %struct.evsel** %3, align 8
  %109 = call %struct.evsel* @perf_evsel__next(%struct.evsel* %108)
  store %struct.evsel* %109, %struct.evsel** %3, align 8
  %110 = load i64, i64* @PERF_TYPE_HARDWARE, align 8
  %111 = load %struct.evsel*, %struct.evsel** %3, align 8
  %112 = getelementptr inbounds %struct.evsel, %struct.evsel* %111, i32 0, i32 2
  %113 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %112, i32 0, i32 1
  %114 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %113, i32 0, i32 0
  %115 = load i64, i64* %114, align 8
  %116 = icmp eq i64 %110, %115
  %117 = zext i1 %116 to i32
  %118 = call i32 @TEST_ASSERT_VAL(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0), i32 %117)
  %119 = load i64, i64* @PERF_COUNT_HW_CPU_CYCLES, align 8
  %120 = load %struct.evsel*, %struct.evsel** %3, align 8
  %121 = getelementptr inbounds %struct.evsel, %struct.evsel* %120, i32 0, i32 2
  %122 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %121, i32 0, i32 1
  %123 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %122, i32 0, i32 1
  %124 = load i64, i64* %123, align 8
  %125 = icmp eq i64 %119, %124
  %126 = zext i1 %125 to i32
  %127 = call i32 @TEST_ASSERT_VAL(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i64 0, i64 0), i32 %126)
  %128 = load %struct.evsel*, %struct.evsel** %3, align 8
  %129 = getelementptr inbounds %struct.evsel, %struct.evsel* %128, i32 0, i32 2
  %130 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %129, i32 0, i32 1
  %131 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %130, i32 0, i32 2
  %132 = load i32, i32* %131, align 8
  %133 = icmp ne i32 %132, 0
  %134 = xor i1 %133, true
  %135 = zext i1 %134 to i32
  %136 = call i32 @TEST_ASSERT_VAL(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.4, i64 0, i64 0), i32 %135)
  %137 = load %struct.evsel*, %struct.evsel** %3, align 8
  %138 = getelementptr inbounds %struct.evsel, %struct.evsel* %137, i32 0, i32 2
  %139 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %138, i32 0, i32 1
  %140 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %139, i32 0, i32 3
  %141 = load i32, i32* %140, align 4
  %142 = call i32 @TEST_ASSERT_VAL(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.5, i64 0, i64 0), i32 %141)
  %143 = load %struct.evsel*, %struct.evsel** %3, align 8
  %144 = getelementptr inbounds %struct.evsel, %struct.evsel* %143, i32 0, i32 2
  %145 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %144, i32 0, i32 1
  %146 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %145, i32 0, i32 4
  %147 = load i32, i32* %146, align 8
  %148 = call i32 @TEST_ASSERT_VAL(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.6, i64 0, i64 0), i32 %147)
  %149 = load %struct.evsel*, %struct.evsel** %3, align 8
  %150 = getelementptr inbounds %struct.evsel, %struct.evsel* %149, i32 0, i32 2
  %151 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %150, i32 0, i32 1
  %152 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %151, i32 0, i32 5
  %153 = load i32, i32* %152, align 4
  %154 = call i32 @TEST_ASSERT_VAL(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.7, i64 0, i64 0), i32 %153)
  %155 = load %struct.evsel*, %struct.evsel** %3, align 8
  %156 = getelementptr inbounds %struct.evsel, %struct.evsel* %155, i32 0, i32 2
  %157 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %156, i32 0, i32 1
  %158 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %157, i32 0, i32 7
  %159 = load i32, i32* %158, align 4
  %160 = icmp ne i32 %159, 0
  %161 = xor i1 %160, true
  %162 = zext i1 %161 to i32
  %163 = call i32 @TEST_ASSERT_VAL(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.8, i64 0, i64 0), i32 %162)
  %164 = load %struct.evsel*, %struct.evsel** %3, align 8
  %165 = getelementptr inbounds %struct.evsel, %struct.evsel* %164, i32 0, i32 2
  %166 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %165, i32 0, i32 1
  %167 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %166, i32 0, i32 6
  %168 = load i32, i32* %167, align 8
  %169 = icmp eq i32 %168, 2
  %170 = zext i1 %169 to i32
  %171 = call i32 @TEST_ASSERT_VAL(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.9, i64 0, i64 0), i32 %170)
  %172 = load %struct.evsel*, %struct.evsel** %3, align 8
  %173 = getelementptr inbounds %struct.evsel, %struct.evsel* %172, i32 0, i32 1
  %174 = load %struct.evsel*, %struct.evsel** %173, align 8
  %175 = load %struct.evsel*, %struct.evsel** %4, align 8
  %176 = icmp eq %struct.evsel* %174, %175
  %177 = zext i1 %176 to i32
  %178 = call i32 @TEST_ASSERT_VAL(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.10, i64 0, i64 0), i32 %177)
  %179 = load %struct.evsel*, %struct.evsel** %3, align 8
  %180 = call i32 @perf_evsel__group_idx(%struct.evsel* %179)
  %181 = icmp eq i32 %180, 1
  %182 = zext i1 %181 to i32
  %183 = call i32 @TEST_ASSERT_VAL(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.12, i64 0, i64 0), i32 %182)
  %184 = load %struct.evsel*, %struct.evsel** %3, align 8
  %185 = getelementptr inbounds %struct.evsel, %struct.evsel* %184, i32 0, i32 0
  %186 = load i32, i32* %185, align 8
  %187 = icmp ne i32 %186, 0
  %188 = xor i1 %187, true
  %189 = zext i1 %188 to i32
  %190 = call i32 @TEST_ASSERT_VAL(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.13, i64 0, i64 0), i32 %189)
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
