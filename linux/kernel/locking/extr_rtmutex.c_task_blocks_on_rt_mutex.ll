; ModuleID = '/home/carl/AnghaBench/linux/kernel/locking/extr_rtmutex.c_task_blocks_on_rt_mutex.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/locking/extr_rtmutex.c_task_blocks_on_rt_mutex.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rt_mutex = type { i32 }
%struct.rt_mutex_waiter = type { i32, i32, %struct.rt_mutex*, %struct.task_struct* }
%struct.task_struct = type { i32, %struct.rt_mutex_waiter*, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32 }

@EDEADLK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rt_mutex*, %struct.rt_mutex_waiter*, %struct.task_struct*, i32)* @task_blocks_on_rt_mutex to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @task_blocks_on_rt_mutex(%struct.rt_mutex* %0, %struct.rt_mutex_waiter* %1, %struct.task_struct* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.rt_mutex*, align 8
  %7 = alloca %struct.rt_mutex_waiter*, align 8
  %8 = alloca %struct.task_struct*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.task_struct*, align 8
  %11 = alloca %struct.rt_mutex_waiter*, align 8
  %12 = alloca %struct.rt_mutex*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.rt_mutex* %0, %struct.rt_mutex** %6, align 8
  store %struct.rt_mutex_waiter* %1, %struct.rt_mutex_waiter** %7, align 8
  store %struct.task_struct* %2, %struct.task_struct** %8, align 8
  store i32 %3, i32* %9, align 4
  %15 = load %struct.rt_mutex*, %struct.rt_mutex** %6, align 8
  %16 = call %struct.task_struct* @rt_mutex_owner(%struct.rt_mutex* %15)
  store %struct.task_struct* %16, %struct.task_struct** %10, align 8
  %17 = load %struct.rt_mutex_waiter*, %struct.rt_mutex_waiter** %7, align 8
  store %struct.rt_mutex_waiter* %17, %struct.rt_mutex_waiter** %11, align 8
  store i32 0, i32* %13, align 4
  %18 = load %struct.rt_mutex*, %struct.rt_mutex** %6, align 8
  %19 = getelementptr inbounds %struct.rt_mutex, %struct.rt_mutex* %18, i32 0, i32 0
  %20 = call i32 @lockdep_assert_held(i32* %19)
  %21 = load %struct.task_struct*, %struct.task_struct** %10, align 8
  %22 = load %struct.task_struct*, %struct.task_struct** %8, align 8
  %23 = icmp eq %struct.task_struct* %21, %22
  br i1 %23, label %24, label %27

24:                                               ; preds = %4
  %25 = load i32, i32* @EDEADLK, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %5, align 4
  br label %126

27:                                               ; preds = %4
  %28 = load %struct.task_struct*, %struct.task_struct** %8, align 8
  %29 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %28, i32 0, i32 0
  %30 = call i32 @raw_spin_lock(i32* %29)
  %31 = load %struct.task_struct*, %struct.task_struct** %8, align 8
  %32 = load %struct.rt_mutex_waiter*, %struct.rt_mutex_waiter** %7, align 8
  %33 = getelementptr inbounds %struct.rt_mutex_waiter, %struct.rt_mutex_waiter* %32, i32 0, i32 3
  store %struct.task_struct* %31, %struct.task_struct** %33, align 8
  %34 = load %struct.rt_mutex*, %struct.rt_mutex** %6, align 8
  %35 = load %struct.rt_mutex_waiter*, %struct.rt_mutex_waiter** %7, align 8
  %36 = getelementptr inbounds %struct.rt_mutex_waiter, %struct.rt_mutex_waiter* %35, i32 0, i32 2
  store %struct.rt_mutex* %34, %struct.rt_mutex** %36, align 8
  %37 = load %struct.task_struct*, %struct.task_struct** %8, align 8
  %38 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %37, i32 0, i32 3
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.rt_mutex_waiter*, %struct.rt_mutex_waiter** %7, align 8
  %41 = getelementptr inbounds %struct.rt_mutex_waiter, %struct.rt_mutex_waiter* %40, i32 0, i32 1
  store i32 %39, i32* %41, align 4
  %42 = load %struct.task_struct*, %struct.task_struct** %8, align 8
  %43 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %42, i32 0, i32 2
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = load %struct.rt_mutex_waiter*, %struct.rt_mutex_waiter** %7, align 8
  %47 = getelementptr inbounds %struct.rt_mutex_waiter, %struct.rt_mutex_waiter* %46, i32 0, i32 0
  store i32 %45, i32* %47, align 8
  %48 = load %struct.rt_mutex*, %struct.rt_mutex** %6, align 8
  %49 = call i64 @rt_mutex_has_waiters(%struct.rt_mutex* %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %54

51:                                               ; preds = %27
  %52 = load %struct.rt_mutex*, %struct.rt_mutex** %6, align 8
  %53 = call %struct.rt_mutex_waiter* @rt_mutex_top_waiter(%struct.rt_mutex* %52)
  store %struct.rt_mutex_waiter* %53, %struct.rt_mutex_waiter** %11, align 8
  br label %54

54:                                               ; preds = %51, %27
  %55 = load %struct.rt_mutex*, %struct.rt_mutex** %6, align 8
  %56 = load %struct.rt_mutex_waiter*, %struct.rt_mutex_waiter** %7, align 8
  %57 = call i32 @rt_mutex_enqueue(%struct.rt_mutex* %55, %struct.rt_mutex_waiter* %56)
  %58 = load %struct.rt_mutex_waiter*, %struct.rt_mutex_waiter** %7, align 8
  %59 = load %struct.task_struct*, %struct.task_struct** %8, align 8
  %60 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %59, i32 0, i32 1
  store %struct.rt_mutex_waiter* %58, %struct.rt_mutex_waiter** %60, align 8
  %61 = load %struct.task_struct*, %struct.task_struct** %8, align 8
  %62 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %61, i32 0, i32 0
  %63 = call i32 @raw_spin_unlock(i32* %62)
  %64 = load %struct.task_struct*, %struct.task_struct** %10, align 8
  %65 = icmp ne %struct.task_struct* %64, null
  br i1 %65, label %67, label %66

66:                                               ; preds = %54
  store i32 0, i32* %5, align 4
  br label %126

67:                                               ; preds = %54
  %68 = load %struct.task_struct*, %struct.task_struct** %10, align 8
  %69 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %68, i32 0, i32 0
  %70 = call i32 @raw_spin_lock(i32* %69)
  %71 = load %struct.rt_mutex_waiter*, %struct.rt_mutex_waiter** %7, align 8
  %72 = load %struct.rt_mutex*, %struct.rt_mutex** %6, align 8
  %73 = call %struct.rt_mutex_waiter* @rt_mutex_top_waiter(%struct.rt_mutex* %72)
  %74 = icmp eq %struct.rt_mutex_waiter* %71, %73
  br i1 %74, label %75, label %90

75:                                               ; preds = %67
  %76 = load %struct.task_struct*, %struct.task_struct** %10, align 8
  %77 = load %struct.rt_mutex_waiter*, %struct.rt_mutex_waiter** %11, align 8
  %78 = call i32 @rt_mutex_dequeue_pi(%struct.task_struct* %76, %struct.rt_mutex_waiter* %77)
  %79 = load %struct.task_struct*, %struct.task_struct** %10, align 8
  %80 = load %struct.rt_mutex_waiter*, %struct.rt_mutex_waiter** %7, align 8
  %81 = call i32 @rt_mutex_enqueue_pi(%struct.task_struct* %79, %struct.rt_mutex_waiter* %80)
  %82 = load %struct.task_struct*, %struct.task_struct** %10, align 8
  %83 = call i32 @rt_mutex_adjust_prio(%struct.task_struct* %82)
  %84 = load %struct.task_struct*, %struct.task_struct** %10, align 8
  %85 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %84, i32 0, i32 1
  %86 = load %struct.rt_mutex_waiter*, %struct.rt_mutex_waiter** %85, align 8
  %87 = icmp ne %struct.rt_mutex_waiter* %86, null
  br i1 %87, label %88, label %89

88:                                               ; preds = %75
  store i32 1, i32* %13, align 4
  br label %89

89:                                               ; preds = %88, %75
  br label %97

90:                                               ; preds = %67
  %91 = load %struct.rt_mutex_waiter*, %struct.rt_mutex_waiter** %7, align 8
  %92 = load i32, i32* %9, align 4
  %93 = call i64 @rt_mutex_cond_detect_deadlock(%struct.rt_mutex_waiter* %91, i32 %92)
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %95, label %96

95:                                               ; preds = %90
  store i32 1, i32* %13, align 4
  br label %96

96:                                               ; preds = %95, %90
  br label %97

97:                                               ; preds = %96, %89
  %98 = load %struct.task_struct*, %struct.task_struct** %10, align 8
  %99 = call %struct.rt_mutex* @task_blocked_on_lock(%struct.task_struct* %98)
  store %struct.rt_mutex* %99, %struct.rt_mutex** %12, align 8
  %100 = load %struct.task_struct*, %struct.task_struct** %10, align 8
  %101 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %100, i32 0, i32 0
  %102 = call i32 @raw_spin_unlock(i32* %101)
  %103 = load i32, i32* %13, align 4
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %108

105:                                              ; preds = %97
  %106 = load %struct.rt_mutex*, %struct.rt_mutex** %12, align 8
  %107 = icmp ne %struct.rt_mutex* %106, null
  br i1 %107, label %109, label %108

108:                                              ; preds = %105, %97
  store i32 0, i32* %5, align 4
  br label %126

109:                                              ; preds = %105
  %110 = load %struct.task_struct*, %struct.task_struct** %10, align 8
  %111 = call i32 @get_task_struct(%struct.task_struct* %110)
  %112 = load %struct.rt_mutex*, %struct.rt_mutex** %6, align 8
  %113 = getelementptr inbounds %struct.rt_mutex, %struct.rt_mutex* %112, i32 0, i32 0
  %114 = call i32 @raw_spin_unlock_irq(i32* %113)
  %115 = load %struct.task_struct*, %struct.task_struct** %10, align 8
  %116 = load i32, i32* %9, align 4
  %117 = load %struct.rt_mutex*, %struct.rt_mutex** %6, align 8
  %118 = load %struct.rt_mutex*, %struct.rt_mutex** %12, align 8
  %119 = load %struct.rt_mutex_waiter*, %struct.rt_mutex_waiter** %7, align 8
  %120 = load %struct.task_struct*, %struct.task_struct** %8, align 8
  %121 = call i32 @rt_mutex_adjust_prio_chain(%struct.task_struct* %115, i32 %116, %struct.rt_mutex* %117, %struct.rt_mutex* %118, %struct.rt_mutex_waiter* %119, %struct.task_struct* %120)
  store i32 %121, i32* %14, align 4
  %122 = load %struct.rt_mutex*, %struct.rt_mutex** %6, align 8
  %123 = getelementptr inbounds %struct.rt_mutex, %struct.rt_mutex* %122, i32 0, i32 0
  %124 = call i32 @raw_spin_lock_irq(i32* %123)
  %125 = load i32, i32* %14, align 4
  store i32 %125, i32* %5, align 4
  br label %126

126:                                              ; preds = %109, %108, %66, %24
  %127 = load i32, i32* %5, align 4
  ret i32 %127
}

declare dso_local %struct.task_struct* @rt_mutex_owner(%struct.rt_mutex*) #1

declare dso_local i32 @lockdep_assert_held(i32*) #1

declare dso_local i32 @raw_spin_lock(i32*) #1

declare dso_local i64 @rt_mutex_has_waiters(%struct.rt_mutex*) #1

declare dso_local %struct.rt_mutex_waiter* @rt_mutex_top_waiter(%struct.rt_mutex*) #1

declare dso_local i32 @rt_mutex_enqueue(%struct.rt_mutex*, %struct.rt_mutex_waiter*) #1

declare dso_local i32 @raw_spin_unlock(i32*) #1

declare dso_local i32 @rt_mutex_dequeue_pi(%struct.task_struct*, %struct.rt_mutex_waiter*) #1

declare dso_local i32 @rt_mutex_enqueue_pi(%struct.task_struct*, %struct.rt_mutex_waiter*) #1

declare dso_local i32 @rt_mutex_adjust_prio(%struct.task_struct*) #1

declare dso_local i64 @rt_mutex_cond_detect_deadlock(%struct.rt_mutex_waiter*, i32) #1

declare dso_local %struct.rt_mutex* @task_blocked_on_lock(%struct.task_struct*) #1

declare dso_local i32 @get_task_struct(%struct.task_struct*) #1

declare dso_local i32 @raw_spin_unlock_irq(i32*) #1

declare dso_local i32 @rt_mutex_adjust_prio_chain(%struct.task_struct*, i32, %struct.rt_mutex*, %struct.rt_mutex*, %struct.rt_mutex_waiter*, %struct.task_struct*) #1

declare dso_local i32 @raw_spin_lock_irq(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
