; ModuleID = '/home/carl/AnghaBench/linux/kernel/extr_workqueue.c_init_worker_pool.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/extr_workqueue.c_init_worker_pool.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.worker_pool = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@NUMA_NO_NODE = common dso_local global i32 0, align 4
@POOL_DISASSOCIATED = common dso_local global i32 0, align 4
@jiffies = common dso_local global i32 0, align 4
@idle_worker_timeout = common dso_local global i32 0, align 4
@TIMER_DEFERRABLE = common dso_local global i32 0, align 4
@pool_mayday_timeout = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.worker_pool*)* @init_worker_pool to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @init_worker_pool(%struct.worker_pool* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.worker_pool*, align 8
  store %struct.worker_pool* %0, %struct.worker_pool** %3, align 8
  %4 = load %struct.worker_pool*, %struct.worker_pool** %3, align 8
  %5 = getelementptr inbounds %struct.worker_pool, %struct.worker_pool* %4, i32 0, i32 15
  %6 = call i32 @spin_lock_init(i32* %5)
  %7 = load %struct.worker_pool*, %struct.worker_pool** %3, align 8
  %8 = getelementptr inbounds %struct.worker_pool, %struct.worker_pool* %7, i32 0, i32 0
  store i32 -1, i32* %8, align 4
  %9 = load %struct.worker_pool*, %struct.worker_pool** %3, align 8
  %10 = getelementptr inbounds %struct.worker_pool, %struct.worker_pool* %9, i32 0, i32 1
  store i32 -1, i32* %10, align 4
  %11 = load i32, i32* @NUMA_NO_NODE, align 4
  %12 = load %struct.worker_pool*, %struct.worker_pool** %3, align 8
  %13 = getelementptr inbounds %struct.worker_pool, %struct.worker_pool* %12, i32 0, i32 14
  store i32 %11, i32* %13, align 4
  %14 = load i32, i32* @POOL_DISASSOCIATED, align 4
  %15 = load %struct.worker_pool*, %struct.worker_pool** %3, align 8
  %16 = getelementptr inbounds %struct.worker_pool, %struct.worker_pool* %15, i32 0, i32 13
  %17 = load i32, i32* %16, align 4
  %18 = or i32 %17, %14
  store i32 %18, i32* %16, align 4
  %19 = load i32, i32* @jiffies, align 4
  %20 = load %struct.worker_pool*, %struct.worker_pool** %3, align 8
  %21 = getelementptr inbounds %struct.worker_pool, %struct.worker_pool* %20, i32 0, i32 12
  store i32 %19, i32* %21, align 4
  %22 = load %struct.worker_pool*, %struct.worker_pool** %3, align 8
  %23 = getelementptr inbounds %struct.worker_pool, %struct.worker_pool* %22, i32 0, i32 11
  %24 = call i32 @INIT_LIST_HEAD(i32* %23)
  %25 = load %struct.worker_pool*, %struct.worker_pool** %3, align 8
  %26 = getelementptr inbounds %struct.worker_pool, %struct.worker_pool* %25, i32 0, i32 10
  %27 = call i32 @INIT_LIST_HEAD(i32* %26)
  %28 = load %struct.worker_pool*, %struct.worker_pool** %3, align 8
  %29 = getelementptr inbounds %struct.worker_pool, %struct.worker_pool* %28, i32 0, i32 9
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @hash_init(i32 %30)
  %32 = load %struct.worker_pool*, %struct.worker_pool** %3, align 8
  %33 = getelementptr inbounds %struct.worker_pool, %struct.worker_pool* %32, i32 0, i32 8
  %34 = load i32, i32* @idle_worker_timeout, align 4
  %35 = load i32, i32* @TIMER_DEFERRABLE, align 4
  %36 = call i32 @timer_setup(i32* %33, i32 %34, i32 %35)
  %37 = load %struct.worker_pool*, %struct.worker_pool** %3, align 8
  %38 = getelementptr inbounds %struct.worker_pool, %struct.worker_pool* %37, i32 0, i32 7
  %39 = load i32, i32* @pool_mayday_timeout, align 4
  %40 = call i32 @timer_setup(i32* %38, i32 %39, i32 0)
  %41 = load %struct.worker_pool*, %struct.worker_pool** %3, align 8
  %42 = getelementptr inbounds %struct.worker_pool, %struct.worker_pool* %41, i32 0, i32 6
  %43 = call i32 @INIT_LIST_HEAD(i32* %42)
  %44 = load %struct.worker_pool*, %struct.worker_pool** %3, align 8
  %45 = getelementptr inbounds %struct.worker_pool, %struct.worker_pool* %44, i32 0, i32 5
  %46 = call i32 @ida_init(i32* %45)
  %47 = load %struct.worker_pool*, %struct.worker_pool** %3, align 8
  %48 = getelementptr inbounds %struct.worker_pool, %struct.worker_pool* %47, i32 0, i32 4
  %49 = call i32 @INIT_HLIST_NODE(i32* %48)
  %50 = load %struct.worker_pool*, %struct.worker_pool** %3, align 8
  %51 = getelementptr inbounds %struct.worker_pool, %struct.worker_pool* %50, i32 0, i32 2
  store i32 1, i32* %51, align 4
  %52 = call i32 (...) @alloc_workqueue_attrs()
  %53 = load %struct.worker_pool*, %struct.worker_pool** %3, align 8
  %54 = getelementptr inbounds %struct.worker_pool, %struct.worker_pool* %53, i32 0, i32 3
  store i32 %52, i32* %54, align 4
  %55 = load %struct.worker_pool*, %struct.worker_pool** %3, align 8
  %56 = getelementptr inbounds %struct.worker_pool, %struct.worker_pool* %55, i32 0, i32 3
  %57 = load i32, i32* %56, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %62, label %59

59:                                               ; preds = %1
  %60 = load i32, i32* @ENOMEM, align 4
  %61 = sub nsw i32 0, %60
  store i32 %61, i32* %2, align 4
  br label %63

62:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %63

63:                                               ; preds = %62, %59
  %64 = load i32, i32* %2, align 4
  ret i32 %64
}

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @hash_init(i32) #1

declare dso_local i32 @timer_setup(i32*, i32, i32) #1

declare dso_local i32 @ida_init(i32*) #1

declare dso_local i32 @INIT_HLIST_NODE(i32*) #1

declare dso_local i32 @alloc_workqueue_attrs(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
