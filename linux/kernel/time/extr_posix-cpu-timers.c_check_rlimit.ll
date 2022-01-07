; ModuleID = '/home/carl/AnghaBench/linux/kernel/time/extr_posix-cpu-timers.c_check_rlimit.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/time/extr_posix-cpu-timers.c_check_rlimit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }

@print_fatal_signals = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [34 x i8] c"%s Watchdog Timeout (%s): %s[%d]\0A\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"RT\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"CPU\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"hard\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"soft\00", align 1
@current = common dso_local global %struct.TYPE_4__* null, align 8
@SEND_SIG_PRIV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64, i64, i32, i32, i32)* @check_rlimit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @check_rlimit(i64 %0, i64 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i64 %0, i64* %7, align 8
  store i64 %1, i64* %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %12 = load i64, i64* %7, align 8
  %13 = load i64, i64* %8, align 8
  %14 = icmp slt i64 %12, %13
  br i1 %14, label %15, label %16

15:                                               ; preds = %5
  store i32 0, i32* %6, align 4
  br label %39

16:                                               ; preds = %5
  %17 = load i64, i64* @print_fatal_signals, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %34

19:                                               ; preds = %16
  %20 = load i32, i32* %10, align 4
  %21 = icmp ne i32 %20, 0
  %22 = zext i1 %21 to i64
  %23 = select i1 %21, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0)
  %24 = load i32, i32* %11, align 4
  %25 = icmp ne i32 %24, 0
  %26 = zext i1 %25 to i64
  %27 = select i1 %25, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0)
  %28 = load %struct.TYPE_4__*, %struct.TYPE_4__** @current, align 8
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.TYPE_4__*, %struct.TYPE_4__** @current, align 8
  %32 = call i32 @task_pid_nr(%struct.TYPE_4__* %31)
  %33 = call i32 @pr_info(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i8* %23, i8* %27, i32 %30, i32 %32)
  br label %34

34:                                               ; preds = %19, %16
  %35 = load i32, i32* %9, align 4
  %36 = load i32, i32* @SEND_SIG_PRIV, align 4
  %37 = load %struct.TYPE_4__*, %struct.TYPE_4__** @current, align 8
  %38 = call i32 @__group_send_sig_info(i32 %35, i32 %36, %struct.TYPE_4__* %37)
  store i32 1, i32* %6, align 4
  br label %39

39:                                               ; preds = %34, %15
  %40 = load i32, i32* %6, align 4
  ret i32 %40
}

declare dso_local i32 @pr_info(i8*, i8*, i8*, i32, i32) #1

declare dso_local i32 @task_pid_nr(%struct.TYPE_4__*) #1

declare dso_local i32 @__group_send_sig_info(i32, i32, %struct.TYPE_4__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
