; ModuleID = '/home/carl/AnghaBench/linux/kernel/extr_workqueue.c_put_unbound_pool.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/extr_workqueue.c_put_unbound_pool.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.worker_pool = type { i64, i64, i32, i32, i32, i32, i32*, i32, i32, i64, i64, i32, i32, i64 }
%struct.worker = type { i32 }

@detach_completion = common dso_local global i32 0, align 4
@wq_pool_mutex = common dso_local global i32 0, align 4
@worker_pool_idr = common dso_local global i32 0, align 4
@wq_manager_wait = common dso_local global i32 0, align 4
@POOL_MANAGER_ACTIVE = common dso_local global i32 0, align 4
@wq_pool_attach_mutex = common dso_local global i32 0, align 4
@rcu_free_pool = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.worker_pool*)* @put_unbound_pool to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @put_unbound_pool(%struct.worker_pool* %0) #0 {
  %2 = alloca %struct.worker_pool*, align 8
  %3 = alloca %struct.worker*, align 8
  store %struct.worker_pool* %0, %struct.worker_pool** %2, align 8
  %4 = load i32, i32* @detach_completion, align 4
  %5 = call i32 @DECLARE_COMPLETION_ONSTACK(i32 %4)
  %6 = call i32 @lockdep_assert_held(i32* @wq_pool_mutex)
  %7 = load %struct.worker_pool*, %struct.worker_pool** %2, align 8
  %8 = getelementptr inbounds %struct.worker_pool, %struct.worker_pool* %7, i32 0, i32 13
  %9 = load i64, i64* %8, align 8
  %10 = add nsw i64 %9, -1
  store i64 %10, i64* %8, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %1
  br label %121

