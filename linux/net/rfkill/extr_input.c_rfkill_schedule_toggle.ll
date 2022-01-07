; ModuleID = '/home/carl/AnghaBench/linux/net/rfkill/extr_input.c_rfkill_schedule_toggle.c'
source_filename = "/home/carl/AnghaBench/linux/net/rfkill/extr_input.c_rfkill_schedule_toggle.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@rfkill_op_lock = common dso_local global i32 0, align 4
@rfkill_op_pending = common dso_local global i32 0, align 4
@rfkill_sw_pending = common dso_local global i32 0, align 4
@rfkill_sw_state = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @rfkill_schedule_toggle to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rfkill_schedule_toggle(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i64, align 8
  store i32 %0, i32* %2, align 4
  %4 = call i64 (...) @rfkill_is_epo_lock_active()
  %5 = icmp ne i64 %4, 0
  br i1 %5, label %6, label %7

6:                                                ; preds = %1
  br label %23

7:                                                ; preds = %1
  %8 = load i64, i64* %3, align 8
  %9 = call i32 @spin_lock_irqsave(i32* @rfkill_op_lock, i64 %8)
  %10 = load i32, i32* @rfkill_op_pending, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %20, label %12

12:                                               ; preds = %7
  %13 = load i32, i32* %2, align 4
  %14 = load i32, i32* @rfkill_sw_pending, align 4
  %15 = call i32 @__set_bit(i32 %13, i32 %14)
  %16 = load i32, i32* %2, align 4
  %17 = load i32, i32* @rfkill_sw_state, align 4
  %18 = call i32 @__change_bit(i32 %16, i32 %17)
  %19 = call i32 (...) @rfkill_schedule_ratelimited()
  br label %20

20:                                               ; preds = %12, %7
  %21 = load i64, i64* %3, align 8
  %22 = call i32 @spin_unlock_irqrestore(i32* @rfkill_op_lock, i64 %21)
  br label %23

23:                                               ; preds = %20, %6
  ret void
}

declare dso_local i64 @rfkill_is_epo_lock_active(...) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @__set_bit(i32, i32) #1

declare dso_local i32 @__change_bit(i32, i32) #1

declare dso_local i32 @rfkill_schedule_ratelimited(...) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
