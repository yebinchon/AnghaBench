; ModuleID = '/home/carl/AnghaBench/linux/kernel/extr_umh.c___usermodehelper_disable.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/extr_umh.c___usermodehelper_disable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@EINVAL = common dso_local global i32 0, align 4
@umhelper_sem = common dso_local global i32 0, align 4
@usermodehelper_disabled = common dso_local global i32 0, align 4
@running_helpers_waitq = common dso_local global i32 0, align 4
@running_helpers = common dso_local global i32 0, align 4
@RUNNING_HELPERS_TIMEOUT = common dso_local global i32 0, align 4
@UMH_ENABLED = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @__usermodehelper_disable(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  store i32 %0, i32* %3, align 4
  %5 = load i32, i32* %3, align 4
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %10, label %7

7:                                                ; preds = %1
  %8 = load i32, i32* @EINVAL, align 4
  %9 = sub nsw i32 0, %8
  store i32 %9, i32* %2, align 4
  br label %28

10:                                               ; preds = %1
  %11 = call i32 @down_write(i32* @umhelper_sem)
  %12 = load i32, i32* %3, align 4
  store i32 %12, i32* @usermodehelper_disabled, align 4
  %13 = call i32 @up_write(i32* @umhelper_sem)
  %14 = load i32, i32* @running_helpers_waitq, align 4
  %15 = call i64 @atomic_read(i32* @running_helpers)
  %16 = icmp eq i64 %15, 0
  %17 = zext i1 %16 to i32
  %18 = load i32, i32* @RUNNING_HELPERS_TIMEOUT, align 4
  %19 = call i64 @wait_event_timeout(i32 %14, i32 %17, i32 %18)
  store i64 %19, i64* %4, align 8
  %20 = load i64, i64* %4, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %10
  store i32 0, i32* %2, align 4
  br label %28

23:                                               ; preds = %10
  %24 = load i32, i32* @UMH_ENABLED, align 4
  %25 = call i32 @__usermodehelper_set_disable_depth(i32 %24)
  %26 = load i32, i32* @EAGAIN, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %2, align 4
  br label %28

28:                                               ; preds = %23, %22, %7
  %29 = load i32, i32* %2, align 4
  ret i32 %29
}

declare dso_local i32 @down_write(i32*) #1

declare dso_local i32 @up_write(i32*) #1

declare dso_local i64 @wait_event_timeout(i32, i32, i32) #1

declare dso_local i64 @atomic_read(i32*) #1

declare dso_local i32 @__usermodehelper_set_disable_depth(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
