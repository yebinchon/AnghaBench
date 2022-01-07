; ModuleID = '/home/carl/AnghaBench/linux/kernel/sched/extr_rt.c__pick_next_task_rt.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/sched/extr_rt.c__pick_next_task_rt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.task_struct = type { i32 }
%struct.rq = type { %struct.rt_rq }
%struct.rt_rq = type { i32 }
%struct.sched_rt_entity = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.task_struct* (%struct.rq*)* @_pick_next_task_rt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.task_struct* @_pick_next_task_rt(%struct.rq* %0) #0 {
  %2 = alloca %struct.rq*, align 8
  %3 = alloca %struct.sched_rt_entity*, align 8
  %4 = alloca %struct.rt_rq*, align 8
  store %struct.rq* %0, %struct.rq** %2, align 8
  %5 = load %struct.rq*, %struct.rq** %2, align 8
  %6 = getelementptr inbounds %struct.rq, %struct.rq* %5, i32 0, i32 0
  store %struct.rt_rq* %6, %struct.rt_rq** %4, align 8
  br label %7

7:                                                ; preds = %18, %1
  %8 = load %struct.rq*, %struct.rq** %2, align 8
  %9 = load %struct.rt_rq*, %struct.rt_rq** %4, align 8
  %10 = call %struct.sched_rt_entity* @pick_next_rt_entity(%struct.rq* %8, %struct.rt_rq* %9)
  store %struct.sched_rt_entity* %10, %struct.sched_rt_entity** %3, align 8
  %11 = load %struct.sched_rt_entity*, %struct.sched_rt_entity** %3, align 8
  %12 = icmp ne %struct.sched_rt_entity* %11, null
  %13 = xor i1 %12, true
  %14 = zext i1 %13 to i32
  %15 = call i32 @BUG_ON(i32 %14)
  %16 = load %struct.sched_rt_entity*, %struct.sched_rt_entity** %3, align 8
  %17 = call %struct.rt_rq* @group_rt_rq(%struct.sched_rt_entity* %16)
  store %struct.rt_rq* %17, %struct.rt_rq** %4, align 8
  br label %18

18:                                               ; preds = %7
  %19 = load %struct.rt_rq*, %struct.rt_rq** %4, align 8
  %20 = icmp ne %struct.rt_rq* %19, null
  br i1 %20, label %7, label %21

21:                                               ; preds = %18
  %22 = load %struct.sched_rt_entity*, %struct.sched_rt_entity** %3, align 8
  %23 = call %struct.task_struct* @rt_task_of(%struct.sched_rt_entity* %22)
  ret %struct.task_struct* %23
}

declare dso_local %struct.sched_rt_entity* @pick_next_rt_entity(%struct.rq*, %struct.rt_rq*) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local %struct.rt_rq* @group_rt_rq(%struct.sched_rt_entity*) #1

declare dso_local %struct.task_struct* @rt_task_of(%struct.sched_rt_entity*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
