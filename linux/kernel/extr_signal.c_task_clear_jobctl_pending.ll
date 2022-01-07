; ModuleID = '/home/carl/AnghaBench/linux/kernel/extr_signal.c_task_clear_jobctl_pending.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/extr_signal.c_task_clear_jobctl_pending.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.task_struct = type { i64 }

@JOBCTL_PENDING_MASK = common dso_local global i64 0, align 8
@JOBCTL_STOP_PENDING = common dso_local global i64 0, align 8
@JOBCTL_STOP_CONSUME = common dso_local global i64 0, align 8
@JOBCTL_STOP_DEQUEUED = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @task_clear_jobctl_pending(%struct.task_struct* %0, i64 %1) #0 {
  %3 = alloca %struct.task_struct*, align 8
  %4 = alloca i64, align 8
  store %struct.task_struct* %0, %struct.task_struct** %3, align 8
  store i64 %1, i64* %4, align 8
  %5 = load i64, i64* %4, align 8
  %6 = load i64, i64* @JOBCTL_PENDING_MASK, align 8
  %7 = xor i64 %6, -1
  %8 = and i64 %5, %7
  %9 = call i32 @BUG_ON(i64 %8)
  %10 = load i64, i64* %4, align 8
  %11 = load i64, i64* @JOBCTL_STOP_PENDING, align 8
  %12 = and i64 %10, %11
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %20

14:                                               ; preds = %2
  %15 = load i64, i64* @JOBCTL_STOP_CONSUME, align 8
  %16 = load i64, i64* @JOBCTL_STOP_DEQUEUED, align 8
  %17 = or i64 %15, %16
  %18 = load i64, i64* %4, align 8
  %19 = or i64 %18, %17
  store i64 %19, i64* %4, align 8
  br label %20

20:                                               ; preds = %14, %2
  %21 = load i64, i64* %4, align 8
  %22 = xor i64 %21, -1
  %23 = load %struct.task_struct*, %struct.task_struct** %3, align 8
  %24 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = and i64 %25, %22
  store i64 %26, i64* %24, align 8
  %27 = load %struct.task_struct*, %struct.task_struct** %3, align 8
  %28 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @JOBCTL_PENDING_MASK, align 8
  %31 = and i64 %29, %30
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %36, label %33

33:                                               ; preds = %20
  %34 = load %struct.task_struct*, %struct.task_struct** %3, align 8
  %35 = call i32 @task_clear_jobctl_trapping(%struct.task_struct* %34)
  br label %36

36:                                               ; preds = %33, %20
  ret void
}

declare dso_local i32 @BUG_ON(i64) #1

declare dso_local i32 @task_clear_jobctl_trapping(%struct.task_struct*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
