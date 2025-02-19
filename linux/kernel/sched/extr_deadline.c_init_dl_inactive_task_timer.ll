; ModuleID = '/home/carl/AnghaBench/linux/kernel/sched/extr_deadline.c_init_dl_inactive_task_timer.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/sched/extr_deadline.c_init_dl_inactive_task_timer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sched_dl_entity = type { %struct.hrtimer }
%struct.hrtimer = type { i32 }

@CLOCK_MONOTONIC = common dso_local global i32 0, align 4
@HRTIMER_MODE_REL_HARD = common dso_local global i32 0, align 4
@inactive_task_timer = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @init_dl_inactive_task_timer(%struct.sched_dl_entity* %0) #0 {
  %2 = alloca %struct.sched_dl_entity*, align 8
  %3 = alloca %struct.hrtimer*, align 8
  store %struct.sched_dl_entity* %0, %struct.sched_dl_entity** %2, align 8
  %4 = load %struct.sched_dl_entity*, %struct.sched_dl_entity** %2, align 8
  %5 = getelementptr inbounds %struct.sched_dl_entity, %struct.sched_dl_entity* %4, i32 0, i32 0
  store %struct.hrtimer* %5, %struct.hrtimer** %3, align 8
  %6 = load %struct.hrtimer*, %struct.hrtimer** %3, align 8
  %7 = load i32, i32* @CLOCK_MONOTONIC, align 4
  %8 = load i32, i32* @HRTIMER_MODE_REL_HARD, align 4
  %9 = call i32 @hrtimer_init(%struct.hrtimer* %6, i32 %7, i32 %8)
  %10 = load i32, i32* @inactive_task_timer, align 4
  %11 = load %struct.hrtimer*, %struct.hrtimer** %3, align 8
  %12 = getelementptr inbounds %struct.hrtimer, %struct.hrtimer* %11, i32 0, i32 0
  store i32 %10, i32* %12, align 4
  ret void
}

declare dso_local i32 @hrtimer_init(%struct.hrtimer*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
