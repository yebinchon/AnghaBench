; ModuleID = '/home/carl/AnghaBench/linux/kernel/locking/extr_rtmutex.c_mark_wakeup_next_waiter.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/locking/extr_rtmutex.c_mark_wakeup_next_waiter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }
%struct.wake_q_head = type { i32 }
%struct.rt_mutex = type { i8* }
%struct.rt_mutex_waiter = type { i32 }

@current = common dso_local global %struct.TYPE_4__* null, align 8
@RT_MUTEX_HAS_WAITERS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.wake_q_head*, %struct.rt_mutex*)* @mark_wakeup_next_waiter to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mark_wakeup_next_waiter(%struct.wake_q_head* %0, %struct.rt_mutex* %1) #0 {
  %3 = alloca %struct.wake_q_head*, align 8
  %4 = alloca %struct.rt_mutex*, align 8
  %5 = alloca %struct.rt_mutex_waiter*, align 8
  store %struct.wake_q_head* %0, %struct.wake_q_head** %3, align 8
  store %struct.rt_mutex* %1, %struct.rt_mutex** %4, align 8
  %6 = load %struct.TYPE_4__*, %struct.TYPE_4__** @current, align 8
  %7 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %6, i32 0, i32 0
  %8 = call i32 @raw_spin_lock(i32* %7)
  %9 = load %struct.rt_mutex*, %struct.rt_mutex** %4, align 8
  %10 = call %struct.rt_mutex_waiter* @rt_mutex_top_waiter(%struct.rt_mutex* %9)
  store %struct.rt_mutex_waiter* %10, %struct.rt_mutex_waiter** %5, align 8
  %11 = load %struct.TYPE_4__*, %struct.TYPE_4__** @current, align 8
  %12 = load %struct.rt_mutex_waiter*, %struct.rt_mutex_waiter** %5, align 8
  %13 = call i32 @rt_mutex_dequeue_pi(%struct.TYPE_4__* %11, %struct.rt_mutex_waiter* %12)
  %14 = load %struct.TYPE_4__*, %struct.TYPE_4__** @current, align 8
  %15 = call i32 @rt_mutex_adjust_prio(%struct.TYPE_4__* %14)
  %16 = load i64, i64* @RT_MUTEX_HAS_WAITERS, align 8
  %17 = inttoptr i64 %16 to i8*
  %18 = load %struct.rt_mutex*, %struct.rt_mutex** %4, align 8
  %19 = getelementptr inbounds %struct.rt_mutex, %struct.rt_mutex* %18, i32 0, i32 0
  store i8* %17, i8** %19, align 8
  %20 = call i32 (...) @preempt_disable()
  %21 = load %struct.wake_q_head*, %struct.wake_q_head** %3, align 8
  %22 = load %struct.rt_mutex_waiter*, %struct.rt_mutex_waiter** %5, align 8
  %23 = getelementptr inbounds %struct.rt_mutex_waiter, %struct.rt_mutex_waiter* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @wake_q_add(%struct.wake_q_head* %21, i32 %24)
  %26 = load %struct.TYPE_4__*, %struct.TYPE_4__** @current, align 8
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 0
  %28 = call i32 @raw_spin_unlock(i32* %27)
  ret void
}

declare dso_local i32 @raw_spin_lock(i32*) #1

declare dso_local %struct.rt_mutex_waiter* @rt_mutex_top_waiter(%struct.rt_mutex*) #1

declare dso_local i32 @rt_mutex_dequeue_pi(%struct.TYPE_4__*, %struct.rt_mutex_waiter*) #1

declare dso_local i32 @rt_mutex_adjust_prio(%struct.TYPE_4__*) #1

declare dso_local i32 @preempt_disable(...) #1

declare dso_local i32 @wake_q_add(%struct.wake_q_head*, i32) #1

declare dso_local i32 @raw_spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
