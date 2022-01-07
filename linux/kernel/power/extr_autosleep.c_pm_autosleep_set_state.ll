; ModuleID = '/home/carl/AnghaBench/linux/kernel/power/extr_autosleep.c_pm_autosleep_set_state.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/power/extr_autosleep.c_pm_autosleep_set_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@PM_SUSPEND_MAX = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@autosleep_ws = common dso_local global i32 0, align 4
@autosleep_lock = common dso_local global i32 0, align 4
@autosleep_state = common dso_local global i64 0, align 8
@PM_SUSPEND_ON = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pm_autosleep_set_state(i64 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i64, align 8
  store i64 %0, i64* %3, align 8
  %4 = load i64, i64* %3, align 8
  %5 = load i64, i64* @PM_SUSPEND_MAX, align 8
  %6 = icmp sge i64 %4, %5
  br i1 %6, label %7, label %10

7:                                                ; preds = %1
  %8 = load i32, i32* @EINVAL, align 4
  %9 = sub nsw i32 0, %8
  store i32 %9, i32* %2, align 4
  br label %27

10:                                               ; preds = %1
  %11 = load i32, i32* @autosleep_ws, align 4
  %12 = call i32 @__pm_stay_awake(i32 %11)
  %13 = call i32 @mutex_lock(i32* @autosleep_lock)
  %14 = load i64, i64* %3, align 8
  store i64 %14, i64* @autosleep_state, align 8
  %15 = load i32, i32* @autosleep_ws, align 4
  %16 = call i32 @__pm_relax(i32 %15)
  %17 = load i64, i64* %3, align 8
  %18 = load i64, i64* @PM_SUSPEND_ON, align 8
  %19 = icmp sgt i64 %17, %18
  br i1 %19, label %20, label %23

20:                                               ; preds = %10
  %21 = call i32 @pm_wakep_autosleep_enabled(i32 1)
  %22 = call i32 (...) @queue_up_suspend_work()
  br label %25

23:                                               ; preds = %10
  %24 = call i32 @pm_wakep_autosleep_enabled(i32 0)
  br label %25

25:                                               ; preds = %23, %20
  %26 = call i32 @mutex_unlock(i32* @autosleep_lock)
  store i32 0, i32* %2, align 4
  br label %27

27:                                               ; preds = %25, %7
  %28 = load i32, i32* %2, align 4
  ret i32 %28
}

declare dso_local i32 @__pm_stay_awake(i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @__pm_relax(i32) #1

declare dso_local i32 @pm_wakep_autosleep_enabled(i32) #1

declare dso_local i32 @queue_up_suspend_work(...) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
