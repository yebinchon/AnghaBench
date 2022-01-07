; ModuleID = '/home/carl/AnghaBench/linux/tools/power/cpupower/utils/idle_monitor/extr_mperf_monitor.c_mperf_get_count_percent.c'
source_filename = "/home/carl/AnghaBench/linux/tools/power/cpupower/utils/idle_monitor/extr_mperf_monitor.c_mperf_get_count_percent.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }

@is_valid = common dso_local global i32* null, align 8
@C0 = common dso_local global i32 0, align 4
@Cx = common dso_local global i32 0, align 4
@mperf_current_count = common dso_local global i64* null, align 8
@mperf_previous_count = common dso_local global i64* null, align 8
@aperf_current_count = common dso_local global i64* null, align 8
@aperf_previous_count = common dso_local global i64* null, align 8
@max_freq_mode = common dso_local global i64 0, align 8
@MAX_FREQ_TSC_REF = common dso_local global i64 0, align 8
@tsc_at_measure_end = common dso_local global i64 0, align 8
@tsc_at_measure_start = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [48 x i8] c"%s: TSC Ref - mperf_diff: %llu, tsc_diff: %llu\0A\00", align 1
@mperf_cstates = common dso_local global %struct.TYPE_2__* null, align 8
@MAX_FREQ_SYSFS = common dso_local global i64 0, align 8
@max_frequency = common dso_local global i64 0, align 8
@time_start = common dso_local global i32 0, align 4
@time_end = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [49 x i8] c"%s: MAXFREQ - mperf_diff: %llu, time_diff: %llu\0A\00", align 1
@.str.2 = private unnamed_addr constant [43 x i8] c"%s: previous: %llu - current: %llu - (%u)\0A\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"%s: %f\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, double*, i32)* @mperf_get_count_percent to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mperf_get_count_percent(i32 %0, double* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca double*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  store i32 %0, i32* %5, align 4
  store double* %1, double** %6, align 8
  store i32 %2, i32* %7, align 4
  %12 = load i32*, i32** @is_valid, align 8
  %13 = load i32, i32* %7, align 4
  %14 = zext i32 %13 to i64
  %15 = getelementptr inbounds i32, i32* %12, i64 %14
  %16 = load i32, i32* %15, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %19, label %18

18:                                               ; preds = %3
  store i32 -1, i32* %4, align 4
  br label %134

19:                                               ; preds = %3
  %20 = load i32, i32* %5, align 4
  %21 = load i32, i32* @C0, align 4
  %22 = icmp ne i32 %20, %21
  br i1 %22, label %23, label %28

23:                                               ; preds = %19
  %24 = load i32, i32* %5, align 4
  %25 = load i32, i32* @Cx, align 4
  %26 = icmp ne i32 %24, %25
  br i1 %26, label %27, label %28

27:                                               ; preds = %23
  store i32 -1, i32* %4, align 4
  br label %134

28:                                               ; preds = %23, %19
  %29 = load i64*, i64** @mperf_current_count, align 8
  %30 = load i32, i32* %7, align 4
  %31 = zext i32 %30 to i64
  %32 = getelementptr inbounds i64, i64* %29, i64 %31
  %33 = load i64, i64* %32, align 8
  %34 = load i64*, i64** @mperf_previous_count, align 8
  %35 = load i32, i32* %7, align 4
  %36 = zext i32 %35 to i64
  %37 = getelementptr inbounds i64, i64* %34, i64 %36
  %38 = load i64, i64* %37, align 8
  %39 = sub i64 %33, %38
  store i64 %39, i64* %9, align 8
  %40 = load i64*, i64** @aperf_current_count, align 8
  %41 = load i32, i32* %7, align 4
  %42 = zext i32 %41 to i64
  %43 = getelementptr inbounds i64, i64* %40, i64 %42
  %44 = load i64, i64* %43, align 8
  %45 = load i64*, i64** @aperf_previous_count, align 8
  %46 = load i32, i32* %7, align 4
  %47 = zext i32 %46 to i64
  %48 = getelementptr inbounds i64, i64* %45, i64 %47
  %49 = load i64, i64* %48, align 8
  %50 = sub i64 %44, %49
  store i64 %50, i64* %8, align 8
  %51 = load i64, i64* @max_freq_mode, align 8
  %52 = load i64, i64* @MAX_FREQ_TSC_REF, align 8
  %53 = icmp eq i64 %51, %52
  br i1 %53, label %54, label %75

54:                                               ; preds = %28
  %55 = load i64, i64* @tsc_at_measure_end, align 8
  %56 = load i64, i64* @tsc_at_measure_start, align 8
  %57 = sub i64 %55, %56
  store i64 %57, i64* %10, align 8
  %58 = load i64, i64* %9, align 8
  %59 = uitofp i64 %58 to double
  %60 = fmul double 1.000000e+02, %59
  %61 = load i64, i64* %10, align 8
  %62 = uitofp i64 %61 to double
  %63 = fdiv double %60, %62
  %64 = load double*, double** %6, align 8
  store double %63, double* %64, align 8
  %65 = load %struct.TYPE_2__*, %struct.TYPE_2__** @mperf_cstates, align 8
  %66 = load i32, i32* %5, align 4
  %67 = zext i32 %66 to i64
  %68 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %65, i64 %67
  %69 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = load i64, i64* %9, align 8
  %72 = uitofp i64 %71 to double
  %73 = load i64, i64* %10, align 8
  %74 = call i32 (i8*, i32, double, ...) @dprint(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0), i32 %70, double %72, i64 %73)
  br label %104

