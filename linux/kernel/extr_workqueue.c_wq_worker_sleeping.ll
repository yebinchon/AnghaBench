; ModuleID = '/home/carl/AnghaBench/linux/kernel/extr_workqueue.c_wq_worker_sleeping.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/extr_workqueue.c_wq_worker_sleeping.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.task_struct = type { i32 }
%struct.worker = type { i32, i32, i32, %struct.worker_pool* }
%struct.worker_pool = type { i32, i32, i32 }

@WORKER_NOT_RUNNING = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @wq_worker_sleeping(%struct.task_struct* %0) #0 {
  %2 = alloca %struct.task_struct*, align 8
  %3 = alloca %struct.worker*, align 8
  %4 = alloca %struct.worker*, align 8
  %5 = alloca %struct.worker_pool*, align 8
  store %struct.task_struct* %0, %struct.task_struct** %2, align 8
  %6 = load %struct.task_struct*, %struct.task_struct** %2, align 8
  %7 = call %struct.worker* @kthread_data(%struct.task_struct* %6)
  store %struct.worker* %7, %struct.worker** %4, align 8
  %8 = load %struct.worker*, %struct.worker** %4, align 8
  %9 = getelementptr inbounds %struct.worker, %struct.worker* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = load i32, i32* @WORKER_NOT_RUNNING, align 4
  %12 = and i32 %10, %11
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %1
  br label %55

15:                                               ; preds = %1
  %16 = load %struct.worker*, %struct.worker** %4, align 8
  %17 = getelementptr inbounds %struct.worker, %struct.worker* %16, i32 0, i32 3
  %18 = load %struct.worker_pool*, %struct.worker_pool** %17, align 8
  store %struct.worker_pool* %18, %struct.worker_pool** %5, align 8
  %19 = load %struct.worker*, %struct.worker** %4, align 8
  %20 = getelementptr inbounds %struct.worker, %struct.worker* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = call i64 @WARN_ON_ONCE(i32 %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %15
  br label %55

25:                                               ; preds = %15
  %26 = load %struct.worker*, %struct.worker** %4, align 8
  %27 = getelementptr inbounds %struct.worker, %struct.worker* %26, i32 0, i32 1
  store i32 1, i32* %27, align 4
  %28 = load %struct.worker_pool*, %struct.worker_pool** %5, align 8
  %29 = getelementptr inbounds %struct.worker_pool, %struct.worker_pool* %28, i32 0, i32 0
  %30 = call i32 @spin_lock_irq(i32* %29)
  %31 = load %struct.worker_pool*, %struct.worker_pool** %5, align 8
  %32 = getelementptr inbounds %struct.worker_pool, %struct.worker_pool* %31, i32 0, i32 2
  %33 = call i64 @atomic_dec_and_test(i32* %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %51

35:                                               ; preds = %25
  %36 = load %struct.worker_pool*, %struct.worker_pool** %5, align 8
  %37 = getelementptr inbounds %struct.worker_pool, %struct.worker_pool* %36, i32 0, i32 1
  %38 = call i32 @list_empty(i32* %37)
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %51, label %40

40:                                               ; preds = %35
  %41 = load %struct.worker_pool*, %struct.worker_pool** %5, align 8
  %42 = call %struct.worker* @first_idle_worker(%struct.worker_pool* %41)
  store %struct.worker* %42, %struct.worker** %3, align 8
  %43 = load %struct.worker*, %struct.worker** %3, align 8
  %44 = icmp ne %struct.worker* %43, null
  br i1 %44, label %45, label %50

45:                                               ; preds = %40
  %46 = load %struct.worker*, %struct.worker** %3, align 8
  %47 = getelementptr inbounds %struct.worker, %struct.worker* %46, i32 0, i32 2
  %48 = load i32, i32* %47, align 8
  %49 = call i32 @wake_up_process(i32 %48)
  br label %50

50:                                               ; preds = %45, %40
  br label %51

51:                                               ; preds = %50, %35, %25
  %52 = load %struct.worker_pool*, %struct.worker_pool** %5, align 8
  %53 = getelementptr inbounds %struct.worker_pool, %struct.worker_pool* %52, i32 0, i32 0
  %54 = call i32 @spin_unlock_irq(i32* %53)
  br label %55

55:                                               ; preds = %51, %24, %14
  ret void
}

declare dso_local %struct.worker* @kthread_data(%struct.task_struct*) #1

declare dso_local i64 @WARN_ON_ONCE(i32) #1

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i64 @atomic_dec_and_test(i32*) #1

declare dso_local i32 @list_empty(i32*) #1

declare dso_local %struct.worker* @first_idle_worker(%struct.worker_pool*) #1

declare dso_local i32 @wake_up_process(i32) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
