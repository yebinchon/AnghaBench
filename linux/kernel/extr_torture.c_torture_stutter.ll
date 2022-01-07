; ModuleID = '/home/carl/AnghaBench/linux/kernel/extr_torture.c_torture_stutter.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/extr_torture.c_torture_stutter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [29 x i8] c"torture_stutter task started\00", align 1
@stutter = common dso_local global i32 0, align 4
@HZ = common dso_local global i32 0, align 4
@stutter_pause_test = common dso_local global i32 0, align 4
@stutter_gap = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [16 x i8] c"torture_stutter\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @torture_stutter to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @torture_stutter(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %4 = call i32 @VERBOSE_TOROUT_STRING(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  br label %5

5:                                                ; preds = %43, %1
  %6 = call i32 (...) @torture_must_stop()
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %33, label %8

8:                                                ; preds = %5
  %9 = load i32, i32* @stutter, align 4
  %10 = icmp sgt i32 %9, 1
  br i1 %10, label %11, label %33

11:                                               ; preds = %8
  %12 = load i32, i32* @stutter, align 4
  store i32 %12, i32* %3, align 4
  %13 = load i32, i32* @stutter, align 4
  %14 = load i32, i32* @HZ, align 4
  %15 = add nsw i32 %14, 1
  %16 = icmp sgt i32 %13, %15
  br i1 %16, label %17, label %28

17:                                               ; preds = %11
  %18 = load i32, i32* @stutter_pause_test, align 4
  %19 = call i32 @WRITE_ONCE(i32 %18, i32 1)
  %20 = load i32, i32* @stutter, align 4
  %21 = load i32, i32* @HZ, align 4
  %22 = sub nsw i32 %20, %21
  %23 = sub nsw i32 %22, 1
  store i32 %23, i32* %3, align 4
  %24 = load i32, i32* %3, align 4
  %25 = call i32 @schedule_timeout_interruptible(i32 %24)
  %26 = load i32, i32* @HZ, align 4
  %27 = add nsw i32 %26, 1
  store i32 %27, i32* %3, align 4
  br label %28

28:                                               ; preds = %17, %11
  %29 = load i32, i32* @stutter_pause_test, align 4
  %30 = call i32 @WRITE_ONCE(i32 %29, i32 2)
  %31 = load i32, i32* %3, align 4
  %32 = call i32 @schedule_timeout_interruptible(i32 %31)
  br label %33

33:                                               ; preds = %28, %8, %5
  %34 = load i32, i32* @stutter_pause_test, align 4
  %35 = call i32 @WRITE_ONCE(i32 %34, i32 0)
  %36 = call i32 (...) @torture_must_stop()
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %41, label %38

38:                                               ; preds = %33
  %39 = load i32, i32* @stutter_gap, align 4
  %40 = call i32 @schedule_timeout_interruptible(i32 %39)
  br label %41

41:                                               ; preds = %38, %33
  %42 = call i32 @torture_shutdown_absorb(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0))
  br label %43

43:                                               ; preds = %41
  %44 = call i32 (...) @torture_must_stop()
  %45 = icmp ne i32 %44, 0
  %46 = xor i1 %45, true
  br i1 %46, label %5, label %47

47:                                               ; preds = %43
  %48 = call i32 @torture_kthread_stopping(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0))
  ret i32 0
}

declare dso_local i32 @VERBOSE_TOROUT_STRING(i8*) #1

declare dso_local i32 @torture_must_stop(...) #1

declare dso_local i32 @WRITE_ONCE(i32, i32) #1

declare dso_local i32 @schedule_timeout_interruptible(i32) #1

declare dso_local i32 @torture_shutdown_absorb(i8*) #1

declare dso_local i32 @torture_kthread_stopping(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
