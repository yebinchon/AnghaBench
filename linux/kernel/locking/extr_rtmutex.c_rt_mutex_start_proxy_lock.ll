; ModuleID = '/home/carl/AnghaBench/linux/kernel/locking/extr_rtmutex.c_rt_mutex_start_proxy_lock.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/locking/extr_rtmutex.c_rt_mutex_start_proxy_lock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rt_mutex = type { i32 }
%struct.rt_mutex_waiter = type { i32 }
%struct.task_struct = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rt_mutex_start_proxy_lock(%struct.rt_mutex* %0, %struct.rt_mutex_waiter* %1, %struct.task_struct* %2) #0 {
  %4 = alloca %struct.rt_mutex*, align 8
  %5 = alloca %struct.rt_mutex_waiter*, align 8
  %6 = alloca %struct.task_struct*, align 8
  %7 = alloca i32, align 4
  store %struct.rt_mutex* %0, %struct.rt_mutex** %4, align 8
  store %struct.rt_mutex_waiter* %1, %struct.rt_mutex_waiter** %5, align 8
  store %struct.task_struct* %2, %struct.task_struct** %6, align 8
  %8 = load %struct.rt_mutex*, %struct.rt_mutex** %4, align 8
  %9 = getelementptr inbounds %struct.rt_mutex, %struct.rt_mutex* %8, i32 0, i32 0
  %10 = call i32 @raw_spin_lock_irq(i32* %9)
  %11 = load %struct.rt_mutex*, %struct.rt_mutex** %4, align 8
  %12 = load %struct.rt_mutex_waiter*, %struct.rt_mutex_waiter** %5, align 8
  %13 = load %struct.task_struct*, %struct.task_struct** %6, align 8
  %14 = call i32 @__rt_mutex_start_proxy_lock(%struct.rt_mutex* %11, %struct.rt_mutex_waiter* %12, %struct.task_struct* %13)
  store i32 %14, i32* %7, align 4
  %15 = load i32, i32* %7, align 4
  %16 = call i64 @unlikely(i32 %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %22

18:                                               ; preds = %3
  %19 = load %struct.rt_mutex*, %struct.rt_mutex** %4, align 8
  %20 = load %struct.rt_mutex_waiter*, %struct.rt_mutex_waiter** %5, align 8
  %21 = call i32 @remove_waiter(%struct.rt_mutex* %19, %struct.rt_mutex_waiter* %20)
  br label %22

22:                                               ; preds = %18, %3
  %23 = load %struct.rt_mutex*, %struct.rt_mutex** %4, align 8
  %24 = getelementptr inbounds %struct.rt_mutex, %struct.rt_mutex* %23, i32 0, i32 0
  %25 = call i32 @raw_spin_unlock_irq(i32* %24)
  %26 = load i32, i32* %7, align 4
  ret i32 %26
}

declare dso_local i32 @raw_spin_lock_irq(i32*) #1

declare dso_local i32 @__rt_mutex_start_proxy_lock(%struct.rt_mutex*, %struct.rt_mutex_waiter*, %struct.task_struct*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @remove_waiter(%struct.rt_mutex*, %struct.rt_mutex_waiter*) #1

declare dso_local i32 @raw_spin_unlock_irq(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
