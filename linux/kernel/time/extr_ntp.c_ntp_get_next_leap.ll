; ModuleID = '/home/carl/AnghaBench/linux/kernel/time/extr_ntp.c_ntp_get_next_leap.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/time/extr_ntp.c_ntp_get_next_leap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@time_state = common dso_local global i64 0, align 8
@TIME_INS = common dso_local global i64 0, align 8
@time_status = common dso_local global i32 0, align 4
@STA_INS = common dso_local global i32 0, align 4
@ntp_next_leap_sec = common dso_local global i32 0, align 4
@KTIME_MAX = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ntp_get_next_leap() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = load i64, i64* @time_state, align 8
  %4 = load i64, i64* @TIME_INS, align 8
  %5 = icmp eq i64 %3, %4
  br i1 %5, label %6, label %14

6:                                                ; preds = %0
  %7 = load i32, i32* @time_status, align 4
  %8 = load i32, i32* @STA_INS, align 4
  %9 = and i32 %7, %8
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %14

11:                                               ; preds = %6
  %12 = load i32, i32* @ntp_next_leap_sec, align 4
  %13 = call i32 @ktime_set(i32 %12, i32 0)
  store i32 %13, i32* %1, align 4
  br label %17

14:                                               ; preds = %6, %0
  %15 = load i32, i32* @KTIME_MAX, align 4
  store i32 %15, i32* %2, align 4
  %16 = load i32, i32* %2, align 4
  store i32 %16, i32* %1, align 4
  br label %17

17:                                               ; preds = %14, %11
  %18 = load i32, i32* %1, align 4
  ret i32 %18
}

declare dso_local i32 @ktime_set(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
