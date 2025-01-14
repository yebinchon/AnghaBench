; ModuleID = '/home/carl/AnghaBench/linux/kernel/sched/extr_fair.c_switched_to_fair.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/sched/extr_fair.c_switched_to_fair.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rq = type { %struct.task_struct* }
%struct.task_struct = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rq*, %struct.task_struct*)* @switched_to_fair to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @switched_to_fair(%struct.rq* %0, %struct.task_struct* %1) #0 {
  %3 = alloca %struct.rq*, align 8
  %4 = alloca %struct.task_struct*, align 8
  store %struct.rq* %0, %struct.rq** %3, align 8
  store %struct.task_struct* %1, %struct.task_struct** %4, align 8
  %5 = load %struct.task_struct*, %struct.task_struct** %4, align 8
  %6 = call i32 @attach_task_cfs_rq(%struct.task_struct* %5)
  %7 = load %struct.task_struct*, %struct.task_struct** %4, align 8
  %8 = call i64 @task_on_rq_queued(%struct.task_struct* %7)
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %24

10:                                               ; preds = %2
  %11 = load %struct.rq*, %struct.rq** %3, align 8
  %12 = getelementptr inbounds %struct.rq, %struct.rq* %11, i32 0, i32 0
  %13 = load %struct.task_struct*, %struct.task_struct** %12, align 8
  %14 = load %struct.task_struct*, %struct.task_struct** %4, align 8
  %15 = icmp eq %struct.task_struct* %13, %14
  br i1 %15, label %16, label %19

16:                                               ; preds = %10
  %17 = load %struct.rq*, %struct.rq** %3, align 8
  %18 = call i32 @resched_curr(%struct.rq* %17)
  br label %23

19:                                               ; preds = %10
  %20 = load %struct.rq*, %struct.rq** %3, align 8
  %21 = load %struct.task_struct*, %struct.task_struct** %4, align 8
  %22 = call i32 @check_preempt_curr(%struct.rq* %20, %struct.task_struct* %21, i32 0)
  br label %23

23:                                               ; preds = %19, %16
  br label %24

24:                                               ; preds = %23, %2
  ret void
}

declare dso_local i32 @attach_task_cfs_rq(%struct.task_struct*) #1

declare dso_local i64 @task_on_rq_queued(%struct.task_struct*) #1

declare dso_local i32 @resched_curr(%struct.rq*) #1

declare dso_local i32 @check_preempt_curr(%struct.rq*, %struct.task_struct*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
