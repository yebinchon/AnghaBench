; ModuleID = '/home/carl/AnghaBench/linux/kernel/sched/extr_deadline.c_inc_dl_tasks.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/sched/extr_deadline.c_inc_dl_tasks.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sched_dl_entity = type { i32 }
%struct.dl_rq = type { i32 }
%struct.TYPE_2__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sched_dl_entity*, %struct.dl_rq*)* @inc_dl_tasks to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @inc_dl_tasks(%struct.sched_dl_entity* %0, %struct.dl_rq* %1) #0 {
  %3 = alloca %struct.sched_dl_entity*, align 8
  %4 = alloca %struct.dl_rq*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.sched_dl_entity* %0, %struct.sched_dl_entity** %3, align 8
  store %struct.dl_rq* %1, %struct.dl_rq** %4, align 8
  %7 = load %struct.sched_dl_entity*, %struct.sched_dl_entity** %3, align 8
  %8 = call %struct.TYPE_2__* @dl_task_of(%struct.sched_dl_entity* %7)
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  store i32 %10, i32* %5, align 4
  %11 = load %struct.sched_dl_entity*, %struct.sched_dl_entity** %3, align 8
  %12 = getelementptr inbounds %struct.sched_dl_entity, %struct.sched_dl_entity* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  store i32 %13, i32* %6, align 4
  %14 = load i32, i32* %5, align 4
  %15 = call i32 @dl_prio(i32 %14)
  %16 = icmp ne i32 %15, 0
  %17 = xor i1 %16, true
  %18 = zext i1 %17 to i32
  %19 = call i32 @WARN_ON(i32 %18)
  %20 = load %struct.dl_rq*, %struct.dl_rq** %4, align 8
  %21 = getelementptr inbounds %struct.dl_rq, %struct.dl_rq* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = add nsw i32 %22, 1
  store i32 %23, i32* %21, align 4
  %24 = load %struct.dl_rq*, %struct.dl_rq** %4, align 8
  %25 = call i32 @rq_of_dl_rq(%struct.dl_rq* %24)
  %26 = call i32 @add_nr_running(i32 %25, i32 1)
  %27 = load %struct.dl_rq*, %struct.dl_rq** %4, align 8
  %28 = load i32, i32* %6, align 4
  %29 = call i32 @inc_dl_deadline(%struct.dl_rq* %27, i32 %28)
  %30 = load %struct.sched_dl_entity*, %struct.sched_dl_entity** %3, align 8
  %31 = load %struct.dl_rq*, %struct.dl_rq** %4, align 8
  %32 = call i32 @inc_dl_migration(%struct.sched_dl_entity* %30, %struct.dl_rq* %31)
  ret void
}

declare dso_local %struct.TYPE_2__* @dl_task_of(%struct.sched_dl_entity*) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @dl_prio(i32) #1

declare dso_local i32 @add_nr_running(i32, i32) #1

declare dso_local i32 @rq_of_dl_rq(%struct.dl_rq*) #1

declare dso_local i32 @inc_dl_deadline(%struct.dl_rq*, i32) #1

declare dso_local i32 @inc_dl_migration(%struct.sched_dl_entity*, %struct.dl_rq*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
