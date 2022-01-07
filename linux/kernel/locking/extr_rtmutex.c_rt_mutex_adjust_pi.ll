; ModuleID = '/home/carl/AnghaBench/linux/kernel/locking/extr_rtmutex.c_rt_mutex_adjust_pi.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/locking/extr_rtmutex.c_rt_mutex_adjust_pi.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.task_struct = type { i32, %struct.rt_mutex_waiter* }
%struct.rt_mutex_waiter = type { %struct.rt_mutex* }
%struct.rt_mutex = type { i32 }

@RT_MUTEX_MIN_CHAINWALK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rt_mutex_adjust_pi(%struct.task_struct* %0) #0 {
  %2 = alloca %struct.task_struct*, align 8
  %3 = alloca %struct.rt_mutex_waiter*, align 8
  %4 = alloca %struct.rt_mutex*, align 8
  %5 = alloca i64, align 8
  store %struct.task_struct* %0, %struct.task_struct** %2, align 8
  %6 = load %struct.task_struct*, %struct.task_struct** %2, align 8
  %7 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %6, i32 0, i32 0
  %8 = load i64, i64* %5, align 8
  %9 = call i32 @raw_spin_lock_irqsave(i32* %7, i64 %8)
  %10 = load %struct.task_struct*, %struct.task_struct** %2, align 8
  %11 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %10, i32 0, i32 1
  %12 = load %struct.rt_mutex_waiter*, %struct.rt_mutex_waiter** %11, align 8
  store %struct.rt_mutex_waiter* %12, %struct.rt_mutex_waiter** %3, align 8
  %13 = load %struct.rt_mutex_waiter*, %struct.rt_mutex_waiter** %3, align 8
  %14 = icmp ne %struct.rt_mutex_waiter* %13, null
  br i1 %14, label %15, label %21

15:                                               ; preds = %1
  %16 = load %struct.rt_mutex_waiter*, %struct.rt_mutex_waiter** %3, align 8
  %17 = load %struct.task_struct*, %struct.task_struct** %2, align 8
  %18 = call i32 @task_to_waiter(%struct.task_struct* %17)
  %19 = call i64 @rt_mutex_waiter_equal(%struct.rt_mutex_waiter* %16, i32 %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %26

21:                                               ; preds = %15, %1
  %22 = load %struct.task_struct*, %struct.task_struct** %2, align 8
  %23 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %22, i32 0, i32 0
  %24 = load i64, i64* %5, align 8
  %25 = call i32 @raw_spin_unlock_irqrestore(i32* %23, i64 %24)
  br label %41

26:                                               ; preds = %15
  %27 = load %struct.rt_mutex_waiter*, %struct.rt_mutex_waiter** %3, align 8
  %28 = getelementptr inbounds %struct.rt_mutex_waiter, %struct.rt_mutex_waiter* %27, i32 0, i32 0
  %29 = load %struct.rt_mutex*, %struct.rt_mutex** %28, align 8
  store %struct.rt_mutex* %29, %struct.rt_mutex** %4, align 8
  %30 = load %struct.task_struct*, %struct.task_struct** %2, align 8
  %31 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %30, i32 0, i32 0
  %32 = load i64, i64* %5, align 8
  %33 = call i32 @raw_spin_unlock_irqrestore(i32* %31, i64 %32)
  %34 = load %struct.task_struct*, %struct.task_struct** %2, align 8
  %35 = call i32 @get_task_struct(%struct.task_struct* %34)
  %36 = load %struct.task_struct*, %struct.task_struct** %2, align 8
  %37 = load i32, i32* @RT_MUTEX_MIN_CHAINWALK, align 4
  %38 = load %struct.rt_mutex*, %struct.rt_mutex** %4, align 8
  %39 = load %struct.task_struct*, %struct.task_struct** %2, align 8
  %40 = call i32 @rt_mutex_adjust_prio_chain(%struct.task_struct* %36, i32 %37, i32* null, %struct.rt_mutex* %38, i32* null, %struct.task_struct* %39)
  br label %41

41:                                               ; preds = %26, %21
  ret void
}

declare dso_local i32 @raw_spin_lock_irqsave(i32*, i64) #1

declare dso_local i64 @rt_mutex_waiter_equal(%struct.rt_mutex_waiter*, i32) #1

declare dso_local i32 @task_to_waiter(%struct.task_struct*) #1

declare dso_local i32 @raw_spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @get_task_struct(%struct.task_struct*) #1

declare dso_local i32 @rt_mutex_adjust_prio_chain(%struct.task_struct*, i32, i32*, %struct.rt_mutex*, i32*, %struct.task_struct*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
