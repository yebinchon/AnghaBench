; ModuleID = '/home/carl/AnghaBench/linux/kernel/extr_torture.c_torture_shutdown_absorb.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/extr_torture.c_torture_shutdown_absorb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@fullstop = common dso_local global i32 0, align 4
@FULLSTOP_SHUTDOWN = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [50 x i8] c"torture thread %s parking due to system shutdown\0A\00", align 1
@MAX_SCHEDULE_TIMEOUT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @torture_shutdown_absorb(i8* %0) #0 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  br label %3

3:                                                ; preds = %8, %1
  %4 = load i32, i32* @fullstop, align 4
  %5 = call i64 @READ_ONCE(i32 %4)
  %6 = load i64, i64* @FULLSTOP_SHUTDOWN, align 8
  %7 = icmp eq i64 %5, %6
  br i1 %7, label %8, label %13

8:                                                ; preds = %3
  %9 = load i8*, i8** %2, align 8
  %10 = call i32 @pr_notice(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str, i64 0, i64 0), i8* %9)
  %11 = load i32, i32* @MAX_SCHEDULE_TIMEOUT, align 4
  %12 = call i32 @schedule_timeout_uninterruptible(i32 %11)
  br label %3

13:                                               ; preds = %3
  ret void
}

declare dso_local i64 @READ_ONCE(i32) #1

declare dso_local i32 @pr_notice(i8*, i8*) #1

declare dso_local i32 @schedule_timeout_uninterruptible(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
