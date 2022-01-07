; ModuleID = '/home/carl/AnghaBench/linux/kernel/locking/extr_rtmutex.c_remove_waiter.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/locking/extr_rtmutex.c_remove_waiter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32* }
%struct.rt_mutex = type { i32 }
%struct.rt_mutex_waiter = type { i32 }
%struct.task_struct = type { i32 }

@current = common dso_local global %struct.TYPE_3__* null, align 8
@RT_MUTEX_MIN_CHAINWALK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rt_mutex*, %struct.rt_mutex_waiter*)* @remove_waiter to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @remove_waiter(%struct.rt_mutex* %0, %struct.rt_mutex_waiter* %1) #0 {
  %3 = alloca %struct.rt_mutex*, align 8
  %4 = alloca %struct.rt_mutex_waiter*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.task_struct*, align 8
  %7 = alloca %struct.rt_mutex*, align 8
  store %struct.rt_mutex* %0, %struct.rt_mutex** %3, align 8
  store %struct.rt_mutex_waiter* %1, %struct.rt_mutex_waiter** %4, align 8
  %8 = load %struct.rt_mutex_waiter*, %struct.rt_mutex_waiter** %4, align 8
  %9 = load %struct.rt_mutex*, %struct.rt_mutex** %3, align 8
  %10 = call %struct.rt_mutex_waiter* @rt_mutex_top_waiter(%struct.rt_mutex* %9)
  %11 = icmp eq %struct.rt_mutex_waiter* %8, %10
  %12 = zext i1 %11 to i32
  store i32 %12, i32* %5, align 4
  %13 = load %struct.rt_mutex*, %struct.rt_mutex** %3, align 8
  %14 = call %struct.task_struct* @rt_mutex_owner(%struct.rt_mutex* %13)
  store %struct.task_struct* %14, %struct.task_struct** %6, align 8
  %15 = load %struct.rt_mutex*, %struct.rt_mutex** %3, align 8
  %16 = getelementptr inbounds %struct.rt_mutex, %struct.rt_mutex* %15, i32 0, i32 0
  %17 = call i32 @lockdep_assert_held(i32* %16)
  %18 = load %struct.TYPE_3__*, %struct.TYPE_3__** @current, align 8
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 0
  %20 = call i32 @raw_spin_lock(i32* %19)
  %21 = load %struct.rt_mutex*, %struct.rt_mutex** %3, align 8
  %22 = load %struct.rt_mutex_waiter*, %struct.rt_mutex_waiter** %4, align 8
  %23 = call i32 @rt_mutex_dequeue(%struct.rt_mutex* %21, %struct.rt_mutex_waiter* %22)
  %24 = load %struct.TYPE_3__*, %struct.TYPE_3__** @current, align 8
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 1
  store i32* null, i32** %25, align 8
  %26 = load %struct.TYPE_3__*, %struct.TYPE_3__** @current, align 8
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 0
  %28 = call i32 @raw_spin_unlock(i32* %27)
  %29 = load %struct.task_struct*, %struct.task_struct** %6, align 8
  %30 = icmp ne %struct.task_struct* %29, null
  br i1 %30, label %31, label %34

31:                                               ; preds = %2
  %32 = load i32, i32* %5, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %35, label %34

34:                                               ; preds = %31, %2
  br label %76

