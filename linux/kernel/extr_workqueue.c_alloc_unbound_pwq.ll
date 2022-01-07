; ModuleID = '/home/carl/AnghaBench/linux/kernel/extr_workqueue.c_alloc_unbound_pwq.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/extr_workqueue.c_alloc_unbound_pwq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pool_workqueue = type { i32 }
%struct.workqueue_struct = type { i32 }
%struct.workqueue_attrs = type { i32 }
%struct.worker_pool = type { i32 }

@wq_pool_mutex = common dso_local global i32 0, align 4
@pwq_cache = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.pool_workqueue* (%struct.workqueue_struct*, %struct.workqueue_attrs*)* @alloc_unbound_pwq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.pool_workqueue* @alloc_unbound_pwq(%struct.workqueue_struct* %0, %struct.workqueue_attrs* %1) #0 {
  %3 = alloca %struct.pool_workqueue*, align 8
  %4 = alloca %struct.workqueue_struct*, align 8
  %5 = alloca %struct.workqueue_attrs*, align 8
  %6 = alloca %struct.worker_pool*, align 8
  %7 = alloca %struct.pool_workqueue*, align 8
  store %struct.workqueue_struct* %0, %struct.workqueue_struct** %4, align 8
  store %struct.workqueue_attrs* %1, %struct.workqueue_attrs** %5, align 8
  %8 = call i32 @lockdep_assert_held(i32* @wq_pool_mutex)
  %9 = load %struct.workqueue_attrs*, %struct.workqueue_attrs** %5, align 8
  %10 = call %struct.worker_pool* @get_unbound_pool(%struct.workqueue_attrs* %9)
  store %struct.worker_pool* %10, %struct.worker_pool** %6, align 8
  %11 = load %struct.worker_pool*, %struct.worker_pool** %6, align 8
  %12 = icmp ne %struct.worker_pool* %11, null
  br i1 %12, label %14, label %13

13:                                               ; preds = %2
  store %struct.pool_workqueue* null, %struct.pool_workqueue** %3, align 8
  br label %32

14:                                               ; preds = %2
  %15 = load i32, i32* @pwq_cache, align 4
  %16 = load i32, i32* @GFP_KERNEL, align 4
  %17 = load %struct.worker_pool*, %struct.worker_pool** %6, align 8
  %18 = getelementptr inbounds %struct.worker_pool, %struct.worker_pool* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call %struct.pool_workqueue* @kmem_cache_alloc_node(i32 %15, i32 %16, i32 %19)
  store %struct.pool_workqueue* %20, %struct.pool_workqueue** %7, align 8
  %21 = load %struct.pool_workqueue*, %struct.pool_workqueue** %7, align 8
  %22 = icmp ne %struct.pool_workqueue* %21, null
  br i1 %22, label %26, label %23

23:                                               ; preds = %14
  %24 = load %struct.worker_pool*, %struct.worker_pool** %6, align 8
  %25 = call i32 @put_unbound_pool(%struct.worker_pool* %24)
  store %struct.pool_workqueue* null, %struct.pool_workqueue** %3, align 8
  br label %32

26:                                               ; preds = %14
  %27 = load %struct.pool_workqueue*, %struct.pool_workqueue** %7, align 8
  %28 = load %struct.workqueue_struct*, %struct.workqueue_struct** %4, align 8
  %29 = load %struct.worker_pool*, %struct.worker_pool** %6, align 8
  %30 = call i32 @init_pwq(%struct.pool_workqueue* %27, %struct.workqueue_struct* %28, %struct.worker_pool* %29)
  %31 = load %struct.pool_workqueue*, %struct.pool_workqueue** %7, align 8
  store %struct.pool_workqueue* %31, %struct.pool_workqueue** %3, align 8
  br label %32

32:                                               ; preds = %26, %23, %13
  %33 = load %struct.pool_workqueue*, %struct.pool_workqueue** %3, align 8
  ret %struct.pool_workqueue* %33
}

declare dso_local i32 @lockdep_assert_held(i32*) #1

declare dso_local %struct.worker_pool* @get_unbound_pool(%struct.workqueue_attrs*) #1

declare dso_local %struct.pool_workqueue* @kmem_cache_alloc_node(i32, i32, i32) #1

declare dso_local i32 @put_unbound_pool(%struct.worker_pool*) #1

declare dso_local i32 @init_pwq(%struct.pool_workqueue*, %struct.workqueue_struct*, %struct.worker_pool*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
