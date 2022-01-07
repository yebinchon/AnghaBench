; ModuleID = '/home/carl/AnghaBench/linux/kernel/extr_torture.c_torture_shutdown_notify.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/extr_torture.c_torture_shutdown_notify.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.notifier_block = type { i32 }

@fullstop_mutex = common dso_local global i32 0, align 4
@fullstop = common dso_local global i32 0, align 4
@FULLSTOP_DONTSTOP = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [37 x i8] c"Unscheduled system shutdown detected\00", align 1
@FULLSTOP_SHUTDOWN = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [40 x i8] c"Concurrent rmmod and shutdown illegal!\0A\00", align 1
@NOTIFY_DONE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.notifier_block*, i64, i8*)* @torture_shutdown_notify to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @torture_shutdown_notify(%struct.notifier_block* %0, i64 %1, i8* %2) #0 {
  %4 = alloca %struct.notifier_block*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i8*, align 8
  store %struct.notifier_block* %0, %struct.notifier_block** %4, align 8
  store i64 %1, i64* %5, align 8
  store i8* %2, i8** %6, align 8
  %7 = call i32 @mutex_lock(i32* @fullstop_mutex)
  %8 = load i32, i32* @fullstop, align 4
  %9 = call i64 @READ_ONCE(i32 %8)
  %10 = load i64, i64* @FULLSTOP_DONTSTOP, align 8
  %11 = icmp eq i64 %9, %10
  br i1 %11, label %12, label %17

12:                                               ; preds = %3
  %13 = call i32 @VERBOSE_TOROUT_STRING(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0))
  %14 = load i32, i32* @fullstop, align 4
  %15 = load i32, i32* @FULLSTOP_SHUTDOWN, align 4
  %16 = call i32 @WRITE_ONCE(i32 %14, i32 %15)
  br label %19

17:                                               ; preds = %3
  %18 = call i32 @pr_warn(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0))
  br label %19

19:                                               ; preds = %17, %12
  %20 = call i32 @mutex_unlock(i32* @fullstop_mutex)
  %21 = load i32, i32* @NOTIFY_DONE, align 4
  ret i32 %21
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i64 @READ_ONCE(i32) #1

declare dso_local i32 @VERBOSE_TOROUT_STRING(i8*) #1

declare dso_local i32 @WRITE_ONCE(i32, i32) #1

declare dso_local i32 @pr_warn(i8*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
