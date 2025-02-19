; ModuleID = '/home/carl/AnghaBench/linux/kernel/sched/extr_rt.c_pick_next_task_rt.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/sched/extr_rt.c_pick_next_task_rt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rq = type { i32 }
%struct.task_struct = type { i32 }
%struct.rq_flags = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.task_struct* (%struct.rq*, %struct.task_struct*, %struct.rq_flags*)* @pick_next_task_rt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.task_struct* @pick_next_task_rt(%struct.rq* %0, %struct.task_struct* %1, %struct.rq_flags* %2) #0 {
  %4 = alloca %struct.task_struct*, align 8
  %5 = alloca %struct.rq*, align 8
  %6 = alloca %struct.task_struct*, align 8
  %7 = alloca %struct.rq_flags*, align 8
  %8 = alloca %struct.task_struct*, align 8
  store %struct.rq* %0, %struct.rq** %5, align 8
  store %struct.task_struct* %1, %struct.task_struct** %6, align 8
  store %struct.rq_flags* %2, %struct.rq_flags** %7, align 8
  %9 = load %struct.task_struct*, %struct.task_struct** %6, align 8
  %10 = icmp ne %struct.task_struct* %9, null
  br i1 %10, label %14, label %11

11:                                               ; preds = %3
  %12 = load %struct.rq_flags*, %struct.rq_flags** %7, align 8
  %13 = icmp ne %struct.rq_flags* %12, null
  br label %14

14:                                               ; preds = %11, %3
  %15 = phi i1 [ true, %3 ], [ %13, %11 ]
  %16 = zext i1 %15 to i32
  %17 = call i32 @WARN_ON_ONCE(i32 %16)
  %18 = load %struct.rq*, %struct.rq** %5, align 8
  %19 = call i32 @sched_rt_runnable(%struct.rq* %18)
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %22, label %21

21:                                               ; preds = %14
  store %struct.task_struct* null, %struct.task_struct** %4, align 8
  br label %29

22:                                               ; preds = %14
  %23 = load %struct.rq*, %struct.rq** %5, align 8
  %24 = call %struct.task_struct* @_pick_next_task_rt(%struct.rq* %23)
  store %struct.task_struct* %24, %struct.task_struct** %8, align 8
  %25 = load %struct.rq*, %struct.rq** %5, align 8
  %26 = load %struct.task_struct*, %struct.task_struct** %8, align 8
  %27 = call i32 @set_next_task_rt(%struct.rq* %25, %struct.task_struct* %26)
  %28 = load %struct.task_struct*, %struct.task_struct** %8, align 8
  store %struct.task_struct* %28, %struct.task_struct** %4, align 8
  br label %29

29:                                               ; preds = %22, %21
  %30 = load %struct.task_struct*, %struct.task_struct** %4, align 8
  ret %struct.task_struct* %30
}

declare dso_local i32 @WARN_ON_ONCE(i32) #1

declare dso_local i32 @sched_rt_runnable(%struct.rq*) #1

declare dso_local %struct.task_struct* @_pick_next_task_rt(%struct.rq*) #1

declare dso_local i32 @set_next_task_rt(%struct.rq*, %struct.task_struct*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
