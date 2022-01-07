; ModuleID = '/home/carl/AnghaBench/linux/kernel/locking/extr_rtmutex.c_try_to_take_rt_mutex.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/locking/extr_rtmutex.c_try_to_take_rt_mutex.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rt_mutex = type { i32 }
%struct.task_struct = type { i32, i32* }
%struct.rt_mutex_waiter = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rt_mutex*, %struct.task_struct*, %struct.rt_mutex_waiter*)* @try_to_take_rt_mutex to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @try_to_take_rt_mutex(%struct.rt_mutex* %0, %struct.task_struct* %1, %struct.rt_mutex_waiter* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.rt_mutex*, align 8
  %6 = alloca %struct.task_struct*, align 8
  %7 = alloca %struct.rt_mutex_waiter*, align 8
  store %struct.rt_mutex* %0, %struct.rt_mutex** %5, align 8
  store %struct.task_struct* %1, %struct.task_struct** %6, align 8
  store %struct.rt_mutex_waiter* %2, %struct.rt_mutex_waiter** %7, align 8
  %8 = load %struct.rt_mutex*, %struct.rt_mutex** %5, align 8
  %9 = getelementptr inbounds %struct.rt_mutex, %struct.rt_mutex* %8, i32 0, i32 0
  %10 = call i32 @lockdep_assert_held(i32* %9)
  %11 = load %struct.rt_mutex*, %struct.rt_mutex** %5, align 8
  %12 = call i32 @mark_rt_mutex_waiters(%struct.rt_mutex* %11)
  %13 = load %struct.rt_mutex*, %struct.rt_mutex** %5, align 8
  %14 = call i64 @rt_mutex_owner(%struct.rt_mutex* %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %69

17:                                               ; preds = %3
  %18 = load %struct.rt_mutex_waiter*, %struct.rt_mutex_waiter** %7, align 8
  %19 = icmp ne %struct.rt_mutex_waiter* %18, null
  br i1 %19, label %20, label %30

20:                                               ; preds = %17
  %21 = load %struct.rt_mutex_waiter*, %struct.rt_mutex_waiter** %7, align 8
  %22 = load %struct.rt_mutex*, %struct.rt_mutex** %5, align 8
  %23 = call %struct.rt_mutex_waiter* @rt_mutex_top_waiter(%struct.rt_mutex* %22)
  %24 = icmp ne %struct.rt_mutex_waiter* %21, %23
  br i1 %24, label %25, label %26

25:                                               ; preds = %20
  store i32 0, i32* %4, align 4
  br label %69

26:                                               ; preds = %20
  %27 = load %struct.rt_mutex*, %struct.rt_mutex** %5, align 8
  %28 = load %struct.rt_mutex_waiter*, %struct.rt_mutex_waiter** %7, align 8
  %29 = call i32 @rt_mutex_dequeue(%struct.rt_mutex* %27, %struct.rt_mutex_waiter* %28)
  br label %45

30:                                               ; preds = %17
  %31 = load %struct.rt_mutex*, %struct.rt_mutex** %5, align 8
  %32 = call i64 @rt_mutex_has_waiters(%struct.rt_mutex* %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %43

34:                                               ; preds = %30
  %35 = load %struct.task_struct*, %struct.task_struct** %6, align 8
  %36 = call i32 @task_to_waiter(%struct.task_struct* %35)
  %37 = load %struct.rt_mutex*, %struct.rt_mutex** %5, align 8
  %38 = call %struct.rt_mutex_waiter* @rt_mutex_top_waiter(%struct.rt_mutex* %37)
  %39 = call i32 @rt_mutex_waiter_less(i32 %36, %struct.rt_mutex_waiter* %38)
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %42, label %41

41:                                               ; preds = %34
  store i32 0, i32* %4, align 4
  br label %69

42:                                               ; preds = %34
  br label %44

43:                                               ; preds = %30
  br label %63

44:                                               ; preds = %42
  br label %45

45:                                               ; preds = %44, %26
  %46 = load %struct.task_struct*, %struct.task_struct** %6, align 8
  %47 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %46, i32 0, i32 0
  %48 = call i32 @raw_spin_lock(i32* %47)
  %49 = load %struct.task_struct*, %struct.task_struct** %6, align 8
  %50 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %49, i32 0, i32 1
  store i32* null, i32** %50, align 8
  %51 = load %struct.rt_mutex*, %struct.rt_mutex** %5, align 8
  %52 = call i64 @rt_mutex_has_waiters(%struct.rt_mutex* %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %59

54:                                               ; preds = %45
  %55 = load %struct.task_struct*, %struct.task_struct** %6, align 8
  %56 = load %struct.rt_mutex*, %struct.rt_mutex** %5, align 8
  %57 = call %struct.rt_mutex_waiter* @rt_mutex_top_waiter(%struct.rt_mutex* %56)
  %58 = call i32 @rt_mutex_enqueue_pi(%struct.task_struct* %55, %struct.rt_mutex_waiter* %57)
  br label %59

59:                                               ; preds = %54, %45
  %60 = load %struct.task_struct*, %struct.task_struct** %6, align 8
  %61 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %60, i32 0, i32 0
  %62 = call i32 @raw_spin_unlock(i32* %61)
  br label %63

63:                                               ; preds = %59, %43
  %64 = load %struct.rt_mutex*, %struct.rt_mutex** %5, align 8
  %65 = call i32 @debug_rt_mutex_lock(%struct.rt_mutex* %64)
  %66 = load %struct.rt_mutex*, %struct.rt_mutex** %5, align 8
  %67 = load %struct.task_struct*, %struct.task_struct** %6, align 8
  %68 = call i32 @rt_mutex_set_owner(%struct.rt_mutex* %66, %struct.task_struct* %67)
  store i32 1, i32* %4, align 4
  br label %69

69:                                               ; preds = %63, %41, %25, %16
  %70 = load i32, i32* %4, align 4
  ret i32 %70
}

declare dso_local i32 @lockdep_assert_held(i32*) #1

declare dso_local i32 @mark_rt_mutex_waiters(%struct.rt_mutex*) #1

declare dso_local i64 @rt_mutex_owner(%struct.rt_mutex*) #1

declare dso_local %struct.rt_mutex_waiter* @rt_mutex_top_waiter(%struct.rt_mutex*) #1

declare dso_local i32 @rt_mutex_dequeue(%struct.rt_mutex*, %struct.rt_mutex_waiter*) #1

declare dso_local i64 @rt_mutex_has_waiters(%struct.rt_mutex*) #1

declare dso_local i32 @rt_mutex_waiter_less(i32, %struct.rt_mutex_waiter*) #1

declare dso_local i32 @task_to_waiter(%struct.task_struct*) #1

declare dso_local i32 @raw_spin_lock(i32*) #1

declare dso_local i32 @rt_mutex_enqueue_pi(%struct.task_struct*, %struct.rt_mutex_waiter*) #1

declare dso_local i32 @raw_spin_unlock(i32*) #1

declare dso_local i32 @debug_rt_mutex_lock(%struct.rt_mutex*) #1

declare dso_local i32 @rt_mutex_set_owner(%struct.rt_mutex*, %struct.task_struct*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
