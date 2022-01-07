; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/extr_builtin-lock.c___cmd_report.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/extr_builtin-lock.c___cmd_report.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i32 }
%struct.perf_tool = type { i32, i32, i32, i32 }
%struct.perf_data = type { i32, i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@perf_event__process_namespaces = common dso_local global i32 0, align 4
@perf_event__process_comm = common dso_local global i32 0, align 4
@process_sample_event = common dso_local global i32 0, align 4
@force = common dso_local global i32 0, align 4
@PERF_DATA_MODE_READ = common dso_local global i32 0, align 4
@input_name = common dso_local global i32 0, align 4
@session = common dso_local global %struct.TYPE_11__* null, align 8
@.str = private unnamed_addr constant [34 x i8] c"Initializing perf session failed\0A\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"lock record\00", align 1
@lock_tracepoints = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [54 x i8] c"Initializing perf session tracepoint handlers failed\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @__cmd_report to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__cmd_report(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.perf_tool, align 4
  %6 = alloca %struct.perf_data, align 4
  store i32 %0, i32* %3, align 4
  %7 = load i32, i32* @EINVAL, align 4
  %8 = sub nsw i32 0, %7
  store i32 %8, i32* %4, align 4
  %9 = getelementptr inbounds %struct.perf_tool, %struct.perf_tool* %5, i32 0, i32 0
  store i32 1, i32* %9, align 4
  %10 = getelementptr inbounds %struct.perf_tool, %struct.perf_tool* %5, i32 0, i32 1
  %11 = load i32, i32* @perf_event__process_namespaces, align 4
  store i32 %11, i32* %10, align 4
  %12 = getelementptr inbounds %struct.perf_tool, %struct.perf_tool* %5, i32 0, i32 2
  %13 = load i32, i32* @perf_event__process_comm, align 4
  store i32 %13, i32* %12, align 4
  %14 = getelementptr inbounds %struct.perf_tool, %struct.perf_tool* %5, i32 0, i32 3
  %15 = load i32, i32* @process_sample_event, align 4
  store i32 %15, i32* %14, align 4
  %16 = getelementptr inbounds %struct.perf_data, %struct.perf_data* %6, i32 0, i32 0
  %17 = load i32, i32* @force, align 4
  store i32 %17, i32* %16, align 4
  %18 = getelementptr inbounds %struct.perf_data, %struct.perf_data* %6, i32 0, i32 1
  %19 = load i32, i32* @PERF_DATA_MODE_READ, align 4
  store i32 %19, i32* %18, align 4
  %20 = getelementptr inbounds %struct.perf_data, %struct.perf_data* %6, i32 0, i32 2
  %21 = load i32, i32* @input_name, align 4
  store i32 %21, i32* %20, align 4
  %22 = call %struct.TYPE_11__* @perf_session__new(%struct.perf_data* %6, i32 0, %struct.perf_tool* %5)
  store %struct.TYPE_11__* %22, %struct.TYPE_11__** @session, align 8
  %23 = load %struct.TYPE_11__*, %struct.TYPE_11__** @session, align 8
  %24 = call i64 @IS_ERR(%struct.TYPE_11__* %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %30

26:                                               ; preds = %1
  %27 = call i32 @pr_err(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  %28 = load %struct.TYPE_11__*, %struct.TYPE_11__** @session, align 8
  %29 = call i32 @PTR_ERR(%struct.TYPE_11__* %28)
  store i32 %29, i32* %2, align 4
  br label %70

30:                                               ; preds = %1
  %31 = load %struct.TYPE_11__*, %struct.TYPE_11__** @session, align 8
  %32 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %32, i32 0, i32 0
  %34 = call i32 @symbol__init(i32* %33)
  %35 = load %struct.TYPE_11__*, %struct.TYPE_11__** @session, align 8
  %36 = call i32 @perf_session__has_traces(%struct.TYPE_11__* %35, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0))
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %39, label %38

38:                                               ; preds = %30
  br label %66

39:                                               ; preds = %30
  %40 = load %struct.TYPE_11__*, %struct.TYPE_11__** @session, align 8
  %41 = load i32, i32* @lock_tracepoints, align 4
  %42 = call i64 @perf_session__set_tracepoints_handlers(%struct.TYPE_11__* %40, i32 %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %46

44:                                               ; preds = %39
  %45 = call i32 @pr_err(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.2, i64 0, i64 0))
  br label %66

46:                                               ; preds = %39
  %47 = call i64 (...) @select_key()
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %50

49:                                               ; preds = %46
  br label %66

50:                                               ; preds = %46
  %51 = load %struct.TYPE_11__*, %struct.TYPE_11__** @session, align 8
  %52 = call i32 @perf_session__process_events(%struct.TYPE_11__* %51)
  store i32 %52, i32* %4, align 4
  %53 = load i32, i32* %4, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %56

55:                                               ; preds = %50
  br label %66

56:                                               ; preds = %50
  %57 = call i32 (...) @setup_pager()
  %58 = load i32, i32* %3, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %62

60:                                               ; preds = %56
  %61 = call i32 (...) @dump_info()
  store i32 %61, i32* %4, align 4
  br label %65

62:                                               ; preds = %56
  %63 = call i32 (...) @sort_result()
  %64 = call i32 (...) @print_result()
  br label %65

65:                                               ; preds = %62, %60
  br label %66

66:                                               ; preds = %65, %55, %49, %44, %38
  %67 = load %struct.TYPE_11__*, %struct.TYPE_11__** @session, align 8
  %68 = call i32 @perf_session__delete(%struct.TYPE_11__* %67)
  %69 = load i32, i32* %4, align 4
  store i32 %69, i32* %2, align 4
  br label %70

70:                                               ; preds = %66, %26
  %71 = load i32, i32* %2, align 4
  ret i32 %71
}

declare dso_local %struct.TYPE_11__* @perf_session__new(%struct.perf_data*, i32, %struct.perf_tool*) #1

declare dso_local i64 @IS_ERR(%struct.TYPE_11__*) #1

declare dso_local i32 @pr_err(i8*) #1

declare dso_local i32 @PTR_ERR(%struct.TYPE_11__*) #1

declare dso_local i32 @symbol__init(i32*) #1

declare dso_local i32 @perf_session__has_traces(%struct.TYPE_11__*, i8*) #1

declare dso_local i64 @perf_session__set_tracepoints_handlers(%struct.TYPE_11__*, i32) #1

declare dso_local i64 @select_key(...) #1

declare dso_local i32 @perf_session__process_events(%struct.TYPE_11__*) #1

declare dso_local i32 @setup_pager(...) #1

declare dso_local i32 @dump_info(...) #1

declare dso_local i32 @sort_result(...) #1

declare dso_local i32 @print_result(...) #1

declare dso_local i32 @perf_session__delete(%struct.TYPE_11__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
