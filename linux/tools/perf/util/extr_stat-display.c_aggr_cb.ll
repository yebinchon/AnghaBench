; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/util/extr_stat-display.c_aggr_cb.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/util/extr_stat-display.c_aggr_cb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.perf_stat_config = type { i32 (%struct.perf_stat_config*, i32, i32)* }
%struct.evsel = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.aggr_data = type { i32, i64, i64, i32, i32 }
%struct.perf_counts_values = type { i64, i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.perf_stat_config*, %struct.evsel*, i8*, i32)* @aggr_cb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @aggr_cb(%struct.perf_stat_config* %0, %struct.evsel* %1, i8* %2, i32 %3) #0 {
  %5 = alloca %struct.perf_stat_config*, align 8
  %6 = alloca %struct.evsel*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.aggr_data*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.perf_counts_values*, align 8
  store %struct.perf_stat_config* %0, %struct.perf_stat_config** %5, align 8
  store %struct.evsel* %1, %struct.evsel** %6, align 8
  store i8* %2, i8** %7, align 8
  store i32 %3, i32* %8, align 4
  %13 = load i8*, i8** %7, align 8
  %14 = bitcast i8* %13 to %struct.aggr_data*
  store %struct.aggr_data* %14, %struct.aggr_data** %9, align 8
  store i32 0, i32* %10, align 4
  br label %15

15:                                               ; preds = %94, %4
  %16 = load i32, i32* %10, align 4
  %17 = load %struct.evsel*, %struct.evsel** %6, align 8
  %18 = call i32 @perf_evsel__nr_cpus(%struct.evsel* %17)
  %19 = icmp slt i32 %16, %18
  br i1 %19, label %20, label %97

20:                                               ; preds = %15
  %21 = load %struct.perf_stat_config*, %struct.perf_stat_config** %5, align 8
  %22 = getelementptr inbounds %struct.perf_stat_config, %struct.perf_stat_config* %21, i32 0, i32 0
  %23 = load i32 (%struct.perf_stat_config*, i32, i32)*, i32 (%struct.perf_stat_config*, i32, i32)** %22, align 8
  %24 = load %struct.perf_stat_config*, %struct.perf_stat_config** %5, align 8
  %25 = load %struct.evsel*, %struct.evsel** %6, align 8
  %26 = call i32 @evsel__cpus(%struct.evsel* %25)
  %27 = load i32, i32* %10, align 4
  %28 = call i32 %23(%struct.perf_stat_config* %24, i32 %26, i32 %27)
  store i32 %28, i32* %11, align 4
  %29 = load i32, i32* %11, align 4
  %30 = load %struct.aggr_data*, %struct.aggr_data** %9, align 8
  %31 = getelementptr inbounds %struct.aggr_data, %struct.aggr_data* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = icmp ne i32 %29, %32
  br i1 %33, label %34, label %35

34:                                               ; preds = %20
  br label %94

35:                                               ; preds = %20
  %36 = load i32, i32* %8, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %43

38:                                               ; preds = %35
  %39 = load %struct.aggr_data*, %struct.aggr_data** %9, align 8
  %40 = getelementptr inbounds %struct.aggr_data, %struct.aggr_data* %39, i32 0, i32 4
  %41 = load i32, i32* %40, align 4
  %42 = add nsw i32 %41, 1
  store i32 %42, i32* %40, align 4
  br label %43

43:                                               ; preds = %38, %35
  %44 = load %struct.evsel*, %struct.evsel** %6, align 8
  %45 = getelementptr inbounds %struct.evsel, %struct.evsel* %44, i32 0, i32 0
  %46 = load %struct.TYPE_2__*, %struct.TYPE_2__** %45, align 8
  %47 = load i32, i32* %10, align 4
  %48 = call %struct.perf_counts_values* @perf_counts(%struct.TYPE_2__* %46, i32 %47, i32 0)
  store %struct.perf_counts_values* %48, %struct.perf_counts_values** %12, align 8
  %49 = load %struct.perf_counts_values*, %struct.perf_counts_values** %12, align 8
  %50 = getelementptr inbounds %struct.perf_counts_values, %struct.perf_counts_values* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = icmp eq i64 %51, 0
  br i1 %52, label %65, label %53

