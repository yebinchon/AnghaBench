; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/extr_builtin-sched.c_timehist_print_wakeup_event.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/extr_builtin-sched.c_timehist_print_wakeup_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.perf_sched = type { i8*, i64 }
%struct.evsel = type { i32 }
%struct.perf_sample = type { i32, i32, i32, i32 }
%struct.machine = type { i32 }
%struct.thread = type { i32 }

@.str = private unnamed_addr constant [13 x i8] c"%15s [%04d] \00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c" %*s \00", align 1
@.str.2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.3 = private unnamed_addr constant [7 x i8] c" %-*s \00", align 1
@comm_width = common dso_local global i8* null, align 8
@.str.4 = private unnamed_addr constant [17 x i8] c"  %9s  %9s  %9s \00", align 1
@.str.5 = private unnamed_addr constant [13 x i8] c"awakened: %s\00", align 1
@.str.6 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.perf_sched*, %struct.evsel*, %struct.perf_sample*, %struct.machine*, %struct.thread*)* @timehist_print_wakeup_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @timehist_print_wakeup_event(%struct.perf_sched* %0, %struct.evsel* %1, %struct.perf_sample* %2, %struct.machine* %3, %struct.thread* %4) #0 {
  %6 = alloca %struct.perf_sched*, align 8
  %7 = alloca %struct.evsel*, align 8
  %8 = alloca %struct.perf_sample*, align 8
  %9 = alloca %struct.machine*, align 8
  %10 = alloca %struct.thread*, align 8
  %11 = alloca %struct.thread*, align 8
  %12 = alloca [64 x i8], align 16
  store %struct.perf_sched* %0, %struct.perf_sched** %6, align 8
  store %struct.evsel* %1, %struct.evsel** %7, align 8
  store %struct.perf_sample* %2, %struct.perf_sample** %8, align 8
  store %struct.machine* %3, %struct.machine** %9, align 8
  store %struct.thread* %4, %struct.thread** %10, align 8
  %13 = load %struct.machine*, %struct.machine** %9, align 8
  %14 = load %struct.perf_sample*, %struct.perf_sample** %8, align 8
  %15 = getelementptr inbounds %struct.perf_sample, %struct.perf_sample* %14, i32 0, i32 3
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.perf_sample*, %struct.perf_sample** %8, align 8
  %18 = getelementptr inbounds %struct.perf_sample, %struct.perf_sample* %17, i32 0, i32 2
  %19 = load i32, i32* %18, align 4
  %20 = call %struct.thread* @machine__findnew_thread(%struct.machine* %13, i32 %16, i32 %19)
  store %struct.thread* %20, %struct.thread** %11, align 8
  %21 = load %struct.thread*, %struct.thread** %11, align 8
  %22 = icmp eq %struct.thread* %21, null
  br i1 %22, label %23, label %24

23:                                               ; preds = %5
  br label %70

24:                                               ; preds = %5
  %25 = load %struct.perf_sched*, %struct.perf_sched** %6, align 8
  %26 = load %struct.thread*, %struct.thread** %11, align 8
  %27 = load %struct.evsel*, %struct.evsel** %7, align 8
  %28 = load %struct.perf_sample*, %struct.perf_sample** %8, align 8
  %29 = call i64 @timehist_skip_sample(%struct.perf_sched* %25, %struct.thread* %26, %struct.evsel* %27, %struct.perf_sample* %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %39

31:                                               ; preds = %24
  %32 = load %struct.perf_sched*, %struct.perf_sched** %6, align 8
  %33 = load %struct.thread*, %struct.thread** %10, align 8
  %34 = load %struct.evsel*, %struct.evsel** %7, align 8
  %35 = load %struct.perf_sample*, %struct.perf_sample** %8, align 8
  %36 = call i64 @timehist_skip_sample(%struct.perf_sched* %32, %struct.thread* %33, %struct.evsel* %34, %struct.perf_sample* %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %31
  br label %70

39:                                               ; preds = %31, %24
  %40 = load %struct.perf_sample*, %struct.perf_sample** %8, align 8
  %41 = getelementptr inbounds %struct.perf_sample, %struct.perf_sample* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = getelementptr inbounds [64 x i8], [64 x i8]* %12, i64 0, i64 0
  %44 = call i32 @timestamp__scnprintf_usec(i32 %42, i8* %43, i32 64)
  %45 = getelementptr inbounds [64 x i8], [64 x i8]* %12, i64 0, i64 0
  %46 = load %struct.perf_sample*, %struct.perf_sample** %8, align 8
  %47 = getelementptr inbounds %struct.perf_sample, %struct.perf_sample* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i8* %45, i32 %48)
  %50 = load %struct.perf_sched*, %struct.perf_sched** %6, align 8
  %51 = getelementptr inbounds %struct.perf_sched, %struct.perf_sched* %50, i32 0, i32 1
  %52 = load i64, i64* %51, align 8
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %60

54:                                               ; preds = %39
  %55 = load %struct.perf_sched*, %struct.perf_sched** %6, align 8
  %56 = getelementptr inbounds %struct.perf_sched, %struct.perf_sched* %55, i32 0, i32 0
  %57 = load i8*, i8** %56, align 8
  %58 = getelementptr inbounds i8, i8* %57, i64 1
  %59 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i8* %58, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0))
  br label %60

60:                                               ; preds = %54, %39
  %61 = load i8*, i8** @comm_width, align 8
  %62 = load %struct.thread*, %struct.thread** %11, align 8
  %63 = call i8* @timehist_get_commstr(%struct.thread* %62)
  %64 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), i8* %61, i8* %63)
  %65 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0))
  %66 = load %struct.thread*, %struct.thread** %10, align 8
  %67 = call i8* @timehist_get_commstr(%struct.thread* %66)
  %68 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.5, i64 0, i64 0), i8* %67)
  %69 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i64 0, i64 0))
  br label %70

70:                                               ; preds = %60, %38, %23
  ret void
}

declare dso_local %struct.thread* @machine__findnew_thread(%struct.machine*, i32, i32) #1

declare dso_local i64 @timehist_skip_sample(%struct.perf_sched*, %struct.thread*, %struct.evsel*, %struct.perf_sample*) #1

declare dso_local i32 @timestamp__scnprintf_usec(i32, i8*, i32) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i8* @timehist_get_commstr(%struct.thread*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
