; ModuleID = '/home/carl/AnghaBench/linux/kernel/sched/extr_core.c_wake_up_new_task.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/sched/extr_core.c_wake_up_new_task.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.task_struct = type { %struct.TYPE_2__*, i32, i32, i32 }
%struct.TYPE_2__ = type { i32 (%struct.rq*, %struct.task_struct*)* }
%struct.rq = type { i32 }
%struct.rq_flags = type { i32 }

@TASK_RUNNING = common dso_local global i32 0, align 4
@ENQUEUE_NOCLOCK = common dso_local global i32 0, align 4
@WF_FORK = common dso_local global i32 0, align 4
@SD_BALANCE_FORK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @wake_up_new_task(%struct.task_struct* %0) #0 {
  %2 = alloca %struct.task_struct*, align 8
  %3 = alloca %struct.rq_flags, align 4
  %4 = alloca %struct.rq*, align 8
  store %struct.task_struct* %0, %struct.task_struct** %2, align 8
  %5 = load %struct.task_struct*, %struct.task_struct** %2, align 8
  %6 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %5, i32 0, i32 3
  %7 = getelementptr inbounds %struct.rq_flags, %struct.rq_flags* %3, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = call i32 @raw_spin_lock_irqsave(i32* %6, i32 %8)
  %10 = load i32, i32* @TASK_RUNNING, align 4
  %11 = load %struct.task_struct*, %struct.task_struct** %2, align 8
  %12 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %11, i32 0, i32 2
  store i32 %10, i32* %12, align 4
  %13 = load %struct.task_struct*, %struct.task_struct** %2, align 8
  %14 = call %struct.rq* @__task_rq_lock(%struct.task_struct* %13, %struct.rq_flags* %3)
  store %struct.rq* %14, %struct.rq** %4, align 8
  %15 = load %struct.rq*, %struct.rq** %4, align 8
  %16 = call i32 @update_rq_clock(%struct.rq* %15)
  %17 = load %struct.task_struct*, %struct.task_struct** %2, align 8
  %18 = call i32 @post_init_entity_util_avg(%struct.task_struct* %17)
  %19 = load %struct.rq*, %struct.rq** %4, align 8
  %20 = load %struct.task_struct*, %struct.task_struct** %2, align 8
  %21 = load i32, i32* @ENQUEUE_NOCLOCK, align 4
  %22 = call i32 @activate_task(%struct.rq* %19, %struct.task_struct* %20, i32 %21)
  %23 = load %struct.task_struct*, %struct.task_struct** %2, align 8
  %24 = call i32 @trace_sched_wakeup_new(%struct.task_struct* %23)
  %25 = load %struct.rq*, %struct.rq** %4, align 8
  %26 = load %struct.task_struct*, %struct.task_struct** %2, align 8
  %27 = load i32, i32* @WF_FORK, align 4
  %28 = call i32 @check_preempt_curr(%struct.rq* %25, %struct.task_struct* %26, i32 %27)
  %29 = load %struct.rq*, %struct.rq** %4, align 8
  %30 = load %struct.task_struct*, %struct.task_struct** %2, align 8
  %31 = call i32 @task_rq_unlock(%struct.rq* %29, %struct.task_struct* %30, %struct.rq_flags* %3)
  ret void
}

declare dso_local i32 @raw_spin_lock_irqsave(i32*, i32) #1

declare dso_local %struct.rq* @__task_rq_lock(%struct.task_struct*, %struct.rq_flags*) #1

declare dso_local i32 @update_rq_clock(%struct.rq*) #1

declare dso_local i32 @post_init_entity_util_avg(%struct.task_struct*) #1

declare dso_local i32 @activate_task(%struct.rq*, %struct.task_struct*, i32) #1

declare dso_local i32 @trace_sched_wakeup_new(%struct.task_struct*) #1

declare dso_local i32 @check_preempt_curr(%struct.rq*, %struct.task_struct*, i32) #1

declare dso_local i32 @task_rq_unlock(%struct.rq*, %struct.task_struct*, %struct.rq_flags*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
