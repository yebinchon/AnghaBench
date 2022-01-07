; ModuleID = '/home/carl/AnghaBench/linux/kernel/sched/extr_deadline.c_dec_dl_tasks.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/sched/extr_deadline.c_dec_dl_tasks.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sched_dl_entity = type { i32 }
%struct.dl_rq = type { i32 }
%struct.TYPE_2__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sched_dl_entity*, %struct.dl_rq*)* @dec_dl_tasks to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dec_dl_tasks(%struct.sched_dl_entity* %0, %struct.dl_rq* %1) #0 {
  %3 = alloca %struct.sched_dl_entity*, align 8
  %4 = alloca %struct.dl_rq*, align 8
  %5 = alloca i32, align 4
  store %struct.sched_dl_entity* %0, %struct.sched_dl_entity** %3, align 8
  store %struct.dl_rq* %1, %struct.dl_rq** %4, align 8
  %6 = load %struct.sched_dl_entity*, %struct.sched_dl_entity** %3, align 8
  %7 = call %struct.TYPE_2__* @dl_task_of(%struct.sched_dl_entity* %6)
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  store i32 %9, i32* %5, align 4
  %10 = load i32, i32* %5, align 4
  %11 = call i32 @dl_prio(i32 %10)
  %12 = icmp ne i32 %11, 0
  %13 = xor i1 %12, true
  %14 = zext i1 %13 to i32
  %15 = call i32 @WARN_ON(i32 %14)
  %16 = load %struct.dl_rq*, %struct.dl_rq** %4, align 8
  %17 = getelementptr inbounds %struct.dl_rq, %struct.dl_rq* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = icmp ne i32 %18, 0
  %20 = xor i1 %19, true
  %21 = zext i1 %20 to i32
  %22 = call i32 @WARN_ON(i32 %21)
  %23 = load %struct.dl_rq*, %struct.dl_rq** %4, align 8
  %24 = getelementptr inbounds %struct.dl_rq, %struct.dl_rq* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = add nsw i32 %25, -1
  store i32 %26, i32* %24, align 4
  %27 = load %struct.dl_rq*, %struct.dl_rq** %4, align 8
  %28 = call i32 @rq_of_dl_rq(%struct.dl_rq* %27)
  %29 = call i32 @sub_nr_running(i32 %28, i32 1)
  %30 = load %struct.dl_rq*, %struct.dl_rq** %4, align 8
  %31 = load %struct.sched_dl_entity*, %struct.sched_dl_entity** %3, align 8
  %32 = getelementptr inbounds %struct.sched_dl_entity, %struct.sched_dl_entity* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @dec_dl_deadline(%struct.dl_rq* %30, i32 %33)
  %35 = load %struct.sched_dl_entity*, %struct.sched_dl_entity** %3, align 8
  %36 = load %struct.dl_rq*, %struct.dl_rq** %4, align 8
  %37 = call i32 @dec_dl_migration(%struct.sched_dl_entity* %35, %struct.dl_rq* %36)
  ret void
}

declare dso_local %struct.TYPE_2__* @dl_task_of(%struct.sched_dl_entity*) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @dl_prio(i32) #1

declare dso_local i32 @sub_nr_running(i32, i32) #1

declare dso_local i32 @rq_of_dl_rq(%struct.dl_rq*) #1

declare dso_local i32 @dec_dl_deadline(%struct.dl_rq*, i32) #1

declare dso_local i32 @dec_dl_migration(%struct.sched_dl_entity*, %struct.dl_rq*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