75:                                               ; preds = %28
  %76 = load i64, i64* @max_freq_mode, align 8
  %77 = load i64, i64* @MAX_FREQ_SYSFS, align 8
  %78 = icmp eq i64 %76, %77
  br i1 %78, label %79, label %102

79:                                               ; preds = %75
  %80 = load i64, i64* @max_frequency, align 8
  %81 = load i32, i32* @time_start, align 4
  %82 = load i32, i32* @time_end, align 4
  %83 = call i64 @timespec_diff_us(i32 %81, i32 %82)
  %84 = mul i64 %80, %83
  store i64 %84, i64* %11, align 8
  %85 = load i64, i64* %9, align 8
  %86 = uitofp i64 %85 to double
  %87 = fmul double 1.000000e+02, %86
  %88 = load i64, i64* %11, align 8
  %89 = uitofp i64 %88 to double
  %90 = fdiv double %87, %89
  %91 = load double*, double** %6, align 8
  store double %90, double* %91, align 8
  %92 = load %struct.TYPE_2__*, %struct.TYPE_2__** @mperf_cstates, align 8
  %93 = load i32, i32* %5, align 4
  %94 = zext i32 %93 to i64
  %95 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %92, i64 %94
  %96 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 4
  %98 = load i64, i64* %9, align 8
  %99 = uitofp i64 %98 to double
  %100 = load i64, i64* %11, align 8
  %101 = call i32 (i8*, i32, double, ...) @dprint(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.1, i64 0, i64 0), i32 %97, double %99, i64 %100)
  br label %103

102:                                              ; preds = %75
  store i32 -1, i32* %4, align 4
  br label %134

103:                                              ; preds = %79
  br label %104

104:                                              ; preds = %103, %54
  %105 = load i32, i32* %5, align 4
  %106 = load i32, i32* @Cx, align 4
  %107 = icmp eq i32 %105, %106
  br i1 %107, label %108, label %113

108:                                              ; preds = %104
  %109 = load double*, double** %6, align 8
  %110 = load double, double* %109, align 8
  %111 = fsub double 1.000000e+02, %110
  %112 = load double*, double** %6, align 8
  store double %111, double* %112, align 8
  br label %113

113:                                              ; preds = %108, %104
  %114 = load %struct.TYPE_2__*, %struct.TYPE_2__** @mperf_cstates, align 8
  %115 = load i32, i32* %5, align 4
  %116 = zext i32 %115 to i64
  %117 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %114, i64 %116
  %118 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 4
  %120 = load i64, i64* %9, align 8
  %121 = uitofp i64 %120 to double
  %122 = load i64, i64* %8, align 8
  %123 = load i32, i32* %7, align 4
  %124 = call i32 (i8*, i32, double, ...) @dprint(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.2, i64 0, i64 0), i32 %119, double %121, i64 %122, i32 %123)
  %125 = load %struct.TYPE_2__*, %struct.TYPE_2__** @mperf_cstates, align 8
  %126 = load i32, i32* %5, align 4
  %127 = zext i32 %126 to i64
  %128 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %125, i64 %127
  %129 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %128, i32 0, i32 0
  %130 = load i32, i32* %129, align 4
  %131 = load double*, double** %6, align 8
  %132 = load double, double* %131, align 8
  %133 = call i32 (i8*, i32, double, ...) @dprint(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0), i32 %130, double %132)
  store i32 0, i32* %4, align 4
  br label %134

134:                                              ; preds = %113, %102, %27, %18
  %135 = load i32, i32* %4, align 4
  ret i32 %135
}

declare dso_local i32 @dprint(i8*, i32, double, ...) #1

declare dso_local i64 @timespec_diff_us(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
