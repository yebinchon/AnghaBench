; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/extr_builtin-sched.c_save_task_callchain.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/extr_builtin-sched.c_save_task_callchain.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.callchain_cursor = type { i32 }
%struct.perf_sched = type { i64, i32 }
%struct.perf_sample = type { i32*, i32 }
%struct.evsel = type { i32 }
%struct.machine = type { i32 }
%struct.thread = type { i32 }
%struct.callchain_cursor_node = type { %struct.symbol* }
%struct.symbol = type { i32, i32 }

@callchain_cursor = common dso_local global %struct.callchain_cursor zeroinitializer, align 4
@.str = private unnamed_addr constant [34 x i8] c"Failed to get thread for pid %d.\0A\00", align 1
@verbose = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [39 x i8] c"Failed to resolve callchain. Skipping\0A\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"schedule\00", align 1
@.str.3 = private unnamed_addr constant [11 x i8] c"__schedule\00", align 1
@.str.4 = private unnamed_addr constant [17 x i8] c"preempt_schedule\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.perf_sched*, %struct.perf_sample*, %struct.evsel*, %struct.machine*)* @save_task_callchain to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @save_task_callchain(%struct.perf_sched* %0, %struct.perf_sample* %1, %struct.evsel* %2, %struct.machine* %3) #0 {
  %5 = alloca %struct.perf_sched*, align 8
  %6 = alloca %struct.perf_sample*, align 8
  %7 = alloca %struct.evsel*, align 8
  %8 = alloca %struct.machine*, align 8
  %9 = alloca %struct.callchain_cursor*, align 8
  %10 = alloca %struct.thread*, align 8
  %11 = alloca %struct.callchain_cursor_node*, align 8
  %12 = alloca %struct.symbol*, align 8
  store %struct.perf_sched* %0, %struct.perf_sched** %5, align 8
  store %struct.perf_sample* %1, %struct.perf_sample** %6, align 8
  store %struct.evsel* %2, %struct.evsel** %7, align 8
  store %struct.machine* %3, %struct.machine** %8, align 8
  store %struct.callchain_cursor* @callchain_cursor, %struct.callchain_cursor** %9, align 8
  %13 = load %struct.machine*, %struct.machine** %8, align 8
  %14 = load %struct.perf_sample*, %struct.perf_sample** %6, align 8
  %15 = getelementptr inbounds %struct.perf_sample, %struct.perf_sample* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 8
  %17 = load %struct.perf_sample*, %struct.perf_sample** %6, align 8
  %18 = getelementptr inbounds %struct.perf_sample, %struct.perf_sample* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 8
  %20 = call %struct.thread* @machine__findnew_thread(%struct.machine* %13, i32 %16, i32 %19)
  store %struct.thread* %20, %struct.thread** %10, align 8
  %21 = load %struct.thread*, %struct.thread** %10, align 8
  %22 = icmp eq %struct.thread* %21, null
  br i1 %22, label %23, label %28

23:                                               ; preds = %4
  %24 = load %struct.perf_sample*, %struct.perf_sample** %6, align 8
  %25 = getelementptr inbounds %struct.perf_sample, %struct.perf_sample* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 8
  %27 = call i32 @pr_debug(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i32 %26)
  br label %96

28:                                               ; preds = %4
  %29 = load %struct.perf_sched*, %struct.perf_sched** %5, align 8
  %30 = getelementptr inbounds %struct.perf_sched, %struct.perf_sched* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 8
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %38

33:                                               ; preds = %28
  %34 = load %struct.perf_sample*, %struct.perf_sample** %6, align 8
  %35 = getelementptr inbounds %struct.perf_sample, %struct.perf_sample* %34, i32 0, i32 0
  %36 = load i32*, i32** %35, align 8
  %37 = icmp eq i32* %36, null
  br i1 %37, label %38, label %39

38:                                               ; preds = %33, %28
  br label %96

