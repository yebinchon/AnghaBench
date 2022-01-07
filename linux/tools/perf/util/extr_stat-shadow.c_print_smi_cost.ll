; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/util/extr_stat-shadow.c_print_smi_cost.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/util/extr_stat-shadow.c_print_smi_cost.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.perf_stat_config = type { i32 }
%struct.evsel = type { i32 }
%struct.perf_stat_output_ctx = type { i32, i32 (%struct.perf_stat_config.0*, i32, i8*, i8*, i8*, double)* }
%struct.perf_stat_config.0 = type opaque
%struct.runtime_stat = type { i32 }

@STAT_SMI_NUM = common dso_local global i32 0, align 4
@STAT_APERF = common dso_local global i32 0, align 4
@STAT_CYCLES = common dso_local global i32 0, align 4
@PERF_COLOR_RED = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [8 x i8] c"%8.1f%%\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"SMI cycles%\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"%4.0f\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"SMI#\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.perf_stat_config*, i32, %struct.evsel*, %struct.perf_stat_output_ctx*, %struct.runtime_stat*)* @print_smi_cost to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @print_smi_cost(%struct.perf_stat_config* %0, i32 %1, %struct.evsel* %2, %struct.perf_stat_output_ctx* %3, %struct.runtime_stat* %4) #0 {
  %6 = alloca %struct.perf_stat_config*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.evsel*, align 8
  %9 = alloca %struct.perf_stat_output_ctx*, align 8
  %10 = alloca %struct.runtime_stat*, align 8
  %11 = alloca double, align 8
  %12 = alloca double, align 8
  %13 = alloca double, align 8
  %14 = alloca double, align 8
  %15 = alloca i32, align 4
  %16 = alloca i8*, align 8
  store %struct.perf_stat_config* %0, %struct.perf_stat_config** %6, align 8
  store i32 %1, i32* %7, align 4
  store %struct.evsel* %2, %struct.evsel** %8, align 8
  store %struct.perf_stat_output_ctx* %3, %struct.perf_stat_output_ctx** %9, align 8
  store %struct.runtime_stat* %4, %struct.runtime_stat** %10, align 8
  store double 0.000000e+00, double* %14, align 8
  %17 = load %struct.evsel*, %struct.evsel** %8, align 8
  %18 = call i32 @evsel_context(%struct.evsel* %17)
  store i32 %18, i32* %15, align 4
  store i8* null, i8** %16, align 8
  %19 = load %struct.runtime_stat*, %struct.runtime_stat** %10, align 8
  %20 = load i32, i32* @STAT_SMI_NUM, align 4
  %21 = load i32, i32* %15, align 4
  %22 = load i32, i32* %7, align 4
  %23 = call double @runtime_stat_avg(%struct.runtime_stat* %19, i32 %20, i32 %21, i32 %22)
  store double %23, double* %11, align 8
  %24 = load %struct.runtime_stat*, %struct.runtime_stat** %10, align 8
  %25 = load i32, i32* @STAT_APERF, align 4
  %26 = load i32, i32* %15, align 4
  %27 = load i32, i32* %7, align 4
  %28 = call double @runtime_stat_avg(%struct.runtime_stat* %24, i32 %25, i32 %26, i32 %27)
  store double %28, double* %12, align 8
  %29 = load %struct.runtime_stat*, %struct.runtime_stat** %10, align 8
  %30 = load i32, i32* @STAT_CYCLES, align 4
  %31 = load i32, i32* %15, align 4
  %32 = load i32, i32* %7, align 4
  %33 = call double @runtime_stat_avg(%struct.runtime_stat* %29, i32 %30, i32 %31, i32 %32)
  store double %33, double* %13, align 8
  %34 = load double, double* %13, align 8
  %35 = fcmp oeq double %34, 0.000000e+00
  br i1 %35, label %39, label %36

36:                                               ; preds = %5
  %37 = load double, double* %12, align 8
  %38 = fcmp oeq double %37, 0.000000e+00
  br i1 %38, label %39, label %40

39:                                               ; preds = %36, %5
  br label %77

40:                                               ; preds = %36
  %41 = load double, double* %11, align 8
  %42 = fcmp une double %41, 0.000000e+00
  br i1 %42, label %43, label %50

43:                                               ; preds = %40
  %44 = load double, double* %12, align 8
  %45 = load double, double* %13, align 8
  %46 = fsub double %44, %45
  %47 = load double, double* %12, align 8
  %48 = fdiv double %46, %47
  %49 = fmul double %48, 1.000000e+02
  store double %49, double* %14, align 8
  br label %50

50:                                               ; preds = %43, %40
  %51 = load double, double* %14, align 8
  %52 = fcmp ogt double %51, 1.000000e+01
  br i1 %52, label %53, label %55

53:                                               ; preds = %50
  %54 = load i8*, i8** @PERF_COLOR_RED, align 8
  store i8* %54, i8** %16, align 8
  br label %55

55:                                               ; preds = %53, %50
  %56 = load %struct.perf_stat_output_ctx*, %struct.perf_stat_output_ctx** %9, align 8
  %57 = getelementptr inbounds %struct.perf_stat_output_ctx, %struct.perf_stat_output_ctx* %56, i32 0, i32 1
  %58 = load i32 (%struct.perf_stat_config.0*, i32, i8*, i8*, i8*, double)*, i32 (%struct.perf_stat_config.0*, i32, i8*, i8*, i8*, double)** %57, align 8
  %59 = load %struct.perf_stat_config*, %struct.perf_stat_config** %6, align 8
  %60 = bitcast %struct.perf_stat_config* %59 to %struct.perf_stat_config.0*
  %61 = load %struct.perf_stat_output_ctx*, %struct.perf_stat_output_ctx** %9, align 8
  %62 = getelementptr inbounds %struct.perf_stat_output_ctx, %struct.perf_stat_output_ctx* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = load i8*, i8** %16, align 8
  %65 = load double, double* %14, align 8
  %66 = call i32 %58(%struct.perf_stat_config.0* %60, i32 %63, i8* %64, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), double %65)
  %67 = load %struct.perf_stat_output_ctx*, %struct.perf_stat_output_ctx** %9, align 8
  %68 = getelementptr inbounds %struct.perf_stat_output_ctx, %struct.perf_stat_output_ctx* %67, i32 0, i32 1
  %69 = load i32 (%struct.perf_stat_config.0*, i32, i8*, i8*, i8*, double)*, i32 (%struct.perf_stat_config.0*, i32, i8*, i8*, i8*, double)** %68, align 8
  %70 = load %struct.perf_stat_config*, %struct.perf_stat_config** %6, align 8
  %71 = bitcast %struct.perf_stat_config* %70 to %struct.perf_stat_config.0*
  %72 = load %struct.perf_stat_output_ctx*, %struct.perf_stat_output_ctx** %9, align 8
  %73 = getelementptr inbounds %struct.perf_stat_output_ctx, %struct.perf_stat_output_ctx* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = load double, double* %11, align 8
  %76 = call i32 %69(%struct.perf_stat_config.0* %71, i32 %74, i8* null, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), double %75)
  br label %77

77:                                               ; preds = %55, %39
  ret void
}

declare dso_local i32 @evsel_context(%struct.evsel*) #1

declare dso_local double @runtime_stat_avg(%struct.runtime_stat*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