13:                                               ; preds = %1
  %14 = load %struct.worker_pool*, %struct.worker_pool** %2, align 8
  %15 = getelementptr inbounds %struct.worker_pool, %struct.worker_pool* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = icmp slt i64 %16, 0
  %18 = xor i1 %17, true
  %19 = zext i1 %18 to i32
  %20 = call i64 @WARN_ON(i32 %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %31, label %22

22:                                               ; preds = %13
  %23 = load %struct.worker_pool*, %struct.worker_pool** %2, align 8
  %24 = getelementptr inbounds %struct.worker_pool, %struct.worker_pool* %23, i32 0, i32 12
  %25 = call i32 @list_empty(i32* %24)
  %26 = icmp ne i32 %25, 0
  %27 = xor i1 %26, true
  %28 = zext i1 %27 to i32
  %29 = call i64 @WARN_ON(i32 %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %22, %13
  br label %121

32:                                               ; preds = %22
  %33 = load %struct.worker_pool*, %struct.worker_pool** %2, align 8
  %34 = getelementptr inbounds %struct.worker_pool, %struct.worker_pool* %33, i32 0, i32 1
  %35 = load i64, i64* %34, align 8
  %36 = icmp sge i64 %35, 0
  br i1 %36, label %37, label %42

37:                                               ; preds = %32
  %38 = load %struct.worker_pool*, %struct.worker_pool** %2, align 8
  %39 = getelementptr inbounds %struct.worker_pool, %struct.worker_pool* %38, i32 0, i32 1
  %40 = load i64, i64* %39, align 8
  %41 = call i32 @idr_remove(i32* @worker_pool_idr, i64 %40)
  br label %42

42:                                               ; preds = %37, %32
  %43 = load %struct.worker_pool*, %struct.worker_pool** %2, align 8
  %44 = getelementptr inbounds %struct.worker_pool, %struct.worker_pool* %43, i32 0, i32 11
  %45 = call i32 @hash_del(i32* %44)
  %46 = load %struct.worker_pool*, %struct.worker_pool** %2, align 8
  %47 = getelementptr inbounds %struct.worker_pool, %struct.worker_pool* %46, i32 0, i32 8
  %48 = call i32 @spin_lock_irq(i32* %47)
  %49 = load i32, i32* @wq_manager_wait, align 4
  %50 = load %struct.worker_pool*, %struct.worker_pool** %2, align 8
  %51 = getelementptr inbounds %struct.worker_pool, %struct.worker_pool* %50, i32 0, i32 2
  %52 = load i32, i32* %51, align 8
  %53 = load i32, i32* @POOL_MANAGER_ACTIVE, align 4
  %54 = and i32 %52, %53
  %55 = icmp ne i32 %54, 0
  %56 = xor i1 %55, true
  %57 = zext i1 %56 to i32
  %58 = load %struct.worker_pool*, %struct.worker_pool** %2, align 8
  %59 = getelementptr inbounds %struct.worker_pool, %struct.worker_pool* %58, i32 0, i32 8
  %60 = load i32, i32* %59, align 4
  %61 = call i32 @wait_event_lock_irq(i32 %49, i32 %57, i32 %60)
  %62 = load i32, i32* @POOL_MANAGER_ACTIVE, align 4
  %63 = load %struct.worker_pool*, %struct.worker_pool** %2, align 8
  %64 = getelementptr inbounds %struct.worker_pool, %struct.worker_pool* %63, i32 0, i32 2
  %65 = load i32, i32* %64, align 8
  %66 = or i32 %65, %62
  store i32 %66, i32* %64, align 8
  br label %67

67:                                               ; preds = %71, %42
  %68 = load %struct.worker_pool*, %struct.worker_pool** %2, align 8
  %69 = call %struct.worker* @first_idle_worker(%struct.worker_pool* %68)
  store %struct.worker* %69, %struct.worker** %3, align 8
  %70 = icmp ne %struct.worker* %69, null
  br i1 %70, label %71, label %74

71:                                               ; preds = %67
  %72 = load %struct.worker*, %struct.worker** %3, align 8
  %73 = call i32 @destroy_worker(%struct.worker* %72)
  br label %67

74:                                               ; preds = %67
  %75 = load %struct.worker_pool*, %struct.worker_pool** %2, align 8
  %76 = getelementptr inbounds %struct.worker_pool, %struct.worker_pool* %75, i32 0, i32 10
  %77 = load i64, i64* %76, align 8
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %84, label %79

79:                                               ; preds = %74
  %80 = load %struct.worker_pool*, %struct.worker_pool** %2, align 8
  %81 = getelementptr inbounds %struct.worker_pool, %struct.worker_pool* %80, i32 0, i32 9
  %82 = load i64, i64* %81, align 8
  %83 = icmp ne i64 %82, 0
  br label %84

84:                                               ; preds = %79, %74
  %85 = phi i1 [ true, %74 ], [ %83, %79 ]
  %86 = zext i1 %85 to i32
  %87 = call i64 @WARN_ON(i32 %86)
  %88 = load %struct.worker_pool*, %struct.worker_pool** %2, align 8
  %89 = getelementptr inbounds %struct.worker_pool, %struct.worker_pool* %88, i32 0, i32 8
  %90 = call i32 @spin_unlock_irq(i32* %89)
  %91 = call i32 @mutex_lock(i32* @wq_pool_attach_mutex)
  %92 = load %struct.worker_pool*, %struct.worker_pool** %2, align 8
  %93 = getelementptr inbounds %struct.worker_pool, %struct.worker_pool* %92, i32 0, i32 7
  %94 = call i32 @list_empty(i32* %93)
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %99, label %96

96:                                               ; preds = %84
  %97 = load %struct.worker_pool*, %struct.worker_pool** %2, align 8
  %98 = getelementptr inbounds %struct.worker_pool, %struct.worker_pool* %97, i32 0, i32 6
  store i32* @detach_completion, i32** %98, align 8
  br label %99

99:                                               ; preds = %96, %84
  %100 = call i32 @mutex_unlock(i32* @wq_pool_attach_mutex)
  %101 = load %struct.worker_pool*, %struct.worker_pool** %2, align 8
  %102 = getelementptr inbounds %struct.worker_pool, %struct.worker_pool* %101, i32 0, i32 6
  %103 = load i32*, i32** %102, align 8
  %104 = icmp ne i32* %103, null
  br i1 %104, label %105, label %110

105:                                              ; preds = %99
  %106 = load %struct.worker_pool*, %struct.worker_pool** %2, align 8
  %107 = getelementptr inbounds %struct.worker_pool, %struct.worker_pool* %106, i32 0, i32 6
  %108 = load i32*, i32** %107, align 8
  %109 = call i32 @wait_for_completion(i32* %108)
  br label %110

110:                                              ; preds = %105, %99
  %111 = load %struct.worker_pool*, %struct.worker_pool** %2, align 8
  %112 = getelementptr inbounds %struct.worker_pool, %struct.worker_pool* %111, i32 0, i32 5
  %113 = call i32 @del_timer_sync(i32* %112)
  %114 = load %struct.worker_pool*, %struct.worker_pool** %2, align 8
  %115 = getelementptr inbounds %struct.worker_pool, %struct.worker_pool* %114, i32 0, i32 4
  %116 = call i32 @del_timer_sync(i32* %115)
  %117 = load %struct.worker_pool*, %struct.worker_pool** %2, align 8
  %118 = getelementptr inbounds %struct.worker_pool, %struct.worker_pool* %117, i32 0, i32 3
  %119 = load i32, i32* @rcu_free_pool, align 4
  %120 = call i32 @call_rcu(i32* %118, i32 %119)
  br label %121

121:                                              ; preds = %110, %31, %12
  ret void
}

declare dso_local i32 @DECLARE_COMPLETION_ONSTACK(i32) #1

declare dso_local i32 @lockdep_assert_held(i32*) #1

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local i32 @list_empty(i32*) #1

declare dso_local i32 @idr_remove(i32*, i64) #1

declare dso_local i32 @hash_del(i32*) #1

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @wait_event_lock_irq(i32, i32, i32) #1

declare dso_local %struct.worker* @first_idle_worker(%struct.worker_pool*) #1

declare dso_local i32 @destroy_worker(%struct.worker*) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @wait_for_completion(i32*) #1

declare dso_local i32 @del_timer_sync(i32*) #1

declare dso_local i32 @call_rcu(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
