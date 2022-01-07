; ModuleID = '/home/carl/AnghaBench/linux/tools/power/cpupower/utils/idle_monitor/extr_nhm_idle.c_nhm_start.c'
source_filename = "/home/carl/AnghaBench/linux/tools/power/cpupower/utils/idle_monitor/extr_nhm_idle.c_nhm_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@TSC = common dso_local global i32 0, align 4
@tsc_at_measure_start = common dso_local global i64 0, align 8
@base_cpu = common dso_local global i32 0, align 4
@NHM_CSTATE_COUNT = common dso_local global i32 0, align 4
@cpu_count = common dso_local global i32 0, align 4
@is_valid = common dso_local global i32* null, align 8
@previous_count = common dso_local global i64** null, align 8
@.str = private unnamed_addr constant [16 x i8] c"TSC diff: %llu\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @nhm_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nhm_start() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = load i32, i32* @TSC, align 4
  %6 = load i32, i32* @base_cpu, align 4
  %7 = call i32 @nhm_get_count(i32 %5, i64* @tsc_at_measure_start, i32 %6)
  store i32 0, i32* %1, align 4
  br label %8

8:                                                ; preds = %41, %0
  %9 = load i32, i32* %1, align 4
  %10 = load i32, i32* @NHM_CSTATE_COUNT, align 4
  %11 = icmp slt i32 %9, %10
  br i1 %11, label %12, label %44

12:                                               ; preds = %8
  store i32 0, i32* %2, align 4
  br label %13

13:                                               ; preds = %37, %12
  %14 = load i32, i32* %2, align 4
  %15 = load i32, i32* @cpu_count, align 4
  %16 = icmp slt i32 %14, %15
  br i1 %16, label %17, label %40

17:                                               ; preds = %13
  %18 = load i32, i32* %1, align 4
  %19 = load i32, i32* %2, align 4
  %20 = call i32 @nhm_get_count(i32 %18, i64* %4, i32 %19)
  %21 = icmp ne i32 %20, 0
  %22 = xor i1 %21, true
  %23 = zext i1 %22 to i32
  %24 = load i32*, i32** @is_valid, align 8
  %25 = load i32, i32* %2, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds i32, i32* %24, i64 %26
  store i32 %23, i32* %27, align 4
  %28 = load i64, i64* %4, align 8
  %29 = load i64**, i64*** @previous_count, align 8
  %30 = load i32, i32* %1, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds i64*, i64** %29, i64 %31
  %33 = load i64*, i64** %32, align 8
  %34 = load i32, i32* %2, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds i64, i64* %33, i64 %35
  store i64 %28, i64* %36, align 8
  br label %37

37:                                               ; preds = %17
  %38 = load i32, i32* %2, align 4
  %39 = add nsw i32 %38, 1
  store i32 %39, i32* %2, align 4
  br label %13

40:                                               ; preds = %13
  br label %41

41:                                               ; preds = %40
  %42 = load i32, i32* %1, align 4
  %43 = add nsw i32 %42, 1
  store i32 %43, i32* %1, align 4
  br label %8

44:                                               ; preds = %8
  %45 = load i32, i32* @TSC, align 4
  %46 = load i32, i32* @base_cpu, align 4
  %47 = call i32 @nhm_get_count(i32 %45, i64* %3, i32 %46)
  %48 = load i64, i64* %3, align 8
  %49 = load i64, i64* @tsc_at_measure_start, align 8
  %50 = sub i64 %48, %49
  %51 = call i32 @dprint(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i64 %50)
  ret i32 0
}

declare dso_local i32 @nhm_get_count(i32, i64*, i32) #1

declare dso_local i32 @dprint(i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
