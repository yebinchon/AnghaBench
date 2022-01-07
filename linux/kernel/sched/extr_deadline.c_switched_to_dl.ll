; ModuleID = '/home/carl/AnghaBench/linux/kernel/sched/extr_deadline.c_switched_to_dl.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/sched/extr_deadline.c_switched_to_dl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rq = type { %struct.task_struct*, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64 }
%struct.task_struct = type { i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rq*, %struct.task_struct*)* @switched_to_dl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @switched_to_dl(%struct.rq* %0, %struct.task_struct* %1) #0 {
  %3 = alloca %struct.rq*, align 8
  %4 = alloca %struct.task_struct*, align 8
  store %struct.rq* %0, %struct.rq** %3, align 8
  store %struct.task_struct* %1, %struct.task_struct** %4, align 8
  %5 = load %struct.task_struct*, %struct.task_struct** %4, align 8
  %6 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %5, i32 0, i32 1
  %7 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 0
  %8 = call i32 @hrtimer_try_to_cancel(i32* %7)
  %9 = icmp eq i32 %8, 1
  br i1 %9, label %10, label %13

10:                                               ; preds = %2
  %11 = load %struct.task_struct*, %struct.task_struct** %4, align 8
  %12 = call i32 @put_task_struct(%struct.task_struct* %11)
  br label %13

13:                                               ; preds = %10, %2
  %14 = load %struct.task_struct*, %struct.task_struct** %4, align 8
  %15 = call i32 @task_on_rq_queued(%struct.task_struct* %14)
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %23, label %17

17:                                               ; preds = %13
  %18 = load %struct.task_struct*, %struct.task_struct** %4, align 8
  %19 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %18, i32 0, i32 1
  %20 = load %struct.rq*, %struct.rq** %3, align 8
  %21 = getelementptr inbounds %struct.rq, %struct.rq* %20, i32 0, i32 1
  %22 = call i32 @add_rq_bw(%struct.TYPE_3__* %19, %struct.TYPE_4__* %21)
  br label %43

23:                                               ; preds = %13
  %24 = load %struct.rq*, %struct.rq** %3, align 8
  %25 = getelementptr inbounds %struct.rq, %struct.rq* %24, i32 0, i32 0
  %26 = load %struct.task_struct*, %struct.task_struct** %25, align 8
  %27 = load %struct.task_struct*, %struct.task_struct** %4, align 8
  %28 = icmp ne %struct.task_struct* %26, %27
  br i1 %28, label %29, label %43

29:                                               ; preds = %23
  %30 = load %struct.rq*, %struct.rq** %3, align 8
  %31 = getelementptr inbounds %struct.rq, %struct.rq* %30, i32 0, i32 0
  %32 = load %struct.task_struct*, %struct.task_struct** %31, align 8
  %33 = call i64 @dl_task(%struct.task_struct* %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %39

35:                                               ; preds = %29
  %36 = load %struct.rq*, %struct.rq** %3, align 8
  %37 = load %struct.task_struct*, %struct.task_struct** %4, align 8
  %38 = call i32 @check_preempt_curr_dl(%struct.rq* %36, %struct.task_struct* %37, i32 0)
  br label %42

39:                                               ; preds = %29
  %40 = load %struct.rq*, %struct.rq** %3, align 8
  %41 = call i32 @resched_curr(%struct.rq* %40)
  br label %42

42:                                               ; preds = %39, %35
  br label %43

43:                                               ; preds = %17, %42, %23
  ret void
}

declare dso_local i32 @hrtimer_try_to_cancel(i32*) #1

declare dso_local i32 @put_task_struct(%struct.task_struct*) #1

declare dso_local i32 @task_on_rq_queued(%struct.task_struct*) #1

declare dso_local i32 @add_rq_bw(%struct.TYPE_3__*, %struct.TYPE_4__*) #1

declare dso_local i64 @dl_task(%struct.task_struct*) #1

declare dso_local i32 @check_preempt_curr_dl(%struct.rq*, %struct.task_struct*, i32) #1

declare dso_local i32 @resched_curr(%struct.rq*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
