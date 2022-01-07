; ModuleID = '/home/carl/AnghaBench/linux/kernel/debug/kdb/extr_kdb_keyboard.c_kdb_kbd_cleanup_state.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/debug/kdb/extr_kdb_keyboard.c_kdb_kbd_cleanup_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@kbd_last_ret = common dso_local global i64 0, align 8
@KBD_STATUS_REG = common dso_local global i32 0, align 4
@KBD_STAT_OBF = common dso_local global i32 0, align 4
@KBD_DATA_REG = common dso_local global i32 0, align 4
@KBD_STAT_MOUSE_OBF = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @kdb_kbd_cleanup_state() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = load i64, i64* @kbd_last_ret, align 8
  %4 = icmp ne i64 %3, 0
  br i1 %4, label %6, label %5

5:                                                ; preds = %0
  br label %31

6:                                                ; preds = %0
  store i64 0, i64* @kbd_last_ret, align 8
  br label %7

7:                                                ; preds = %6, %25, %29
  br label %8

8:                                                ; preds = %14, %7
  %9 = load i32, i32* @KBD_STATUS_REG, align 4
  %10 = call i32 @inb(i32 %9)
  %11 = load i32, i32* @KBD_STAT_OBF, align 4
  %12 = and i32 %10, %11
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %8
  %15 = call i32 (...) @cpu_relax()
  br label %8

16:                                               ; preds = %8
  %17 = load i32, i32* @KBD_DATA_REG, align 4
  %18 = call i32 @inb(i32 %17)
  store i32 %18, i32* %1, align 4
  %19 = load i32, i32* @KBD_STATUS_REG, align 4
  %20 = call i32 @inb(i32 %19)
  store i32 %20, i32* %2, align 4
  %21 = load i32, i32* %2, align 4
  %22 = load i32, i32* @KBD_STAT_MOUSE_OBF, align 4
  %23 = and i32 %21, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %16
  br label %7

26:                                               ; preds = %16
  %27 = load i32, i32* %1, align 4
  %28 = icmp ne i32 %27, 156
  br i1 %28, label %29, label %30

29:                                               ; preds = %26
  br label %7

30:                                               ; preds = %26
  br label %31

31:                                               ; preds = %30, %5
  ret void
}

declare dso_local i32 @inb(i32) #1

declare dso_local i32 @cpu_relax(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
