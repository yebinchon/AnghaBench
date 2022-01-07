; ModuleID = '/home/carl/AnghaBench/linux/kernel/extr_ptrace.c_ptrace_unfreeze_traced.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/extr_ptrace.c_ptrace_unfreeze_traced.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.task_struct = type { i64, i64, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 }

@__TASK_TRACED = common dso_local global i64 0, align 8
@current = common dso_local global i64 0, align 8
@TASK_TRACED = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.task_struct*)* @ptrace_unfreeze_traced to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ptrace_unfreeze_traced(%struct.task_struct* %0) #0 {
  %2 = alloca %struct.task_struct*, align 8
  store %struct.task_struct* %0, %struct.task_struct** %2, align 8
  %3 = load %struct.task_struct*, %struct.task_struct** %2, align 8
  %4 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %3, i32 0, i32 0
  %5 = load i64, i64* %4, align 8
  %6 = load i64, i64* @__TASK_TRACED, align 8
  %7 = icmp ne i64 %5, %6
  br i1 %7, label %8, label %9

8:                                                ; preds = %1
  br label %53

9:                                                ; preds = %1
  %10 = load %struct.task_struct*, %struct.task_struct** %2, align 8
  %11 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %10, i32 0, i32 3
  %12 = load i32, i32* %11, align 8
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %20

14:                                               ; preds = %9
  %15 = load %struct.task_struct*, %struct.task_struct** %2, align 8
  %16 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %15, i32 0, i32 1
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @current, align 8
  %19 = icmp ne i64 %17, %18
  br label %20

20:                                               ; preds = %14, %9
  %21 = phi i1 [ true, %9 ], [ %19, %14 ]
  %22 = zext i1 %21 to i32
  %23 = call i32 @WARN_ON(i32 %22)
  %24 = load %struct.task_struct*, %struct.task_struct** %2, align 8
  %25 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %24, i32 0, i32 2
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = call i32 @spin_lock_irq(i32* %27)
  %29 = load %struct.task_struct*, %struct.task_struct** %2, align 8
  %30 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* @__TASK_TRACED, align 8
  %33 = icmp eq i64 %31, %32
  br i1 %33, label %34, label %47

34:                                               ; preds = %20
  %35 = load %struct.task_struct*, %struct.task_struct** %2, align 8
  %36 = call i64 @__fatal_signal_pending(%struct.task_struct* %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %42

38:                                               ; preds = %34
  %39 = load %struct.task_struct*, %struct.task_struct** %2, align 8
  %40 = load i64, i64* @__TASK_TRACED, align 8
  %41 = call i32 @wake_up_state(%struct.task_struct* %39, i64 %40)
  br label %46

42:                                               ; preds = %34
  %43 = load i64, i64* @TASK_TRACED, align 8
  %44 = load %struct.task_struct*, %struct.task_struct** %2, align 8
  %45 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %44, i32 0, i32 0
  store i64 %43, i64* %45, align 8
  br label %46

46:                                               ; preds = %42, %38
  br label %47

47:                                               ; preds = %46, %20
  %48 = load %struct.task_struct*, %struct.task_struct** %2, align 8
  %49 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %48, i32 0, i32 2
  %50 = load %struct.TYPE_2__*, %struct.TYPE_2__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 0
  %52 = call i32 @spin_unlock_irq(i32* %51)
  br label %53

53:                                               ; preds = %47, %8
  ret void
}

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i64 @__fatal_signal_pending(%struct.task_struct*) #1

declare dso_local i32 @wake_up_state(%struct.task_struct*, i64) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
