; ModuleID = '/home/carl/AnghaBench/linux/kernel/extr_umh.c_usermodehelper_read_lock_wait.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/extr_umh.c_usermodehelper_read_lock_wait.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@wait = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i64 0, align 8
@umhelper_sem = common dso_local global i32 0, align 4
@usermodehelper_disabled_waitq = common dso_local global i32 0, align 4
@TASK_UNINTERRUPTIBLE = common dso_local global i32 0, align 4
@usermodehelper_disabled = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @usermodehelper_read_lock_wait(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  store i64 %0, i64* %3, align 8
  %4 = load i32, i32* @wait, align 4
  %5 = call i32 @DEFINE_WAIT(i32 %4)
  %6 = load i64, i64* %3, align 8
  %7 = icmp slt i64 %6, 0
  br i1 %7, label %8, label %11

8:                                                ; preds = %1
  %9 = load i64, i64* @EINVAL, align 8
  %10 = sub nsw i64 0, %9
  store i64 %10, i64* %2, align 8
  br label %31

11:                                               ; preds = %1
  %12 = call i32 @down_read(i32* @umhelper_sem)
  br label %13

13:                                               ; preds = %26, %11
  %14 = load i32, i32* @TASK_UNINTERRUPTIBLE, align 4
  %15 = call i32 @prepare_to_wait(i32* @usermodehelper_disabled_waitq, i32* @wait, i32 %14)
  %16 = load i32, i32* @usermodehelper_disabled, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %19, label %18

18:                                               ; preds = %13
  br label %28

19:                                               ; preds = %13
  %20 = call i32 @up_read(i32* @umhelper_sem)
  %21 = load i64, i64* %3, align 8
  %22 = call i64 @schedule_timeout(i64 %21)
  store i64 %22, i64* %3, align 8
  %23 = load i64, i64* %3, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %26, label %25

25:                                               ; preds = %19
  br label %28

26:                                               ; preds = %19
  %27 = call i32 @down_read(i32* @umhelper_sem)
  br label %13

28:                                               ; preds = %25, %18
  %29 = call i32 @finish_wait(i32* @usermodehelper_disabled_waitq, i32* @wait)
  %30 = load i64, i64* %3, align 8
  store i64 %30, i64* %2, align 8
  br label %31

31:                                               ; preds = %28, %8
  %32 = load i64, i64* %2, align 8
  ret i64 %32
}

declare dso_local i32 @DEFINE_WAIT(i32) #1

declare dso_local i32 @down_read(i32*) #1

declare dso_local i32 @prepare_to_wait(i32*, i32*, i32) #1

declare dso_local i32 @up_read(i32*) #1

declare dso_local i64 @schedule_timeout(i64) #1

declare dso_local i32 @finish_wait(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
