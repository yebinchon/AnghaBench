; ModuleID = '/home/carl/AnghaBench/linux/kernel/extr_kthread.c_kthread_flush_worker.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/extr_kthread.c_kthread_flush_worker.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kthread_worker = type { i32 }
%struct.kthread_flush_work = type { i32, i32, i32, i32 }

@kthread_flush_work_fn = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @kthread_flush_worker(%struct.kthread_worker* %0) #0 {
  %2 = alloca %struct.kthread_worker*, align 8
  %3 = alloca %struct.kthread_flush_work, align 4
  store %struct.kthread_worker* %0, %struct.kthread_worker** %2, align 8
  %4 = getelementptr inbounds %struct.kthread_flush_work, %struct.kthread_flush_work* %3, i32 0, i32 0
  %5 = getelementptr inbounds %struct.kthread_flush_work, %struct.kthread_flush_work* %3, i32 0, i32 1
  %6 = load i32, i32* %5, align 4
  %7 = load i32, i32* @kthread_flush_work_fn, align 4
  %8 = call i32 @KTHREAD_WORK_INIT(i32 %6, i32 %7)
  store i32 %8, i32* %4, align 4
  %9 = getelementptr inbounds %struct.kthread_flush_work, %struct.kthread_flush_work* %3, i32 0, i32 1
  %10 = getelementptr inbounds %struct.kthread_flush_work, %struct.kthread_flush_work* %3, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = call i32 @COMPLETION_INITIALIZER_ONSTACK(i32 %11)
  store i32 %12, i32* %9, align 4
  %13 = getelementptr inbounds %struct.kthread_flush_work, %struct.kthread_flush_work* %3, i32 0, i32 2
  store i32 0, i32* %13, align 4
  %14 = getelementptr inbounds %struct.kthread_flush_work, %struct.kthread_flush_work* %3, i32 0, i32 3
  store i32 0, i32* %14, align 4
  %15 = load %struct.kthread_worker*, %struct.kthread_worker** %2, align 8
  %16 = getelementptr inbounds %struct.kthread_flush_work, %struct.kthread_flush_work* %3, i32 0, i32 1
  %17 = call i32 @kthread_queue_work(%struct.kthread_worker* %15, i32* %16)
  %18 = getelementptr inbounds %struct.kthread_flush_work, %struct.kthread_flush_work* %3, i32 0, i32 0
  %19 = call i32 @wait_for_completion(i32* %18)
  ret void
}

declare dso_local i32 @KTHREAD_WORK_INIT(i32, i32) #1

declare dso_local i32 @COMPLETION_INITIALIZER_ONSTACK(i32) #1

declare dso_local i32 @kthread_queue_work(%struct.kthread_worker*, i32*) #1

declare dso_local i32 @wait_for_completion(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
