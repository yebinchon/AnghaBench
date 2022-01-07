; ModuleID = '/home/carl/AnghaBench/linux/kernel/extr_workqueue.c_work_busy.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/extr_workqueue.c_work_busy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.work_struct = type { i32 }
%struct.worker_pool = type { i32 }

@WORK_BUSY_PENDING = common dso_local global i32 0, align 4
@WORK_BUSY_RUNNING = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @work_busy(%struct.work_struct* %0) #0 {
  %2 = alloca %struct.work_struct*, align 8
  %3 = alloca %struct.worker_pool*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  store %struct.work_struct* %0, %struct.work_struct** %2, align 8
  store i32 0, i32* %5, align 4
  %6 = load %struct.work_struct*, %struct.work_struct** %2, align 8
  %7 = call i64 @work_pending(%struct.work_struct* %6)
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %13

9:                                                ; preds = %1
  %10 = load i32, i32* @WORK_BUSY_PENDING, align 4
  %11 = load i32, i32* %5, align 4
  %12 = or i32 %11, %10
  store i32 %12, i32* %5, align 4
  br label %13

13:                                               ; preds = %9, %1
  %14 = call i32 (...) @rcu_read_lock()
  %15 = load %struct.work_struct*, %struct.work_struct** %2, align 8
  %16 = call %struct.worker_pool* @get_work_pool(%struct.work_struct* %15)
  store %struct.worker_pool* %16, %struct.worker_pool** %3, align 8
  %17 = load %struct.worker_pool*, %struct.worker_pool** %3, align 8
  %18 = icmp ne %struct.worker_pool* %17, null
  br i1 %18, label %19, label %37

19:                                               ; preds = %13
  %20 = load %struct.worker_pool*, %struct.worker_pool** %3, align 8
  %21 = getelementptr inbounds %struct.worker_pool, %struct.worker_pool* %20, i32 0, i32 0
  %22 = load i64, i64* %4, align 8
  %23 = call i32 @spin_lock_irqsave(i32* %21, i64 %22)
  %24 = load %struct.worker_pool*, %struct.worker_pool** %3, align 8
  %25 = load %struct.work_struct*, %struct.work_struct** %2, align 8
  %26 = call i64 @find_worker_executing_work(%struct.worker_pool* %24, %struct.work_struct* %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %32

28:                                               ; preds = %19
  %29 = load i32, i32* @WORK_BUSY_RUNNING, align 4
  %30 = load i32, i32* %5, align 4
  %31 = or i32 %30, %29
  store i32 %31, i32* %5, align 4
  br label %32

32:                                               ; preds = %28, %19
  %33 = load %struct.worker_pool*, %struct.worker_pool** %3, align 8
  %34 = getelementptr inbounds %struct.worker_pool, %struct.worker_pool* %33, i32 0, i32 0
  %35 = load i64, i64* %4, align 8
  %36 = call i32 @spin_unlock_irqrestore(i32* %34, i64 %35)
  br label %37

37:                                               ; preds = %32, %13
  %38 = call i32 (...) @rcu_read_unlock()
  %39 = load i32, i32* %5, align 4
  ret i32 %39
}

declare dso_local i64 @work_pending(%struct.work_struct*) #1

declare dso_local i32 @rcu_read_lock(...) #1

declare dso_local %struct.worker_pool* @get_work_pool(%struct.work_struct*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i64 @find_worker_executing_work(%struct.worker_pool*, %struct.work_struct*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @rcu_read_unlock(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