39:                                               ; preds = %33
  %40 = load %struct.thread*, %struct.thread** %10, align 8
  %41 = load %struct.callchain_cursor*, %struct.callchain_cursor** %9, align 8
  %42 = load %struct.evsel*, %struct.evsel** %7, align 8
  %43 = load %struct.perf_sample*, %struct.perf_sample** %6, align 8
  %44 = load %struct.perf_sched*, %struct.perf_sched** %5, align 8
  %45 = getelementptr inbounds %struct.perf_sched, %struct.perf_sched* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = add nsw i64 %46, 2
  %48 = call i64 @thread__resolve_callchain(%struct.thread* %40, %struct.callchain_cursor* %41, %struct.evsel* %42, %struct.perf_sample* %43, i32* null, i32* null, i64 %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %56

50:                                               ; preds = %39
  %51 = load i64, i64* @verbose, align 8
  %52 = icmp sgt i64 %51, 0
  br i1 %52, label %53, label %55

53:                                               ; preds = %50
  %54 = call i32 @pr_err(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0))
  br label %55

55:                                               ; preds = %53, %50
  br label %96

56:                                               ; preds = %39
  %57 = load %struct.callchain_cursor*, %struct.callchain_cursor** %9, align 8
  %58 = call i32 @callchain_cursor_commit(%struct.callchain_cursor* %57)
  br label %59

59:                                               ; preds = %56, %93
  %60 = load %struct.callchain_cursor*, %struct.callchain_cursor** %9, align 8
  %61 = call %struct.callchain_cursor_node* @callchain_cursor_current(%struct.callchain_cursor* %60)
  store %struct.callchain_cursor_node* %61, %struct.callchain_cursor_node** %11, align 8
  %62 = load %struct.callchain_cursor_node*, %struct.callchain_cursor_node** %11, align 8
  %63 = icmp eq %struct.callchain_cursor_node* %62, null
  br i1 %63, label %64, label %65

64:                                               ; preds = %59
  br label %96

65:                                               ; preds = %59
  %66 = load %struct.callchain_cursor_node*, %struct.callchain_cursor_node** %11, align 8
  %67 = getelementptr inbounds %struct.callchain_cursor_node, %struct.callchain_cursor_node* %66, i32 0, i32 0
  %68 = load %struct.symbol*, %struct.symbol** %67, align 8
  store %struct.symbol* %68, %struct.symbol** %12, align 8
  %69 = load %struct.symbol*, %struct.symbol** %12, align 8
  %70 = icmp ne %struct.symbol* %69, null
  br i1 %70, label %71, label %93

71:                                               ; preds = %65
  %72 = load %struct.symbol*, %struct.symbol** %12, align 8
  %73 = getelementptr inbounds %struct.symbol, %struct.symbol* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 4
  %75 = call i32 @strcmp(i32 %74, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0))
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %89

77:                                               ; preds = %71
  %78 = load %struct.symbol*, %struct.symbol** %12, align 8
  %79 = getelementptr inbounds %struct.symbol, %struct.symbol* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 4
  %81 = call i32 @strcmp(i32 %80, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0))
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %89

83:                                               ; preds = %77
  %84 = load %struct.symbol*, %struct.symbol** %12, align 8
  %85 = getelementptr inbounds %struct.symbol, %struct.symbol* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 4
  %87 = call i32 @strcmp(i32 %86, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i64 0, i64 0))
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %92, label %89

89:                                               ; preds = %83, %77, %71
  %90 = load %struct.symbol*, %struct.symbol** %12, align 8
  %91 = getelementptr inbounds %struct.symbol, %struct.symbol* %90, i32 0, i32 0
  store i32 1, i32* %91, align 4
  br label %92

92:                                               ; preds = %89, %83
  br label %93

93:                                               ; preds = %92, %65
  %94 = load %struct.callchain_cursor*, %struct.callchain_cursor** %9, align 8
  %95 = call i32 @callchain_cursor_advance(%struct.callchain_cursor* %94)
  br label %59

96:                                               ; preds = %23, %38, %55, %64
  ret void
}

declare dso_local %struct.thread* @machine__findnew_thread(%struct.machine*, i32, i32) #1

declare dso_local i32 @pr_debug(i8*, i32) #1

declare dso_local i64 @thread__resolve_callchain(%struct.thread*, %struct.callchain_cursor*, %struct.evsel*, %struct.perf_sample*, i32*, i32*, i64) #1

declare dso_local i32 @pr_err(i8*) #1

declare dso_local i32 @callchain_cursor_commit(%struct.callchain_cursor*) #1

declare dso_local %struct.callchain_cursor_node* @callchain_cursor_current(%struct.callchain_cursor*) #1

declare dso_local i32 @strcmp(i32, i8*) #1

declare dso_local i32 @callchain_cursor_advance(%struct.callchain_cursor*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
