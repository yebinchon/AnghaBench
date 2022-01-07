; ModuleID = '/home/carl/AnghaBench/linux/tools/power/cpupower/utils/idle_monitor/extr_mperf_monitor.c_mperf_get_count_freq.c'
source_filename = "/home/carl/AnghaBench/linux/tools/power/cpupower/utils/idle_monitor/extr_mperf_monitor.c_mperf_get_count_freq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }

@AVG_FREQ = common dso_local global i32 0, align 4
@is_valid = common dso_local global i32* null, align 8
@mperf_current_count = common dso_local global i64* null, align 8
@mperf_previous_count = common dso_local global i64* null, align 8
@aperf_current_count = common dso_local global i64* null, align 8
@aperf_previous_count = common dso_local global i64* null, align 8
@max_freq_mode = common dso_local global i64 0, align 8
@MAX_FREQ_TSC_REF = common dso_local global i64 0, align 8
@tsc_at_measure_end = common dso_local global i64 0, align 8
@tsc_at_measure_start = common dso_local global i64 0, align 8
@time_start = common dso_local global i32 0, align 4
@time_end = common dso_local global i32 0, align 4
@max_frequency = common dso_local global double 0.000000e+00, align 8
@.str = private unnamed_addr constant [49 x i8] c"%s: Average freq based on %s maximum frequency:\0A\00", align 1
@mperf_cstates = common dso_local global %struct.TYPE_2__* null, align 8
@.str.1 = private unnamed_addr constant [15 x i8] c"TSC calculated\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"sysfs read\00", align 1
@.str.3 = private unnamed_addr constant [20 x i8] c"max_frequency: %lu\0A\00", align 1
@.str.4 = private unnamed_addr constant [18 x i8] c"aperf_diff: %llu\0A\00", align 1
@.str.5 = private unnamed_addr constant [18 x i8] c"mperf_diff: %llu\0A\00", align 1
@.str.6 = private unnamed_addr constant [18 x i8] c"avg freq:   %llu\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i64*, i32)* @mperf_get_count_freq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mperf_get_count_freq(i32 %0, i64* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i64*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  store i32 %0, i32* %5, align 4
  store i64* %1, i64** %6, align 8
  store i32 %2, i32* %7, align 4
  %12 = load i32, i32* %5, align 4
  %13 = load i32, i32* @AVG_FREQ, align 4
  %14 = icmp ne i32 %12, %13
  br i1 %14, label %15, label %16

15:                                               ; preds = %3
  store i32 1, i32* %4, align 4
  br label %94

16:                                               ; preds = %3
  %17 = load i32*, i32** @is_valid, align 8
  %18 = load i32, i32* %7, align 4
  %19 = zext i32 %18 to i64
  %20 = getelementptr inbounds i32, i32* %17, i64 %19
  %21 = load i32, i32* %20, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %24, label %23

23:                                               ; preds = %16
  store i32 -1, i32* %4, align 4
  br label %94

24:                                               ; preds = %16
  %25 = load i64*, i64** @mperf_current_count, align 8
  %26 = load i32, i32* %7, align 4
  %27 = zext i32 %26 to i64
  %28 = getelementptr inbounds i64, i64* %25, i64 %27
  %29 = load i64, i64* %28, align 8
  %30 = load i64*, i64** @mperf_previous_count, align 8
  %31 = load i32, i32* %7, align 4
  %32 = zext i32 %31 to i64
  %33 = getelementptr inbounds i64, i64* %30, i64 %32
  %34 = load i64, i64* %33, align 8
  %35 = sub i64 %29, %34
  store i64 %35, i64* %9, align 8
  %36 = load i64*, i64** @aperf_current_count, align 8
  %37 = load i32, i32* %7, align 4
  %38 = zext i32 %37 to i64
  %39 = getelementptr inbounds i64, i64* %36, i64 %38
  %40 = load i64, i64* %39, align 8
  %41 = load i64*, i64** @aperf_previous_count, align 8
  %42 = load i32, i32* %7, align 4
  %43 = zext i32 %42 to i64
  %44 = getelementptr inbounds i64, i64* %41, i64 %43
  %45 = load i64, i64* %44, align 8
  %46 = sub i64 %40, %45
  store i64 %46, i64* %8, align 8
  %47 = load i64, i64* @max_freq_mode, align 8
  %48 = load i64, i64* @MAX_FREQ_TSC_REF, align 8
  %49 = icmp eq i64 %47, %48
  br i1 %49, label %50, label %61

50:                                               ; preds = %24
  %51 = load i64, i64* @tsc_at_measure_end, align 8
  %52 = load i64, i64* @tsc_at_measure_start, align 8
  %53 = sub i64 %51, %52
  store i64 %53, i64* %11, align 8
  %54 = load i32, i32* @time_start, align 4
  %55 = load i32, i32* @time_end, align 4
  %56 = call i64 @timespec_diff_us(i32 %54, i32 %55)
  store i64 %56, i64* %10, align 8
  %57 = load i64, i64* %11, align 8
  %58 = load i64, i64* %10, align 8
  %59 = udiv i64 %57, %58
  %60 = uitofp i64 %59 to double
  store double %60, double* @max_frequency, align 8
  br label %61

61:                                               ; preds = %50, %24
  %62 = load double, double* @max_frequency, align 8
  %63 = load i64, i64* %8, align 8
  %64 = uitofp i64 %63 to double
  %65 = load i64, i64* %9, align 8
  %66 = uitofp i64 %65 to double
  %67 = fdiv double %64, %66
  %68 = fmul double %62, %67
  %69 = fptoui double %68 to i64
  %70 = load i64*, i64** %6, align 8
  store i64 %69, i64* %70, align 8
  %71 = load %struct.TYPE_2__*, %struct.TYPE_2__** @mperf_cstates, align 8
  %72 = load i32, i32* %5, align 4
  %73 = zext i32 %72 to i64
  %74 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %71, i64 %73
  %75 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = sext i32 %76 to i64
  %78 = load i64, i64* @max_freq_mode, align 8
  %79 = load i64, i64* @MAX_FREQ_TSC_REF, align 8
  %80 = icmp eq i64 %78, %79
  %81 = zext i1 %80 to i64
  %82 = select i1 %80, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0)
  %83 = call i32 (i8*, i64, ...) @dprint(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0), i64 %77, i8* %82)
  %84 = load double, double* @max_frequency, align 8
  %85 = fptoui double %84 to i64
  %86 = call i32 (i8*, i64, ...) @dprint(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i64 0, i64 0), i64 %85)
  %87 = load i64, i64* %8, align 8
  %88 = call i32 (i8*, i64, ...) @dprint(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.4, i64 0, i64 0), i64 %87)
  %89 = load i64, i64* %9, align 8
  %90 = call i32 (i8*, i64, ...) @dprint(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.5, i64 0, i64 0), i64 %89)
  %91 = load i64*, i64** %6, align 8
  %92 = load i64, i64* %91, align 8
  %93 = call i32 (i8*, i64, ...) @dprint(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.6, i64 0, i64 0), i64 %92)
  store i32 0, i32* %4, align 4
  br label %94

94:                                               ; preds = %61, %23, %15
  %95 = load i32, i32* %4, align 4
  ret i32 %95
}

declare dso_local i64 @timespec_diff_us(i32, i32) #1

declare dso_local i32 @dprint(i8*, i64, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
