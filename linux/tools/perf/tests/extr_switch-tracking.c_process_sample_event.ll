; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/tests/extr_switch-tracking.c_process_sample_event.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/tests/extr_switch-tracking.c_process_sample_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.evlist = type { i32 }
%union.perf_event = type { i32 }
%struct.switch_tracking = type { i32*, i32, i32, i32, i64*, %struct.evsel*, %struct.evsel* }
%struct.evsel = type { i32 }
%struct.perf_sample = type { i32, i32 }

@.str = private unnamed_addr constant [34 x i8] c"perf_evlist__parse_sample failed\0A\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"next_pid\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"prev_pid\00", align 1
@.str.3 = private unnamed_addr constant [47 x i8] c"sched_switch: cpu: %d prev_tid %d next_tid %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [29 x i8] c"Missing sched_switch events\0A\00", align 1
@.str.5 = private unnamed_addr constant [14 x i8] c"cycles event\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.evlist*, %union.perf_event*, %struct.switch_tracking*)* @process_sample_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @process_sample_event(%struct.evlist* %0, %union.perf_event* %1, %struct.switch_tracking* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.evlist*, align 8
  %6 = alloca %union.perf_event*, align 8
  %7 = alloca %struct.switch_tracking*, align 8
  %8 = alloca %struct.perf_sample, align 4
  %9 = alloca %struct.evsel*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.evlist* %0, %struct.evlist** %5, align 8
  store %union.perf_event* %1, %union.perf_event** %6, align 8
  store %struct.switch_tracking* %2, %struct.switch_tracking** %7, align 8
  %14 = load %struct.evlist*, %struct.evlist** %5, align 8
  %15 = load %union.perf_event*, %union.perf_event** %6, align 8
  %16 = call i64 @perf_evlist__parse_sample(%struct.evlist* %14, %union.perf_event* %15, %struct.perf_sample* %8)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %3
  %19 = call i32 @pr_debug(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %4, align 4
  br label %123

20:                                               ; preds = %3
  %21 = load %struct.evlist*, %struct.evlist** %5, align 8
  %22 = getelementptr inbounds %struct.perf_sample, %struct.perf_sample* %8, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = call %struct.evsel* @perf_evlist__id2evsel(%struct.evlist* %21, i32 %23)
  store %struct.evsel* %24, %struct.evsel** %9, align 8
  %25 = load %struct.evsel*, %struct.evsel** %9, align 8
  %26 = load %struct.switch_tracking*, %struct.switch_tracking** %7, align 8
  %27 = getelementptr inbounds %struct.switch_tracking, %struct.switch_tracking* %26, i32 0, i32 6
  %28 = load %struct.evsel*, %struct.evsel** %27, align 8
  %29 = icmp eq %struct.evsel* %25, %28
  br i1 %29, label %30, label %77

30:                                               ; preds = %20
  %31 = load %struct.evsel*, %struct.evsel** %9, align 8
  %32 = call i32 @perf_evsel__intval(%struct.evsel* %31, %struct.perf_sample* %8, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0))
  store i32 %32, i32* %10, align 4
  %33 = load %struct.evsel*, %struct.evsel** %9, align 8
  %34 = call i32 @perf_evsel__intval(%struct.evsel* %33, %struct.perf_sample* %8, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0))
  store i32 %34, i32* %11, align 4
  %35 = getelementptr inbounds %struct.perf_sample, %struct.perf_sample* %8, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  store i32 %36, i32* %12, align 4
  %37 = load i32, i32* %12, align 4
  %38 = load i32, i32* %11, align 4
  %39 = load i32, i32* %10, align 4
  %40 = call i32 (i8*, ...) @pr_debug3(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.3, i64 0, i64 0), i32 %37, i32 %38, i32 %39)
  %41 = load %struct.switch_tracking*, %struct.switch_tracking** %7, align 8
  %42 = load i32, i32* %12, align 4
  %43 = call i32 @check_cpu(%struct.switch_tracking* %41, i32 %42)
  store i32 %43, i32* %13, align 4
  %44 = load i32, i32* %13, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %48

46:                                               ; preds = %30
  %47 = load i32, i32* %13, align 4
  store i32 %47, i32* %4, align 4
  br label %123

48:                                               ; preds = %30
  %49 = load %struct.switch_tracking*, %struct.switch_tracking** %7, align 8
  %50 = getelementptr inbounds %struct.switch_tracking, %struct.switch_tracking* %49, i32 0, i32 0
  %51 = load i32*, i32** %50, align 8
  %52 = load i32, i32* %12, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds i32, i32* %51, i64 %53
  %55 = load i32, i32* %54, align 4
  %56 = icmp ne i32 %55, -1
  br i1 %56, label %57, label %69

57:                                               ; preds = %48
  %58 = load %struct.switch_tracking*, %struct.switch_tracking** %7, align 8
  %59 = getelementptr inbounds %struct.switch_tracking, %struct.switch_tracking* %58, i32 0, i32 0
  %60 = load i32*, i32** %59, align 8
  %61 = load i32, i32* %12, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds i32, i32* %60, i64 %62
  %64 = load i32, i32* %63, align 4
  %65 = load i32, i32* %11, align 4
  %66 = icmp ne i32 %64, %65
  br i1 %66, label %67, label %69

