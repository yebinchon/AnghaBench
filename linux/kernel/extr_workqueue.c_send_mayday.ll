; ModuleID = '/home/carl/AnghaBench/linux/kernel/extr_workqueue.c_send_mayday.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/extr_workqueue.c_send_mayday.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.work_struct = type { i32 }
%struct.pool_workqueue = type { i32, %struct.workqueue_struct* }
%struct.workqueue_struct = type { %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 }

@wq_mayday_lock = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.work_struct*)* @send_mayday to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @send_mayday(%struct.work_struct* %0) #0 {
  %2 = alloca %struct.work_struct*, align 8
  %3 = alloca %struct.pool_workqueue*, align 8
  %4 = alloca %struct.workqueue_struct*, align 8
  store %struct.work_struct* %0, %struct.work_struct** %2, align 8
  %5 = load %struct.work_struct*, %struct.work_struct** %2, align 8
  %6 = call %struct.pool_workqueue* @get_work_pwq(%struct.work_struct* %5)
  store %struct.pool_workqueue* %6, %struct.pool_workqueue** %3, align 8
  %7 = load %struct.pool_workqueue*, %struct.pool_workqueue** %3, align 8
  %8 = getelementptr inbounds %struct.pool_workqueue, %struct.pool_workqueue* %7, i32 0, i32 1
  %9 = load %struct.workqueue_struct*, %struct.workqueue_struct** %8, align 8
  store %struct.workqueue_struct* %9, %struct.workqueue_struct** %4, align 8
  %10 = call i32 @lockdep_assert_held(i32* @wq_mayday_lock)
  %11 = load %struct.workqueue_struct*, %struct.workqueue_struct** %4, align 8
  %12 = getelementptr inbounds %struct.workqueue_struct, %struct.workqueue_struct* %11, i32 0, i32 0
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %14 = icmp ne %struct.TYPE_2__* %13, null
  br i1 %14, label %16, label %15

15:                                               ; preds = %1
  br label %35

16:                                               ; preds = %1
  %17 = load %struct.pool_workqueue*, %struct.pool_workqueue** %3, align 8
  %18 = getelementptr inbounds %struct.pool_workqueue, %struct.pool_workqueue* %17, i32 0, i32 0
  %19 = call i64 @list_empty(i32* %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %35

21:                                               ; preds = %16
  %22 = load %struct.pool_workqueue*, %struct.pool_workqueue** %3, align 8
  %23 = call i32 @get_pwq(%struct.pool_workqueue* %22)
  %24 = load %struct.pool_workqueue*, %struct.pool_workqueue** %3, align 8
  %25 = getelementptr inbounds %struct.pool_workqueue, %struct.pool_workqueue* %24, i32 0, i32 0
  %26 = load %struct.workqueue_struct*, %struct.workqueue_struct** %4, align 8
  %27 = getelementptr inbounds %struct.workqueue_struct, %struct.workqueue_struct* %26, i32 0, i32 1
  %28 = call i32 @list_add_tail(i32* %25, i32* %27)
  %29 = load %struct.workqueue_struct*, %struct.workqueue_struct** %4, align 8
  %30 = getelementptr inbounds %struct.workqueue_struct, %struct.workqueue_struct* %29, i32 0, i32 0
  %31 = load %struct.TYPE_2__*, %struct.TYPE_2__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @wake_up_process(i32 %33)
  br label %35

35:                                               ; preds = %15, %21, %16
  ret void
}

declare dso_local %struct.pool_workqueue* @get_work_pwq(%struct.work_struct*) #1

declare dso_local i32 @lockdep_assert_held(i32*) #1

declare dso_local i64 @list_empty(i32*) #1

declare dso_local i32 @get_pwq(%struct.pool_workqueue*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @wake_up_process(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
