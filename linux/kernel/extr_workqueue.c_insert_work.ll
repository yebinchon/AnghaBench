; ModuleID = '/home/carl/AnghaBench/linux/kernel/extr_workqueue.c_insert_work.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/extr_workqueue.c_insert_work.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pool_workqueue = type { %struct.worker_pool* }
%struct.worker_pool = type { i32 }
%struct.work_struct = type { i32 }
%struct.list_head = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pool_workqueue*, %struct.work_struct*, %struct.list_head*, i32)* @insert_work to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @insert_work(%struct.pool_workqueue* %0, %struct.work_struct* %1, %struct.list_head* %2, i32 %3) #0 {
  %5 = alloca %struct.pool_workqueue*, align 8
  %6 = alloca %struct.work_struct*, align 8
  %7 = alloca %struct.list_head*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.worker_pool*, align 8
  store %struct.pool_workqueue* %0, %struct.pool_workqueue** %5, align 8
  store %struct.work_struct* %1, %struct.work_struct** %6, align 8
  store %struct.list_head* %2, %struct.list_head** %7, align 8
  store i32 %3, i32* %8, align 4
  %10 = load %struct.pool_workqueue*, %struct.pool_workqueue** %5, align 8
  %11 = getelementptr inbounds %struct.pool_workqueue, %struct.pool_workqueue* %10, i32 0, i32 0
  %12 = load %struct.worker_pool*, %struct.worker_pool** %11, align 8
  store %struct.worker_pool* %12, %struct.worker_pool** %9, align 8
  %13 = load %struct.work_struct*, %struct.work_struct** %6, align 8
  %14 = load %struct.pool_workqueue*, %struct.pool_workqueue** %5, align 8
  %15 = load i32, i32* %8, align 4
  %16 = call i32 @set_work_pwq(%struct.work_struct* %13, %struct.pool_workqueue* %14, i32 %15)
  %17 = load %struct.work_struct*, %struct.work_struct** %6, align 8
  %18 = getelementptr inbounds %struct.work_struct, %struct.work_struct* %17, i32 0, i32 0
  %19 = load %struct.list_head*, %struct.list_head** %7, align 8
  %20 = call i32 @list_add_tail(i32* %18, %struct.list_head* %19)
  %21 = load %struct.pool_workqueue*, %struct.pool_workqueue** %5, align 8
  %22 = call i32 @get_pwq(%struct.pool_workqueue* %21)
  %23 = call i32 (...) @smp_mb()
  %24 = load %struct.worker_pool*, %struct.worker_pool** %9, align 8
  %25 = call i64 @__need_more_worker(%struct.worker_pool* %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %4
  %28 = load %struct.worker_pool*, %struct.worker_pool** %9, align 8
  %29 = call i32 @wake_up_worker(%struct.worker_pool* %28)
  br label %30

30:                                               ; preds = %27, %4
  ret void
}

declare dso_local i32 @set_work_pwq(%struct.work_struct*, %struct.pool_workqueue*, i32) #1

declare dso_local i32 @list_add_tail(i32*, %struct.list_head*) #1

declare dso_local i32 @get_pwq(%struct.pool_workqueue*) #1

declare dso_local i32 @smp_mb(...) #1

declare dso_local i64 @__need_more_worker(%struct.worker_pool*) #1

declare dso_local i32 @wake_up_worker(%struct.worker_pool*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
