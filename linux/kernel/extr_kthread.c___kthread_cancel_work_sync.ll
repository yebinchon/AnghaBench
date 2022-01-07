; ModuleID = '/home/carl/AnghaBench/linux/kernel/extr_kthread.c___kthread_cancel_work_sync.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/extr_kthread.c___kthread_cancel_work_sync.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kthread_work = type { i32, %struct.kthread_worker* }
%struct.kthread_worker = type { i32, %struct.kthread_work* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.kthread_work*, i32)* @__kthread_cancel_work_sync to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__kthread_cancel_work_sync(%struct.kthread_work* %0, i32 %1) #0 {
  %3 = alloca %struct.kthread_work*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.kthread_worker*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store %struct.kthread_work* %0, %struct.kthread_work** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.kthread_work*, %struct.kthread_work** %3, align 8
  %9 = getelementptr inbounds %struct.kthread_work, %struct.kthread_work* %8, i32 0, i32 1
  %10 = load %struct.kthread_worker*, %struct.kthread_worker** %9, align 8
  store %struct.kthread_worker* %10, %struct.kthread_worker** %5, align 8
  store i32 0, i32* %7, align 4
  %11 = load %struct.kthread_worker*, %struct.kthread_worker** %5, align 8
  %12 = icmp ne %struct.kthread_worker* %11, null
  br i1 %12, label %14, label %13

13:                                               ; preds = %2
  br label %59

14:                                               ; preds = %2
  %15 = load %struct.kthread_worker*, %struct.kthread_worker** %5, align 8
  %16 = getelementptr inbounds %struct.kthread_worker, %struct.kthread_worker* %15, i32 0, i32 0
  %17 = load i64, i64* %6, align 8
  %18 = call i32 @raw_spin_lock_irqsave(i32* %16, i64 %17)
  %19 = load %struct.kthread_work*, %struct.kthread_work** %3, align 8
  %20 = getelementptr inbounds %struct.kthread_work, %struct.kthread_work* %19, i32 0, i32 1
  %21 = load %struct.kthread_worker*, %struct.kthread_worker** %20, align 8
  %22 = load %struct.kthread_worker*, %struct.kthread_worker** %5, align 8
  %23 = icmp ne %struct.kthread_worker* %21, %22
  %24 = zext i1 %23 to i32
  %25 = call i32 @WARN_ON_ONCE(i32 %24)
  %26 = load %struct.kthread_work*, %struct.kthread_work** %3, align 8
  %27 = load i32, i32* %4, align 4
  %28 = call i32 @__kthread_cancel_work(%struct.kthread_work* %26, i32 %27, i64* %6)
  store i32 %28, i32* %7, align 4
  %29 = load %struct.kthread_worker*, %struct.kthread_worker** %5, align 8
  %30 = getelementptr inbounds %struct.kthread_worker, %struct.kthread_worker* %29, i32 0, i32 1
  %31 = load %struct.kthread_work*, %struct.kthread_work** %30, align 8
  %32 = load %struct.kthread_work*, %struct.kthread_work** %3, align 8
  %33 = icmp ne %struct.kthread_work* %31, %32
  br i1 %33, label %34, label %35

34:                                               ; preds = %14
  br label %54

35:                                               ; preds = %14
  %36 = load %struct.kthread_work*, %struct.kthread_work** %3, align 8
  %37 = getelementptr inbounds %struct.kthread_work, %struct.kthread_work* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = add nsw i32 %38, 1
  store i32 %39, i32* %37, align 8
  %40 = load %struct.kthread_worker*, %struct.kthread_worker** %5, align 8
  %41 = getelementptr inbounds %struct.kthread_worker, %struct.kthread_worker* %40, i32 0, i32 0
  %42 = load i64, i64* %6, align 8
  %43 = call i32 @raw_spin_unlock_irqrestore(i32* %41, i64 %42)
  %44 = load %struct.kthread_work*, %struct.kthread_work** %3, align 8
  %45 = call i32 @kthread_flush_work(%struct.kthread_work* %44)
  %46 = load %struct.kthread_worker*, %struct.kthread_worker** %5, align 8
  %47 = getelementptr inbounds %struct.kthread_worker, %struct.kthread_worker* %46, i32 0, i32 0
  %48 = load i64, i64* %6, align 8
  %49 = call i32 @raw_spin_lock_irqsave(i32* %47, i64 %48)
  %50 = load %struct.kthread_work*, %struct.kthread_work** %3, align 8
  %51 = getelementptr inbounds %struct.kthread_work, %struct.kthread_work* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = add nsw i32 %52, -1
  store i32 %53, i32* %51, align 8
  br label %54

54:                                               ; preds = %35, %34
  %55 = load %struct.kthread_worker*, %struct.kthread_worker** %5, align 8
  %56 = getelementptr inbounds %struct.kthread_worker, %struct.kthread_worker* %55, i32 0, i32 0
  %57 = load i64, i64* %6, align 8
  %58 = call i32 @raw_spin_unlock_irqrestore(i32* %56, i64 %57)
  br label %59

59:                                               ; preds = %54, %13
  %60 = load i32, i32* %7, align 4
  ret i32 %60
}

declare dso_local i32 @raw_spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @WARN_ON_ONCE(i32) #1

declare dso_local i32 @__kthread_cancel_work(%struct.kthread_work*, i32, i64*) #1

declare dso_local i32 @raw_spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @kthread_flush_work(%struct.kthread_work*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
