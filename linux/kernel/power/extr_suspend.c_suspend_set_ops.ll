; ModuleID = '/home/carl/AnghaBench/linux/kernel/power/extr_suspend.c_suspend_set_ops.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/power/extr_suspend.c_suspend_set_ops.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_suspend_ops = type { i32 }

@suspend_ops = common dso_local global %struct.platform_suspend_ops* null, align 8
@PM_SUSPEND_STANDBY = common dso_local global i64 0, align 8
@mem_sleep_labels = common dso_local global i32* null, align 8
@mem_sleep_states = common dso_local global i32* null, align 8
@pm_labels = common dso_local global i32* null, align 8
@pm_states = common dso_local global i32* null, align 8
@mem_sleep_default = common dso_local global i64 0, align 8
@mem_sleep_current = common dso_local global i64 0, align 8
@PM_SUSPEND_MEM = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @suspend_set_ops(%struct.platform_suspend_ops* %0) #0 {
  %2 = alloca %struct.platform_suspend_ops*, align 8
  store %struct.platform_suspend_ops* %0, %struct.platform_suspend_ops** %2, align 8
  %3 = call i32 (...) @lock_system_sleep()
  %4 = load %struct.platform_suspend_ops*, %struct.platform_suspend_ops** %2, align 8
  store %struct.platform_suspend_ops* %4, %struct.platform_suspend_ops** @suspend_ops, align 8
  %5 = load i64, i64* @PM_SUSPEND_STANDBY, align 8
  %6 = call i64 @valid_state(i64 %5)
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %29

8:                                                ; preds = %1
  %9 = load i32*, i32** @mem_sleep_labels, align 8
  %10 = load i64, i64* @PM_SUSPEND_STANDBY, align 8
  %11 = getelementptr inbounds i32, i32* %9, i64 %10
  %12 = load i32, i32* %11, align 4
  %13 = load i32*, i32** @mem_sleep_states, align 8
  %14 = load i64, i64* @PM_SUSPEND_STANDBY, align 8
  %15 = getelementptr inbounds i32, i32* %13, i64 %14
  store i32 %12, i32* %15, align 4
  %16 = load i32*, i32** @pm_labels, align 8
  %17 = load i64, i64* @PM_SUSPEND_STANDBY, align 8
  %18 = getelementptr inbounds i32, i32* %16, i64 %17
  %19 = load i32, i32* %18, align 4
  %20 = load i32*, i32** @pm_states, align 8
  %21 = load i64, i64* @PM_SUSPEND_STANDBY, align 8
  %22 = getelementptr inbounds i32, i32* %20, i64 %21
  store i32 %19, i32* %22, align 4
  %23 = load i64, i64* @mem_sleep_default, align 8
  %24 = load i64, i64* @PM_SUSPEND_STANDBY, align 8
  %25 = icmp eq i64 %23, %24
  br i1 %25, label %26, label %28

26:                                               ; preds = %8
  %27 = load i64, i64* @PM_SUSPEND_STANDBY, align 8
  store i64 %27, i64* @mem_sleep_current, align 8
  br label %28

28:                                               ; preds = %26, %8
  br label %29

29:                                               ; preds = %28, %1
  %30 = load i64, i64* @PM_SUSPEND_MEM, align 8
  %31 = call i64 @valid_state(i64 %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %47

33:                                               ; preds = %29
  %34 = load i32*, i32** @mem_sleep_labels, align 8
  %35 = load i64, i64* @PM_SUSPEND_MEM, align 8
  %36 = getelementptr inbounds i32, i32* %34, i64 %35
  %37 = load i32, i32* %36, align 4
  %38 = load i32*, i32** @mem_sleep_states, align 8
  %39 = load i64, i64* @PM_SUSPEND_MEM, align 8
  %40 = getelementptr inbounds i32, i32* %38, i64 %39
  store i32 %37, i32* %40, align 4
  %41 = load i64, i64* @mem_sleep_default, align 8
  %42 = load i64, i64* @PM_SUSPEND_MEM, align 8
  %43 = icmp uge i64 %41, %42
  br i1 %43, label %44, label %46

44:                                               ; preds = %33
  %45 = load i64, i64* @PM_SUSPEND_MEM, align 8
  store i64 %45, i64* @mem_sleep_current, align 8
  br label %46

46:                                               ; preds = %44, %33
  br label %47

47:                                               ; preds = %46, %29
  %48 = call i32 (...) @unlock_system_sleep()
  ret void
}

declare dso_local i32 @lock_system_sleep(...) #1

declare dso_local i64 @valid_state(i64) #1

declare dso_local i32 @unlock_system_sleep(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
