; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/tests/extr_parse-events.c_test__checkevent_exclude_idle_modifier.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/tests/extr_parse-events.c_test__checkevent_exclude_idle_modifier.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.evlist = type { i32 }
%struct.evsel = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32, i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [19 x i8] c"wrong exclude idle\00", align 1
@.str.1 = private unnamed_addr constant [20 x i8] c"wrong exclude guest\00", align 1
@.str.2 = private unnamed_addr constant [19 x i8] c"wrong exclude host\00", align 1
@.str.3 = private unnamed_addr constant [19 x i8] c"wrong exclude_user\00", align 1
@.str.4 = private unnamed_addr constant [21 x i8] c"wrong exclude_kernel\00", align 1
@.str.5 = private unnamed_addr constant [17 x i8] c"wrong exclude_hv\00", align 1
@.str.6 = private unnamed_addr constant [17 x i8] c"wrong precise_ip\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.evlist*)* @test__checkevent_exclude_idle_modifier to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @test__checkevent_exclude_idle_modifier(%struct.evlist* %0) #0 {
  %2 = alloca %struct.evlist*, align 8
  %3 = alloca %struct.evsel*, align 8
  store %struct.evlist* %0, %struct.evlist** %2, align 8
  %4 = load %struct.evlist*, %struct.evlist** %2, align 8
  %5 = call %struct.evsel* @evlist__first(%struct.evlist* %4)
  store %struct.evsel* %5, %struct.evsel** %3, align 8
  %6 = load %struct.evsel*, %struct.evsel** %3, align 8
  %7 = getelementptr inbounds %struct.evsel, %struct.evsel* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = call i32 @TEST_ASSERT_VAL(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 %10)
  %12 = load %struct.evsel*, %struct.evsel** %3, align 8
  %13 = getelementptr inbounds %struct.evsel, %struct.evsel* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 6
  %16 = load i32, i32* %15, align 4
  %17 = icmp ne i32 %16, 0
  %18 = xor i1 %17, true
  %19 = zext i1 %18 to i32
  %20 = call i32 @TEST_ASSERT_VAL(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i32 %19)
  %21 = load %struct.evsel*, %struct.evsel** %3, align 8
  %22 = getelementptr inbounds %struct.evsel, %struct.evsel* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 5
  %25 = load i32, i32* %24, align 4
  %26 = icmp ne i32 %25, 0
  %27 = xor i1 %26, true
  %28 = zext i1 %27 to i32
  %29 = call i32 @TEST_ASSERT_VAL(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0), i32 %28)
  %30 = load %struct.evsel*, %struct.evsel** %3, align 8
  %31 = getelementptr inbounds %struct.evsel, %struct.evsel* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 4
  %34 = load i32, i32* %33, align 4
  %35 = icmp ne i32 %34, 0
  %36 = xor i1 %35, true
  %37 = zext i1 %36 to i32
  %38 = call i32 @TEST_ASSERT_VAL(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.3, i64 0, i64 0), i32 %37)
  %39 = load %struct.evsel*, %struct.evsel** %3, align 8
  %40 = getelementptr inbounds %struct.evsel, %struct.evsel* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 3
  %43 = load i32, i32* %42, align 4
  %44 = icmp ne i32 %43, 0
  %45 = xor i1 %44, true
  %46 = zext i1 %45 to i32
  %47 = call i32 @TEST_ASSERT_VAL(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.4, i64 0, i64 0), i32 %46)
  %48 = load %struct.evsel*, %struct.evsel** %3, align 8
  %49 = getelementptr inbounds %struct.evsel, %struct.evsel* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 2
  %52 = load i32, i32* %51, align 4
  %53 = icmp ne i32 %52, 0
  %54 = xor i1 %53, true
  %55 = zext i1 %54 to i32
  %56 = call i32 @TEST_ASSERT_VAL(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.5, i64 0, i64 0), i32 %55)
  %57 = load %struct.evsel*, %struct.evsel** %3, align 8
  %58 = getelementptr inbounds %struct.evsel, %struct.evsel* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = icmp ne i32 %61, 0
  %63 = xor i1 %62, true
  %64 = zext i1 %63 to i32
  %65 = call i32 @TEST_ASSERT_VAL(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.6, i64 0, i64 0), i32 %64)
  %66 = load %struct.evlist*, %struct.evlist** %2, align 8
  %67 = call i32 @test__checkevent_symbolic_name(%struct.evlist* %66)
  ret i32 %67
}

declare dso_local %struct.evsel* @evlist__first(%struct.evlist*) #1

declare dso_local i32 @TEST_ASSERT_VAL(i8*, i32) #1

declare dso_local i32 @test__checkevent_symbolic_name(%struct.evlist*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
