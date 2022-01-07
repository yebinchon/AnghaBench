; ModuleID = '/home/carl/AnghaBench/linux/kernel/extr_kthread.c_kthread_queue_delayed_work.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/extr_kthread.c_kthread_queue_delayed_work.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kthread_worker = type { i32 }
%struct.kthread_delayed_work = type { %struct.kthread_work }
%struct.kthread_work = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @kthread_queue_delayed_work(%struct.kthread_worker* %0, %struct.kthread_delayed_work* %1, i64 %2) #0 {
  %4 = alloca %struct.kthread_worker*, align 8
  %5 = alloca %struct.kthread_delayed_work*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.kthread_work*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store %struct.kthread_worker* %0, %struct.kthread_worker** %4, align 8
  store %struct.kthread_delayed_work* %1, %struct.kthread_delayed_work** %5, align 8
  store i64 %2, i64* %6, align 8
  %10 = load %struct.kthread_delayed_work*, %struct.kthread_delayed_work** %5, align 8
  %11 = getelementptr inbounds %struct.kthread_delayed_work, %struct.kthread_delayed_work* %10, i32 0, i32 0
  store %struct.kthread_work* %11, %struct.kthread_work** %7, align 8
  store i32 0, i32* %9, align 4
  %12 = load %struct.kthread_worker*, %struct.kthread_worker** %4, align 8
  %13 = getelementptr inbounds %struct.kthread_worker, %struct.kthread_worker* %12, i32 0, i32 0
  %14 = load i64, i64* %8, align 8
  %15 = call i32 @raw_spin_lock_irqsave(i32* %13, i64 %14)
  %16 = load %struct.kthread_worker*, %struct.kthread_worker** %4, align 8
  %17 = load %struct.kthread_work*, %struct.kthread_work** %7, align 8
  %18 = call i32 @queuing_blocked(%struct.kthread_worker* %16, %struct.kthread_work* %17)
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %25, label %20

20:                                               ; preds = %3
  %21 = load %struct.kthread_worker*, %struct.kthread_worker** %4, align 8
  %22 = load %struct.kthread_delayed_work*, %struct.kthread_delayed_work** %5, align 8
  %23 = load i64, i64* %6, align 8
  %24 = call i32 @__kthread_queue_delayed_work(%struct.kthread_worker* %21, %struct.kthread_delayed_work* %22, i64 %23)
  store i32 1, i32* %9, align 4
  br label %25

25:                                               ; preds = %20, %3
  %26 = load %struct.kthread_worker*, %struct.kthread_worker** %4, align 8
  %27 = getelementptr inbounds %struct.kthread_worker, %struct.kthread_worker* %26, i32 0, i32 0
  %28 = load i64, i64* %8, align 8
  %29 = call i32 @raw_spin_unlock_irqrestore(i32* %27, i64 %28)
  %30 = load i32, i32* %9, align 4
  ret i32 %30
}

declare dso_local i32 @raw_spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @queuing_blocked(%struct.kthread_worker*, %struct.kthread_work*) #1

declare dso_local i32 @__kthread_queue_delayed_work(%struct.kthread_worker*, %struct.kthread_delayed_work*, i64) #1

declare dso_local i32 @raw_spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
