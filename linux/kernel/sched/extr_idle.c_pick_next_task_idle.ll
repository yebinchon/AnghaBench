; ModuleID = '/home/carl/AnghaBench/linux/kernel/sched/extr_idle.c_pick_next_task_idle.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/sched/extr_idle.c_pick_next_task_idle.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rq = type { %struct.task_struct* }
%struct.task_struct = type { i32 }
%struct.rq_flags = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.task_struct* (%struct.rq*, %struct.task_struct*, %struct.rq_flags*)* @pick_next_task_idle to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.task_struct* @pick_next_task_idle(%struct.rq* %0, %struct.task_struct* %1, %struct.rq_flags* %2) #0 {
  %4 = alloca %struct.rq*, align 8
  %5 = alloca %struct.task_struct*, align 8
  %6 = alloca %struct.rq_flags*, align 8
  %7 = alloca %struct.task_struct*, align 8
  store %struct.rq* %0, %struct.rq** %4, align 8
  store %struct.task_struct* %1, %struct.task_struct** %5, align 8
  store %struct.rq_flags* %2, %struct.rq_flags** %6, align 8
  %8 = load %struct.rq*, %struct.rq** %4, align 8
  %9 = getelementptr inbounds %struct.rq, %struct.rq* %8, i32 0, i32 0
  %10 = load %struct.task_struct*, %struct.task_struct** %9, align 8
  store %struct.task_struct* %10, %struct.task_struct** %7, align 8
  %11 = load %struct.task_struct*, %struct.task_struct** %5, align 8
  %12 = icmp ne %struct.task_struct* %11, null
  br i1 %12, label %13, label %17

13:                                               ; preds = %3
  %14 = load %struct.rq*, %struct.rq** %4, align 8
  %15 = load %struct.task_struct*, %struct.task_struct** %5, align 8
  %16 = call i32 @put_prev_task(%struct.rq* %14, %struct.task_struct* %15)
  br label %17

17:                                               ; preds = %13, %3
  %18 = load %struct.rq*, %struct.rq** %4, align 8
  %19 = load %struct.task_struct*, %struct.task_struct** %7, align 8
  %20 = call i32 @set_next_task_idle(%struct.rq* %18, %struct.task_struct* %19)
  %21 = load %struct.task_struct*, %struct.task_struct** %7, align 8
  ret %struct.task_struct* %21
}

declare dso_local i32 @put_prev_task(%struct.rq*, %struct.task_struct*) #1

declare dso_local i32 @set_next_task_idle(%struct.rq*, %struct.task_struct*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
