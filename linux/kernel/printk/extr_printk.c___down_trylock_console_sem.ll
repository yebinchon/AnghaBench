; ModuleID = '/home/carl/AnghaBench/linux/kernel/printk/extr_printk.c___down_trylock_console_sem.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/printk/extr_printk.c___down_trylock_console_sem.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@console_sem = common dso_local global i32 0, align 4
@console_lock_dep_map = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64)* @__down_trylock_console_sem to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__down_trylock_console_sem(i64 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  store i64 %0, i64* %3, align 8
  %6 = load i64, i64* %5, align 8
  %7 = call i32 @printk_safe_enter_irqsave(i64 %6)
  %8 = call i32 @down_trylock(i32* @console_sem)
  store i32 %8, i32* %4, align 4
  %9 = load i64, i64* %5, align 8
  %10 = call i32 @printk_safe_exit_irqrestore(i64 %9)
  %11 = load i32, i32* %4, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %1
  store i32 1, i32* %2, align 4
  br label %17

14:                                               ; preds = %1
  %15 = load i64, i64* %3, align 8
  %16 = call i32 @mutex_acquire(i32* @console_lock_dep_map, i32 0, i32 1, i64 %15)
  store i32 0, i32* %2, align 4
  br label %17

17:                                               ; preds = %14, %13
  %18 = load i32, i32* %2, align 4
  ret i32 %18
}

declare dso_local i32 @printk_safe_enter_irqsave(i64) #1

declare dso_local i32 @down_trylock(i32*) #1

declare dso_local i32 @printk_safe_exit_irqrestore(i64) #1

declare dso_local i32 @mutex_acquire(i32*, i32, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
