; ModuleID = '/home/carl/AnghaBench/linux/kernel/extr_taskstats.c_fill_stats.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/extr_taskstats.c_fill_stats.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.user_namespace = type { i32 }
%struct.pid_namespace = type { i32 }
%struct.task_struct = type { i32, i32 }
%struct.taskstats = type { i32, i32, i32 }

@TASKSTATS_VERSION = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.user_namespace*, %struct.pid_namespace*, %struct.task_struct*, %struct.taskstats*)* @fill_stats to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fill_stats(%struct.user_namespace* %0, %struct.pid_namespace* %1, %struct.task_struct* %2, %struct.taskstats* %3) #0 {
  %5 = alloca %struct.user_namespace*, align 8
  %6 = alloca %struct.pid_namespace*, align 8
  %7 = alloca %struct.task_struct*, align 8
  %8 = alloca %struct.taskstats*, align 8
  store %struct.user_namespace* %0, %struct.user_namespace** %5, align 8
  store %struct.pid_namespace* %1, %struct.pid_namespace** %6, align 8
  store %struct.task_struct* %2, %struct.task_struct** %7, align 8
  store %struct.taskstats* %3, %struct.taskstats** %8, align 8
  %9 = load %struct.taskstats*, %struct.taskstats** %8, align 8
  %10 = call i32 @memset(%struct.taskstats* %9, i32 0, i32 12)
  %11 = load %struct.taskstats*, %struct.taskstats** %8, align 8
  %12 = load %struct.task_struct*, %struct.task_struct** %7, align 8
  %13 = call i32 @delayacct_add_tsk(%struct.taskstats* %11, %struct.task_struct* %12)
  %14 = load i32, i32* @TASKSTATS_VERSION, align 4
  %15 = load %struct.taskstats*, %struct.taskstats** %8, align 8
  %16 = getelementptr inbounds %struct.taskstats, %struct.taskstats* %15, i32 0, i32 2
  store i32 %14, i32* %16, align 4
  %17 = load %struct.task_struct*, %struct.task_struct** %7, align 8
  %18 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.taskstats*, %struct.taskstats** %8, align 8
  %21 = getelementptr inbounds %struct.taskstats, %struct.taskstats* %20, i32 0, i32 1
  store i32 %19, i32* %21, align 4
  %22 = load %struct.task_struct*, %struct.task_struct** %7, align 8
  %23 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.taskstats*, %struct.taskstats** %8, align 8
  %26 = getelementptr inbounds %struct.taskstats, %struct.taskstats* %25, i32 0, i32 0
  store i32 %24, i32* %26, align 4
  %27 = load %struct.user_namespace*, %struct.user_namespace** %5, align 8
  %28 = load %struct.pid_namespace*, %struct.pid_namespace** %6, align 8
  %29 = load %struct.taskstats*, %struct.taskstats** %8, align 8
  %30 = load %struct.task_struct*, %struct.task_struct** %7, align 8
  %31 = call i32 @bacct_add_tsk(%struct.user_namespace* %27, %struct.pid_namespace* %28, %struct.taskstats* %29, %struct.task_struct* %30)
  %32 = load %struct.taskstats*, %struct.taskstats** %8, align 8
  %33 = load %struct.task_struct*, %struct.task_struct** %7, align 8
  %34 = call i32 @xacct_add_tsk(%struct.taskstats* %32, %struct.task_struct* %33)
  ret void
}

declare dso_local i32 @memset(%struct.taskstats*, i32, i32) #1

declare dso_local i32 @delayacct_add_tsk(%struct.taskstats*, %struct.task_struct*) #1

declare dso_local i32 @bacct_add_tsk(%struct.user_namespace*, %struct.pid_namespace*, %struct.taskstats*, %struct.task_struct*) #1

declare dso_local i32 @xacct_add_tsk(%struct.taskstats*, %struct.task_struct*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
