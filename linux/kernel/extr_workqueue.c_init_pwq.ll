; ModuleID = '/home/carl/AnghaBench/linux/kernel/extr_workqueue.c_init_pwq.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/extr_workqueue.c_init_pwq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pool_workqueue = type { i32, i32, i32, i32, i32, i32, %struct.workqueue_struct*, %struct.worker_pool* }
%struct.workqueue_struct = type { i32 }
%struct.worker_pool = type { i32 }

@WORK_STRUCT_FLAG_MASK = common dso_local global i64 0, align 8
@pwq_unbound_release_workfn = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pool_workqueue*, %struct.workqueue_struct*, %struct.worker_pool*)* @init_pwq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @init_pwq(%struct.pool_workqueue* %0, %struct.workqueue_struct* %1, %struct.worker_pool* %2) #0 {
  %4 = alloca %struct.pool_workqueue*, align 8
  %5 = alloca %struct.workqueue_struct*, align 8
  %6 = alloca %struct.worker_pool*, align 8
  store %struct.pool_workqueue* %0, %struct.pool_workqueue** %4, align 8
  store %struct.workqueue_struct* %1, %struct.workqueue_struct** %5, align 8
  store %struct.worker_pool* %2, %struct.worker_pool** %6, align 8
  %7 = load %struct.pool_workqueue*, %struct.pool_workqueue** %4, align 8
  %8 = ptrtoint %struct.pool_workqueue* %7 to i64
  %9 = load i64, i64* @WORK_STRUCT_FLAG_MASK, align 8
  %10 = and i64 %8, %9
  %11 = call i32 @BUG_ON(i64 %10)
  %12 = load %struct.pool_workqueue*, %struct.pool_workqueue** %4, align 8
  %13 = call i32 @memset(%struct.pool_workqueue* %12, i32 0, i32 40)
  %14 = load %struct.worker_pool*, %struct.worker_pool** %6, align 8
  %15 = load %struct.pool_workqueue*, %struct.pool_workqueue** %4, align 8
  %16 = getelementptr inbounds %struct.pool_workqueue, %struct.pool_workqueue* %15, i32 0, i32 7
  store %struct.worker_pool* %14, %struct.worker_pool** %16, align 8
  %17 = load %struct.workqueue_struct*, %struct.workqueue_struct** %5, align 8
  %18 = load %struct.pool_workqueue*, %struct.pool_workqueue** %4, align 8
  %19 = getelementptr inbounds %struct.pool_workqueue, %struct.pool_workqueue* %18, i32 0, i32 6
  store %struct.workqueue_struct* %17, %struct.workqueue_struct** %19, align 8
  %20 = load %struct.pool_workqueue*, %struct.pool_workqueue** %4, align 8
  %21 = getelementptr inbounds %struct.pool_workqueue, %struct.pool_workqueue* %20, i32 0, i32 0
  store i32 -1, i32* %21, align 8
  %22 = load %struct.pool_workqueue*, %struct.pool_workqueue** %4, align 8
  %23 = getelementptr inbounds %struct.pool_workqueue, %struct.pool_workqueue* %22, i32 0, i32 1
  store i32 1, i32* %23, align 4
  %24 = load %struct.pool_workqueue*, %struct.pool_workqueue** %4, align 8
  %25 = getelementptr inbounds %struct.pool_workqueue, %struct.pool_workqueue* %24, i32 0, i32 5
  %26 = call i32 @INIT_LIST_HEAD(i32* %25)
  %27 = load %struct.pool_workqueue*, %struct.pool_workqueue** %4, align 8
  %28 = getelementptr inbounds %struct.pool_workqueue, %struct.pool_workqueue* %27, i32 0, i32 4
  %29 = call i32 @INIT_LIST_HEAD(i32* %28)
  %30 = load %struct.pool_workqueue*, %struct.pool_workqueue** %4, align 8
  %31 = getelementptr inbounds %struct.pool_workqueue, %struct.pool_workqueue* %30, i32 0, i32 3
  %32 = call i32 @INIT_LIST_HEAD(i32* %31)
  %33 = load %struct.pool_workqueue*, %struct.pool_workqueue** %4, align 8
  %34 = getelementptr inbounds %struct.pool_workqueue, %struct.pool_workqueue* %33, i32 0, i32 2
  %35 = load i32, i32* @pwq_unbound_release_workfn, align 4
  %36 = call i32 @INIT_WORK(i32* %34, i32 %35)
  ret void
}

declare dso_local i32 @BUG_ON(i64) #1

declare dso_local i32 @memset(%struct.pool_workqueue*, i32, i32) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @INIT_WORK(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
