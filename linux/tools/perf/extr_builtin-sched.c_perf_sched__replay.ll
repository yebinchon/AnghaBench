; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/extr_builtin-sched.c_perf_sched__replay.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/extr_builtin-sched.c_perf_sched__replay.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.perf_sched = type { i64, i64, i64, i64, i32, i32, i32 }

@.str = private unnamed_addr constant [27 x i8] c"nr_run_events:        %ld\0A\00", align 1
@.str.1 = private unnamed_addr constant [27 x i8] c"nr_sleep_events:      %ld\0A\00", align 1
@.str.2 = private unnamed_addr constant [27 x i8] c"nr_wakeup_events:     %ld\0A\00", align 1
@.str.3 = private unnamed_addr constant [27 x i8] c"target-less wakeups:  %ld\0A\00", align 1
@.str.4 = private unnamed_addr constant [27 x i8] c"multi-target wakeups: %ld\0A\00", align 1
@.str.5 = private unnamed_addr constant [26 x i8] c"run atoms optimized: %ld\0A\00", align 1
@.str.6 = private unnamed_addr constant [62 x i8] c"------------------------------------------------------------\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.perf_sched*)* @perf_sched__replay to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @perf_sched__replay(%struct.perf_sched* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.perf_sched*, align 8
  %4 = alloca i64, align 8
  store %struct.perf_sched* %0, %struct.perf_sched** %3, align 8
  %5 = load %struct.perf_sched*, %struct.perf_sched** %3, align 8
  %6 = call i32 @calibrate_run_measurement_overhead(%struct.perf_sched* %5)
  %7 = load %struct.perf_sched*, %struct.perf_sched** %3, align 8
  %8 = call i32 @calibrate_sleep_measurement_overhead(%struct.perf_sched* %7)
  %9 = load %struct.perf_sched*, %struct.perf_sched** %3, align 8
  %10 = call i32 @test_calibrations(%struct.perf_sched* %9)
  %11 = load %struct.perf_sched*, %struct.perf_sched** %3, align 8
  %12 = call i64 @perf_sched__read_events(%struct.perf_sched* %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %1
  store i32 -1, i32* %2, align 4
  br label %78

15:                                               ; preds = %1
  %16 = load %struct.perf_sched*, %struct.perf_sched** %3, align 8
  %17 = getelementptr inbounds %struct.perf_sched, %struct.perf_sched* %16, i32 0, i32 6
  %18 = load i32, i32* %17, align 8
  %19 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32 %18)
  %20 = load %struct.perf_sched*, %struct.perf_sched** %3, align 8
  %21 = getelementptr inbounds %struct.perf_sched, %struct.perf_sched* %20, i32 0, i32 5
  %22 = load i32, i32* %21, align 4
  %23 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i32 %22)
  %24 = load %struct.perf_sched*, %struct.perf_sched** %3, align 8
  %25 = getelementptr inbounds %struct.perf_sched, %struct.perf_sched* %24, i32 0, i32 4
  %26 = load i32, i32* %25, align 8
  %27 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0), i32 %26)
  %28 = load %struct.perf_sched*, %struct.perf_sched** %3, align 8
  %29 = getelementptr inbounds %struct.perf_sched, %struct.perf_sched* %28, i32 0, i32 3
  %30 = load i64, i64* %29, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %37

32:                                               ; preds = %15
  %33 = load %struct.perf_sched*, %struct.perf_sched** %3, align 8
  %34 = getelementptr inbounds %struct.perf_sched, %struct.perf_sched* %33, i32 0, i32 3
  %35 = load i64, i64* %34, align 8
  %36 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i64 0, i64 0), i64 %35)
  br label %37

37:                                               ; preds = %32, %15
  %38 = load %struct.perf_sched*, %struct.perf_sched** %3, align 8
  %39 = getelementptr inbounds %struct.perf_sched, %struct.perf_sched* %38, i32 0, i32 2
  %40 = load i64, i64* %39, align 8
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %47

42:                                               ; preds = %37
  %43 = load %struct.perf_sched*, %struct.perf_sched** %3, align 8
  %44 = getelementptr inbounds %struct.perf_sched, %struct.perf_sched* %43, i32 0, i32 2
  %45 = load i64, i64* %44, align 8
  %46 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.4, i64 0, i64 0), i64 %45)
  br label %47

47:                                               ; preds = %42, %37
  %48 = load %struct.perf_sched*, %struct.perf_sched** %3, align 8
  %49 = getelementptr inbounds %struct.perf_sched, %struct.perf_sched* %48, i32 0, i32 1
  %50 = load i64, i64* %49, align 8
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %57

52:                                               ; preds = %47
  %53 = load %struct.perf_sched*, %struct.perf_sched** %3, align 8
  %54 = getelementptr inbounds %struct.perf_sched, %struct.perf_sched* %53, i32 0, i32 1
  %55 = load i64, i64* %54, align 8
  %56 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.5, i64 0, i64 0), i64 %55)
  br label %57

57:                                               ; preds = %52, %47
  %58 = load %struct.perf_sched*, %struct.perf_sched** %3, align 8
  %59 = call i32 @print_task_traces(%struct.perf_sched* %58)
  %60 = load %struct.perf_sched*, %struct.perf_sched** %3, align 8
  %61 = call i32 @add_cross_task_wakeups(%struct.perf_sched* %60)
  %62 = load %struct.perf_sched*, %struct.perf_sched** %3, align 8
  %63 = call i32 @create_tasks(%struct.perf_sched* %62)
  %64 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.6, i64 0, i64 0))
  store i64 0, i64* %4, align 8
  br label %65

65:                                               ; preds = %74, %57
  %66 = load i64, i64* %4, align 8
  %67 = load %struct.perf_sched*, %struct.perf_sched** %3, align 8
  %68 = getelementptr inbounds %struct.perf_sched, %struct.perf_sched* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = icmp ult i64 %66, %69
  br i1 %70, label %71, label %77

71:                                               ; preds = %65
  %72 = load %struct.perf_sched*, %struct.perf_sched** %3, align 8
  %73 = call i32 @run_one_test(%struct.perf_sched* %72)
  br label %74

74:                                               ; preds = %71
  %75 = load i64, i64* %4, align 8
  %76 = add i64 %75, 1
  store i64 %76, i64* %4, align 8
  br label %65

77:                                               ; preds = %65
  store i32 0, i32* %2, align 4
  br label %78

78:                                               ; preds = %77, %14
  %79 = load i32, i32* %2, align 4
  ret i32 %79
}

declare dso_local i32 @calibrate_run_measurement_overhead(%struct.perf_sched*) #1

declare dso_local i32 @calibrate_sleep_measurement_overhead(%struct.perf_sched*) #1

declare dso_local i32 @test_calibrations(%struct.perf_sched*) #1

declare dso_local i64 @perf_sched__read_events(%struct.perf_sched*) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i32 @print_task_traces(%struct.perf_sched*) #1

declare dso_local i32 @add_cross_task_wakeups(%struct.perf_sched*) #1

declare dso_local i32 @create_tasks(%struct.perf_sched*) #1

declare dso_local i32 @run_one_test(%struct.perf_sched*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
