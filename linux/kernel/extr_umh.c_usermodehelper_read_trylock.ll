; ModuleID = '/home/carl/AnghaBench/linux/kernel/extr_umh.c_usermodehelper_read_trylock.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/extr_umh.c_usermodehelper_read_trylock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@wait = common dso_local global i32 0, align 4
@umhelper_sem = common dso_local global i32 0, align 4
@usermodehelper_disabled_waitq = common dso_local global i32 0, align 4
@TASK_INTERRUPTIBLE = common dso_local global i32 0, align 4
@usermodehelper_disabled = common dso_local global i64 0, align 8
@UMH_DISABLED = common dso_local global i64 0, align 8
@EAGAIN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @usermodehelper_read_trylock() #0 {
  %1 = alloca i32, align 4
  %2 = load i32, i32* @wait, align 4
  %3 = call i32 @DEFINE_WAIT(i32 %2)
  store i32 0, i32* %1, align 4
  %4 = call i32 @down_read(i32* @umhelper_sem)
  br label %5

5:                                                ; preds = %23, %0
  %6 = load i32, i32* @TASK_INTERRUPTIBLE, align 4
  %7 = call i32 @prepare_to_wait(i32* @usermodehelper_disabled_waitq, i32* @wait, i32 %6)
  %8 = load i64, i64* @usermodehelper_disabled, align 8
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %11, label %10

10:                                               ; preds = %5
  br label %27

11:                                               ; preds = %5
  %12 = load i64, i64* @usermodehelper_disabled, align 8
  %13 = load i64, i64* @UMH_DISABLED, align 8
  %14 = icmp eq i64 %12, %13
  br i1 %14, label %15, label %18

15:                                               ; preds = %11
  %16 = load i32, i32* @EAGAIN, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %1, align 4
  br label %18

18:                                               ; preds = %15, %11
  %19 = call i32 @up_read(i32* @umhelper_sem)
  %20 = load i32, i32* %1, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %18
  br label %27

23:                                               ; preds = %18
  %24 = call i32 (...) @schedule()
  %25 = call i32 (...) @try_to_freeze()
  %26 = call i32 @down_read(i32* @umhelper_sem)
  br label %5

27:                                               ; preds = %22, %10
  %28 = call i32 @finish_wait(i32* @usermodehelper_disabled_waitq, i32* @wait)
  %29 = load i32, i32* %1, align 4
  ret i32 %29
}

declare dso_local i32 @DEFINE_WAIT(i32) #1

declare dso_local i32 @down_read(i32*) #1

declare dso_local i32 @prepare_to_wait(i32*, i32*, i32) #1

declare dso_local i32 @up_read(i32*) #1

declare dso_local i32 @schedule(...) #1

declare dso_local i32 @try_to_freeze(...) #1

declare dso_local i32 @finish_wait(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
