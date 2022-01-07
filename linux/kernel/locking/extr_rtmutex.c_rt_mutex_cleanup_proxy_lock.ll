; ModuleID = '/home/carl/AnghaBench/linux/kernel/locking/extr_rtmutex.c_rt_mutex_cleanup_proxy_lock.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/locking/extr_rtmutex.c_rt_mutex_cleanup_proxy_lock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rt_mutex = type { i32 }
%struct.rt_mutex_waiter = type { i32 }

@current = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rt_mutex_cleanup_proxy_lock(%struct.rt_mutex* %0, %struct.rt_mutex_waiter* %1) #0 {
  %3 = alloca %struct.rt_mutex*, align 8
  %4 = alloca %struct.rt_mutex_waiter*, align 8
  %5 = alloca i32, align 4
  store %struct.rt_mutex* %0, %struct.rt_mutex** %3, align 8
  store %struct.rt_mutex_waiter* %1, %struct.rt_mutex_waiter** %4, align 8
  store i32 0, i32* %5, align 4
  %6 = load %struct.rt_mutex*, %struct.rt_mutex** %3, align 8
  %7 = getelementptr inbounds %struct.rt_mutex, %struct.rt_mutex* %6, i32 0, i32 0
  %8 = call i32 @raw_spin_lock_irq(i32* %7)
  %9 = load %struct.rt_mutex*, %struct.rt_mutex** %3, align 8
  %10 = load i64, i64* @current, align 8
  %11 = load %struct.rt_mutex_waiter*, %struct.rt_mutex_waiter** %4, align 8
  %12 = call i32 @try_to_take_rt_mutex(%struct.rt_mutex* %9, i64 %10, %struct.rt_mutex_waiter* %11)
  %13 = load %struct.rt_mutex*, %struct.rt_mutex** %3, align 8
  %14 = call i64 @rt_mutex_owner(%struct.rt_mutex* %13)
  %15 = load i64, i64* @current, align 8
  %16 = icmp ne i64 %14, %15
  br i1 %16, label %17, label %21

17:                                               ; preds = %2
  %18 = load %struct.rt_mutex*, %struct.rt_mutex** %3, align 8
  %19 = load %struct.rt_mutex_waiter*, %struct.rt_mutex_waiter** %4, align 8
  %20 = call i32 @remove_waiter(%struct.rt_mutex* %18, %struct.rt_mutex_waiter* %19)
  store i32 1, i32* %5, align 4
  br label %21

21:                                               ; preds = %17, %2
  %22 = load %struct.rt_mutex*, %struct.rt_mutex** %3, align 8
  %23 = call i32 @fixup_rt_mutex_waiters(%struct.rt_mutex* %22)
  %24 = load %struct.rt_mutex*, %struct.rt_mutex** %3, align 8
  %25 = getelementptr inbounds %struct.rt_mutex, %struct.rt_mutex* %24, i32 0, i32 0
  %26 = call i32 @raw_spin_unlock_irq(i32* %25)
  %27 = load i32, i32* %5, align 4
  ret i32 %27
}

declare dso_local i32 @raw_spin_lock_irq(i32*) #1

declare dso_local i32 @try_to_take_rt_mutex(%struct.rt_mutex*, i64, %struct.rt_mutex_waiter*) #1

declare dso_local i64 @rt_mutex_owner(%struct.rt_mutex*) #1

declare dso_local i32 @remove_waiter(%struct.rt_mutex*, %struct.rt_mutex_waiter*) #1

declare dso_local i32 @fixup_rt_mutex_waiters(%struct.rt_mutex*) #1

declare dso_local i32 @raw_spin_unlock_irq(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
