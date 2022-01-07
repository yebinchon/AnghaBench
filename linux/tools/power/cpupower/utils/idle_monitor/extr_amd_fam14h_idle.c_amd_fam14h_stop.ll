; ModuleID = '/home/carl/AnghaBench/linux/tools/power/cpupower/utils/idle_monitor/extr_amd_fam14h_idle.c_amd_fam14h_stop.c'
source_filename = "/home/carl/AnghaBench/linux/tools/power/cpupower/utils/idle_monitor/extr_amd_fam14h_idle.c_amd_fam14h_stop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.timespec = type { i32 }

@CLOCK_REALTIME = common dso_local global i32 0, align 4
@AMD_FAM14H_STATE_NUM = common dso_local global i32 0, align 4
@cpu_count = common dso_local global i32 0, align 4
@amd_fam14h_cstates = common dso_local global i32* null, align 8
@start_time = common dso_local global %struct.timespec zeroinitializer, align 4
@timediff = common dso_local global i32 0, align 4
@OVERFLOW_MS = common dso_local global i32 0, align 4
@dbg_time = common dso_local global %struct.timespec zeroinitializer, align 4
@dbg_timediff = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @amd_fam14h_stop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @amd_fam14h_stop() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca %struct.timespec, align 4
  %4 = load i32, i32* @CLOCK_REALTIME, align 4
  %5 = call i32 @clock_gettime(i32 %4, %struct.timespec* %3)
  store i32 0, i32* %1, align 4
  br label %6

6:                                                ; preds = %26, %0
  %7 = load i32, i32* %1, align 4
  %8 = load i32, i32* @AMD_FAM14H_STATE_NUM, align 4
  %9 = icmp slt i32 %7, %8
  br i1 %9, label %10, label %29

10:                                               ; preds = %6
  store i32 0, i32* %2, align 4
  br label %11

11:                                               ; preds = %22, %10
  %12 = load i32, i32* %2, align 4
  %13 = load i32, i32* @cpu_count, align 4
  %14 = icmp slt i32 %12, %13
  br i1 %14, label %15, label %25

15:                                               ; preds = %11
  %16 = load i32*, i32** @amd_fam14h_cstates, align 8
  %17 = load i32, i32* %1, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds i32, i32* %16, i64 %18
  %20 = load i32, i32* %2, align 4
  %21 = call i32 @amd_fam14h_disable(i32* %19, i32 %20)
  br label %22

22:                                               ; preds = %15
  %23 = load i32, i32* %2, align 4
  %24 = add nsw i32 %23, 1
  store i32 %24, i32* %2, align 4
  br label %11

25:                                               ; preds = %11
  br label %26

26:                                               ; preds = %25
  %27 = load i32, i32* %1, align 4
  %28 = add nsw i32 %27, 1
  store i32 %28, i32* %1, align 4
  br label %6

29:                                               ; preds = %6
  %30 = load i32, i32* getelementptr inbounds (%struct.timespec, %struct.timespec* @start_time, i32 0, i32 0), align 4
  %31 = getelementptr inbounds %struct.timespec, %struct.timespec* %3, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = call i8* @timespec_diff_us(i32 %30, i32 %32)
  %34 = ptrtoint i8* %33 to i32
  store i32 %34, i32* @timediff, align 4
  %35 = load i32, i32* @timediff, align 4
  %36 = sdiv i32 %35, 1000
  %37 = load i32, i32* @OVERFLOW_MS, align 4
  %38 = icmp sgt i32 %36, %37
  br i1 %38, label %39, label %45

39:                                               ; preds = %29
  %40 = load i32, i32* @timediff, align 4
  %41 = udiv i32 %40, 1000000
  %42 = load i32, i32* @OVERFLOW_MS, align 4
  %43 = sdiv i32 %42, 1000
  %44 = call i32 @print_overflow_err(i32 %41, i32 %43)
  br label %45

45:                                               ; preds = %39, %29
  ret i32 0
}

declare dso_local i32 @clock_gettime(i32, %struct.timespec*) #1

declare dso_local i32 @amd_fam14h_disable(i32*, i32) #1

declare dso_local i8* @timespec_diff_us(i32, i32) #1

declare dso_local i32 @print_overflow_err(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
