; ModuleID = '/home/carl/AnghaBench/linux/kernel/extr_workqueue_internal.h_current_wq_worker.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/extr_workqueue_internal.h_current_wq_worker.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }
%struct.worker = type { i32 }

@current = common dso_local global %struct.TYPE_3__* null, align 8
@PF_WQ_WORKER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.worker* ()* @current_wq_worker to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.worker* @current_wq_worker() #0 {
  %1 = alloca %struct.worker*, align 8
  %2 = call i64 (...) @in_task()
  %3 = icmp ne i64 %2, 0
  br i1 %3, label %4, label %14

4:                                                ; preds = %0
  %5 = load %struct.TYPE_3__*, %struct.TYPE_3__** @current, align 8
  %6 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  %8 = load i32, i32* @PF_WQ_WORKER, align 4
  %9 = and i32 %7, %8
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %14

11:                                               ; preds = %4
  %12 = load %struct.TYPE_3__*, %struct.TYPE_3__** @current, align 8
  %13 = call %struct.worker* @kthread_data(%struct.TYPE_3__* %12)
  store %struct.worker* %13, %struct.worker** %1, align 8
  br label %15

14:                                               ; preds = %4, %0
  store %struct.worker* null, %struct.worker** %1, align 8
  br label %15

15:                                               ; preds = %14, %11
  %16 = load %struct.worker*, %struct.worker** %1, align 8
  ret %struct.worker* %16
}

declare dso_local i64 @in_task(...) #1

declare dso_local %struct.worker* @kthread_data(%struct.TYPE_3__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
