; ModuleID = '/home/carl/AnghaBench/linux/kernel/power/extr_suspend.c_suspend_prepare.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/power/extr_suspend.c_suspend_prepare.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }

@EPERM = common dso_local global i32 0, align 4
@PM_SUSPEND_PREPARE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"freeze_processes\00", align 1
@suspend_stats = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@SUSPEND_FREEZE = common dso_local global i32 0, align 4
@PM_POST_SUSPEND = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @suspend_prepare to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @suspend_prepare(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 0, i32* %5, align 4
  %6 = load i32, i32* %3, align 4
  %7 = call i32 @sleep_state_supported(i32 %6)
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %12, label %9

9:                                                ; preds = %1
  %10 = load i32, i32* @EPERM, align 4
  %11 = sub nsw i32 0, %10
  store i32 %11, i32* %2, align 4
  br label %41

12:                                               ; preds = %1
  %13 = call i32 (...) @pm_prepare_console()
  %14 = load i32, i32* @PM_SUSPEND_PREPARE, align 4
  %15 = call i32 @__pm_notifier_call_chain(i32 %14, i32 -1, i32* %5)
  store i32 %15, i32* %4, align 4
  %16 = load i32, i32* %4, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %21

18:                                               ; preds = %12
  %19 = load i32, i32* %5, align 4
  %20 = add nsw i32 %19, -1
  store i32 %20, i32* %5, align 4
  br label %35

21:                                               ; preds = %12
  %22 = call i32 @TPS(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  %23 = call i32 @trace_suspend_resume(i32 %22, i32 0, i32 1)
  %24 = call i32 (...) @suspend_freeze_processes()
  store i32 %24, i32* %4, align 4
  %25 = call i32 @TPS(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  %26 = call i32 @trace_suspend_resume(i32 %25, i32 0, i32 0)
  %27 = load i32, i32* %4, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %30, label %29

29:                                               ; preds = %21
  store i32 0, i32* %2, align 4
  br label %41

30:                                               ; preds = %21
  %31 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @suspend_stats, i32 0, i32 0), align 4
  %32 = add nsw i32 %31, 1
  store i32 %32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @suspend_stats, i32 0, i32 0), align 4
  %33 = load i32, i32* @SUSPEND_FREEZE, align 4
  %34 = call i32 @dpm_save_failed_step(i32 %33)
  br label %35

35:                                               ; preds = %30, %18
  %36 = load i32, i32* @PM_POST_SUSPEND, align 4
  %37 = load i32, i32* %5, align 4
  %38 = call i32 @__pm_notifier_call_chain(i32 %36, i32 %37, i32* null)
  %39 = call i32 (...) @pm_restore_console()
  %40 = load i32, i32* %4, align 4
  store i32 %40, i32* %2, align 4
  br label %41

41:                                               ; preds = %35, %29, %9
  %42 = load i32, i32* %2, align 4
  ret i32 %42
}

declare dso_local i32 @sleep_state_supported(i32) #1

declare dso_local i32 @pm_prepare_console(...) #1

declare dso_local i32 @__pm_notifier_call_chain(i32, i32, i32*) #1

declare dso_local i32 @trace_suspend_resume(i32, i32, i32) #1

declare dso_local i32 @TPS(i8*) #1

declare dso_local i32 @suspend_freeze_processes(...) #1

declare dso_local i32 @dpm_save_failed_step(i32) #1

declare dso_local i32 @pm_restore_console(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
