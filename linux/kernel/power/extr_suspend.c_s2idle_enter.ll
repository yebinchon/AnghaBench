; ModuleID = '/home/carl/AnghaBench/linux/kernel/power/extr_suspend.c_s2idle_enter.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/power/extr_suspend.c_s2idle_enter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [16 x i8] c"machine_suspend\00", align 1
@PM_SUSPEND_TO_IDLE = common dso_local global i32 0, align 4
@s2idle_lock = common dso_local global i32 0, align 4
@S2IDLE_STATE_ENTER = common dso_local global i64 0, align 8
@s2idle_state = common dso_local global i64 0, align 8
@s2idle_wait_head = common dso_local global i32 0, align 4
@S2IDLE_STATE_WAKE = common dso_local global i64 0, align 8
@S2IDLE_STATE_NONE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @s2idle_enter to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @s2idle_enter() #0 {
  %1 = call i32 @TPS(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  %2 = load i32, i32* @PM_SUSPEND_TO_IDLE, align 4
  %3 = call i32 @trace_suspend_resume(i32 %1, i32 %2, i32 1)
  %4 = call i32 @raw_spin_lock_irq(i32* @s2idle_lock)
  %5 = call i64 (...) @pm_wakeup_pending()
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %7, label %8

7:                                                ; preds = %0
  br label %23

8:                                                ; preds = %0
  %9 = load i64, i64* @S2IDLE_STATE_ENTER, align 8
  store i64 %9, i64* @s2idle_state, align 8
  %10 = call i32 @raw_spin_unlock_irq(i32* @s2idle_lock)
  %11 = call i32 (...) @get_online_cpus()
  %12 = call i32 (...) @cpuidle_resume()
  %13 = call i32 (...) @wake_up_all_idle_cpus()
  %14 = load i32, i32* @s2idle_wait_head, align 4
  %15 = load i64, i64* @s2idle_state, align 8
  %16 = load i64, i64* @S2IDLE_STATE_WAKE, align 8
  %17 = icmp eq i64 %15, %16
  %18 = zext i1 %17 to i32
  %19 = call i32 @swait_event_exclusive(i32 %14, i32 %18)
  %20 = call i32 (...) @cpuidle_pause()
  %21 = call i32 (...) @put_online_cpus()
  %22 = call i32 @raw_spin_lock_irq(i32* @s2idle_lock)
  br label %23

23:                                               ; preds = %8, %7
  %24 = load i64, i64* @S2IDLE_STATE_NONE, align 8
  store i64 %24, i64* @s2idle_state, align 8
  %25 = call i32 @raw_spin_unlock_irq(i32* @s2idle_lock)
  %26 = call i32 @TPS(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  %27 = load i32, i32* @PM_SUSPEND_TO_IDLE, align 4
  %28 = call i32 @trace_suspend_resume(i32 %26, i32 %27, i32 0)
  ret void
}

declare dso_local i32 @trace_suspend_resume(i32, i32, i32) #1

declare dso_local i32 @TPS(i8*) #1

declare dso_local i32 @raw_spin_lock_irq(i32*) #1

declare dso_local i64 @pm_wakeup_pending(...) #1

declare dso_local i32 @raw_spin_unlock_irq(i32*) #1

declare dso_local i32 @get_online_cpus(...) #1

declare dso_local i32 @cpuidle_resume(...) #1

declare dso_local i32 @wake_up_all_idle_cpus(...) #1

declare dso_local i32 @swait_event_exclusive(i32, i32) #1

declare dso_local i32 @cpuidle_pause(...) #1

declare dso_local i32 @put_online_cpus(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