67:                                               ; preds = %57
  %68 = call i32 @pr_debug(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.4, i64 0, i64 0))
  store i32 -1, i32* %4, align 4
  br label %123

69:                                               ; preds = %57, %48
  %70 = load i32, i32* %10, align 4
  %71 = load %struct.switch_tracking*, %struct.switch_tracking** %7, align 8
  %72 = getelementptr inbounds %struct.switch_tracking, %struct.switch_tracking* %71, i32 0, i32 0
  %73 = load i32*, i32** %72, align 8
  %74 = load i32, i32* %12, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds i32, i32* %73, i64 %75
  store i32 %70, i32* %76, align 4
  br label %77

77:                                               ; preds = %69, %20
  %78 = load %struct.evsel*, %struct.evsel** %9, align 8
  %79 = load %struct.switch_tracking*, %struct.switch_tracking** %7, align 8
  %80 = getelementptr inbounds %struct.switch_tracking, %struct.switch_tracking* %79, i32 0, i32 5
  %81 = load %struct.evsel*, %struct.evsel** %80, align 8
  %82 = icmp eq %struct.evsel* %78, %81
  br i1 %82, label %83, label %122

83:                                               ; preds = %77
  %84 = call i32 (i8*, ...) @pr_debug3(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.5, i64 0, i64 0))
  %85 = load %struct.switch_tracking*, %struct.switch_tracking** %7, align 8
  %86 = getelementptr inbounds %struct.switch_tracking, %struct.switch_tracking* %85, i32 0, i32 4
  %87 = load i64*, i64** %86, align 8
  %88 = getelementptr inbounds i64, i64* %87, i64 0
  %89 = load i64, i64* %88, align 8
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %94, label %91

91:                                               ; preds = %83
  %92 = load %struct.switch_tracking*, %struct.switch_tracking** %7, align 8
  %93 = getelementptr inbounds %struct.switch_tracking, %struct.switch_tracking* %92, i32 0, i32 1
  store i32 1, i32* %93, align 8
  br label %94

94:                                               ; preds = %91, %83
  %95 = load %struct.switch_tracking*, %struct.switch_tracking** %7, align 8
  %96 = getelementptr inbounds %struct.switch_tracking, %struct.switch_tracking* %95, i32 0, i32 4
  %97 = load i64*, i64** %96, align 8
  %98 = getelementptr inbounds i64, i64* %97, i64 1
  %99 = load i64, i64* %98, align 8
  %100 = icmp ne i64 %99, 0
  br i1 %100, label %101, label %111

101:                                              ; preds = %94
  %102 = load %struct.switch_tracking*, %struct.switch_tracking** %7, align 8
  %103 = getelementptr inbounds %struct.switch_tracking, %struct.switch_tracking* %102, i32 0, i32 4
  %104 = load i64*, i64** %103, align 8
  %105 = getelementptr inbounds i64, i64* %104, i64 2
  %106 = load i64, i64* %105, align 8
  %107 = icmp ne i64 %106, 0
  br i1 %107, label %111, label %108

108:                                              ; preds = %101
  %109 = load %struct.switch_tracking*, %struct.switch_tracking** %7, align 8
  %110 = getelementptr inbounds %struct.switch_tracking, %struct.switch_tracking* %109, i32 0, i32 2
  store i32 1, i32* %110, align 4
  br label %111

111:                                              ; preds = %108, %101, %94
  %112 = load %struct.switch_tracking*, %struct.switch_tracking** %7, align 8
  %113 = getelementptr inbounds %struct.switch_tracking, %struct.switch_tracking* %112, i32 0, i32 4
  %114 = load i64*, i64** %113, align 8
  %115 = getelementptr inbounds i64, i64* %114, i64 3
  %116 = load i64, i64* %115, align 8
  %117 = icmp ne i64 %116, 0
  br i1 %117, label %118, label %121

118:                                              ; preds = %111
  %119 = load %struct.switch_tracking*, %struct.switch_tracking** %7, align 8
  %120 = getelementptr inbounds %struct.switch_tracking, %struct.switch_tracking* %119, i32 0, i32 3
  store i32 1, i32* %120, align 8
  br label %121

121:                                              ; preds = %118, %111
  br label %122

122:                                              ; preds = %121, %77
  store i32 0, i32* %4, align 4
  br label %123

123:                                              ; preds = %122, %67, %46, %18
  %124 = load i32, i32* %4, align 4
  ret i32 %124
}

declare dso_local i64 @perf_evlist__parse_sample(%struct.evlist*, %union.perf_event*, %struct.perf_sample*) #1

declare dso_local i32 @pr_debug(i8*) #1

declare dso_local %struct.evsel* @perf_evlist__id2evsel(%struct.evlist*, i32) #1

declare dso_local i32 @perf_evsel__intval(%struct.evsel*, %struct.perf_sample*, i8*) #1

declare dso_local i32 @pr_debug3(i8*, ...) #1

declare dso_local i32 @check_cpu(%struct.switch_tracking*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
