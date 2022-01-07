; ModuleID = '/home/carl/AnghaBench/linux/kernel/sched/extr_deadline.c_dl_change_utilization.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/sched/extr_deadline.c_dl_change_utilization.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.task_struct = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32, i64 }
%struct.rq = type { i32 }

@SCHED_FLAG_SUGOV = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @dl_change_utilization(%struct.task_struct* %0, i32 %1) #0 {
  %3 = alloca %struct.task_struct*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.rq*, align 8
  store %struct.task_struct* %0, %struct.task_struct** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.task_struct*, %struct.task_struct** %3, align 8
  %7 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = load i32, i32* @SCHED_FLAG_SUGOV, align 4
  %11 = and i32 %9, %10
  %12 = call i32 @BUG_ON(i32 %11)
  %13 = load %struct.task_struct*, %struct.task_struct** %3, align 8
  %14 = call i64 @task_on_rq_queued(%struct.task_struct* %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %2
  br label %55

17:                                               ; preds = %2
  %18 = load %struct.task_struct*, %struct.task_struct** %3, align 8
  %19 = call %struct.rq* @task_rq(%struct.task_struct* %18)
  store %struct.rq* %19, %struct.rq** %5, align 8
  %20 = load %struct.task_struct*, %struct.task_struct** %3, align 8
  %21 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 3
  %23 = load i64, i64* %22, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %43

25:                                               ; preds = %17
  %26 = load %struct.task_struct*, %struct.task_struct** %3, align 8
  %27 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %26, i32 0, i32 0
  %28 = load %struct.rq*, %struct.rq** %5, align 8
  %29 = getelementptr inbounds %struct.rq, %struct.rq* %28, i32 0, i32 0
  %30 = call i32 @sub_running_bw(%struct.TYPE_2__* %27, i32* %29)
  %31 = load %struct.task_struct*, %struct.task_struct** %3, align 8
  %32 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 3
  store i64 0, i64* %33, align 8
  %34 = load %struct.task_struct*, %struct.task_struct** %3, align 8
  %35 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 2
  %37 = call i32 @hrtimer_try_to_cancel(i32* %36)
  %38 = icmp eq i32 %37, 1
  br i1 %38, label %39, label %42

39:                                               ; preds = %25
  %40 = load %struct.task_struct*, %struct.task_struct** %3, align 8
  %41 = call i32 @put_task_struct(%struct.task_struct* %40)
  br label %42

42:                                               ; preds = %39, %25
  br label %43

43:                                               ; preds = %42, %17
  %44 = load %struct.task_struct*, %struct.task_struct** %3, align 8
  %45 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.rq*, %struct.rq** %5, align 8
  %49 = getelementptr inbounds %struct.rq, %struct.rq* %48, i32 0, i32 0
  %50 = call i32 @__sub_rq_bw(i32 %47, i32* %49)
  %51 = load i32, i32* %4, align 4
  %52 = load %struct.rq*, %struct.rq** %5, align 8
  %53 = getelementptr inbounds %struct.rq, %struct.rq* %52, i32 0, i32 0
  %54 = call i32 @__add_rq_bw(i32 %51, i32* %53)
  br label %55

55:                                               ; preds = %43, %16
  ret void
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i64 @task_on_rq_queued(%struct.task_struct*) #1

declare dso_local %struct.rq* @task_rq(%struct.task_struct*) #1

declare dso_local i32 @sub_running_bw(%struct.TYPE_2__*, i32*) #1

declare dso_local i32 @hrtimer_try_to_cancel(i32*) #1

declare dso_local i32 @put_task_struct(%struct.task_struct*) #1

declare dso_local i32 @__sub_rq_bw(i32, i32*) #1

declare dso_local i32 @__add_rq_bw(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
