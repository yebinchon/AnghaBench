; ModuleID = '/home/carl/AnghaBench/linux/kernel/extr_workqueue.c_get_work_pool.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/extr_workqueue.c_get_work_pool.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.worker_pool = type { i32 }
%struct.work_struct = type { i32 }
%struct.pool_workqueue = type { %struct.worker_pool* }

@WORK_STRUCT_PWQ = common dso_local global i64 0, align 8
@WORK_STRUCT_WQ_DATA_MASK = common dso_local global i64 0, align 8
@WORK_OFFQ_POOL_SHIFT = common dso_local global i64 0, align 8
@WORK_OFFQ_POOL_NONE = common dso_local global i32 0, align 4
@worker_pool_idr = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.worker_pool* (%struct.work_struct*)* @get_work_pool to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.worker_pool* @get_work_pool(%struct.work_struct* %0) #0 {
  %2 = alloca %struct.worker_pool*, align 8
  %3 = alloca %struct.work_struct*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  store %struct.work_struct* %0, %struct.work_struct** %3, align 8
  %6 = load %struct.work_struct*, %struct.work_struct** %3, align 8
  %7 = getelementptr inbounds %struct.work_struct, %struct.work_struct* %6, i32 0, i32 0
  %8 = call i64 @atomic_long_read(i32* %7)
  store i64 %8, i64* %4, align 8
  %9 = call i32 (...) @assert_rcu_or_pool_mutex()
  %10 = load i64, i64* %4, align 8
  %11 = load i64, i64* @WORK_STRUCT_PWQ, align 8
  %12 = and i64 %10, %11
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %21

14:                                               ; preds = %1
  %15 = load i64, i64* %4, align 8
  %16 = load i64, i64* @WORK_STRUCT_WQ_DATA_MASK, align 8
  %17 = and i64 %15, %16
  %18 = inttoptr i64 %17 to %struct.pool_workqueue*
  %19 = getelementptr inbounds %struct.pool_workqueue, %struct.pool_workqueue* %18, i32 0, i32 0
  %20 = load %struct.worker_pool*, %struct.worker_pool** %19, align 8
  store %struct.worker_pool* %20, %struct.worker_pool** %2, align 8
  br label %33

21:                                               ; preds = %1
  %22 = load i64, i64* %4, align 8
  %23 = load i64, i64* @WORK_OFFQ_POOL_SHIFT, align 8
  %24 = lshr i64 %22, %23
  %25 = trunc i64 %24 to i32
  store i32 %25, i32* %5, align 4
  %26 = load i32, i32* %5, align 4
  %27 = load i32, i32* @WORK_OFFQ_POOL_NONE, align 4
  %28 = icmp eq i32 %26, %27
  br i1 %28, label %29, label %30

29:                                               ; preds = %21
  store %struct.worker_pool* null, %struct.worker_pool** %2, align 8
  br label %33

30:                                               ; preds = %21
  %31 = load i32, i32* %5, align 4
  %32 = call %struct.worker_pool* @idr_find(i32* @worker_pool_idr, i32 %31)
  store %struct.worker_pool* %32, %struct.worker_pool** %2, align 8
  br label %33

33:                                               ; preds = %30, %29, %14
  %34 = load %struct.worker_pool*, %struct.worker_pool** %2, align 8
  ret %struct.worker_pool* %34
}

declare dso_local i64 @atomic_long_read(i32*) #1

declare dso_local i32 @assert_rcu_or_pool_mutex(...) #1

declare dso_local %struct.worker_pool* @idr_find(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
