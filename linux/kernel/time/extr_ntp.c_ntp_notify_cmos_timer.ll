; ModuleID = '/home/carl/AnghaBench/linux/kernel/time/extr_ntp.c_ntp_notify_cmos_timer.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/time/extr_ntp.c_ntp_notify_cmos_timer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@CONFIG_GENERIC_CMOS_UPDATE = common dso_local global i32 0, align 4
@CONFIG_RTC_SYSTOHC = common dso_local global i32 0, align 4
@system_power_efficient_wq = common dso_local global i32 0, align 4
@sync_work = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ntp_notify_cmos_timer() #0 {
  %1 = call i32 (...) @ntp_synced()
  %2 = icmp ne i32 %1, 0
  br i1 %2, label %4, label %3

3:                                                ; preds = %0
  br label %15

4:                                                ; preds = %0
  %5 = load i32, i32* @CONFIG_GENERIC_CMOS_UPDATE, align 4
  %6 = call i64 @IS_ENABLED(i32 %5)
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %12, label %8

8:                                                ; preds = %4
  %9 = load i32, i32* @CONFIG_RTC_SYSTOHC, align 4
  %10 = call i64 @IS_ENABLED(i32 %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %15

12:                                               ; preds = %8, %4
  %13 = load i32, i32* @system_power_efficient_wq, align 4
  %14 = call i32 @queue_delayed_work(i32 %13, i32* @sync_work, i32 0)
  br label %15

15:                                               ; preds = %3, %12, %8
  ret void
}

declare dso_local i32 @ntp_synced(...) #1

declare dso_local i64 @IS_ENABLED(i32) #1

declare dso_local i32 @queue_delayed_work(i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
