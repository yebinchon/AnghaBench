; ModuleID = '/home/carl/AnghaBench/linux/kernel/sched/extr_deadline.c_dequeue_task_dl.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/sched/extr_deadline.c_dequeue_task_dl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rq = type { i32 }
%struct.task_struct = type { i64, i32 }

@TASK_ON_RQ_MIGRATING = common dso_local global i64 0, align 8
@DEQUEUE_SAVE = common dso_local global i32 0, align 4
@DEQUEUE_SLEEP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rq*, %struct.task_struct*, i32)* @dequeue_task_dl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dequeue_task_dl(%struct.rq* %0, %struct.task_struct* %1, i32 %2) #0 {
  %4 = alloca %struct.rq*, align 8
  %5 = alloca %struct.task_struct*, align 8
  %6 = alloca i32, align 4
  store %struct.rq* %0, %struct.rq** %4, align 8
  store %struct.task_struct* %1, %struct.task_struct** %5, align 8
  store i32 %2, i32* %6, align 4
  %7 = load %struct.rq*, %struct.rq** %4, align 8
  %8 = call i32 @update_curr_dl(%struct.rq* %7)
  %9 = load %struct.rq*, %struct.rq** %4, align 8
  %10 = load %struct.task_struct*, %struct.task_struct** %5, align 8
  %11 = load i32, i32* %6, align 4
  %12 = call i32 @__dequeue_task_dl(%struct.rq* %9, %struct.task_struct* %10, i32 %11)
  %13 = load %struct.task_struct*, %struct.task_struct** %5, align 8
  %14 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @TASK_ON_RQ_MIGRATING, align 8
  %17 = icmp eq i64 %15, %16
  br i1 %17, label %23, label %18

18:                                               ; preds = %3
  %19 = load i32, i32* %6, align 4
  %20 = load i32, i32* @DEQUEUE_SAVE, align 4
  %21 = and i32 %19, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %34

23:                                               ; preds = %18, %3
  %24 = load %struct.task_struct*, %struct.task_struct** %5, align 8
  %25 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %24, i32 0, i32 1
  %26 = load %struct.rq*, %struct.rq** %4, align 8
  %27 = getelementptr inbounds %struct.rq, %struct.rq* %26, i32 0, i32 0
  %28 = call i32 @sub_running_bw(i32* %25, i32* %27)
  %29 = load %struct.task_struct*, %struct.task_struct** %5, align 8
  %30 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %29, i32 0, i32 1
  %31 = load %struct.rq*, %struct.rq** %4, align 8
  %32 = getelementptr inbounds %struct.rq, %struct.rq* %31, i32 0, i32 0
  %33 = call i32 @sub_rq_bw(i32* %30, i32* %32)
  br label %34

34:                                               ; preds = %23, %18
  %35 = load i32, i32* %6, align 4
  %36 = load i32, i32* @DEQUEUE_SLEEP, align 4
  %37 = and i32 %35, %36
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %42

39:                                               ; preds = %34
  %40 = load %struct.task_struct*, %struct.task_struct** %5, align 8
  %41 = call i32 @task_non_contending(%struct.task_struct* %40)
  br label %42

42:                                               ; preds = %39, %34
  ret void
}

declare dso_local i32 @update_curr_dl(%struct.rq*) #1

declare dso_local i32 @__dequeue_task_dl(%struct.rq*, %struct.task_struct*, i32) #1

declare dso_local i32 @sub_running_bw(i32*, i32*) #1

declare dso_local i32 @sub_rq_bw(i32*, i32*) #1

declare dso_local i32 @task_non_contending(%struct.task_struct*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
