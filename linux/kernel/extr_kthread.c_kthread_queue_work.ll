; ModuleID = '/home/carl/AnghaBench/linux/kernel/extr_kthread.c_kthread_queue_work.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/extr_kthread.c_kthread_queue_work.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kthread_worker = type { i32, i32 }
%struct.kthread_work = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @kthread_queue_work(%struct.kthread_worker* %0, %struct.kthread_work* %1) #0 {
  %3 = alloca %struct.kthread_worker*, align 8
  %4 = alloca %struct.kthread_work*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  store %struct.kthread_worker* %0, %struct.kthread_worker** %3, align 8
  store %struct.kthread_work* %1, %struct.kthread_work** %4, align 8
  store i32 0, i32* %5, align 4
  %7 = load %struct.kthread_worker*, %struct.kthread_worker** %3, align 8
  %8 = getelementptr inbounds %struct.kthread_worker, %struct.kthread_worker* %7, i32 0, i32 0
  %9 = load i64, i64* %6, align 8
  %10 = call i32 @raw_spin_lock_irqsave(i32* %8, i64 %9)
  %11 = load %struct.kthread_worker*, %struct.kthread_worker** %3, align 8
  %12 = load %struct.kthread_work*, %struct.kthread_work** %4, align 8
  %13 = call i32 @queuing_blocked(%struct.kthread_worker* %11, %struct.kthread_work* %12)
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %21, label %15

15:                                               ; preds = %2
  %16 = load %struct.kthread_worker*, %struct.kthread_worker** %3, align 8
  %17 = load %struct.kthread_work*, %struct.kthread_work** %4, align 8
  %18 = load %struct.kthread_worker*, %struct.kthread_worker** %3, align 8
  %19 = getelementptr inbounds %struct.kthread_worker, %struct.kthread_worker* %18, i32 0, i32 1
  %20 = call i32 @kthread_insert_work(%struct.kthread_worker* %16, %struct.kthread_work* %17, i32* %19)
  store i32 1, i32* %5, align 4
  br label %21

21:                                               ; preds = %15, %2
  %22 = load %struct.kthread_worker*, %struct.kthread_worker** %3, align 8
  %23 = getelementptr inbounds %struct.kthread_worker, %struct.kthread_worker* %22, i32 0, i32 0
  %24 = load i64, i64* %6, align 8
  %25 = call i32 @raw_spin_unlock_irqrestore(i32* %23, i64 %24)
  %26 = load i32, i32* %5, align 4
  ret i32 %26
}

declare dso_local i32 @raw_spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @queuing_blocked(%struct.kthread_worker*, %struct.kthread_work*) #1

declare dso_local i32 @kthread_insert_work(%struct.kthread_worker*, %struct.kthread_work*, i32*) #1

declare dso_local i32 @raw_spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
