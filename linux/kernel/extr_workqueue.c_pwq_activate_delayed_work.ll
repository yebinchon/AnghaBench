; ModuleID = '/home/carl/AnghaBench/linux/kernel/extr_workqueue.c_pwq_activate_delayed_work.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/extr_workqueue.c_pwq_activate_delayed_work.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.work_struct = type { i32 }
%struct.pool_workqueue = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32 }

@jiffies = common dso_local global i32 0, align 4
@WORK_STRUCT_DELAYED_BIT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.work_struct*)* @pwq_activate_delayed_work to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pwq_activate_delayed_work(%struct.work_struct* %0) #0 {
  %2 = alloca %struct.work_struct*, align 8
  %3 = alloca %struct.pool_workqueue*, align 8
  store %struct.work_struct* %0, %struct.work_struct** %2, align 8
  %4 = load %struct.work_struct*, %struct.work_struct** %2, align 8
  %5 = call %struct.pool_workqueue* @get_work_pwq(%struct.work_struct* %4)
  store %struct.pool_workqueue* %5, %struct.pool_workqueue** %3, align 8
  %6 = load %struct.work_struct*, %struct.work_struct** %2, align 8
  %7 = call i32 @trace_workqueue_activate_work(%struct.work_struct* %6)
  %8 = load %struct.pool_workqueue*, %struct.pool_workqueue** %3, align 8
  %9 = getelementptr inbounds %struct.pool_workqueue, %struct.pool_workqueue* %8, i32 0, i32 1
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = call i64 @list_empty(i32* %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %20

14:                                               ; preds = %1
  %15 = load i32, i32* @jiffies, align 4
  %16 = load %struct.pool_workqueue*, %struct.pool_workqueue** %3, align 8
  %17 = getelementptr inbounds %struct.pool_workqueue, %struct.pool_workqueue* %16, i32 0, i32 1
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 1
  store i32 %15, i32* %19, align 4
  br label %20

20:                                               ; preds = %14, %1
  %21 = load %struct.work_struct*, %struct.work_struct** %2, align 8
  %22 = load %struct.pool_workqueue*, %struct.pool_workqueue** %3, align 8
  %23 = getelementptr inbounds %struct.pool_workqueue, %struct.pool_workqueue* %22, i32 0, i32 1
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = call i32 @move_linked_works(%struct.work_struct* %21, i32* %25, i32* null)
  %27 = load i32, i32* @WORK_STRUCT_DELAYED_BIT, align 4
  %28 = load %struct.work_struct*, %struct.work_struct** %2, align 8
  %29 = call i32 @work_data_bits(%struct.work_struct* %28)
  %30 = call i32 @__clear_bit(i32 %27, i32 %29)
  %31 = load %struct.pool_workqueue*, %struct.pool_workqueue** %3, align 8
  %32 = getelementptr inbounds %struct.pool_workqueue, %struct.pool_workqueue* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = add nsw i32 %33, 1
  store i32 %34, i32* %32, align 8
  ret void
}

declare dso_local %struct.pool_workqueue* @get_work_pwq(%struct.work_struct*) #1

declare dso_local i32 @trace_workqueue_activate_work(%struct.work_struct*) #1

declare dso_local i64 @list_empty(i32*) #1

declare dso_local i32 @move_linked_works(%struct.work_struct*, i32*, i32*) #1

declare dso_local i32 @__clear_bit(i32, i32) #1

declare dso_local i32 @work_data_bits(%struct.work_struct*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
