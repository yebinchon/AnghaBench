; ModuleID = '/home/carl/AnghaBench/linux/kernel/power/extr_process.c_freeze_processes.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/power/extr_process.c_freeze_processes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }

@UMH_FREEZING = common dso_local global i32 0, align 4
@PF_SUSPEND_TASK = common dso_local global i32 0, align 4
@current = common dso_local global %struct.TYPE_2__* null, align 8
@pm_freezing = common dso_local global i32 0, align 4
@system_freezing_cnt = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"Freezing user space processes ... \00", align 1
@UMH_DISABLED = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [6 x i8] c"done.\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@freeze_timeout_msecs = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @freeze_processes() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = load i32, i32* @UMH_FREEZING, align 4
  %4 = call i32 @__usermodehelper_disable(i32 %3)
  store i32 %4, i32* %2, align 4
  %5 = load i32, i32* %2, align 4
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %7, label %9

7:                                                ; preds = %0
  %8 = load i32, i32* %2, align 4
  store i32 %8, i32* %1, align 4
  br label %50

9:                                                ; preds = %0
  %10 = load i32, i32* @PF_SUSPEND_TASK, align 4
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** @current, align 8
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = or i32 %13, %10
  store i32 %14, i32* %12, align 4
  %15 = load i32, i32* @pm_freezing, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %19, label %17

17:                                               ; preds = %9
  %18 = call i32 @atomic_inc(i32* @system_freezing_cnt)
  br label %19

19:                                               ; preds = %17, %9
  %20 = call i32 @pm_wakeup_clear(i32 1)
  %21 = call i32 @pr_info(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0))
  store i32 1, i32* @pm_freezing, align 4
  %22 = call i32 @try_to_freeze_tasks(i32 1)
  store i32 %22, i32* %2, align 4
  %23 = load i32, i32* %2, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %29, label %25

25:                                               ; preds = %19
  %26 = load i32, i32* @UMH_DISABLED, align 4
  %27 = call i32 @__usermodehelper_set_disable_depth(i32 %26)
  %28 = call i32 @pr_cont(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0))
  br label %29

29:                                               ; preds = %25, %19
  %30 = call i32 @pr_cont(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  %31 = call i32 (...) @in_atomic()
  %32 = call i32 @BUG_ON(i32 %31)
  %33 = load i32, i32* %2, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %43, label %35

35:                                               ; preds = %29
  %36 = load i32, i32* @freeze_timeout_msecs, align 4
  %37 = call i32 @msecs_to_jiffies(i32 %36)
  %38 = call i32 @oom_killer_disable(i32 %37)
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %43, label %40

40:                                               ; preds = %35
  %41 = load i32, i32* @EBUSY, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %2, align 4
  br label %43

43:                                               ; preds = %40, %35, %29
  %44 = load i32, i32* %2, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %48

46:                                               ; preds = %43
  %47 = call i32 (...) @thaw_processes()
  br label %48

48:                                               ; preds = %46, %43
  %49 = load i32, i32* %2, align 4
  store i32 %49, i32* %1, align 4
  br label %50

50:                                               ; preds = %48, %7
  %51 = load i32, i32* %1, align 4
  ret i32 %51
}

declare dso_local i32 @__usermodehelper_disable(i32) #1

declare dso_local i32 @atomic_inc(i32*) #1

declare dso_local i32 @pm_wakeup_clear(i32) #1

declare dso_local i32 @pr_info(i8*) #1

declare dso_local i32 @try_to_freeze_tasks(i32) #1

declare dso_local i32 @__usermodehelper_set_disable_depth(i32) #1

declare dso_local i32 @pr_cont(i8*) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @in_atomic(...) #1

declare dso_local i32 @oom_killer_disable(i32) #1

declare dso_local i32 @msecs_to_jiffies(i32) #1

declare dso_local i32 @thaw_processes(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
