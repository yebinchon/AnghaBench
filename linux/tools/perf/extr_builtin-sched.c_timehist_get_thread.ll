; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/extr_builtin-sched.c_timehist_get_thread.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/extr_builtin-sched.c_timehist_get_thread.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thread = type { i32 }
%struct.perf_sched = type { i64 }
%struct.perf_sample = type { i32, i64, i32 }
%struct.machine = type { i32 }
%struct.evsel = type { i32 }
%struct.idle_thread_runtime = type { %struct.thread* }

@.str = private unnamed_addr constant [39 x i8] c"Failed to get idle thread for cpu %d.\0A\00", align 1
@.str.1 = private unnamed_addr constant [51 x i8] c"Failed to get thread for tid %d. skipping sample.\0A\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"next_pid\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.thread* (%struct.perf_sched*, %struct.perf_sample*, %struct.machine*, %struct.evsel*)* @timehist_get_thread to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.thread* @timehist_get_thread(%struct.perf_sched* %0, %struct.perf_sample* %1, %struct.machine* %2, %struct.evsel* %3) #0 {
  %5 = alloca %struct.thread*, align 8
  %6 = alloca %struct.perf_sched*, align 8
  %7 = alloca %struct.perf_sample*, align 8
  %8 = alloca %struct.machine*, align 8
  %9 = alloca %struct.evsel*, align 8
  %10 = alloca %struct.thread*, align 8
  %11 = alloca %struct.thread*, align 8
  %12 = alloca %struct.idle_thread_runtime*, align 8
  store %struct.perf_sched* %0, %struct.perf_sched** %6, align 8
  store %struct.perf_sample* %1, %struct.perf_sample** %7, align 8
  store %struct.machine* %2, %struct.machine** %8, align 8
  store %struct.evsel* %3, %struct.evsel** %9, align 8
  %13 = load %struct.perf_sample*, %struct.perf_sample** %7, align 8
  %14 = load %struct.evsel*, %struct.evsel** %9, align 8
  %15 = call i64 @is_idle_sample(%struct.perf_sample* %13, %struct.evsel* %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %30

17:                                               ; preds = %4
  %18 = load %struct.perf_sample*, %struct.perf_sample** %7, align 8
  %19 = getelementptr inbounds %struct.perf_sample, %struct.perf_sample* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = call %struct.thread* @get_idle_thread(i32 %20)
  store %struct.thread* %21, %struct.thread** %10, align 8
  %22 = load %struct.thread*, %struct.thread** %10, align 8
  %23 = icmp eq %struct.thread* %22, null
  br i1 %23, label %24, label %29

24:                                               ; preds = %17
  %25 = load %struct.perf_sample*, %struct.perf_sample** %7, align 8
  %26 = getelementptr inbounds %struct.perf_sample, %struct.perf_sample* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = call i32 @pr_err(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 %27)
  br label %29

29:                                               ; preds = %24, %17
  br label %99

30:                                               ; preds = %4
  %31 = load %struct.machine*, %struct.machine** %8, align 8
  %32 = load %struct.perf_sample*, %struct.perf_sample** %7, align 8
  %33 = getelementptr inbounds %struct.perf_sample, %struct.perf_sample* %32, i32 0, i32 2
  %34 = load i32, i32* %33, align 8
  %35 = load %struct.perf_sample*, %struct.perf_sample** %7, align 8
  %36 = getelementptr inbounds %struct.perf_sample, %struct.perf_sample* %35, i32 0, i32 1
  %37 = load i64, i64* %36, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %30
  br label %45

40:                                               ; preds = %30
  %41 = load %struct.perf_sample*, %struct.perf_sample** %7, align 8
  %42 = getelementptr inbounds %struct.perf_sample, %struct.perf_sample* %41, i32 0, i32 2
  %43 = load i32, i32* %42, align 8
  %44 = sext i32 %43 to i64
  br label %45

45:                                               ; preds = %40, %39
  %46 = phi i64 [ %37, %39 ], [ %44, %40 ]
  %47 = trunc i64 %46 to i32
  %48 = call %struct.thread* @machine__findnew_thread(%struct.machine* %31, i32 %34, i32 %47)
  store %struct.thread* %48, %struct.thread** %10, align 8
  %49 = load %struct.thread*, %struct.thread** %10, align 8
  %50 = icmp eq %struct.thread* %49, null
  br i1 %50, label %51, label %56

51:                                               ; preds = %45
  %52 = load %struct.perf_sample*, %struct.perf_sample** %7, align 8
  %53 = getelementptr inbounds %struct.perf_sample, %struct.perf_sample* %52, i32 0, i32 1
  %54 = load i64, i64* %53, align 8
  %55 = call i32 @pr_debug(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.1, i64 0, i64 0), i64 %54)
  br label %56

