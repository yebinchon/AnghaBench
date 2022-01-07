; ModuleID = '/home/carl/AnghaBench/linux/kernel/extr_signal.c_task_participate_group_stop.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/extr_signal.c_task_participate_group_stop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.task_struct = type { i32, %struct.signal_struct* }
%struct.signal_struct = type { i64, i32 }

@JOBCTL_STOP_CONSUME = common dso_local global i32 0, align 4
@JOBCTL_STOP_PENDING = common dso_local global i32 0, align 4
@SIGNAL_STOP_STOPPED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.task_struct*)* @task_participate_group_stop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @task_participate_group_stop(%struct.task_struct* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.task_struct*, align 8
  %4 = alloca %struct.signal_struct*, align 8
  %5 = alloca i32, align 4
  store %struct.task_struct* %0, %struct.task_struct** %3, align 8
  %6 = load %struct.task_struct*, %struct.task_struct** %3, align 8
  %7 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %6, i32 0, i32 1
  %8 = load %struct.signal_struct*, %struct.signal_struct** %7, align 8
  store %struct.signal_struct* %8, %struct.signal_struct** %4, align 8
  %9 = load %struct.task_struct*, %struct.task_struct** %3, align 8
  %10 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = load i32, i32* @JOBCTL_STOP_CONSUME, align 4
  %13 = and i32 %11, %12
  store i32 %13, i32* %5, align 4
  %14 = load %struct.task_struct*, %struct.task_struct** %3, align 8
  %15 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = load i32, i32* @JOBCTL_STOP_PENDING, align 4
  %18 = and i32 %16, %17
  %19 = icmp ne i32 %18, 0
  %20 = xor i1 %19, true
  %21 = zext i1 %20 to i32
  %22 = call i32 @WARN_ON_ONCE(i32 %21)
  %23 = load %struct.task_struct*, %struct.task_struct** %3, align 8
  %24 = load i32, i32* @JOBCTL_STOP_PENDING, align 4
  %25 = call i32 @task_clear_jobctl_pending(%struct.task_struct* %23, i32 %24)
  %26 = load i32, i32* %5, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %29, label %28

28:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %59

29:                                               ; preds = %1
  %30 = load %struct.signal_struct*, %struct.signal_struct** %4, align 8
  %31 = getelementptr inbounds %struct.signal_struct, %struct.signal_struct* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = icmp eq i64 %32, 0
  %34 = zext i1 %33 to i32
  %35 = call i32 @WARN_ON_ONCE(i32 %34)
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %42, label %37

37:                                               ; preds = %29
  %38 = load %struct.signal_struct*, %struct.signal_struct** %4, align 8
  %39 = getelementptr inbounds %struct.signal_struct, %struct.signal_struct* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = add nsw i64 %40, -1
  store i64 %41, i64* %39, align 8
  br label %42

42:                                               ; preds = %37, %29
  %43 = load %struct.signal_struct*, %struct.signal_struct** %4, align 8
  %44 = getelementptr inbounds %struct.signal_struct, %struct.signal_struct* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %58, label %47

47:                                               ; preds = %42
  %48 = load %struct.signal_struct*, %struct.signal_struct** %4, align 8
  %49 = getelementptr inbounds %struct.signal_struct, %struct.signal_struct* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 8
  %51 = load i32, i32* @SIGNAL_STOP_STOPPED, align 4
  %52 = and i32 %50, %51
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %58, label %54

54:                                               ; preds = %47
  %55 = load %struct.signal_struct*, %struct.signal_struct** %4, align 8
  %56 = load i32, i32* @SIGNAL_STOP_STOPPED, align 4
  %57 = call i32 @signal_set_stop_flags(%struct.signal_struct* %55, i32 %56)
  store i32 1, i32* %2, align 4
  br label %59

58:                                               ; preds = %47, %42
  store i32 0, i32* %2, align 4
  br label %59

59:                                               ; preds = %58, %54, %28
  %60 = load i32, i32* %2, align 4
  ret i32 %60
}

declare dso_local i32 @WARN_ON_ONCE(i32) #1

declare dso_local i32 @task_clear_jobctl_pending(%struct.task_struct*, i32) #1

declare dso_local i32 @signal_set_stop_flags(%struct.signal_struct*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
