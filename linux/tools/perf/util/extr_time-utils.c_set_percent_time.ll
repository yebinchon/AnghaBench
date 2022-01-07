; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/util/extr_time-utils.c_set_percent_time.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/util/extr_time-utils.c_set_percent_time.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.perf_time_interval = type { double, double }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.perf_time_interval*, double, double, double, double)* @set_percent_time to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @set_percent_time(%struct.perf_time_interval* %0, double %1, double %2, double %3, double %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.perf_time_interval*, align 8
  %8 = alloca double, align 8
  %9 = alloca double, align 8
  %10 = alloca double, align 8
  %11 = alloca double, align 8
  %12 = alloca double, align 8
  store %struct.perf_time_interval* %0, %struct.perf_time_interval** %7, align 8
  store double %1, double* %8, align 8
  store double %2, double* %9, align 8
  store double %3, double* %10, align 8
  store double %4, double* %11, align 8
  %13 = load double, double* %11, align 8
  %14 = load double, double* %10, align 8
  %15 = fsub double %13, %14
  store double %15, double* %12, align 8
  %16 = load double, double* %8, align 8
  %17 = fcmp olt double %16, 0.000000e+00
  br i1 %17, label %27, label %18

18:                                               ; preds = %5
  %19 = load double, double* %8, align 8
  %20 = fcmp ogt double %19, 1.000000e+00
  br i1 %20, label %27, label %21

21:                                               ; preds = %18
  %22 = load double, double* %9, align 8
  %23 = fcmp olt double %22, 0.000000e+00
  br i1 %23, label %27, label %24

24:                                               ; preds = %21
  %25 = load double, double* %9, align 8
  %26 = fcmp ogt double %25, 1.000000e+00
  br i1 %26, label %27, label %28

27:                                               ; preds = %24, %21, %18, %5
  store i32 -1, i32* %6, align 4
  br label %64

28:                                               ; preds = %24
  %29 = load double, double* %10, align 8
  %30 = load double, double* %8, align 8
  %31 = load double, double* %12, align 8
  %32 = fmul double %30, %31
  %33 = call double @llvm.round.f64(double %32)
  %34 = fadd double %29, %33
  %35 = load %struct.perf_time_interval*, %struct.perf_time_interval** %7, align 8
  %36 = getelementptr inbounds %struct.perf_time_interval, %struct.perf_time_interval* %35, i32 0, i32 0
  store double %34, double* %36, align 8
  %37 = load double, double* %10, align 8
  %38 = load double, double* %9, align 8
  %39 = load double, double* %12, align 8
  %40 = fmul double %38, %39
  %41 = call double @llvm.round.f64(double %40)
  %42 = fadd double %37, %41
  %43 = load %struct.perf_time_interval*, %struct.perf_time_interval** %7, align 8
  %44 = getelementptr inbounds %struct.perf_time_interval, %struct.perf_time_interval* %43, i32 0, i32 1
  store double %42, double* %44, align 8
  %45 = load %struct.perf_time_interval*, %struct.perf_time_interval** %7, align 8
  %46 = getelementptr inbounds %struct.perf_time_interval, %struct.perf_time_interval* %45, i32 0, i32 1
  %47 = load double, double* %46, align 8
  %48 = load %struct.perf_time_interval*, %struct.perf_time_interval** %7, align 8
  %49 = getelementptr inbounds %struct.perf_time_interval, %struct.perf_time_interval* %48, i32 0, i32 0
  %50 = load double, double* %49, align 8
  %51 = fcmp ogt double %47, %50
  br i1 %51, label %52, label %63

52:                                               ; preds = %28
  %53 = load %struct.perf_time_interval*, %struct.perf_time_interval** %7, align 8
  %54 = getelementptr inbounds %struct.perf_time_interval, %struct.perf_time_interval* %53, i32 0, i32 1
  %55 = load double, double* %54, align 8
  %56 = load double, double* %11, align 8
  %57 = fcmp une double %55, %56
  br i1 %57, label %58, label %63

58:                                               ; preds = %52
  %59 = load %struct.perf_time_interval*, %struct.perf_time_interval** %7, align 8
  %60 = getelementptr inbounds %struct.perf_time_interval, %struct.perf_time_interval* %59, i32 0, i32 1
  %61 = load double, double* %60, align 8
  %62 = fsub double %61, 1.000000e+00
  store double %62, double* %60, align 8
  br label %63

63:                                               ; preds = %58, %52, %28
  store i32 0, i32* %6, align 4
  br label %64

64:                                               ; preds = %63, %27
  %65 = load i32, i32* %6, align 4
  ret i32 %65
}

; Function Attrs: nounwind readnone speculatable willreturn
declare double @llvm.round.f64(double) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
