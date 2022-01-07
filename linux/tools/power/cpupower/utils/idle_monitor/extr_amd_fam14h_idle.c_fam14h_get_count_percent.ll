; ModuleID = '/home/carl/AnghaBench/linux/tools/power/cpupower/utils/idle_monitor/extr_amd_fam14h_idle.c_fam14h_get_count_percent.c'
source_filename = "/home/carl/AnghaBench/linux/tools/power/cpupower/utils/idle_monitor/extr_amd_fam14h_idle.c_fam14h_get_count_percent.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@AMD_FAM14H_STATE_NUM = common dso_local global i32 0, align 4
@current_count = common dso_local global i64** null, align 8
@previous_count = common dso_local global i64** null, align 8
@timediff = common dso_local global double 0.000000e+00, align 8
@.str = private unnamed_addr constant [50 x i8] c"Timediff: %llu - res~: %lu us - percent: %.2f %%\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, double*, i32)* @fam14h_get_count_percent to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fam14h_get_count_percent(i32 %0, double* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca double*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  store i32 %0, i32* %5, align 4
  store double* %1, double** %6, align 8
  store i32 %2, i32* %7, align 4
  %9 = load i32, i32* %5, align 4
  %10 = load i32, i32* @AMD_FAM14H_STATE_NUM, align 4
  %11 = icmp uge i32 %9, %10
  br i1 %11, label %12, label %13

12:                                               ; preds = %3
  store i32 -1, i32* %4, align 4
  br label %53

13:                                               ; preds = %3
  %14 = load i64**, i64*** @current_count, align 8
  %15 = load i32, i32* %5, align 4
  %16 = zext i32 %15 to i64
  %17 = getelementptr inbounds i64*, i64** %14, i64 %16
  %18 = load i64*, i64** %17, align 8
  %19 = load i32, i32* %7, align 4
  %20 = zext i32 %19 to i64
  %21 = getelementptr inbounds i64, i64* %18, i64 %20
  %22 = load i64, i64* %21, align 8
  %23 = load i64**, i64*** @previous_count, align 8
  %24 = load i32, i32* %5, align 4
  %25 = zext i32 %24 to i64
  %26 = getelementptr inbounds i64*, i64** %23, i64 %25
  %27 = load i64*, i64** %26, align 8
  %28 = load i32, i32* %7, align 4
  %29 = zext i32 %28 to i64
  %30 = getelementptr inbounds i64, i64* %27, i64 %29
  %31 = load i64, i64* %30, align 8
  %32 = sub i64 %22, %31
  store i64 %32, i64* %8, align 8
  %33 = load double, double* @timediff, align 8
  %34 = fcmp oeq double %33, 0.000000e+00
  br i1 %34, label %35, label %37

35:                                               ; preds = %13
  %36 = load double*, double** %6, align 8
  store double 0.000000e+00, double* %36, align 8
  br label %45

37:                                               ; preds = %13
  %38 = load i64, i64* %8, align 8
  %39 = uitofp i64 %38 to double
  %40 = fmul double 1.000000e+02, %39
  %41 = load double, double* @timediff, align 8
  %42 = fdiv double %40, %41
  %43 = fdiv double %42, 1.250000e+01
  %44 = load double*, double** %6, align 8
  store double %43, double* %44, align 8
  br label %45

45:                                               ; preds = %37, %35
  %46 = load double, double* @timediff, align 8
  %47 = load i64, i64* %8, align 8
  %48 = mul i64 %47, 10
  %49 = udiv i64 %48, 125
  %50 = load double*, double** %6, align 8
  %51 = load double, double* %50, align 8
  %52 = call i32 @dprint(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str, i64 0, i64 0), double %46, i64 %49, double %51)
  store i32 0, i32* %4, align 4
  br label %53

53:                                               ; preds = %45, %12
  %54 = load i32, i32* %4, align 4
  ret i32 %54
}

declare dso_local i32 @dprint(i8*, double, i64, double) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
