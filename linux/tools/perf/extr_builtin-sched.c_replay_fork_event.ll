; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/extr_builtin-sched.c_replay_fork_event.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/extr_builtin-sched.c_replay_fork_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.perf_sched = type { i32 }
%union.perf_event = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32, i32 }
%struct.machine = type { i32 }
%struct.thread = type { i32 }

@.str = private unnamed_addr constant [58 x i8] c"thread does not exist on fork event: child %p, parent %p\0A\00", align 1
@verbose = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [12 x i8] c"fork event\0A\00", align 1
@.str.2 = private unnamed_addr constant [19 x i8] c"... parent: %s/%d\0A\00", align 1
@.str.3 = private unnamed_addr constant [19 x i8] c"...  child: %s/%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.perf_sched*, %union.perf_event*, %struct.machine*)* @replay_fork_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @replay_fork_event(%struct.perf_sched* %0, %union.perf_event* %1, %struct.machine* %2) #0 {
  %4 = alloca %struct.perf_sched*, align 8
  %5 = alloca %union.perf_event*, align 8
  %6 = alloca %struct.machine*, align 8
  %7 = alloca %struct.thread*, align 8
  %8 = alloca %struct.thread*, align 8
  store %struct.perf_sched* %0, %struct.perf_sched** %4, align 8
  store %union.perf_event* %1, %union.perf_event** %5, align 8
  store %struct.machine* %2, %struct.machine** %6, align 8
  %9 = load %struct.machine*, %struct.machine** %6, align 8
  %10 = load %union.perf_event*, %union.perf_event** %5, align 8
  %11 = bitcast %union.perf_event* %10 to %struct.TYPE_2__*
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 3
  %13 = load i32, i32* %12, align 4
  %14 = load %union.perf_event*, %union.perf_event** %5, align 8
  %15 = bitcast %union.perf_event* %14 to %struct.TYPE_2__*
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 2
  %17 = load i32, i32* %16, align 4
  %18 = call %struct.thread* @machine__findnew_thread(%struct.machine* %9, i32 %13, i32 %17)
  store %struct.thread* %18, %struct.thread** %7, align 8
  %19 = load %struct.machine*, %struct.machine** %6, align 8
  %20 = load %union.perf_event*, %union.perf_event** %5, align 8
  %21 = bitcast %union.perf_event* %20 to %struct.TYPE_2__*
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = load %union.perf_event*, %union.perf_event** %5, align 8
  %25 = bitcast %union.perf_event* %24 to %struct.TYPE_2__*
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = call %struct.thread* @machine__findnew_thread(%struct.machine* %19, i32 %23, i32 %27)
  store %struct.thread* %28, %struct.thread** %8, align 8
  %29 = load %struct.thread*, %struct.thread** %7, align 8
  %30 = icmp eq %struct.thread* %29, null
  br i1 %30, label %34, label %31

31:                                               ; preds = %3
  %32 = load %struct.thread*, %struct.thread** %8, align 8
  %33 = icmp eq %struct.thread* %32, null
  br i1 %33, label %34, label %38

34:                                               ; preds = %31, %3
  %35 = load %struct.thread*, %struct.thread** %7, align 8
  %36 = load %struct.thread*, %struct.thread** %8, align 8
  %37 = call i32 @pr_debug(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str, i64 0, i64 0), %struct.thread* %35, %struct.thread* %36)
  br label %70

38:                                               ; preds = %31
  %39 = load i64, i64* @verbose, align 8
  %40 = icmp sgt i64 %39, 0
  br i1 %40, label %41, label %55

41:                                               ; preds = %38
  %42 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0))
  %43 = load %struct.thread*, %struct.thread** %8, align 8
  %44 = call i8* @thread__comm_str(%struct.thread* %43)
  %45 = load %struct.thread*, %struct.thread** %8, align 8
  %46 = getelementptr inbounds %struct.thread, %struct.thread* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0), i8* %44, i32 %47)
  %49 = load %struct.thread*, %struct.thread** %7, align 8
  %50 = call i8* @thread__comm_str(%struct.thread* %49)
  %51 = load %struct.thread*, %struct.thread** %7, align 8
  %52 = getelementptr inbounds %struct.thread, %struct.thread* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.3, i64 0, i64 0), i8* %50, i32 %53)
  br label %55

55:                                               ; preds = %41, %38
  %56 = load %struct.perf_sched*, %struct.perf_sched** %4, align 8
  %57 = load %struct.thread*, %struct.thread** %8, align 8
  %58 = getelementptr inbounds %struct.thread, %struct.thread* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = load %struct.thread*, %struct.thread** %8, align 8
  %61 = call i8* @thread__comm_str(%struct.thread* %60)
  %62 = call i32 @register_pid(%struct.perf_sched* %56, i32 %59, i8* %61)
  %63 = load %struct.perf_sched*, %struct.perf_sched** %4, align 8
  %64 = load %struct.thread*, %struct.thread** %7, align 8
  %65 = getelementptr inbounds %struct.thread, %struct.thread* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = load %struct.thread*, %struct.thread** %7, align 8
  %68 = call i8* @thread__comm_str(%struct.thread* %67)
  %69 = call i32 @register_pid(%struct.perf_sched* %63, i32 %66, i8* %68)
  br label %70

70:                                               ; preds = %55, %34
  %71 = load %struct.thread*, %struct.thread** %7, align 8
  %72 = call i32 @thread__put(%struct.thread* %71)
  %73 = load %struct.thread*, %struct.thread** %8, align 8
  %74 = call i32 @thread__put(%struct.thread* %73)
  ret i32 0
}

declare dso_local %struct.thread* @machine__findnew_thread(%struct.machine*, i32, i32) #1

declare dso_local i32 @pr_debug(i8*, %struct.thread*, %struct.thread*) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i8* @thread__comm_str(%struct.thread*) #1

declare dso_local i32 @register_pid(%struct.perf_sched*, i32, i8*) #1

declare dso_local i32 @thread__put(%struct.thread*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