56:                                               ; preds = %51, %45
  %57 = load %struct.perf_sched*, %struct.perf_sched** %6, align 8
  %58 = load %struct.perf_sample*, %struct.perf_sample** %7, align 8
  %59 = load %struct.evsel*, %struct.evsel** %9, align 8
  %60 = load %struct.machine*, %struct.machine** %8, align 8
  %61 = call i32 @save_task_callchain(%struct.perf_sched* %57, %struct.perf_sample* %58, %struct.evsel* %59, %struct.machine* %60)
  %62 = load %struct.perf_sched*, %struct.perf_sched** %6, align 8
  %63 = getelementptr inbounds %struct.perf_sched, %struct.perf_sched* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %98

66:                                               ; preds = %56
  %67 = load %struct.perf_sample*, %struct.perf_sample** %7, align 8
  %68 = getelementptr inbounds %struct.perf_sample, %struct.perf_sample* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = call %struct.thread* @get_idle_thread(i32 %69)
  store %struct.thread* %70, %struct.thread** %11, align 8
  %71 = load %struct.thread*, %struct.thread** %11, align 8
  %72 = icmp eq %struct.thread* %71, null
  br i1 %72, label %73, label %78

73:                                               ; preds = %66
  %74 = load %struct.perf_sample*, %struct.perf_sample** %7, align 8
  %75 = getelementptr inbounds %struct.perf_sample, %struct.perf_sample* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  %77 = call i32 @pr_err(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 %76)
  store %struct.thread* null, %struct.thread** %5, align 8
  br label %101

78:                                               ; preds = %66
  %79 = load %struct.thread*, %struct.thread** %11, align 8
  %80 = call %struct.idle_thread_runtime* @thread__priv(%struct.thread* %79)
  store %struct.idle_thread_runtime* %80, %struct.idle_thread_runtime** %12, align 8
  %81 = load %struct.idle_thread_runtime*, %struct.idle_thread_runtime** %12, align 8
  %82 = icmp eq %struct.idle_thread_runtime* %81, null
  br i1 %82, label %83, label %84

83:                                               ; preds = %78
  store %struct.thread* null, %struct.thread** %5, align 8
  br label %101

84:                                               ; preds = %78
  %85 = load %struct.thread*, %struct.thread** %10, align 8
  %86 = load %struct.idle_thread_runtime*, %struct.idle_thread_runtime** %12, align 8
  %87 = getelementptr inbounds %struct.idle_thread_runtime, %struct.idle_thread_runtime* %86, i32 0, i32 0
  store %struct.thread* %85, %struct.thread** %87, align 8
  %88 = load %struct.evsel*, %struct.evsel** %9, align 8
  %89 = load %struct.perf_sample*, %struct.perf_sample** %7, align 8
  %90 = call i64 @perf_evsel__intval(%struct.evsel* %88, %struct.perf_sample* %89, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0))
  %91 = icmp eq i64 %90, 0
  br i1 %91, label %92, label %97

92:                                               ; preds = %84
  %93 = load %struct.perf_sched*, %struct.perf_sched** %6, align 8
  %94 = load %struct.idle_thread_runtime*, %struct.idle_thread_runtime** %12, align 8
  %95 = load %struct.perf_sample*, %struct.perf_sample** %7, align 8
  %96 = call i32 @save_idle_callchain(%struct.perf_sched* %93, %struct.idle_thread_runtime* %94, %struct.perf_sample* %95)
  br label %97

97:                                               ; preds = %92, %84
  br label %98

98:                                               ; preds = %97, %56
  br label %99

99:                                               ; preds = %98, %29
  %100 = load %struct.thread*, %struct.thread** %10, align 8
  store %struct.thread* %100, %struct.thread** %5, align 8
  br label %101

101:                                              ; preds = %99, %83, %73
  %102 = load %struct.thread*, %struct.thread** %5, align 8
  ret %struct.thread* %102
}

declare dso_local i64 @is_idle_sample(%struct.perf_sample*, %struct.evsel*) #1

declare dso_local %struct.thread* @get_idle_thread(i32) #1

declare dso_local i32 @pr_err(i8*, i32) #1

declare dso_local %struct.thread* @machine__findnew_thread(%struct.machine*, i32, i32) #1

declare dso_local i32 @pr_debug(i8*, i64) #1

declare dso_local i32 @save_task_callchain(%struct.perf_sched*, %struct.perf_sample*, %struct.evsel*, %struct.machine*) #1

declare dso_local %struct.idle_thread_runtime* @thread__priv(%struct.thread*) #1

declare dso_local i64 @perf_evsel__intval(%struct.evsel*, %struct.perf_sample*, i8*) #1

declare dso_local i32 @save_idle_callchain(%struct.perf_sched*, %struct.idle_thread_runtime*, %struct.perf_sample*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
