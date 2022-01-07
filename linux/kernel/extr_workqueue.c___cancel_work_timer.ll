; ModuleID = '/home/carl/AnghaBench/linux/kernel/extr_workqueue.c___cancel_work_timer.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/extr_workqueue.c___cancel_work_timer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.work_struct = type { i32 }
%struct.cwt_wait = type { %struct.TYPE_4__, %struct.work_struct* }
%struct.TYPE_4__ = type { i32 }

@__cancel_work_timer.cancel_waitq = internal global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@cwt_wakefn = common dso_local global i32 0, align 4
@TASK_UNINTERRUPTIBLE = common dso_local global i32 0, align 4
@wq_online = common dso_local global i64 0, align 8
@TASK_NORMAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.work_struct*, i32)* @__cancel_work_timer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__cancel_work_timer(%struct.work_struct* %0, i32 %1) #0 {
  %3 = alloca %struct.work_struct*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.cwt_wait, align 8
  store %struct.work_struct* %0, %struct.work_struct** %3, align 8
  store i32 %1, i32* %4, align 4
  br label %8

8:                                                ; preds = %39, %2
  %9 = load %struct.work_struct*, %struct.work_struct** %3, align 8
  %10 = load i32, i32* %4, align 4
  %11 = call i32 @try_to_grab_pending(%struct.work_struct* %9, i32 %10, i64* %5)
  store i32 %11, i32* %6, align 4
  %12 = load i32, i32* %6, align 4
  %13 = load i32, i32* @ENOENT, align 4
  %14 = sub nsw i32 0, %13
  %15 = icmp eq i32 %12, %14
  %16 = zext i1 %15 to i32
  %17 = call i64 @unlikely(i32 %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %38

19:                                               ; preds = %8
  %20 = getelementptr inbounds %struct.cwt_wait, %struct.cwt_wait* %7, i32 0, i32 0
  %21 = call i32 @init_wait(%struct.TYPE_4__* %20)
  %22 = load i32, i32* @cwt_wakefn, align 4
  %23 = getelementptr inbounds %struct.cwt_wait, %struct.cwt_wait* %7, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 0
  store i32 %22, i32* %24, align 8
  %25 = load %struct.work_struct*, %struct.work_struct** %3, align 8
  %26 = getelementptr inbounds %struct.cwt_wait, %struct.cwt_wait* %7, i32 0, i32 1
  store %struct.work_struct* %25, %struct.work_struct** %26, align 8
  %27 = getelementptr inbounds %struct.cwt_wait, %struct.cwt_wait* %7, i32 0, i32 0
  %28 = load i32, i32* @TASK_UNINTERRUPTIBLE, align 4
  %29 = call i32 @prepare_to_wait_exclusive(i32* @__cancel_work_timer.cancel_waitq, %struct.TYPE_4__* %27, i32 %28)
  %30 = load %struct.work_struct*, %struct.work_struct** %3, align 8
  %31 = call i64 @work_is_canceling(%struct.work_struct* %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %19
  %34 = call i32 (...) @schedule()
  br label %35

35:                                               ; preds = %33, %19
  %36 = getelementptr inbounds %struct.cwt_wait, %struct.cwt_wait* %7, i32 0, i32 0
  %37 = call i32 @finish_wait(i32* @__cancel_work_timer.cancel_waitq, %struct.TYPE_4__* %36)
  br label %38

38:                                               ; preds = %35, %8
  br label %39

39:                                               ; preds = %38
  %40 = load i32, i32* %6, align 4
  %41 = icmp slt i32 %40, 0
  %42 = zext i1 %41 to i32
  %43 = call i64 @unlikely(i32 %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %8, label %45

45:                                               ; preds = %39
  %46 = load %struct.work_struct*, %struct.work_struct** %3, align 8
  %47 = call i32 @mark_work_canceling(%struct.work_struct* %46)
  %48 = load i64, i64* %5, align 8
  %49 = call i32 @local_irq_restore(i64 %48)
  %50 = load i64, i64* @wq_online, align 8
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %55

52:                                               ; preds = %45
  %53 = load %struct.work_struct*, %struct.work_struct** %3, align 8
  %54 = call i32 @__flush_work(%struct.work_struct* %53, i32 1)
  br label %55

55:                                               ; preds = %52, %45
  %56 = load %struct.work_struct*, %struct.work_struct** %3, align 8
  %57 = call i32 @clear_work_data(%struct.work_struct* %56)
  %58 = call i32 (...) @smp_mb()
  %59 = call i64 @waitqueue_active(i32* @__cancel_work_timer.cancel_waitq)
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %65

61:                                               ; preds = %55
  %62 = load i32, i32* @TASK_NORMAL, align 4
  %63 = load %struct.work_struct*, %struct.work_struct** %3, align 8
  %64 = call i32 @__wake_up(i32* @__cancel_work_timer.cancel_waitq, i32 %62, i32 1, %struct.work_struct* %63)
  br label %65

65:                                               ; preds = %61, %55
  %66 = load i32, i32* %6, align 4
  ret i32 %66
}

declare dso_local i32 @try_to_grab_pending(%struct.work_struct*, i32, i64*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @init_wait(%struct.TYPE_4__*) #1

declare dso_local i32 @prepare_to_wait_exclusive(i32*, %struct.TYPE_4__*, i32) #1

declare dso_local i64 @work_is_canceling(%struct.work_struct*) #1

declare dso_local i32 @schedule(...) #1

declare dso_local i32 @finish_wait(i32*, %struct.TYPE_4__*) #1

declare dso_local i32 @mark_work_canceling(%struct.work_struct*) #1

declare dso_local i32 @local_irq_restore(i64) #1

declare dso_local i32 @__flush_work(%struct.work_struct*, i32) #1

declare dso_local i32 @clear_work_data(%struct.work_struct*) #1

declare dso_local i32 @smp_mb(...) #1

declare dso_local i64 @waitqueue_active(i32*) #1

declare dso_local i32 @__wake_up(i32*, i32, i32, %struct.work_struct*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
