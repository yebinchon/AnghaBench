; ModuleID = '/home/carl/AnghaBench/linux/kernel/sched/extr_core.c_task_sched_runtime.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/sched/extr_core.c_task_sched_runtime.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.task_struct = type { %struct.TYPE_3__, %struct.TYPE_4__*, i32 }
%struct.TYPE_3__ = type { i64 }
%struct.TYPE_4__ = type { i32 (%struct.rq*)* }
%struct.rq = type { i32 }
%struct.rq_flags = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @task_sched_runtime(%struct.task_struct* %0) #0 {
  %2 = alloca %struct.task_struct*, align 8
  %3 = alloca %struct.rq_flags, align 4
  %4 = alloca %struct.rq*, align 8
  %5 = alloca i64, align 8
  store %struct.task_struct* %0, %struct.task_struct** %2, align 8
  %6 = load %struct.task_struct*, %struct.task_struct** %2, align 8
  %7 = call %struct.rq* @task_rq_lock(%struct.task_struct* %6, %struct.rq_flags* %3)
  store %struct.rq* %7, %struct.rq** %4, align 8
  %8 = load %struct.rq*, %struct.rq** %4, align 8
  %9 = load %struct.task_struct*, %struct.task_struct** %2, align 8
  %10 = call i64 @task_current(%struct.rq* %8, %struct.task_struct* %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %28

12:                                               ; preds = %1
  %13 = load %struct.task_struct*, %struct.task_struct** %2, align 8
  %14 = call i64 @task_on_rq_queued(%struct.task_struct* %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %28

16:                                               ; preds = %12
  %17 = load %struct.task_struct*, %struct.task_struct** %2, align 8
  %18 = call i32 @prefetch_curr_exec_start(%struct.task_struct* %17)
  %19 = load %struct.rq*, %struct.rq** %4, align 8
  %20 = call i32 @update_rq_clock(%struct.rq* %19)
  %21 = load %struct.task_struct*, %struct.task_struct** %2, align 8
  %22 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %21, i32 0, i32 1
  %23 = load %struct.TYPE_4__*, %struct.TYPE_4__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 0
  %25 = load i32 (%struct.rq*)*, i32 (%struct.rq*)** %24, align 8
  %26 = load %struct.rq*, %struct.rq** %4, align 8
  %27 = call i32 %25(%struct.rq* %26)
  br label %28

28:                                               ; preds = %16, %12, %1
  %29 = load %struct.task_struct*, %struct.task_struct** %2, align 8
  %30 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  store i64 %32, i64* %5, align 8
  %33 = load %struct.rq*, %struct.rq** %4, align 8
  %34 = load %struct.task_struct*, %struct.task_struct** %2, align 8
  %35 = call i32 @task_rq_unlock(%struct.rq* %33, %struct.task_struct* %34, %struct.rq_flags* %3)
  %36 = load i64, i64* %5, align 8
  ret i64 %36
}

declare dso_local %struct.rq* @task_rq_lock(%struct.task_struct*, %struct.rq_flags*) #1

declare dso_local i64 @task_current(%struct.rq*, %struct.task_struct*) #1

declare dso_local i64 @task_on_rq_queued(%struct.task_struct*) #1

declare dso_local i32 @prefetch_curr_exec_start(%struct.task_struct*) #1

declare dso_local i32 @update_rq_clock(%struct.rq*) #1

declare dso_local i32 @task_rq_unlock(%struct.rq*, %struct.task_struct*, %struct.rq_flags*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
