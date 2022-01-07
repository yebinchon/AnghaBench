; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/extr_builtin-sched.c_timehist_skip_sample.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/extr_builtin-sched.c_timehist_skip_sample.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.perf_sched = type { i64, i32 }
%struct.thread = type { i32 }
%struct.evsel = type { i32 }
%struct.perf_sample = type { i32 }

@.str = private unnamed_addr constant [19 x i8] c"sched:sched_switch\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"prev_pid\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"next_pid\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.perf_sched*, %struct.thread*, %struct.evsel*, %struct.perf_sample*)* @timehist_skip_sample to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @timehist_skip_sample(%struct.perf_sched* %0, %struct.thread* %1, %struct.evsel* %2, %struct.perf_sample* %3) #0 {
  %5 = alloca %struct.perf_sched*, align 8
  %6 = alloca %struct.thread*, align 8
  %7 = alloca %struct.evsel*, align 8
  %8 = alloca %struct.perf_sample*, align 8
  %9 = alloca i32, align 4
  store %struct.perf_sched* %0, %struct.perf_sched** %5, align 8
  store %struct.thread* %1, %struct.thread** %6, align 8
  store %struct.evsel* %2, %struct.evsel** %7, align 8
  store %struct.perf_sample* %3, %struct.perf_sample** %8, align 8
  store i32 0, i32* %9, align 4
  %10 = load %struct.thread*, %struct.thread** %6, align 8
  %11 = call i64 @thread__is_filtered(%struct.thread* %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %18

13:                                               ; preds = %4
  store i32 1, i32* %9, align 4
  %14 = load %struct.perf_sched*, %struct.perf_sched** %5, align 8
  %15 = getelementptr inbounds %struct.perf_sched, %struct.perf_sched* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 8
  %17 = add nsw i32 %16, 1
  store i32 %17, i32* %15, align 8
  br label %18

18:                                               ; preds = %13, %4
  %19 = load %struct.perf_sched*, %struct.perf_sched** %5, align 8
  %20 = getelementptr inbounds %struct.perf_sched, %struct.perf_sched* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %42

23:                                               ; preds = %18
  %24 = load %struct.evsel*, %struct.evsel** %7, align 8
  %25 = call i32 @perf_evsel__name(%struct.evsel* %24)
  %26 = call i64 @strcmp(i32 %25, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %23
  store i32 1, i32* %9, align 4
  br label %41

29:                                               ; preds = %23
  %30 = load %struct.evsel*, %struct.evsel** %7, align 8
  %31 = load %struct.perf_sample*, %struct.perf_sample** %8, align 8
  %32 = call i64 @perf_evsel__intval(%struct.evsel* %30, %struct.perf_sample* %31, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0))
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %40

34:                                               ; preds = %29
  %35 = load %struct.evsel*, %struct.evsel** %7, align 8
  %36 = load %struct.perf_sample*, %struct.perf_sample** %8, align 8
  %37 = call i64 @perf_evsel__intval(%struct.evsel* %35, %struct.perf_sample* %36, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0))
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %34
  store i32 1, i32* %9, align 4
  br label %40

40:                                               ; preds = %39, %34, %29
  br label %41

41:                                               ; preds = %40, %28
  br label %42

42:                                               ; preds = %41, %18
  %43 = load i32, i32* %9, align 4
  ret i32 %43
}

declare dso_local i64 @thread__is_filtered(%struct.thread*) #1

declare dso_local i64 @strcmp(i32, i8*) #1

declare dso_local i32 @perf_evsel__name(%struct.evsel*) #1

declare dso_local i64 @perf_evsel__intval(%struct.evsel*, %struct.perf_sample*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
