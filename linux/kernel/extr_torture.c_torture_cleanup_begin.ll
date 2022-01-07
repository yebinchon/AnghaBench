; ModuleID = '/home/carl/AnghaBench/linux/kernel/extr_torture.c_torture_cleanup_begin.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/extr_torture.c_torture_cleanup_begin.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@fullstop_mutex = common dso_local global i32 0, align 4
@fullstop = common dso_local global i32 0, align 4
@FULLSTOP_SHUTDOWN = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [40 x i8] c"Concurrent rmmod and shutdown illegal!\0A\00", align 1
@FULLSTOP_RMMOD = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @torture_cleanup_begin() #0 {
  %1 = alloca i32, align 4
  %2 = call i32 @mutex_lock(i32* @fullstop_mutex)
  %3 = load i32, i32* @fullstop, align 4
  %4 = call i64 @READ_ONCE(i32 %3)
  %5 = load i64, i64* @FULLSTOP_SHUTDOWN, align 8
  %6 = icmp eq i64 %4, %5
  br i1 %6, label %7, label %11

7:                                                ; preds = %0
  %8 = call i32 @pr_warn(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0))
  %9 = call i32 @mutex_unlock(i32* @fullstop_mutex)
  %10 = call i32 @schedule_timeout_uninterruptible(i32 10)
  store i32 1, i32* %1, align 4
  br label %20

11:                                               ; preds = %0
  %12 = load i32, i32* @fullstop, align 4
  %13 = load i32, i32* @FULLSTOP_RMMOD, align 4
  %14 = call i32 @WRITE_ONCE(i32 %12, i32 %13)
  %15 = call i32 @mutex_unlock(i32* @fullstop_mutex)
  %16 = call i32 (...) @torture_shutdown_cleanup()
  %17 = call i32 (...) @torture_shuffle_cleanup()
  %18 = call i32 (...) @torture_stutter_cleanup()
  %19 = call i32 (...) @torture_onoff_cleanup()
  store i32 0, i32* %1, align 4
  br label %20

20:                                               ; preds = %11, %7
  %21 = load i32, i32* %1, align 4
  ret i32 %21
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i64 @READ_ONCE(i32) #1

declare dso_local i32 @pr_warn(i8*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @schedule_timeout_uninterruptible(i32) #1

declare dso_local i32 @WRITE_ONCE(i32, i32) #1

declare dso_local i32 @torture_shutdown_cleanup(...) #1

declare dso_local i32 @torture_shuffle_cleanup(...) #1

declare dso_local i32 @torture_stutter_cleanup(...) #1

declare dso_local i32 @torture_onoff_cleanup(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
