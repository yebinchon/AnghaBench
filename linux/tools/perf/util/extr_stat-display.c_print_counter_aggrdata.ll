; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/util/extr_stat-display.c_print_counter_aggrdata.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/util/extr_stat-display.c_print_counter_aggrdata.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.perf_stat_config = type { %struct.TYPE_2__*, i32* }
%struct.TYPE_2__ = type { i32* }
%struct.evsel = type { double }
%struct.aggr_data = type { i32, double, double, double, i32 }

@aggr_cb = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@rt_stat = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.perf_stat_config*, %struct.evsel*, i32, i8*, i32, i32*)* @print_counter_aggrdata to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @print_counter_aggrdata(%struct.perf_stat_config* %0, %struct.evsel* %1, i32 %2, i8* %3, i32 %4, i32* %5) #0 {
  %7 = alloca %struct.perf_stat_config*, align 8
  %8 = alloca %struct.evsel*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca %struct.aggr_data, align 8
  %14 = alloca i32*, align 8
  %15 = alloca double, align 8
  %16 = alloca double, align 8
  %17 = alloca double, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca double, align 8
  store %struct.perf_stat_config* %0, %struct.perf_stat_config** %7, align 8
  store %struct.evsel* %1, %struct.evsel** %8, align 8
  store i32 %2, i32* %9, align 4
  store i8* %3, i8** %10, align 8
  store i32 %4, i32* %11, align 4
  store i32* %5, i32** %12, align 8
  %21 = load %struct.perf_stat_config*, %struct.perf_stat_config** %7, align 8
  %22 = getelementptr inbounds %struct.perf_stat_config, %struct.perf_stat_config* %21, i32 0, i32 1
  %23 = load i32*, i32** %22, align 8
  store i32* %23, i32** %14, align 8
  %24 = load %struct.perf_stat_config*, %struct.perf_stat_config** %7, align 8
  %25 = getelementptr inbounds %struct.perf_stat_config, %struct.perf_stat_config* %24, i32 0, i32 0
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = load i32*, i32** %27, align 8
  %29 = load i32, i32* %9, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds i32, i32* %28, i64 %30
  %32 = load i32, i32* %31, align 4
  store i32 %32, i32* %18, align 4
  %33 = getelementptr inbounds %struct.aggr_data, %struct.aggr_data* %13, i32 0, i32 0
  store i32 %32, i32* %33, align 8
  %34 = getelementptr inbounds %struct.aggr_data, %struct.aggr_data* %13, i32 0, i32 3
  store double 0.000000e+00, double* %34, align 8
  %35 = getelementptr inbounds %struct.aggr_data, %struct.aggr_data* %13, i32 0, i32 2
  store double 0.000000e+00, double* %35, align 8
  %36 = getelementptr inbounds %struct.aggr_data, %struct.aggr_data* %13, i32 0, i32 1
  store double 0.000000e+00, double* %36, align 8
  %37 = getelementptr inbounds %struct.aggr_data, %struct.aggr_data* %13, i32 0, i32 4
  store i32 0, i32* %37, align 8
  %38 = load %struct.perf_stat_config*, %struct.perf_stat_config** %7, align 8
  %39 = load %struct.evsel*, %struct.evsel** %8, align 8
  %40 = load i32, i32* @aggr_cb, align 4
  %41 = call i32 @collect_data(%struct.perf_stat_config* %38, %struct.evsel* %39, i32 %40, %struct.aggr_data* %13)
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %44, label %43

43:                                               ; preds = %6
  br label %96

44:                                               ; preds = %6
  %45 = getelementptr inbounds %struct.aggr_data, %struct.aggr_data* %13, i32 0, i32 4
  %46 = load i32, i32* %45, align 8
  store i32 %46, i32* %19, align 4
  %47 = getelementptr inbounds %struct.aggr_data, %struct.aggr_data* %13, i32 0, i32 2
  %48 = load double, double* %47, align 8
  store double %48, double* %15, align 8
  %49 = getelementptr inbounds %struct.aggr_data, %struct.aggr_data* %13, i32 0, i32 3
  %50 = load double, double* %49, align 8
  store double %50, double* %16, align 8
  %51 = getelementptr inbounds %struct.aggr_data, %struct.aggr_data* %13, i32 0, i32 1
  %52 = load double, double* %51, align 8
  store double %52, double* %17, align 8
  %53 = load i32*, i32** %12, align 8
  %54 = load i32, i32* %53, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %66

56:                                               ; preds = %44
  %57 = load i32, i32* %11, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %66

59:                                               ; preds = %56
  %60 = load i32*, i32** %12, align 8
  store i32 0, i32* %60, align 4
  %61 = load %struct.perf_stat_config*, %struct.perf_stat_config** %7, align 8
  %62 = load %struct.evsel*, %struct.evsel** %8, align 8
  %63 = load i32, i32* %18, align 4
  %64 = load i32, i32* %19, align 4
  %65 = call i32 @aggr_printout(%struct.perf_stat_config* %61, %struct.evsel* %62, i32 %63, i32 %64)
  br label %66

66:                                               ; preds = %59, %56, %44
  %67 = load i8*, i8** %10, align 8
  %68 = icmp ne i8* %67, null
  br i1 %68, label %69, label %76

69:                                               ; preds = %66
  %70 = load i32, i32* %11, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %76, label %72

72:                                               ; preds = %69
  %73 = load i32*, i32** %14, align 8
  %74 = load i8*, i8** %10, align 8
  %75 = call i32 @fprintf(i32* %73, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* %74)
  br label %76

76:                                               ; preds = %72, %69, %66
  %77 = load double, double* %17, align 8
  %78 = load %struct.evsel*, %struct.evsel** %8, align 8
  %79 = getelementptr inbounds %struct.evsel, %struct.evsel* %78, i32 0, i32 0
  %80 = load double, double* %79, align 8
  %81 = fmul double %77, %80
  store double %81, double* %20, align 8
  %82 = load %struct.perf_stat_config*, %struct.perf_stat_config** %7, align 8
  %83 = load i32, i32* %18, align 4
  %84 = load i32, i32* %19, align 4
  %85 = load %struct.evsel*, %struct.evsel** %8, align 8
  %86 = load double, double* %20, align 8
  %87 = load i8*, i8** %10, align 8
  %88 = load double, double* %16, align 8
  %89 = load double, double* %15, align 8
  %90 = call i32 @printout(%struct.perf_stat_config* %82, i32 %83, i32 %84, %struct.evsel* %85, double %86, i8* %87, double %88, double %89, double 1.000000e+00, i32* @rt_stat)
  %91 = load i32, i32* %11, align 4
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %96, label %93

93:                                               ; preds = %76
  %94 = load i32*, i32** %14, align 8
  %95 = call i32 @fputc(i8 signext 10, i32* %94)
  br label %96

96:                                               ; preds = %43, %93, %76
  ret void
}

declare dso_local i32 @collect_data(%struct.perf_stat_config*, %struct.evsel*, i32, %struct.aggr_data*) #1

declare dso_local i32 @aggr_printout(%struct.perf_stat_config*, %struct.evsel*, i32, i32) #1

declare dso_local i32 @fprintf(i32*, i8*, i8*) #1

declare dso_local i32 @printout(%struct.perf_stat_config*, i32, i32, %struct.evsel*, double, i8*, double, double, double, i32*) #1

declare dso_local i32 @fputc(i8 signext, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
