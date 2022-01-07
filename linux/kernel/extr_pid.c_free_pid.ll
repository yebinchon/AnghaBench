; ModuleID = '/home/carl/AnghaBench/linux/kernel/extr_pid.c_free_pid.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/extr_pid.c_free_pid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pid = type { i32, i32, %struct.upid* }
%struct.upid = type { i32, %struct.pid_namespace* }
%struct.pid_namespace = type { i32, i32, i32, i32 }

@pidmap_lock = common dso_local global i32 0, align 4
@delayed_put_pid = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @free_pid(%struct.pid* %0) #0 {
  %2 = alloca %struct.pid*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca %struct.upid*, align 8
  %6 = alloca %struct.pid_namespace*, align 8
  store %struct.pid* %0, %struct.pid** %2, align 8
  %7 = load i64, i64* %4, align 8
  %8 = call i32 @spin_lock_irqsave(i32* @pidmap_lock, i64 %7)
  store i32 0, i32* %3, align 4
  br label %9

9:                                                ; preds = %52, %1
  %10 = load i32, i32* %3, align 4
  %11 = load %struct.pid*, %struct.pid** %2, align 8
  %12 = getelementptr inbounds %struct.pid, %struct.pid* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = icmp sle i32 %10, %13
  br i1 %14, label %15, label %55

15:                                               ; preds = %9
  %16 = load %struct.pid*, %struct.pid** %2, align 8
  %17 = getelementptr inbounds %struct.pid, %struct.pid* %16, i32 0, i32 2
  %18 = load %struct.upid*, %struct.upid** %17, align 8
  %19 = load i32, i32* %3, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds %struct.upid, %struct.upid* %18, i64 %20
  store %struct.upid* %21, %struct.upid** %5, align 8
  %22 = load %struct.upid*, %struct.upid** %5, align 8
  %23 = getelementptr inbounds %struct.upid, %struct.upid* %22, i32 0, i32 1
  %24 = load %struct.pid_namespace*, %struct.pid_namespace** %23, align 8
  store %struct.pid_namespace* %24, %struct.pid_namespace** %6, align 8
  %25 = load %struct.pid_namespace*, %struct.pid_namespace** %6, align 8
  %26 = getelementptr inbounds %struct.pid_namespace, %struct.pid_namespace* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = add nsw i32 %27, -1
  store i32 %28, i32* %26, align 4
  switch i32 %28, label %45 [
    i32 2, label %29
    i32 1, label %29
    i32 128, label %34
    i32 0, label %41
  ]

29:                                               ; preds = %15, %15
  %30 = load %struct.pid_namespace*, %struct.pid_namespace** %6, align 8
  %31 = getelementptr inbounds %struct.pid_namespace, %struct.pid_namespace* %30, i32 0, i32 3
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @wake_up_process(i32 %32)
  br label %45

34:                                               ; preds = %15
  %35 = load %struct.pid_namespace*, %struct.pid_namespace** %6, align 8
  %36 = getelementptr inbounds %struct.pid_namespace, %struct.pid_namespace* %35, i32 0, i32 3
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @WARN_ON(i32 %37)
  %39 = load %struct.pid_namespace*, %struct.pid_namespace** %6, align 8
  %40 = getelementptr inbounds %struct.pid_namespace, %struct.pid_namespace* %39, i32 0, i32 0
  store i32 0, i32* %40, align 4
  br label %41

41:                                               ; preds = %15, %34
  %42 = load %struct.pid_namespace*, %struct.pid_namespace** %6, align 8
  %43 = getelementptr inbounds %struct.pid_namespace, %struct.pid_namespace* %42, i32 0, i32 2
  %44 = call i32 @schedule_work(i32* %43)
  br label %45

45:                                               ; preds = %15, %41, %29
  %46 = load %struct.pid_namespace*, %struct.pid_namespace** %6, align 8
  %47 = getelementptr inbounds %struct.pid_namespace, %struct.pid_namespace* %46, i32 0, i32 1
  %48 = load %struct.upid*, %struct.upid** %5, align 8
  %49 = getelementptr inbounds %struct.upid, %struct.upid* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = call i32 @idr_remove(i32* %47, i32 %50)
  br label %52

52:                                               ; preds = %45
  %53 = load i32, i32* %3, align 4
  %54 = add nsw i32 %53, 1
  store i32 %54, i32* %3, align 4
  br label %9

55:                                               ; preds = %9
  %56 = load i64, i64* %4, align 8
  %57 = call i32 @spin_unlock_irqrestore(i32* @pidmap_lock, i64 %56)
  %58 = load %struct.pid*, %struct.pid** %2, align 8
  %59 = getelementptr inbounds %struct.pid, %struct.pid* %58, i32 0, i32 1
  %60 = load i32, i32* @delayed_put_pid, align 4
  %61 = call i32 @call_rcu(i32* %59, i32 %60)
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @wake_up_process(i32) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @schedule_work(i32*) #1

declare dso_local i32 @idr_remove(i32*, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @call_rcu(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
