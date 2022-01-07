; ModuleID = '/home/carl/AnghaBench/linux/kernel/sched/extr_core.c_prepare_task_switch.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/sched/extr_core.c_prepare_task_switch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rq = type { i32 }
%struct.task_struct = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rq*, %struct.task_struct*, %struct.task_struct*)* @prepare_task_switch to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @prepare_task_switch(%struct.rq* %0, %struct.task_struct* %1, %struct.task_struct* %2) #0 {
  %4 = alloca %struct.rq*, align 8
  %5 = alloca %struct.task_struct*, align 8
  %6 = alloca %struct.task_struct*, align 8
  store %struct.rq* %0, %struct.rq** %4, align 8
  store %struct.task_struct* %1, %struct.task_struct** %5, align 8
  store %struct.task_struct* %2, %struct.task_struct** %6, align 8
  %7 = load %struct.task_struct*, %struct.task_struct** %5, align 8
  %8 = call i32 @kcov_prepare_switch(%struct.task_struct* %7)
  %9 = load %struct.rq*, %struct.rq** %4, align 8
  %10 = load %struct.task_struct*, %struct.task_struct** %5, align 8
  %11 = load %struct.task_struct*, %struct.task_struct** %6, align 8
  %12 = call i32 @sched_info_switch(%struct.rq* %9, %struct.task_struct* %10, %struct.task_struct* %11)
  %13 = load %struct.task_struct*, %struct.task_struct** %5, align 8
  %14 = load %struct.task_struct*, %struct.task_struct** %6, align 8
  %15 = call i32 @perf_event_task_sched_out(%struct.task_struct* %13, %struct.task_struct* %14)
  %16 = load %struct.task_struct*, %struct.task_struct** %5, align 8
  %17 = call i32 @rseq_preempt(%struct.task_struct* %16)
  %18 = load %struct.task_struct*, %struct.task_struct** %5, align 8
  %19 = load %struct.task_struct*, %struct.task_struct** %6, align 8
  %20 = call i32 @fire_sched_out_preempt_notifiers(%struct.task_struct* %18, %struct.task_struct* %19)
  %21 = load %struct.task_struct*, %struct.task_struct** %6, align 8
  %22 = call i32 @prepare_task(%struct.task_struct* %21)
  %23 = load %struct.task_struct*, %struct.task_struct** %6, align 8
  %24 = call i32 @prepare_arch_switch(%struct.task_struct* %23)
  ret void
}

declare dso_local i32 @kcov_prepare_switch(%struct.task_struct*) #1

declare dso_local i32 @sched_info_switch(%struct.rq*, %struct.task_struct*, %struct.task_struct*) #1

declare dso_local i32 @perf_event_task_sched_out(%struct.task_struct*, %struct.task_struct*) #1

declare dso_local i32 @rseq_preempt(%struct.task_struct*) #1

declare dso_local i32 @fire_sched_out_preempt_notifiers(%struct.task_struct*, %struct.task_struct*) #1

declare dso_local i32 @prepare_task(%struct.task_struct*) #1

declare dso_local i32 @prepare_arch_switch(%struct.task_struct*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