53:                                               ; preds = %43
  %54 = load %struct.perf_counts_values*, %struct.perf_counts_values** %12, align 8
  %55 = getelementptr inbounds %struct.perf_counts_values, %struct.perf_counts_values* %54, i32 0, i32 1
  %56 = load i64, i64* %55, align 8
  %57 = icmp eq i64 %56, 0
  br i1 %57, label %65, label %58

58:                                               ; preds = %53
  %59 = load %struct.evsel*, %struct.evsel** %6, align 8
  %60 = getelementptr inbounds %struct.evsel, %struct.evsel* %59, i32 0, i32 0
  %61 = load %struct.TYPE_2__*, %struct.TYPE_2__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = icmp eq i32 %63, -1
  br i1 %64, label %65, label %70

65:                                               ; preds = %58, %53, %43
  %66 = load %struct.aggr_data*, %struct.aggr_data** %9, align 8
  %67 = getelementptr inbounds %struct.aggr_data, %struct.aggr_data* %66, i32 0, i32 1
  store i64 0, i64* %67, align 8
  %68 = load %struct.aggr_data*, %struct.aggr_data** %9, align 8
  %69 = getelementptr inbounds %struct.aggr_data, %struct.aggr_data* %68, i32 0, i32 2
  store i64 0, i64* %69, align 8
  br label %97

70:                                               ; preds = %58
  %71 = load %struct.perf_counts_values*, %struct.perf_counts_values** %12, align 8
  %72 = getelementptr inbounds %struct.perf_counts_values, %struct.perf_counts_values* %71, i32 0, i32 2
  %73 = load i64, i64* %72, align 8
  %74 = load %struct.aggr_data*, %struct.aggr_data** %9, align 8
  %75 = getelementptr inbounds %struct.aggr_data, %struct.aggr_data* %74, i32 0, i32 3
  %76 = load i32, i32* %75, align 8
  %77 = sext i32 %76 to i64
  %78 = add nsw i64 %77, %73
  %79 = trunc i64 %78 to i32
  store i32 %79, i32* %75, align 8
  %80 = load %struct.perf_counts_values*, %struct.perf_counts_values** %12, align 8
  %81 = getelementptr inbounds %struct.perf_counts_values, %struct.perf_counts_values* %80, i32 0, i32 0
  %82 = load i64, i64* %81, align 8
  %83 = load %struct.aggr_data*, %struct.aggr_data** %9, align 8
  %84 = getelementptr inbounds %struct.aggr_data, %struct.aggr_data* %83, i32 0, i32 1
  %85 = load i64, i64* %84, align 8
  %86 = add nsw i64 %85, %82
  store i64 %86, i64* %84, align 8
  %87 = load %struct.perf_counts_values*, %struct.perf_counts_values** %12, align 8
  %88 = getelementptr inbounds %struct.perf_counts_values, %struct.perf_counts_values* %87, i32 0, i32 1
  %89 = load i64, i64* %88, align 8
  %90 = load %struct.aggr_data*, %struct.aggr_data** %9, align 8
  %91 = getelementptr inbounds %struct.aggr_data, %struct.aggr_data* %90, i32 0, i32 2
  %92 = load i64, i64* %91, align 8
  %93 = add nsw i64 %92, %89
  store i64 %93, i64* %91, align 8
  br label %94

94:                                               ; preds = %70, %34
  %95 = load i32, i32* %10, align 4
  %96 = add nsw i32 %95, 1
  store i32 %96, i32* %10, align 4
  br label %15

97:                                               ; preds = %65, %15
  ret void
}

declare dso_local i32 @perf_evsel__nr_cpus(%struct.evsel*) #1

declare dso_local i32 @evsel__cpus(%struct.evsel*) #1

declare dso_local %struct.perf_counts_values* @perf_counts(%struct.TYPE_2__*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
