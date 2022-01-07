; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/util/extr_stat-shadow.c_print_ll_cache_misses.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/util/extr_stat-shadow.c_print_ll_cache_misses.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.perf_stat_config = type { i32 }
%struct.evsel = type { i32 }
%struct.perf_stat_output_ctx = type { i32, i32 (%struct.perf_stat_config.0*, i32, i8*, i8*, i8*, double)* }
%struct.perf_stat_config.0 = type opaque
%struct.runtime_stat = type { i32 }

@STAT_LL_CACHE = common dso_local global i32 0, align 4
@GRC_CACHE_MISSES = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"%7.2f%%\00", align 1
@.str.1 = private unnamed_addr constant [21 x i8] c"of all LL-cache hits\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.perf_stat_config*, i32, %struct.evsel*, double, %struct.perf_stat_output_ctx*, %struct.runtime_stat*)* @print_ll_cache_misses to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @print_ll_cache_misses(%struct.perf_stat_config* %0, i32 %1, %struct.evsel* %2, double %3, %struct.perf_stat_output_ctx* %4, %struct.runtime_stat* %5) #0 {
  %7 = alloca %struct.perf_stat_config*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.evsel*, align 8
  %10 = alloca double, align 8
  %11 = alloca %struct.perf_stat_output_ctx*, align 8
  %12 = alloca %struct.runtime_stat*, align 8
  %13 = alloca double, align 8
  %14 = alloca double, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i32, align 4
  store %struct.perf_stat_config* %0, %struct.perf_stat_config** %7, align 8
  store i32 %1, i32* %8, align 4
  store %struct.evsel* %2, %struct.evsel** %9, align 8
  store double %3, double* %10, align 8
  store %struct.perf_stat_output_ctx* %4, %struct.perf_stat_output_ctx** %11, align 8
  store %struct.runtime_stat* %5, %struct.runtime_stat** %12, align 8
  store double 0.000000e+00, double* %14, align 8
  %17 = load %struct.evsel*, %struct.evsel** %9, align 8
  %18 = call i32 @evsel_context(%struct.evsel* %17)
  store i32 %18, i32* %16, align 4
  %19 = load %struct.runtime_stat*, %struct.runtime_stat** %12, align 8
  %20 = load i32, i32* @STAT_LL_CACHE, align 4
  %21 = load i32, i32* %16, align 4
  %22 = load i32, i32* %8, align 4
  %23 = call double @runtime_stat_avg(%struct.runtime_stat* %19, i32 %20, i32 %21, i32 %22)
  store double %23, double* %13, align 8
  %24 = load double, double* %13, align 8
  %25 = fcmp une double %24, 0.000000e+00
  br i1 %25, label %26, label %31

26:                                               ; preds = %6
  %27 = load double, double* %10, align 8
  %28 = load double, double* %13, align 8
  %29 = fdiv double %27, %28
  %30 = fmul double %29, 1.000000e+02
  store double %30, double* %14, align 8
  br label %31

31:                                               ; preds = %26, %6
  %32 = load i32, i32* @GRC_CACHE_MISSES, align 4
  %33 = load double, double* %14, align 8
  %34 = call i8* @get_ratio_color(i32 %32, double %33)
  store i8* %34, i8** %15, align 8
  %35 = load %struct.perf_stat_output_ctx*, %struct.perf_stat_output_ctx** %11, align 8
  %36 = getelementptr inbounds %struct.perf_stat_output_ctx, %struct.perf_stat_output_ctx* %35, i32 0, i32 1
  %37 = load i32 (%struct.perf_stat_config.0*, i32, i8*, i8*, i8*, double)*, i32 (%struct.perf_stat_config.0*, i32, i8*, i8*, i8*, double)** %36, align 8
  %38 = load %struct.perf_stat_config*, %struct.perf_stat_config** %7, align 8
  %39 = bitcast %struct.perf_stat_config* %38 to %struct.perf_stat_config.0*
  %40 = load %struct.perf_stat_output_ctx*, %struct.perf_stat_output_ctx** %11, align 8
  %41 = getelementptr inbounds %struct.perf_stat_output_ctx, %struct.perf_stat_output_ctx* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = load i8*, i8** %15, align 8
  %44 = load double, double* %14, align 8
  %45 = call i32 %37(%struct.perf_stat_config.0* %39, i32 %42, i8* %43, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), double %44)
  ret void
}

declare dso_local i32 @evsel_context(%struct.evsel*) #1

declare dso_local double @runtime_stat_avg(%struct.runtime_stat*, i32, i32, i32) #1

declare dso_local i8* @get_ratio_color(i32, double) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
