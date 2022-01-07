; ModuleID = '/home/carl/AnghaBench/linux/kernel/power/extr_autosleep.c_try_to_suspend.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/power/extr_autosleep.c_try_to_suspend.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.work_struct = type { i32 }

@autosleep_lock = common dso_local global i32 0, align 4
@system_state = common dso_local global i64 0, align 8
@SYSTEM_RUNNING = common dso_local global i64 0, align 8
@autosleep_state = common dso_local global i64 0, align 8
@PM_SUSPEND_ON = common dso_local global i64 0, align 8
@PM_SUSPEND_MAX = common dso_local global i64 0, align 8
@HZ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.work_struct*)* @try_to_suspend to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @try_to_suspend(%struct.work_struct* %0) #0 {
  %2 = alloca %struct.work_struct*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.work_struct* %0, %struct.work_struct** %2, align 8
  %5 = call i32 @pm_get_wakeup_count(i32* %3, i32 1)
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %8, label %7

7:                                                ; preds = %1
  br label %48

8:                                                ; preds = %1
  %9 = call i32 @mutex_lock(i32* @autosleep_lock)
  %10 = load i32, i32* %3, align 4
  %11 = call i32 @pm_save_wakeup_count(i32 %10)
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %17

13:                                               ; preds = %8
  %14 = load i64, i64* @system_state, align 8
  %15 = load i64, i64* @SYSTEM_RUNNING, align 8
  %16 = icmp ne i64 %14, %15
  br i1 %16, label %17, label %19

17:                                               ; preds = %13, %8
  %18 = call i32 @mutex_unlock(i32* @autosleep_lock)
  br label %48

19:                                               ; preds = %13
  %20 = load i64, i64* @autosleep_state, align 8
  %21 = load i64, i64* @PM_SUSPEND_ON, align 8
  %22 = icmp eq i64 %20, %21
  br i1 %22, label %23, label %25

23:                                               ; preds = %19
  %24 = call i32 @mutex_unlock(i32* @autosleep_lock)
  br label %50

25:                                               ; preds = %19
  %26 = load i64, i64* @autosleep_state, align 8
  %27 = load i64, i64* @PM_SUSPEND_MAX, align 8
  %28 = icmp sge i64 %26, %27
  br i1 %28, label %29, label %31

29:                                               ; preds = %25
  %30 = call i32 (...) @hibernate()
  br label %34

31:                                               ; preds = %25
  %32 = load i64, i64* @autosleep_state, align 8
  %33 = call i32 @pm_suspend(i64 %32)
  br label %34

34:                                               ; preds = %31, %29
  %35 = call i32 @mutex_unlock(i32* @autosleep_lock)
  %36 = call i32 @pm_get_wakeup_count(i32* %4, i32 0)
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %39, label %38

38:                                               ; preds = %34
  br label %48

39:                                               ; preds = %34
  %40 = load i32, i32* %4, align 4
  %41 = load i32, i32* %3, align 4
  %42 = icmp eq i32 %40, %41
  br i1 %42, label %43, label %47

43:                                               ; preds = %39
  %44 = load i32, i32* @HZ, align 4
  %45 = sdiv i32 %44, 2
  %46 = call i32 @schedule_timeout_uninterruptible(i32 %45)
  br label %47

47:                                               ; preds = %43, %39
  br label %48

48:                                               ; preds = %47, %38, %17, %7
  %49 = call i32 (...) @queue_up_suspend_work()
  br label %50

50:                                               ; preds = %48, %23
  ret void
}

declare dso_local i32 @pm_get_wakeup_count(i32*, i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @pm_save_wakeup_count(i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @hibernate(...) #1

declare dso_local i32 @pm_suspend(i64) #1

declare dso_local i32 @schedule_timeout_uninterruptible(i32) #1

declare dso_local i32 @queue_up_suspend_work(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
