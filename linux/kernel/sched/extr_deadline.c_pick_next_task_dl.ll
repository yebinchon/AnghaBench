; ModuleID = '/home/carl/AnghaBench/linux/kernel/sched/extr_deadline.c_pick_next_task_dl.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/sched/extr_deadline.c_pick_next_task_dl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rq = type { %struct.dl_rq }
%struct.dl_rq = type { i32 }
%struct.task_struct = type { i32 }
%struct.rq_flags = type { i32 }
%struct.sched_dl_entity = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.task_struct* (%struct.rq*, %struct.task_struct*, %struct.rq_flags*)* @pick_next_task_dl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.task_struct* @pick_next_task_dl(%struct.rq* %0, %struct.task_struct* %1, %struct.rq_flags* %2) #0 {
  %4 = alloca %struct.task_struct*, align 8
  %5 = alloca %struct.rq*, align 8
  %6 = alloca %struct.task_struct*, align 8
  %7 = alloca %struct.rq_flags*, align 8
  %8 = alloca %struct.sched_dl_entity*, align 8
  %9 = alloca %struct.dl_rq*, align 8
  %10 = alloca %struct.task_struct*, align 8
  store %struct.rq* %0, %struct.rq** %5, align 8
  store %struct.task_struct* %1, %struct.task_struct** %6, align 8
  store %struct.rq_flags* %2, %struct.rq_flags** %7, align 8
  %11 = load %struct.rq*, %struct.rq** %5, align 8
  %12 = getelementptr inbounds %struct.rq, %struct.rq* %11, i32 0, i32 0
  store %struct.dl_rq* %12, %struct.dl_rq** %9, align 8
  %13 = load %struct.task_struct*, %struct.task_struct** %6, align 8
  %14 = icmp ne %struct.task_struct* %13, null
  br i1 %14, label %18, label %15

15:                                               ; preds = %3
  %16 = load %struct.rq_flags*, %struct.rq_flags** %7, align 8
  %17 = icmp ne %struct.rq_flags* %16, null
  br label %18

18:                                               ; preds = %15, %3
  %19 = phi i1 [ true, %3 ], [ %17, %15 ]
  %20 = zext i1 %19 to i32
  %21 = call i32 @WARN_ON_ONCE(i32 %20)
  %22 = load %struct.rq*, %struct.rq** %5, align 8
  %23 = call i32 @sched_dl_runnable(%struct.rq* %22)
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %26, label %25

25:                                               ; preds = %18
  store %struct.task_struct* null, %struct.task_struct** %4, align 8
  br label %41

26:                                               ; preds = %18
  %27 = load %struct.rq*, %struct.rq** %5, align 8
  %28 = load %struct.dl_rq*, %struct.dl_rq** %9, align 8
  %29 = call %struct.sched_dl_entity* @pick_next_dl_entity(%struct.rq* %27, %struct.dl_rq* %28)
  store %struct.sched_dl_entity* %29, %struct.sched_dl_entity** %8, align 8
  %30 = load %struct.sched_dl_entity*, %struct.sched_dl_entity** %8, align 8
  %31 = icmp ne %struct.sched_dl_entity* %30, null
  %32 = xor i1 %31, true
  %33 = zext i1 %32 to i32
  %34 = call i32 @BUG_ON(i32 %33)
  %35 = load %struct.sched_dl_entity*, %struct.sched_dl_entity** %8, align 8
  %36 = call %struct.task_struct* @dl_task_of(%struct.sched_dl_entity* %35)
  store %struct.task_struct* %36, %struct.task_struct** %10, align 8
  %37 = load %struct.rq*, %struct.rq** %5, align 8
  %38 = load %struct.task_struct*, %struct.task_struct** %10, align 8
  %39 = call i32 @set_next_task_dl(%struct.rq* %37, %struct.task_struct* %38)
  %40 = load %struct.task_struct*, %struct.task_struct** %10, align 8
  store %struct.task_struct* %40, %struct.task_struct** %4, align 8
  br label %41

41:                                               ; preds = %26, %25
  %42 = load %struct.task_struct*, %struct.task_struct** %4, align 8
  ret %struct.task_struct* %42
}

declare dso_local i32 @WARN_ON_ONCE(i32) #1

declare dso_local i32 @sched_dl_runnable(%struct.rq*) #1

declare dso_local %struct.sched_dl_entity* @pick_next_dl_entity(%struct.rq*, %struct.dl_rq*) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local %struct.task_struct* @dl_task_of(%struct.sched_dl_entity*) #1

declare dso_local i32 @set_next_task_dl(%struct.rq*, %struct.task_struct*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
