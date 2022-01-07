; ModuleID = '/home/carl/AnghaBench/linux/kernel/extr_workqueue.c_start_flush_work.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/extr_workqueue.c_start_flush_work.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.work_struct = type { i32 }
%struct.wq_barrier = type { i32 }
%struct.worker = type { %struct.pool_workqueue* }
%struct.pool_workqueue = type { %struct.TYPE_2__*, %struct.worker_pool* }
%struct.TYPE_2__ = type { i32, i32, i64 }
%struct.worker_pool = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.work_struct*, %struct.wq_barrier*, i32)* @start_flush_work to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @start_flush_work(%struct.work_struct* %0, %struct.wq_barrier* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.work_struct*, align 8
  %6 = alloca %struct.wq_barrier*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.worker*, align 8
  %9 = alloca %struct.worker_pool*, align 8
  %10 = alloca %struct.pool_workqueue*, align 8
  store %struct.work_struct* %0, %struct.work_struct** %5, align 8
  store %struct.wq_barrier* %1, %struct.wq_barrier** %6, align 8
  store i32 %2, i32* %7, align 4
  store %struct.worker* null, %struct.worker** %8, align 8
  %11 = call i32 (...) @might_sleep()
  %12 = call i32 (...) @rcu_read_lock()
  %13 = load %struct.work_struct*, %struct.work_struct** %5, align 8
  %14 = call %struct.worker_pool* @get_work_pool(%struct.work_struct* %13)
  store %struct.worker_pool* %14, %struct.worker_pool** %9, align 8
  %15 = load %struct.worker_pool*, %struct.worker_pool** %9, align 8
  %16 = icmp ne %struct.worker_pool* %15, null
  br i1 %16, label %19, label %17

17:                                               ; preds = %3
  %18 = call i32 (...) @rcu_read_unlock()
  store i32 0, i32* %4, align 4
  br label %97

19:                                               ; preds = %3
  %20 = load %struct.worker_pool*, %struct.worker_pool** %9, align 8
  %21 = getelementptr inbounds %struct.worker_pool, %struct.worker_pool* %20, i32 0, i32 0
  %22 = call i32 @spin_lock_irq(i32* %21)
  %23 = load %struct.work_struct*, %struct.work_struct** %5, align 8
  %24 = call %struct.pool_workqueue* @get_work_pwq(%struct.work_struct* %23)
  store %struct.pool_workqueue* %24, %struct.pool_workqueue** %10, align 8
  %25 = load %struct.pool_workqueue*, %struct.pool_workqueue** %10, align 8
  %26 = icmp ne %struct.pool_workqueue* %25, null
  br i1 %26, label %27, label %38

27:                                               ; preds = %19
  %28 = load %struct.pool_workqueue*, %struct.pool_workqueue** %10, align 8
  %29 = getelementptr inbounds %struct.pool_workqueue, %struct.pool_workqueue* %28, i32 0, i32 1
  %30 = load %struct.worker_pool*, %struct.worker_pool** %29, align 8
  %31 = load %struct.worker_pool*, %struct.worker_pool** %9, align 8
  %32 = icmp ne %struct.worker_pool* %30, %31
  %33 = zext i1 %32 to i32
  %34 = call i64 @unlikely(i32 %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %27
  br label %92

37:                                               ; preds = %27
  br label %49

38:                                               ; preds = %19
  %39 = load %struct.worker_pool*, %struct.worker_pool** %9, align 8
  %40 = load %struct.work_struct*, %struct.work_struct** %5, align 8
  %41 = call %struct.worker* @find_worker_executing_work(%struct.worker_pool* %39, %struct.work_struct* %40)
  store %struct.worker* %41, %struct.worker** %8, align 8
  %42 = load %struct.worker*, %struct.worker** %8, align 8
  %43 = icmp ne %struct.worker* %42, null
  br i1 %43, label %45, label %44

44:                                               ; preds = %38
  br label %92

45:                                               ; preds = %38
  %46 = load %struct.worker*, %struct.worker** %8, align 8
  %47 = getelementptr inbounds %struct.worker, %struct.worker* %46, i32 0, i32 0
  %48 = load %struct.pool_workqueue*, %struct.pool_workqueue** %47, align 8
  store %struct.pool_workqueue* %48, %struct.pool_workqueue** %10, align 8
  br label %49

49:                                               ; preds = %45, %37
  %50 = load %struct.pool_workqueue*, %struct.pool_workqueue** %10, align 8
  %51 = getelementptr inbounds %struct.pool_workqueue, %struct.pool_workqueue* %50, i32 0, i32 0
  %52 = load %struct.TYPE_2__*, %struct.TYPE_2__** %51, align 8
  %53 = load %struct.work_struct*, %struct.work_struct** %5, align 8
  %54 = call i32 @check_flush_dependency(%struct.TYPE_2__* %52, %struct.work_struct* %53)
  %55 = load %struct.pool_workqueue*, %struct.pool_workqueue** %10, align 8
  %56 = load %struct.wq_barrier*, %struct.wq_barrier** %6, align 8
  %57 = load %struct.work_struct*, %struct.work_struct** %5, align 8
  %58 = load %struct.worker*, %struct.worker** %8, align 8
  %59 = call i32 @insert_wq_barrier(%struct.pool_workqueue* %55, %struct.wq_barrier* %56, %struct.work_struct* %57, %struct.worker* %58)
  %60 = load %struct.worker_pool*, %struct.worker_pool** %9, align 8
  %61 = getelementptr inbounds %struct.worker_pool, %struct.worker_pool* %60, i32 0, i32 0
  %62 = call i32 @spin_unlock_irq(i32* %61)
  %63 = load i32, i32* %7, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %90, label %65

65:                                               ; preds = %49
  %66 = load %struct.pool_workqueue*, %struct.pool_workqueue** %10, align 8
  %67 = getelementptr inbounds %struct.pool_workqueue, %struct.pool_workqueue* %66, i32 0, i32 0
  %68 = load %struct.TYPE_2__*, %struct.TYPE_2__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = icmp eq i32 %70, 1
  br i1 %71, label %79, label %72

72:                                               ; preds = %65
  %73 = load %struct.pool_workqueue*, %struct.pool_workqueue** %10, align 8
  %74 = getelementptr inbounds %struct.pool_workqueue, %struct.pool_workqueue* %73, i32 0, i32 0
  %75 = load %struct.TYPE_2__*, %struct.TYPE_2__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %75, i32 0, i32 2
  %77 = load i64, i64* %76, align 8
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %90

79:                                               ; preds = %72, %65
  %80 = load %struct.pool_workqueue*, %struct.pool_workqueue** %10, align 8
  %81 = getelementptr inbounds %struct.pool_workqueue, %struct.pool_workqueue* %80, i32 0, i32 0
  %82 = load %struct.TYPE_2__*, %struct.TYPE_2__** %81, align 8
  %83 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %82, i32 0, i32 1
  %84 = call i32 @lock_map_acquire(i32* %83)
  %85 = load %struct.pool_workqueue*, %struct.pool_workqueue** %10, align 8
  %86 = getelementptr inbounds %struct.pool_workqueue, %struct.pool_workqueue* %85, i32 0, i32 0
  %87 = load %struct.TYPE_2__*, %struct.TYPE_2__** %86, align 8
  %88 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %87, i32 0, i32 1
  %89 = call i32 @lock_map_release(i32* %88)
  br label %90

90:                                               ; preds = %79, %72, %49
  %91 = call i32 (...) @rcu_read_unlock()
  store i32 1, i32* %4, align 4
  br label %97

92:                                               ; preds = %44, %36
  %93 = load %struct.worker_pool*, %struct.worker_pool** %9, align 8
  %94 = getelementptr inbounds %struct.worker_pool, %struct.worker_pool* %93, i32 0, i32 0
  %95 = call i32 @spin_unlock_irq(i32* %94)
  %96 = call i32 (...) @rcu_read_unlock()
  store i32 0, i32* %4, align 4
  br label %97

97:                                               ; preds = %92, %90, %17
  %98 = load i32, i32* %4, align 4
  ret i32 %98
}

declare dso_local i32 @might_sleep(...) #1

declare dso_local i32 @rcu_read_lock(...) #1

declare dso_local %struct.worker_pool* @get_work_pool(%struct.work_struct*) #1

declare dso_local i32 @rcu_read_unlock(...) #1

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local %struct.pool_workqueue* @get_work_pwq(%struct.work_struct*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local %struct.worker* @find_worker_executing_work(%struct.worker_pool*, %struct.work_struct*) #1

declare dso_local i32 @check_flush_dependency(%struct.TYPE_2__*, %struct.work_struct*) #1

declare dso_local i32 @insert_wq_barrier(%struct.pool_workqueue*, %struct.wq_barrier*, %struct.work_struct*, %struct.worker*) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

declare dso_local i32 @lock_map_acquire(i32*) #1

declare dso_local i32 @lock_map_release(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
