; ModuleID = '/home/carl/AnghaBench/linux/kernel/extr_signal.c_task_set_jobctl_pending.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/extr_signal.c_task_set_jobctl_pending.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.task_struct = type { i32, i64 }

@JOBCTL_PENDING_MASK = common dso_local global i64 0, align 8
@JOBCTL_STOP_CONSUME = common dso_local global i64 0, align 8
@JOBCTL_STOP_SIGMASK = common dso_local global i64 0, align 8
@JOBCTL_TRAPPING = common dso_local global i64 0, align 8
@PF_EXITING = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @task_set_jobctl_pending(%struct.task_struct* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.task_struct*, align 8
  %5 = alloca i64, align 8
  store %struct.task_struct* %0, %struct.task_struct** %4, align 8
  store i64 %1, i64* %5, align 8
  %6 = load i64, i64* %5, align 8
  %7 = load i64, i64* @JOBCTL_PENDING_MASK, align 8
  %8 = load i64, i64* @JOBCTL_STOP_CONSUME, align 8
  %9 = or i64 %7, %8
  %10 = load i64, i64* @JOBCTL_STOP_SIGMASK, align 8
  %11 = or i64 %9, %10
  %12 = load i64, i64* @JOBCTL_TRAPPING, align 8
  %13 = or i64 %11, %12
  %14 = xor i64 %13, -1
  %15 = and i64 %6, %14
  %16 = trunc i64 %15 to i32
  %17 = call i32 @BUG_ON(i32 %16)
  %18 = load i64, i64* %5, align 8
  %19 = load i64, i64* @JOBCTL_TRAPPING, align 8
  %20 = and i64 %18, %19
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %28

22:                                               ; preds = %2
  %23 = load i64, i64* %5, align 8
  %24 = load i64, i64* @JOBCTL_PENDING_MASK, align 8
  %25 = and i64 %23, %24
  %26 = icmp ne i64 %25, 0
  %27 = xor i1 %26, true
  br label %28

28:                                               ; preds = %22, %2
  %29 = phi i1 [ false, %2 ], [ %27, %22 ]
  %30 = zext i1 %29 to i32
  %31 = call i32 @BUG_ON(i32 %30)
  %32 = load %struct.task_struct*, %struct.task_struct** %4, align 8
  %33 = call i64 @fatal_signal_pending(%struct.task_struct* %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %42, label %35

35:                                               ; preds = %28
  %36 = load %struct.task_struct*, %struct.task_struct** %4, align 8
  %37 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = load i32, i32* @PF_EXITING, align 4
  %40 = and i32 %38, %39
  %41 = icmp ne i32 %40, 0
  br label %42

42:                                               ; preds = %35, %28
  %43 = phi i1 [ true, %28 ], [ %41, %35 ]
  %44 = zext i1 %43 to i32
  %45 = call i64 @unlikely(i32 %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %48

47:                                               ; preds = %42
  store i32 0, i32* %3, align 4
  br label %66

48:                                               ; preds = %42
  %49 = load i64, i64* %5, align 8
  %50 = load i64, i64* @JOBCTL_STOP_SIGMASK, align 8
  %51 = and i64 %49, %50
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %60

53:                                               ; preds = %48
  %54 = load i64, i64* @JOBCTL_STOP_SIGMASK, align 8
  %55 = xor i64 %54, -1
  %56 = load %struct.task_struct*, %struct.task_struct** %4, align 8
  %57 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %56, i32 0, i32 1
  %58 = load i64, i64* %57, align 8
  %59 = and i64 %58, %55
  store i64 %59, i64* %57, align 8
  br label %60

60:                                               ; preds = %53, %48
  %61 = load i64, i64* %5, align 8
  %62 = load %struct.task_struct*, %struct.task_struct** %4, align 8
  %63 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %62, i32 0, i32 1
  %64 = load i64, i64* %63, align 8
  %65 = or i64 %64, %61
  store i64 %65, i64* %63, align 8
  store i32 1, i32* %3, align 4
  br label %66

66:                                               ; preds = %60, %47
  %67 = load i32, i32* %3, align 4
  ret i32 %67
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i64 @fatal_signal_pending(%struct.task_struct*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
