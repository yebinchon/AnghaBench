; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/extr_builtin-sched.c_perf_sched__read_events.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/extr_builtin-sched.c_perf_sched__read_events.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.perf_sched = type { i32, i32, i32, i32, i32 }
%struct.evsel_str_handler = type { i8*, i32 }
%struct.perf_session = type { %struct.TYPE_6__*, %struct.TYPE_4__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32*, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.perf_data = type { i32, i32, i32 }

@.str = private unnamed_addr constant [19 x i8] c"sched:sched_switch\00", align 1
@process_sched_switch_event = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [25 x i8] c"sched:sched_stat_runtime\00", align 1
@process_sched_runtime_event = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [19 x i8] c"sched:sched_wakeup\00", align 1
@process_sched_wakeup_event = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [23 x i8] c"sched:sched_wakeup_new\00", align 1
@.str.4 = private unnamed_addr constant [25 x i8] c"sched:sched_migrate_task\00", align 1
@process_sched_migrate_task_event = common dso_local global i32 0, align 4
@PERF_DATA_MODE_READ = common dso_local global i32 0, align 4
@input_name = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [28 x i8] c"Error creating perf session\00", align 1
@.str.6 = private unnamed_addr constant [10 x i8] c"record -R\00", align 1
@.str.7 = private unnamed_addr constant [35 x i8] c"Failed to process events, error %d\00", align 1
@PERF_RECORD_LOST = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.perf_sched*)* @perf_sched__read_events to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @perf_sched__read_events(%struct.perf_sched* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.perf_sched*, align 8
  %4 = alloca [5 x %struct.evsel_str_handler], align 16
  %5 = alloca %struct.perf_session*, align 8
  %6 = alloca %struct.perf_data, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.perf_sched* %0, %struct.perf_sched** %3, align 8
  %9 = getelementptr inbounds [5 x %struct.evsel_str_handler], [5 x %struct.evsel_str_handler]* %4, i64 0, i64 0
  %10 = getelementptr inbounds %struct.evsel_str_handler, %struct.evsel_str_handler* %9, i32 0, i32 0
  store i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i8** %10, align 16
  %11 = getelementptr inbounds %struct.evsel_str_handler, %struct.evsel_str_handler* %9, i32 0, i32 1
  %12 = load i32, i32* @process_sched_switch_event, align 4
  store i32 %12, i32* %11, align 8
  %13 = getelementptr inbounds %struct.evsel_str_handler, %struct.evsel_str_handler* %9, i64 1
  %14 = getelementptr inbounds %struct.evsel_str_handler, %struct.evsel_str_handler* %13, i32 0, i32 0
  store i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i8** %14, align 16
  %15 = getelementptr inbounds %struct.evsel_str_handler, %struct.evsel_str_handler* %13, i32 0, i32 1
  %16 = load i32, i32* @process_sched_runtime_event, align 4
  store i32 %16, i32* %15, align 8
  %17 = getelementptr inbounds %struct.evsel_str_handler, %struct.evsel_str_handler* %13, i64 1
  %18 = getelementptr inbounds %struct.evsel_str_handler, %struct.evsel_str_handler* %17, i32 0, i32 0
  store i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0), i8** %18, align 16
  %19 = getelementptr inbounds %struct.evsel_str_handler, %struct.evsel_str_handler* %17, i32 0, i32 1
  %20 = load i32, i32* @process_sched_wakeup_event, align 4
  store i32 %20, i32* %19, align 8
  %21 = getelementptr inbounds %struct.evsel_str_handler, %struct.evsel_str_handler* %17, i64 1
  %22 = getelementptr inbounds %struct.evsel_str_handler, %struct.evsel_str_handler* %21, i32 0, i32 0
  store i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i64 0, i64 0), i8** %22, align 16
  %23 = getelementptr inbounds %struct.evsel_str_handler, %struct.evsel_str_handler* %21, i32 0, i32 1
  %24 = load i32, i32* @process_sched_wakeup_event, align 4
  store i32 %24, i32* %23, align 8
  %25 = getelementptr inbounds %struct.evsel_str_handler, %struct.evsel_str_handler* %21, i64 1
  %26 = getelementptr inbounds %struct.evsel_str_handler, %struct.evsel_str_handler* %25, i32 0, i32 0
  store i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.4, i64 0, i64 0), i8** %26, align 16
  %27 = getelementptr inbounds %struct.evsel_str_handler, %struct.evsel_str_handler* %25, i32 0, i32 1
  %28 = load i32, i32* @process_sched_migrate_task_event, align 4
  store i32 %28, i32* %27, align 8
  %29 = getelementptr inbounds %struct.perf_data, %struct.perf_data* %6, i32 0, i32 0
  %30 = load %struct.perf_sched*, %struct.perf_sched** %3, align 8
  %31 = getelementptr inbounds %struct.perf_sched, %struct.perf_sched* %30, i32 0, i32 4
  %32 = load i32, i32* %31, align 4
  store i32 %32, i32* %29, align 4
  %33 = getelementptr inbounds %struct.perf_data, %struct.perf_data* %6, i32 0, i32 1
  %34 = load i32, i32* @PERF_DATA_MODE_READ, align 4
  store i32 %34, i32* %33, align 4
  %35 = getelementptr inbounds %struct.perf_data, %struct.perf_data* %6, i32 0, i32 2
  %36 = load i32, i32* @input_name, align 4
  store i32 %36, i32* %35, align 4
  store i32 -1, i32* %7, align 4
  %37 = load %struct.perf_sched*, %struct.perf_sched** %3, align 8
  %38 = getelementptr inbounds %struct.perf_sched, %struct.perf_sched* %37, i32 0, i32 3
  %39 = call %struct.perf_session* @perf_session__new(%struct.perf_data* %6, i32 0, i32* %38)
  store %struct.perf_session* %39, %struct.perf_session** %5, align 8
  %40 = load %struct.perf_session*, %struct.perf_session** %5, align 8
  %41 = call i64 @IS_ERR(%struct.perf_session* %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %47

43:                                               ; preds = %1
  %44 = call i32 @pr_debug(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.5, i64 0, i64 0))
  %45 = load %struct.perf_session*, %struct.perf_session** %5, align 8
  %46 = call i32 @PTR_ERR(%struct.perf_session* %45)
  store i32 %46, i32* %2, align 4
  br label %104

