; ModuleID = '/home/carl/AnghaBench/linux/tools/power/cpupower/utils/idle_monitor/extr_nhm_idle.c_nhm_get_count_percent.c'
source_filename = "/home/carl/AnghaBench/linux/tools/power/cpupower/utils/idle_monitor/extr_nhm_idle.c_nhm_get_count_percent.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }

@is_valid = common dso_local global i32* null, align 8
@current_count = common dso_local global double** null, align 8
@previous_count = common dso_local global double** null, align 8
@tsc_at_measure_end = common dso_local global double 0.000000e+00, align 8
@tsc_at_measure_start = common dso_local global double 0.000000e+00, align 8
@.str = private unnamed_addr constant [43 x i8] c"%s: previous: %llu - current: %llu - (%u)\0A\00", align 1
@nhm_cstates = common dso_local global %struct.TYPE_2__* null, align 8
@.str.1 = private unnamed_addr constant [60 x i8] c"%s: tsc_diff: %llu - count_diff: %llu - percent: %2.f (%u)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, double*, i32)* @nhm_get_count_percent to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nhm_get_count_percent(i32 %0, double* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca double*, align 8
  %7 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store double* %1, double** %6, align 8
  store i32 %2, i32* %7, align 4
  %8 = load double*, double** %6, align 8
  store double 0.000000e+00, double* %8, align 8
  %9 = load i32*, i32** @is_valid, align 8
  %10 = load i32, i32* %7, align 4
  %11 = zext i32 %10 to i64
  %12 = getelementptr inbounds i32, i32* %9, i64 %11
  %13 = load i32, i32* %12, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %16, label %15

15:                                               ; preds = %3
  store i32 -1, i32* %4, align 4
  br label %103

16:                                               ; preds = %3
  %17 = load double**, double*** @current_count, align 8
  %18 = load i32, i32* %5, align 4
  %19 = zext i32 %18 to i64
  %20 = getelementptr inbounds double*, double** %17, i64 %19
  %21 = load double*, double** %20, align 8
  %22 = load i32, i32* %7, align 4
  %23 = zext i32 %22 to i64
  %24 = getelementptr inbounds double, double* %21, i64 %23
  %25 = load double, double* %24, align 8
  %26 = load double**, double*** @previous_count, align 8
  %27 = load i32, i32* %5, align 4
  %28 = zext i32 %27 to i64
  %29 = getelementptr inbounds double*, double** %26, i64 %28
  %30 = load double*, double** %29, align 8
  %31 = load i32, i32* %7, align 4
  %32 = zext i32 %31 to i64
  %33 = getelementptr inbounds double, double* %30, i64 %32
  %34 = load double, double* %33, align 8
  %35 = fsub double %25, %34
  %36 = fmul double 1.000000e+02, %35
  %37 = load double, double* @tsc_at_measure_end, align 8
  %38 = load double, double* @tsc_at_measure_start, align 8
  %39 = fsub double %37, %38
  %40 = fdiv double %36, %39
  %41 = load double*, double** %6, align 8
  store double %40, double* %41, align 8
  %42 = load %struct.TYPE_2__*, %struct.TYPE_2__** @nhm_cstates, align 8
  %43 = load i32, i32* %5, align 4
  %44 = zext i32 %43 to i64
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i64 %44
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = load double**, double*** @previous_count, align 8
  %49 = load i32, i32* %5, align 4
  %50 = zext i32 %49 to i64
  %51 = getelementptr inbounds double*, double** %48, i64 %50
  %52 = load double*, double** %51, align 8
  %53 = load i32, i32* %7, align 4
  %54 = zext i32 %53 to i64
  %55 = getelementptr inbounds double, double* %52, i64 %54
  %56 = load double, double* %55, align 8
  %57 = load double**, double*** @current_count, align 8
  %58 = load i32, i32* %5, align 4
  %59 = zext i32 %58 to i64
  %60 = getelementptr inbounds double*, double** %57, i64 %59
  %61 = load double*, double** %60, align 8
  %62 = load i32, i32* %7, align 4
  %63 = zext i32 %62 to i64
  %64 = getelementptr inbounds double, double* %61, i64 %63
  %65 = load double, double* %64, align 8
  %66 = load i32, i32* %7, align 4
  %67 = uitofp i32 %66 to double
  %68 = call i32 (i8*, i32, double, double, double, ...) @dprint(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0), i32 %47, double %56, double %65, double %67)
  %69 = load %struct.TYPE_2__*, %struct.TYPE_2__** @nhm_cstates, align 8
  %70 = load i32, i32* %5, align 4
  %71 = zext i32 %70 to i64
  %72 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %69, i64 %71
  %73 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = load double, double* @tsc_at_measure_end, align 8
  %76 = fptoui double %75 to i64
  %77 = uitofp i64 %76 to double
  %78 = load double, double* @tsc_at_measure_start, align 8
  %79 = fsub double %77, %78
  %80 = load double**, double*** @current_count, align 8
  %81 = load i32, i32* %5, align 4
  %82 = zext i32 %81 to i64
  %83 = getelementptr inbounds double*, double** %80, i64 %82
  %84 = load double*, double** %83, align 8
  %85 = load i32, i32* %7, align 4
  %86 = zext i32 %85 to i64
  %87 = getelementptr inbounds double, double* %84, i64 %86
  %88 = load double, double* %87, align 8
  %89 = load double**, double*** @previous_count, align 8
  %90 = load i32, i32* %5, align 4
  %91 = zext i32 %90 to i64
  %92 = getelementptr inbounds double*, double** %89, i64 %91
  %93 = load double*, double** %92, align 8
  %94 = load i32, i32* %7, align 4
  %95 = zext i32 %94 to i64
  %96 = getelementptr inbounds double, double* %93, i64 %95
  %97 = load double, double* %96, align 8
  %98 = fsub double %88, %97
  %99 = load double*, double** %6, align 8
  %100 = load double, double* %99, align 8
  %101 = load i32, i32* %7, align 4
  %102 = call i32 (i8*, i32, double, double, double, ...) @dprint(i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.1, i64 0, i64 0), i32 %74, double %79, double %98, double %100, i32 %101)
  store i32 0, i32* %4, align 4
  br label %103

103:                                              ; preds = %16, %15
  %104 = load i32, i32* %4, align 4
  ret i32 %104
}

declare dso_local i32 @dprint(i8*, i32, double, double, double, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
