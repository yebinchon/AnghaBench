; ModuleID = '/home/carl/AnghaBench/linux/tools/power/cpupower/utils/idle_monitor/extr_cpuidle_sysfs.c_cpuidle_stop.c'
source_filename = "/home/carl/AnghaBench/linux/tools/power/cpupower/utils/idle_monitor/extr_cpuidle_sysfs.c_cpuidle_stop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.timespec = type { i32 }

@CLOCK_REALTIME = common dso_local global i32 0, align 4
@start_time = common dso_local global i32 0, align 4
@timediff = common dso_local global i32 0, align 4
@cpu_count = common dso_local global i32 0, align 4
@cpuidle_sysfs_monitor = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@current_count = common dso_local global i32** null, align 8
@.str = private unnamed_addr constant [32 x i8] c"CPU %d - State: %d - Val: %llu\0A\00", align 1
@previous_count = common dso_local global i32** null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @cpuidle_stop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cpuidle_stop() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca %struct.timespec, align 4
  %4 = load i32, i32* @CLOCK_REALTIME, align 4
  %5 = call i32 @clock_gettime(i32 %4, %struct.timespec* %3)
  %6 = load i32, i32* @start_time, align 4
  %7 = getelementptr inbounds %struct.timespec, %struct.timespec* %3, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = call i32 @timespec_diff_us(i32 %6, i32 %8)
  store i32 %9, i32* @timediff, align 4
  store i32 0, i32* %1, align 4
  br label %10

10:                                               ; preds = %47, %0
  %11 = load i32, i32* %1, align 4
  %12 = load i32, i32* @cpu_count, align 4
  %13 = icmp slt i32 %11, %12
  br i1 %13, label %14, label %50

14:                                               ; preds = %10
  store i32 0, i32* %2, align 4
  br label %15

15:                                               ; preds = %43, %14
  %16 = load i32, i32* %2, align 4
  %17 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @cpuidle_sysfs_monitor, i32 0, i32 0), align 4
  %18 = icmp slt i32 %16, %17
  br i1 %18, label %19, label %46

19:                                               ; preds = %15
  %20 = load i32, i32* %1, align 4
  %21 = load i32, i32* %2, align 4
  %22 = call i32 @cpuidle_state_time(i32 %20, i32 %21)
  %23 = load i32**, i32*** @current_count, align 8
  %24 = load i32, i32* %1, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds i32*, i32** %23, i64 %25
  %27 = load i32*, i32** %26, align 8
  %28 = load i32, i32* %2, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds i32, i32* %27, i64 %29
  store i32 %22, i32* %30, align 4
  %31 = load i32, i32* %1, align 4
  %32 = load i32, i32* %2, align 4
  %33 = load i32**, i32*** @previous_count, align 8
  %34 = load i32, i32* %1, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds i32*, i32** %33, i64 %35
  %37 = load i32*, i32** %36, align 8
  %38 = load i32, i32* %2, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds i32, i32* %37, i64 %39
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @dprint(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %31, i32 %32, i32 %41)
  br label %43

43:                                               ; preds = %19
  %44 = load i32, i32* %2, align 4
  %45 = add nsw i32 %44, 1
  store i32 %45, i32* %2, align 4
  br label %15

46:                                               ; preds = %15
  br label %47

47:                                               ; preds = %46
  %48 = load i32, i32* %1, align 4
  %49 = add nsw i32 %48, 1
  store i32 %49, i32* %1, align 4
  br label %10

50:                                               ; preds = %10
  ret i32 0
}

declare dso_local i32 @clock_gettime(i32, %struct.timespec*) #1

declare dso_local i32 @timespec_diff_us(i32, i32) #1

declare dso_local i32 @cpuidle_state_time(i32, i32) #1

declare dso_local i32 @dprint(i8*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
