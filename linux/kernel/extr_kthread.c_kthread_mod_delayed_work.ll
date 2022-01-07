; ModuleID = '/home/carl/AnghaBench/linux/kernel/extr_kthread.c_kthread_mod_delayed_work.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/extr_kthread.c_kthread_mod_delayed_work.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kthread_worker = type { i32 }
%struct.kthread_delayed_work = type { %struct.kthread_work }
%struct.kthread_work = type { i64, %struct.kthread_worker* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @kthread_mod_delayed_work(%struct.kthread_worker* %0, %struct.kthread_delayed_work* %1, i64 %2) #0 {
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
  %16 = load %struct.kthread_work*, %struct.kthread_work** %7, align 8
  %17 = getelementptr inbounds %struct.kthread_work, %struct.kthread_work* %16, i32 0, i32 1
  %18 = load %struct.kthread_worker*, %struct.kthread_worker** %17, align 8
  %19 = icmp ne %struct.kthread_worker* %18, null
  br i1 %19, label %21, label %20

20:                                               ; preds = %3
  br label %37

21:                                               ; preds = %3
  %22 = load %struct.kthread_work*, %struct.kthread_work** %7, align 8
  %23 = getelementptr inbounds %struct.kthread_work, %struct.kthread_work* %22, i32 0, i32 1
  %24 = load %struct.kthread_worker*, %struct.kthread_worker** %23, align 8
  %25 = load %struct.kthread_worker*, %struct.kthread_worker** %4, align 8
  %26 = icmp ne %struct.kthread_worker* %24, %25
  %27 = zext i1 %26 to i32
  %28 = call i32 @WARN_ON_ONCE(i32 %27)
  %29 = load %struct.kthread_work*, %struct.kthread_work** %7, align 8
  %30 = getelementptr inbounds %struct.kthread_work, %struct.kthread_work* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %21
  br label %42

34:                                               ; preds = %21
  %35 = load %struct.kthread_work*, %struct.kthread_work** %7, align 8
  %36 = call i32 @__kthread_cancel_work(%struct.kthread_work* %35, i32 1, i64* %8)
  store i32 %36, i32* %9, align 4
  br label %37

37:                                               ; preds = %34, %20
  %38 = load %struct.kthread_worker*, %struct.kthread_worker** %4, align 8
  %39 = load %struct.kthread_delayed_work*, %struct.kthread_delayed_work** %5, align 8
  %40 = load i64, i64* %6, align 8
  %41 = call i32 @__kthread_queue_delayed_work(%struct.kthread_worker* %38, %struct.kthread_delayed_work* %39, i64 %40)
  br label %42

42:                                               ; preds = %37, %33
  %43 = load %struct.kthread_worker*, %struct.kthread_worker** %4, align 8
  %44 = getelementptr inbounds %struct.kthread_worker, %struct.kthread_worker* %43, i32 0, i32 0
  %45 = load i64, i64* %8, align 8
  %46 = call i32 @raw_spin_unlock_irqrestore(i32* %44, i64 %45)
  %47 = load i32, i32* %9, align 4
  ret i32 %47
}

declare dso_local i32 @raw_spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @WARN_ON_ONCE(i32) #1

declare dso_local i32 @__kthread_cancel_work(%struct.kthread_work*, i32, i64*) #1

declare dso_local i32 @__kthread_queue_delayed_work(%struct.kthread_worker*, %struct.kthread_delayed_work*, i64) #1

declare dso_local i32 @raw_spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