47:                                               ; preds = %1
  %48 = load %struct.perf_session*, %struct.perf_session** %5, align 8
  %49 = getelementptr inbounds %struct.perf_session, %struct.perf_session* %48, i32 0, i32 1
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 0
  %51 = call i32 @symbol__init(i32* %50)
  %52 = load %struct.perf_session*, %struct.perf_session** %5, align 8
  %53 = getelementptr inbounds [5 x %struct.evsel_str_handler], [5 x %struct.evsel_str_handler]* %4, i64 0, i64 0
  %54 = call i64 @perf_session__set_tracepoints_handlers(%struct.perf_session* %52, %struct.evsel_str_handler* %53)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %57

56:                                               ; preds = %47
  br label %100

57:                                               ; preds = %47
  %58 = load %struct.perf_session*, %struct.perf_session** %5, align 8
  %59 = call i64 @perf_session__has_traces(%struct.perf_session* %58, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.6, i64 0, i64 0))
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %99

61:                                               ; preds = %57
  %62 = load %struct.perf_session*, %struct.perf_session** %5, align 8
  %63 = call i32 @perf_session__process_events(%struct.perf_session* %62)
  store i32 %63, i32* %8, align 4
  %64 = load i32, i32* %8, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %69

66:                                               ; preds = %61
  %67 = load i32, i32* %8, align 4
  %68 = call i32 @pr_err(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.7, i64 0, i64 0), i32 %67)
  br label %100

69:                                               ; preds = %61
  %70 = load %struct.perf_session*, %struct.perf_session** %5, align 8
  %71 = getelementptr inbounds %struct.perf_session, %struct.perf_session* %70, i32 0, i32 0
  %72 = load %struct.TYPE_6__*, %struct.TYPE_6__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %73, i32 0, i32 0
  %75 = load i32*, i32** %74, align 8
  %76 = getelementptr inbounds i32, i32* %75, i64 0
  %77 = load i32, i32* %76, align 4
  %78 = load %struct.perf_sched*, %struct.perf_sched** %3, align 8
  %79 = getelementptr inbounds %struct.perf_sched, %struct.perf_sched* %78, i32 0, i32 2
  store i32 %77, i32* %79, align 4
  %80 = load %struct.perf_session*, %struct.perf_session** %5, align 8
  %81 = getelementptr inbounds %struct.perf_session, %struct.perf_session* %80, i32 0, i32 0
  %82 = load %struct.TYPE_6__*, %struct.TYPE_6__** %81, align 8
  %83 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %82, i32 0, i32 0
  %84 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 8
  %86 = load %struct.perf_sched*, %struct.perf_sched** %3, align 8
  %87 = getelementptr inbounds %struct.perf_sched, %struct.perf_sched* %86, i32 0, i32 1
  store i32 %85, i32* %87, align 4
  %88 = load %struct.perf_session*, %struct.perf_session** %5, align 8
  %89 = getelementptr inbounds %struct.perf_session, %struct.perf_session* %88, i32 0, i32 0
  %90 = load %struct.TYPE_6__*, %struct.TYPE_6__** %89, align 8
  %91 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %90, i32 0, i32 0
  %92 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %91, i32 0, i32 0
  %93 = load i32*, i32** %92, align 8
  %94 = load i64, i64* @PERF_RECORD_LOST, align 8
  %95 = getelementptr inbounds i32, i32* %93, i64 %94
  %96 = load i32, i32* %95, align 4
  %97 = load %struct.perf_sched*, %struct.perf_sched** %3, align 8
  %98 = getelementptr inbounds %struct.perf_sched, %struct.perf_sched* %97, i32 0, i32 0
  store i32 %96, i32* %98, align 4
  br label %99

99:                                               ; preds = %69, %57
  store i32 0, i32* %7, align 4
  br label %100

100:                                              ; preds = %99, %66, %56
  %101 = load %struct.perf_session*, %struct.perf_session** %5, align 8
  %102 = call i32 @perf_session__delete(%struct.perf_session* %101)
  %103 = load i32, i32* %7, align 4
  store i32 %103, i32* %2, align 4
  br label %104

104:                                              ; preds = %100, %43
  %105 = load i32, i32* %2, align 4
  ret i32 %105
}

declare dso_local %struct.perf_session* @perf_session__new(%struct.perf_data*, i32, i32*) #1

declare dso_local i64 @IS_ERR(%struct.perf_session*) #1

declare dso_local i32 @pr_debug(i8*) #1

declare dso_local i32 @PTR_ERR(%struct.perf_session*) #1

declare dso_local i32 @symbol__init(i32*) #1

declare dso_local i64 @perf_session__set_tracepoints_handlers(%struct.perf_session*, %struct.evsel_str_handler*) #1

declare dso_local i64 @perf_session__has_traces(%struct.perf_session*, i8*) #1

declare dso_local i32 @perf_session__process_events(%struct.perf_session*) #1

declare dso_local i32 @pr_err(i8*, i32) #1

declare dso_local i32 @perf_session__delete(%struct.perf_session*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
