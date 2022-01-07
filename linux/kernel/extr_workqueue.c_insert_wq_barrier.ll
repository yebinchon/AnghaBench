; ModuleID = '/home/carl/AnghaBench/linux/kernel/extr_workqueue.c_insert_wq_barrier.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/extr_workqueue.c_insert_wq_barrier.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pool_workqueue = type { i32 }
%struct.wq_barrier = type { %struct.work_struct, i32, i32 }
%struct.work_struct = type { %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { %struct.list_head* }
%struct.list_head = type { i32 }
%struct.worker = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.list_head* }

@wq_barrier_func = common dso_local global i32 0, align 4
@WORK_STRUCT_PENDING_BIT = common dso_local global i32 0, align 4
@current = common dso_local global i32 0, align 4
@WORK_STRUCT_LINKED = common dso_local global i64 0, align 8
@WORK_STRUCT_LINKED_BIT = common dso_local global i32 0, align 4
@WORK_NO_COLOR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pool_workqueue*, %struct.wq_barrier*, %struct.work_struct*, %struct.worker*)* @insert_wq_barrier to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @insert_wq_barrier(%struct.pool_workqueue* %0, %struct.wq_barrier* %1, %struct.work_struct* %2, %struct.worker* %3) #0 {
  %5 = alloca %struct.pool_workqueue*, align 8
  %6 = alloca %struct.wq_barrier*, align 8
  %7 = alloca %struct.work_struct*, align 8
  %8 = alloca %struct.worker*, align 8
  %9 = alloca %struct.list_head*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64*, align 8
  store %struct.pool_workqueue* %0, %struct.pool_workqueue** %5, align 8
  store %struct.wq_barrier* %1, %struct.wq_barrier** %6, align 8
  store %struct.work_struct* %2, %struct.work_struct** %7, align 8
  store %struct.worker* %3, %struct.worker** %8, align 8
  store i32 0, i32* %10, align 4
  %12 = load %struct.wq_barrier*, %struct.wq_barrier** %6, align 8
  %13 = getelementptr inbounds %struct.wq_barrier, %struct.wq_barrier* %12, i32 0, i32 0
  %14 = load i32, i32* @wq_barrier_func, align 4
  %15 = call i32 @INIT_WORK_ONSTACK(%struct.work_struct* %13, i32 %14)
  %16 = load i32, i32* @WORK_STRUCT_PENDING_BIT, align 4
  %17 = load %struct.wq_barrier*, %struct.wq_barrier** %6, align 8
  %18 = getelementptr inbounds %struct.wq_barrier, %struct.wq_barrier* %17, i32 0, i32 0
  %19 = call i64* @work_data_bits(%struct.work_struct* %18)
  %20 = call i32 @__set_bit(i32 %16, i64* %19)
  %21 = load %struct.wq_barrier*, %struct.wq_barrier** %6, align 8
  %22 = getelementptr inbounds %struct.wq_barrier, %struct.wq_barrier* %21, i32 0, i32 2
  %23 = load %struct.work_struct*, %struct.work_struct** %7, align 8
  %24 = getelementptr inbounds %struct.work_struct, %struct.work_struct* %23, i32 0, i32 1
  %25 = call i32 @init_completion_map(i32* %22, i32* %24)
  %26 = load i32, i32* @current, align 4
  %27 = load %struct.wq_barrier*, %struct.wq_barrier** %6, align 8
  %28 = getelementptr inbounds %struct.wq_barrier, %struct.wq_barrier* %27, i32 0, i32 1
  store i32 %26, i32* %28, align 8
  %29 = load %struct.worker*, %struct.worker** %8, align 8
  %30 = icmp ne %struct.worker* %29, null
  br i1 %30, label %31, label %36

31:                                               ; preds = %4
  %32 = load %struct.worker*, %struct.worker** %8, align 8
  %33 = getelementptr inbounds %struct.worker, %struct.worker* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 0
  %35 = load %struct.list_head*, %struct.list_head** %34, align 8
  store %struct.list_head* %35, %struct.list_head** %9, align 8
  br label %51

36:                                               ; preds = %4
  %37 = load %struct.work_struct*, %struct.work_struct** %7, align 8
  %38 = call i64* @work_data_bits(%struct.work_struct* %37)
  store i64* %38, i64** %11, align 8
  %39 = load %struct.work_struct*, %struct.work_struct** %7, align 8
  %40 = getelementptr inbounds %struct.work_struct, %struct.work_struct* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 0
  %42 = load %struct.list_head*, %struct.list_head** %41, align 8
  store %struct.list_head* %42, %struct.list_head** %9, align 8
  %43 = load i64*, i64** %11, align 8
  %44 = load i64, i64* %43, align 8
  %45 = load i64, i64* @WORK_STRUCT_LINKED, align 8
  %46 = and i64 %44, %45
  %47 = trunc i64 %46 to i32
  store i32 %47, i32* %10, align 4
  %48 = load i32, i32* @WORK_STRUCT_LINKED_BIT, align 4
  %49 = load i64*, i64** %11, align 8
  %50 = call i32 @__set_bit(i32 %48, i64* %49)
  br label %51

51:                                               ; preds = %36, %31
  %52 = load %struct.wq_barrier*, %struct.wq_barrier** %6, align 8
  %53 = getelementptr inbounds %struct.wq_barrier, %struct.wq_barrier* %52, i32 0, i32 0
  %54 = call i32 @debug_work_activate(%struct.work_struct* %53)
  %55 = load %struct.pool_workqueue*, %struct.pool_workqueue** %5, align 8
  %56 = load %struct.wq_barrier*, %struct.wq_barrier** %6, align 8
  %57 = getelementptr inbounds %struct.wq_barrier, %struct.wq_barrier* %56, i32 0, i32 0
  %58 = load %struct.list_head*, %struct.list_head** %9, align 8
  %59 = load i32, i32* @WORK_NO_COLOR, align 4
  %60 = call i32 @work_color_to_flags(i32 %59)
  %61 = load i32, i32* %10, align 4
  %62 = or i32 %60, %61
  %63 = call i32 @insert_work(%struct.pool_workqueue* %55, %struct.work_struct* %57, %struct.list_head* %58, i32 %62)
  ret void
}

declare dso_local i32 @INIT_WORK_ONSTACK(%struct.work_struct*, i32) #1

declare dso_local i32 @__set_bit(i32, i64*) #1

declare dso_local i64* @work_data_bits(%struct.work_struct*) #1

declare dso_local i32 @init_completion_map(i32*, i32*) #1

declare dso_local i32 @debug_work_activate(%struct.work_struct*) #1

declare dso_local i32 @insert_work(%struct.pool_workqueue*, %struct.work_struct*, %struct.list_head*, i32) #1

declare dso_local i32 @work_color_to_flags(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
