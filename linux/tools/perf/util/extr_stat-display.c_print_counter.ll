; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/util/extr_stat-display.c_print_counter.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/util/extr_stat-display.c_print_counter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.perf_stat_config = type { i32* }
%struct.evsel = type { double }
%struct.aggr_data = type { i32, double, double, double }

@counter_cb = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@rt_stat = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.perf_stat_config*, %struct.evsel*, i8*)* @print_counter to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @print_counter(%struct.perf_stat_config* %0, %struct.evsel* %1, i8* %2) #0 {
  %4 = alloca %struct.perf_stat_config*, align 8
  %5 = alloca %struct.evsel*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca double, align 8
  %9 = alloca double, align 8
  %10 = alloca double, align 8
  %11 = alloca double, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.aggr_data, align 8
  store %struct.perf_stat_config* %0, %struct.perf_stat_config** %4, align 8
  store %struct.evsel* %1, %struct.evsel** %5, align 8
  store i8* %2, i8** %6, align 8
  %14 = load %struct.perf_stat_config*, %struct.perf_stat_config** %4, align 8
  %15 = getelementptr inbounds %struct.perf_stat_config, %struct.perf_stat_config* %14, i32 0, i32 0
  %16 = load i32*, i32** %15, align 8
  store i32* %16, i32** %7, align 8
  store i32 0, i32* %12, align 4
  br label %17

17:                                               ; preds = %61, %3
  %18 = load i32, i32* %12, align 4
  %19 = load %struct.evsel*, %struct.evsel** %5, align 8
  %20 = call i32 @perf_evsel__nr_cpus(%struct.evsel* %19)
  %21 = icmp slt i32 %18, %20
  br i1 %21, label %22, label %64

22:                                               ; preds = %17
  %23 = bitcast %struct.aggr_data* %13 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %23, i8 0, i64 32, i1 false)
  %24 = getelementptr inbounds %struct.aggr_data, %struct.aggr_data* %13, i32 0, i32 0
  %25 = load i32, i32* %12, align 4
  store i32 %25, i32* %24, align 8
  %26 = load %struct.perf_stat_config*, %struct.perf_stat_config** %4, align 8
  %27 = load %struct.evsel*, %struct.evsel** %5, align 8
  %28 = load i32, i32* @counter_cb, align 4
  %29 = call i32 @collect_data(%struct.perf_stat_config* %26, %struct.evsel* %27, i32 %28, %struct.aggr_data* %13)
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %32, label %31

31:                                               ; preds = %22
  br label %64

32:                                               ; preds = %22
  %33 = getelementptr inbounds %struct.aggr_data, %struct.aggr_data* %13, i32 0, i32 1
  %34 = load double, double* %33, align 8
  store double %34, double* %10, align 8
  %35 = getelementptr inbounds %struct.aggr_data, %struct.aggr_data* %13, i32 0, i32 2
  %36 = load double, double* %35, align 8
  store double %36, double* %8, align 8
  %37 = getelementptr inbounds %struct.aggr_data, %struct.aggr_data* %13, i32 0, i32 3
  %38 = load double, double* %37, align 8
  store double %38, double* %9, align 8
  %39 = load i8*, i8** %6, align 8
  %40 = icmp ne i8* %39, null
  br i1 %40, label %41, label %45

41:                                               ; preds = %32
  %42 = load i32*, i32** %7, align 8
  %43 = load i8*, i8** %6, align 8
  %44 = call i32 @fprintf(i32* %42, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* %43)
  br label %45

45:                                               ; preds = %41, %32
  %46 = load double, double* %10, align 8
  %47 = load %struct.evsel*, %struct.evsel** %5, align 8
  %48 = getelementptr inbounds %struct.evsel, %struct.evsel* %47, i32 0, i32 0
  %49 = load double, double* %48, align 8
  %50 = fmul double %46, %49
  store double %50, double* %11, align 8
  %51 = load %struct.perf_stat_config*, %struct.perf_stat_config** %4, align 8
  %52 = load i32, i32* %12, align 4
  %53 = load %struct.evsel*, %struct.evsel** %5, align 8
  %54 = load double, double* %11, align 8
  %55 = load i8*, i8** %6, align 8
  %56 = load double, double* %9, align 8
  %57 = load double, double* %8, align 8
  %58 = call i32 @printout(%struct.perf_stat_config* %51, i32 %52, i32 0, %struct.evsel* %53, double %54, i8* %55, double %56, double %57, double 1.000000e+00, i32* @rt_stat)
  %59 = load i32*, i32** %7, align 8
  %60 = call i32 @fputc(i8 signext 10, i32* %59)
  br label %61

61:                                               ; preds = %45
  %62 = load i32, i32* %12, align 4
  %63 = add nsw i32 %62, 1
  store i32 %63, i32* %12, align 4
  br label %17

64:                                               ; preds = %31, %17
  ret void
}

declare dso_local i32 @perf_evsel__nr_cpus(%struct.evsel*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i32 @collect_data(%struct.perf_stat_config*, %struct.evsel*, i32, %struct.aggr_data*) #1

declare dso_local i32 @fprintf(i32*, i8*, i8*) #1

declare dso_local i32 @printout(%struct.perf_stat_config*, i32, i32, %struct.evsel*, double, i8*, double, double, double, i32*) #1

declare dso_local i32 @fputc(i8 signext, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
