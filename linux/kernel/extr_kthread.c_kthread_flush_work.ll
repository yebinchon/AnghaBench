; ModuleID = '/home/carl/AnghaBench/linux/kernel/extr_kthread.c_kthread_flush_work.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/extr_kthread.c_kthread_flush_work.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kthread_work = type { %struct.TYPE_4__, %struct.kthread_worker* }
%struct.TYPE_4__ = type { i32 }
%struct.kthread_worker = type { i32, %struct.TYPE_3__, %struct.kthread_work* }
%struct.TYPE_3__ = type { i32 }
%struct.kthread_flush_work = type { i32, i32, i32, i32 }

@kthread_flush_work_fn = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @kthread_flush_work(%struct.kthread_work* %0) #0 {
  %2 = alloca %struct.kthread_work*, align 8
  %3 = alloca %struct.kthread_flush_work, align 4
  %4 = alloca %struct.kthread_worker*, align 8
  %5 = alloca i32, align 4
  store %struct.kthread_work* %0, %struct.kthread_work** %2, align 8
  %6 = getelementptr inbounds %struct.kthread_flush_work, %struct.kthread_flush_work* %3, i32 0, i32 0
  %7 = getelementptr inbounds %struct.kthread_flush_work, %struct.kthread_flush_work* %3, i32 0, i32 1
  %8 = load i32, i32* %7, align 4
  %9 = load i32, i32* @kthread_flush_work_fn, align 4
  %10 = call i32 @KTHREAD_WORK_INIT(i32 %8, i32 %9)
  store i32 %10, i32* %6, align 4
  %11 = getelementptr inbounds %struct.kthread_flush_work, %struct.kthread_flush_work* %3, i32 0, i32 1
  %12 = getelementptr inbounds %struct.kthread_flush_work, %struct.kthread_flush_work* %3, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @COMPLETION_INITIALIZER_ONSTACK(i32 %13)
  store i32 %14, i32* %11, align 4
  %15 = getelementptr inbounds %struct.kthread_flush_work, %struct.kthread_flush_work* %3, i32 0, i32 2
  store i32 0, i32* %15, align 4
  %16 = getelementptr inbounds %struct.kthread_flush_work, %struct.kthread_flush_work* %3, i32 0, i32 3
  store i32 0, i32* %16, align 4
  store i32 0, i32* %5, align 4
  %17 = load %struct.kthread_work*, %struct.kthread_work** %2, align 8
  %18 = getelementptr inbounds %struct.kthread_work, %struct.kthread_work* %17, i32 0, i32 1
  %19 = load %struct.kthread_worker*, %struct.kthread_worker** %18, align 8
  store %struct.kthread_worker* %19, %struct.kthread_worker** %4, align 8
  %20 = load %struct.kthread_worker*, %struct.kthread_worker** %4, align 8
  %21 = icmp ne %struct.kthread_worker* %20, null
  br i1 %21, label %23, label %22

22:                                               ; preds = %1
  br label %71

23:                                               ; preds = %1
  %24 = load %struct.kthread_worker*, %struct.kthread_worker** %4, align 8
  %25 = getelementptr inbounds %struct.kthread_worker, %struct.kthread_worker* %24, i32 0, i32 0
  %26 = call i32 @raw_spin_lock_irq(i32* %25)
  %27 = load %struct.kthread_work*, %struct.kthread_work** %2, align 8
  %28 = getelementptr inbounds %struct.kthread_work, %struct.kthread_work* %27, i32 0, i32 1
  %29 = load %struct.kthread_worker*, %struct.kthread_worker** %28, align 8
  %30 = load %struct.kthread_worker*, %struct.kthread_worker** %4, align 8
  %31 = icmp ne %struct.kthread_worker* %29, %30
  %32 = zext i1 %31 to i32
  %33 = call i32 @WARN_ON_ONCE(i32 %32)
  %34 = load %struct.kthread_work*, %struct.kthread_work** %2, align 8
  %35 = getelementptr inbounds %struct.kthread_work, %struct.kthread_work* %34, i32 0, i32 0
  %36 = call i32 @list_empty(%struct.TYPE_4__* %35)
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %46, label %38

38:                                               ; preds = %23
  %39 = load %struct.kthread_worker*, %struct.kthread_worker** %4, align 8
  %40 = getelementptr inbounds %struct.kthread_flush_work, %struct.kthread_flush_work* %3, i32 0, i32 1
  %41 = load %struct.kthread_work*, %struct.kthread_work** %2, align 8
  %42 = getelementptr inbounds %struct.kthread_work, %struct.kthread_work* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = call i32 @kthread_insert_work(%struct.kthread_worker* %39, i32* %40, i32 %44)
  br label %62

46:                                               ; preds = %23
  %47 = load %struct.kthread_worker*, %struct.kthread_worker** %4, align 8
  %48 = getelementptr inbounds %struct.kthread_worker, %struct.kthread_worker* %47, i32 0, i32 2
  %49 = load %struct.kthread_work*, %struct.kthread_work** %48, align 8
  %50 = load %struct.kthread_work*, %struct.kthread_work** %2, align 8
  %51 = icmp eq %struct.kthread_work* %49, %50
  br i1 %51, label %52, label %60

52:                                               ; preds = %46
  %53 = load %struct.kthread_worker*, %struct.kthread_worker** %4, align 8
  %54 = getelementptr inbounds %struct.kthread_flush_work, %struct.kthread_flush_work* %3, i32 0, i32 1
  %55 = load %struct.kthread_worker*, %struct.kthread_worker** %4, align 8
  %56 = getelementptr inbounds %struct.kthread_worker, %struct.kthread_worker* %55, i32 0, i32 1
  %57 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = call i32 @kthread_insert_work(%struct.kthread_worker* %53, i32* %54, i32 %58)
  br label %61

60:                                               ; preds = %46
  store i32 1, i32* %5, align 4
  br label %61

61:                                               ; preds = %60, %52
  br label %62

62:                                               ; preds = %61, %38
  %63 = load %struct.kthread_worker*, %struct.kthread_worker** %4, align 8
  %64 = getelementptr inbounds %struct.kthread_worker, %struct.kthread_worker* %63, i32 0, i32 0
  %65 = call i32 @raw_spin_unlock_irq(i32* %64)
  %66 = load i32, i32* %5, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %71, label %68

68:                                               ; preds = %62
  %69 = getelementptr inbounds %struct.kthread_flush_work, %struct.kthread_flush_work* %3, i32 0, i32 0
  %70 = call i32 @wait_for_completion(i32* %69)
  br label %71

71:                                               ; preds = %22, %68, %62
  ret void
}

declare dso_local i32 @KTHREAD_WORK_INIT(i32, i32) #1

declare dso_local i32 @COMPLETION_INITIALIZER_ONSTACK(i32) #1

declare dso_local i32 @raw_spin_lock_irq(i32*) #1

declare dso_local i32 @WARN_ON_ONCE(i32) #1

declare dso_local i32 @list_empty(%struct.TYPE_4__*) #1

declare dso_local i32 @kthread_insert_work(%struct.kthread_worker*, i32*, i32) #1

declare dso_local i32 @raw_spin_unlock_irq(i32*) #1

declare dso_local i32 @wait_for_completion(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
