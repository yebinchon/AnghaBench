; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/util/extr_stat-display.c_print_noise_pct.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/util/extr_stat-display.c_print_noise_pct.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.perf_stat_config = type { i8*, i32, i64 }

@.str = private unnamed_addr constant [9 x i8] c"%s%.2f%%\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"  ( +-%6.2f%% )\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.perf_stat_config*, double, double)* @print_noise_pct to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @print_noise_pct(%struct.perf_stat_config* %0, double %1, double %2) #0 {
  %4 = alloca %struct.perf_stat_config*, align 8
  %5 = alloca double, align 8
  %6 = alloca double, align 8
  %7 = alloca double, align 8
  store %struct.perf_stat_config* %0, %struct.perf_stat_config** %4, align 8
  store double %1, double* %5, align 8
  store double %2, double* %6, align 8
  %8 = load double, double* %5, align 8
  %9 = load double, double* %6, align 8
  %10 = call double @rel_stddev_stats(double %8, double %9)
  store double %10, double* %7, align 8
  %11 = load %struct.perf_stat_config*, %struct.perf_stat_config** %4, align 8
  %12 = getelementptr inbounds %struct.perf_stat_config, %struct.perf_stat_config* %11, i32 0, i32 2
  %13 = load i64, i64* %12, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %24

15:                                               ; preds = %3
  %16 = load %struct.perf_stat_config*, %struct.perf_stat_config** %4, align 8
  %17 = getelementptr inbounds %struct.perf_stat_config, %struct.perf_stat_config* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 8
  %19 = load %struct.perf_stat_config*, %struct.perf_stat_config** %4, align 8
  %20 = getelementptr inbounds %struct.perf_stat_config, %struct.perf_stat_config* %19, i32 0, i32 0
  %21 = load i8*, i8** %20, align 8
  %22 = load double, double* %7, align 8
  %23 = call i32 (i32, i8*, ...) @fprintf(i32 %18, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i8* %21, double %22)
  br label %34

24:                                               ; preds = %3
  %25 = load double, double* %7, align 8
  %26 = fcmp une double %25, 0.000000e+00
  br i1 %26, label %27, label %33

27:                                               ; preds = %24
  %28 = load %struct.perf_stat_config*, %struct.perf_stat_config** %4, align 8
  %29 = getelementptr inbounds %struct.perf_stat_config, %struct.perf_stat_config* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 8
  %31 = load double, double* %7, align 8
  %32 = call i32 (i32, i8*, ...) @fprintf(i32 %30, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), double %31)
  br label %33

33:                                               ; preds = %27, %24
  br label %34

34:                                               ; preds = %33, %15
  ret void
}

declare dso_local double @rel_stddev_stats(double, double) #1

declare dso_local i32 @fprintf(i32, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
