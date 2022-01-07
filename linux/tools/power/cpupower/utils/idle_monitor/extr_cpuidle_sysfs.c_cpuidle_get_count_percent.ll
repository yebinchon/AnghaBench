; ModuleID = '/home/carl/AnghaBench/linux/tools/power/cpupower/utils/idle_monitor/extr_cpuidle_sysfs.c_cpuidle_get_count_percent.c'
source_filename = "/home/carl/AnghaBench/linux/tools/power/cpupower/utils/idle_monitor/extr_cpuidle_sysfs.c_cpuidle_get_count_percent.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }

@current_count = common dso_local global i64** null, align 8
@previous_count = common dso_local global i64** null, align 8
@.str = private unnamed_addr constant [37 x i8] c"%s: - diff: %llu - percent: %f (%u)\0A\00", align 1
@cpuidle_cstates = common dso_local global %struct.TYPE_2__* null, align 8
@timediff = common dso_local global double 0.000000e+00, align 8
@.str.1 = private unnamed_addr constant [59 x i8] c"%s: - timediff: %llu - statediff: %llu - percent: %f (%u)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, double*, i32)* @cpuidle_get_count_percent to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cpuidle_get_count_percent(i32 %0, double* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca double*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  store i32 %0, i32* %4, align 4
  store double* %1, double** %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = load i64**, i64*** @current_count, align 8
  %9 = load i32, i32* %6, align 4
  %10 = zext i32 %9 to i64
  %11 = getelementptr inbounds i64*, i64** %8, i64 %10
  %12 = load i64*, i64** %11, align 8
  %13 = load i32, i32* %4, align 4
  %14 = zext i32 %13 to i64
  %15 = getelementptr inbounds i64, i64* %12, i64 %14
  %16 = load i64, i64* %15, align 8
  %17 = load i64**, i64*** @previous_count, align 8
  %18 = load i32, i32* %6, align 4
  %19 = zext i32 %18 to i64
  %20 = getelementptr inbounds i64*, i64** %17, i64 %19
  %21 = load i64*, i64** %20, align 8
  %22 = load i32, i32* %4, align 4
  %23 = zext i32 %22 to i64
  %24 = getelementptr inbounds i64, i64* %21, i64 %23
  %25 = load i64, i64* %24, align 8
  %26 = sub i64 %16, %25
  store i64 %26, i64* %7, align 8
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** @cpuidle_cstates, align 8
  %28 = load i32, i32* %4, align 4
  %29 = zext i32 %28 to i64
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i64 %29
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load double, double* @timediff, align 8
  %34 = load double*, double** %5, align 8
  %35 = load double, double* %34, align 8
  %36 = fptoui double %35 to i64
  %37 = load i32, i32* %6, align 4
  %38 = uitofp i32 %37 to double
  %39 = call i32 (i8*, i32, double, i64, double, ...) @dprint(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i32 %32, double %33, i64 %36, double %38)
  %40 = load double, double* @timediff, align 8
  %41 = fcmp oeq double %40, 0.000000e+00
  br i1 %41, label %42, label %44

42:                                               ; preds = %3
  %43 = load double*, double** %5, align 8
  store double 0.000000e+00, double* %43, align 8
  br label %51

44:                                               ; preds = %3
  %45 = load i64, i64* %7, align 8
  %46 = uitofp i64 %45 to double
  %47 = fmul double 1.000000e+02, %46
  %48 = load double, double* @timediff, align 8
  %49 = fdiv double %47, %48
  %50 = load double*, double** %5, align 8
  store double %49, double* %50, align 8
  br label %51

51:                                               ; preds = %44, %42
  %52 = load %struct.TYPE_2__*, %struct.TYPE_2__** @cpuidle_cstates, align 8
  %53 = load i32, i32* %4, align 4
  %54 = zext i32 %53 to i64
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i64 %54
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = load double, double* @timediff, align 8
  %59 = load i64, i64* %7, align 8
  %60 = load double*, double** %5, align 8
  %61 = load double, double* %60, align 8
  %62 = load i32, i32* %6, align 4
  %63 = call i32 (i8*, i32, double, i64, double, ...) @dprint(i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.1, i64 0, i64 0), i32 %57, double %58, i64 %59, double %61, i32 %62)
  ret i32 0
}

declare dso_local i32 @dprint(i8*, i32, double, i64, double, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