35:                                               ; preds = %31
  %36 = load %struct.task_struct*, %struct.task_struct** %6, align 8
  %37 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %36, i32 0, i32 0
  %38 = call i32 @raw_spin_lock(i32* %37)
  %39 = load %struct.task_struct*, %struct.task_struct** %6, align 8
  %40 = load %struct.rt_mutex_waiter*, %struct.rt_mutex_waiter** %4, align 8
  %41 = call i32 @rt_mutex_dequeue_pi(%struct.task_struct* %39, %struct.rt_mutex_waiter* %40)
  %42 = load %struct.rt_mutex*, %struct.rt_mutex** %3, align 8
  %43 = call i64 @rt_mutex_has_waiters(%struct.rt_mutex* %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %50

45:                                               ; preds = %35
  %46 = load %struct.task_struct*, %struct.task_struct** %6, align 8
  %47 = load %struct.rt_mutex*, %struct.rt_mutex** %3, align 8
  %48 = call %struct.rt_mutex_waiter* @rt_mutex_top_waiter(%struct.rt_mutex* %47)
  %49 = call i32 @rt_mutex_enqueue_pi(%struct.task_struct* %46, %struct.rt_mutex_waiter* %48)
  br label %50

50:                                               ; preds = %45, %35
  %51 = load %struct.task_struct*, %struct.task_struct** %6, align 8
  %52 = call i32 @rt_mutex_adjust_prio(%struct.task_struct* %51)
  %53 = load %struct.task_struct*, %struct.task_struct** %6, align 8
  %54 = call %struct.rt_mutex* @task_blocked_on_lock(%struct.task_struct* %53)
  store %struct.rt_mutex* %54, %struct.rt_mutex** %7, align 8
  %55 = load %struct.task_struct*, %struct.task_struct** %6, align 8
  %56 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %55, i32 0, i32 0
  %57 = call i32 @raw_spin_unlock(i32* %56)
  %58 = load %struct.rt_mutex*, %struct.rt_mutex** %7, align 8
  %59 = icmp ne %struct.rt_mutex* %58, null
  br i1 %59, label %61, label %60

60:                                               ; preds = %50
  br label %76

61:                                               ; preds = %50
  %62 = load %struct.task_struct*, %struct.task_struct** %6, align 8
  %63 = call i32 @get_task_struct(%struct.task_struct* %62)
  %64 = load %struct.rt_mutex*, %struct.rt_mutex** %3, align 8
  %65 = getelementptr inbounds %struct.rt_mutex, %struct.rt_mutex* %64, i32 0, i32 0
  %66 = call i32 @raw_spin_unlock_irq(i32* %65)
  %67 = load %struct.task_struct*, %struct.task_struct** %6, align 8
  %68 = load i32, i32* @RT_MUTEX_MIN_CHAINWALK, align 4
  %69 = load %struct.rt_mutex*, %struct.rt_mutex** %3, align 8
  %70 = load %struct.rt_mutex*, %struct.rt_mutex** %7, align 8
  %71 = load %struct.TYPE_3__*, %struct.TYPE_3__** @current, align 8
  %72 = call i32 @rt_mutex_adjust_prio_chain(%struct.task_struct* %67, i32 %68, %struct.rt_mutex* %69, %struct.rt_mutex* %70, i32* null, %struct.TYPE_3__* %71)
  %73 = load %struct.rt_mutex*, %struct.rt_mutex** %3, align 8
  %74 = getelementptr inbounds %struct.rt_mutex, %struct.rt_mutex* %73, i32 0, i32 0
  %75 = call i32 @raw_spin_lock_irq(i32* %74)
  br label %76

76:                                               ; preds = %61, %60, %34
  ret void
}

declare dso_local %struct.rt_mutex_waiter* @rt_mutex_top_waiter(%struct.rt_mutex*) #1

declare dso_local %struct.task_struct* @rt_mutex_owner(%struct.rt_mutex*) #1

declare dso_local i32 @lockdep_assert_held(i32*) #1

declare dso_local i32 @raw_spin_lock(i32*) #1

declare dso_local i32 @rt_mutex_dequeue(%struct.rt_mutex*, %struct.rt_mutex_waiter*) #1

declare dso_local i32 @raw_spin_unlock(i32*) #1

declare dso_local i32 @rt_mutex_dequeue_pi(%struct.task_struct*, %struct.rt_mutex_waiter*) #1

declare dso_local i64 @rt_mutex_has_waiters(%struct.rt_mutex*) #1

declare dso_local i32 @rt_mutex_enqueue_pi(%struct.task_struct*, %struct.rt_mutex_waiter*) #1

declare dso_local i32 @rt_mutex_adjust_prio(%struct.task_struct*) #1

declare dso_local %struct.rt_mutex* @task_blocked_on_lock(%struct.task_struct*) #1

declare dso_local i32 @get_task_struct(%struct.task_struct*) #1

declare dso_local i32 @raw_spin_unlock_irq(i32*) #1

declare dso_local i32 @rt_mutex_adjust_prio_chain(%struct.task_struct*, i32, %struct.rt_mutex*, %struct.rt_mutex*, i32*, %struct.TYPE_3__*) #1

declare dso_local i32 @raw_spin_lock_irq(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
