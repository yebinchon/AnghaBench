; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/util/extr_stat.c_process_counter_values.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/util/extr_stat.c_process_counter_values.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.perf_counts_values = type { i32, i32, i32 }
%struct.perf_stat_config = type { i32, i32*, i32 }
%struct.evsel = type { i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.perf_counts_values }

@process_counter_values.zero = internal global %struct.perf_counts_values zeroinitializer, align 4
@.str = private unnamed_addr constant [32 x i8] c"failed to read per-pkg counter\0A\00", align 1
@rt_stat = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.perf_stat_config*, %struct.evsel*, i32, i32, %struct.perf_counts_values*)* @process_counter_values to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @process_counter_values(%struct.perf_stat_config* %0, %struct.evsel* %1, i32 %2, i32 %3, %struct.perf_counts_values* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.perf_stat_config*, align 8
  %8 = alloca %struct.evsel*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.perf_counts_values*, align 8
  %12 = alloca %struct.perf_counts_values*, align 8
  %13 = alloca i32, align 4
  store %struct.perf_stat_config* %0, %struct.perf_stat_config** %7, align 8
  store %struct.evsel* %1, %struct.evsel** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store %struct.perf_counts_values* %4, %struct.perf_counts_values** %11, align 8
  %14 = load %struct.evsel*, %struct.evsel** %8, align 8
  %15 = getelementptr inbounds %struct.evsel, %struct.evsel* %14, i32 0, i32 2
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  store %struct.perf_counts_values* %17, %struct.perf_counts_values** %12, align 8
  store i32 0, i32* %13, align 4
  %18 = load %struct.evsel*, %struct.evsel** %8, align 8
  %19 = load %struct.perf_counts_values*, %struct.perf_counts_values** %11, align 8
  %20 = load i32, i32* %9, align 4
  %21 = call i64 @check_per_pkg(%struct.evsel* %18, %struct.perf_counts_values* %19, i32 %20, i32* %13)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %5
  %24 = call i32 @pr_err(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %6, align 4
  br label %121

25:                                               ; preds = %5
  %26 = load i32, i32* %13, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %25
  store %struct.perf_counts_values* @process_counter_values.zero, %struct.perf_counts_values** %11, align 8
  br label %29

29:                                               ; preds = %28, %25
  %30 = load %struct.perf_stat_config*, %struct.perf_stat_config** %7, align 8
  %31 = getelementptr inbounds %struct.perf_stat_config, %struct.perf_stat_config* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  switch i32 %32, label %119 [
    i32 129, label %33
    i32 134, label %33
    i32 133, label %33
    i32 130, label %33
    i32 131, label %33
    i32 132, label %96
    i32 128, label %118
  ]

33:                                               ; preds = %29, %29, %29, %29, %29
  %34 = load %struct.evsel*, %struct.evsel** %8, align 8
  %35 = getelementptr inbounds %struct.evsel, %struct.evsel* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %44, label %38

38:                                               ; preds = %33
  %39 = load %struct.evsel*, %struct.evsel** %8, align 8
  %40 = load i32, i32* %9, align 4
  %41 = load i32, i32* %10, align 4
  %42 = load %struct.perf_counts_values*, %struct.perf_counts_values** %11, align 8
  %43 = call i32 @perf_evsel__compute_deltas(%struct.evsel* %39, i32 %40, i32 %41, %struct.perf_counts_values* %42)
  br label %44

44:                                               ; preds = %38, %33
  %45 = load %struct.perf_counts_values*, %struct.perf_counts_values** %11, align 8
  %46 = load %struct.perf_stat_config*, %struct.perf_stat_config** %7, align 8
  %47 = getelementptr inbounds %struct.perf_stat_config, %struct.perf_stat_config* %46, i32 0, i32 2
  %48 = load i32, i32* %47, align 8
  %49 = call i32 @perf_counts_values__scale(%struct.perf_counts_values* %45, i32 %48, i32* null)
  %50 = load %struct.perf_stat_config*, %struct.perf_stat_config** %7, align 8
  %51 = getelementptr inbounds %struct.perf_stat_config, %struct.perf_stat_config* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = icmp eq i32 %52, 131
  br i1 %53, label %54, label %66

54:                                               ; preds = %44
  %55 = load %struct.evsel*, %struct.evsel** %8, align 8
  %56 = getelementptr inbounds %struct.evsel, %struct.evsel* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %66, label %59

59:                                               ; preds = %54
  %60 = load %struct.evsel*, %struct.evsel** %8, align 8
  %61 = load %struct.perf_counts_values*, %struct.perf_counts_values** %11, align 8
  %62 = getelementptr inbounds %struct.perf_counts_values, %struct.perf_counts_values* %61, i32 0, i32 2
  %63 = load i32, i32* %62, align 4
  %64 = load i32, i32* %9, align 4
  %65 = call i32 @perf_stat__update_shadow_stats(%struct.evsel* %60, i32 %63, i32 %64, i32* @rt_stat)
  br label %66

66:                                               ; preds = %59, %54, %44
  %67 = load %struct.perf_stat_config*, %struct.perf_stat_config** %7, align 8
  %68 = getelementptr inbounds %struct.perf_stat_config, %struct.perf_stat_config* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = icmp eq i32 %69, 129
  br i1 %70, label %71, label %95

71:                                               ; preds = %66
  %72 = load %struct.perf_stat_config*, %struct.perf_stat_config** %7, align 8
  %73 = getelementptr inbounds %struct.perf_stat_config, %struct.perf_stat_config* %72, i32 0, i32 1
  %74 = load i32*, i32** %73, align 8
  %75 = icmp ne i32* %74, null
  br i1 %75, label %76, label %88

76:                                               ; preds = %71
  %77 = load %struct.evsel*, %struct.evsel** %8, align 8
  %78 = load %struct.perf_counts_values*, %struct.perf_counts_values** %11, align 8
  %79 = getelementptr inbounds %struct.perf_counts_values, %struct.perf_counts_values* %78, i32 0, i32 2
  %80 = load i32, i32* %79, align 4
  %81 = load %struct.perf_stat_config*, %struct.perf_stat_config** %7, align 8
  %82 = getelementptr inbounds %struct.perf_stat_config, %struct.perf_stat_config* %81, i32 0, i32 1
  %83 = load i32*, i32** %82, align 8
  %84 = load i32, i32* %10, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds i32, i32* %83, i64 %85
  %87 = call i32 @perf_stat__update_shadow_stats(%struct.evsel* %77, i32 %80, i32 0, i32* %86)
  br label %94

88:                                               ; preds = %71
  %89 = load %struct.evsel*, %struct.evsel** %8, align 8
  %90 = load %struct.perf_counts_values*, %struct.perf_counts_values** %11, align 8
  %91 = getelementptr inbounds %struct.perf_counts_values, %struct.perf_counts_values* %90, i32 0, i32 2
  %92 = load i32, i32* %91, align 4
  %93 = call i32 @perf_stat__update_shadow_stats(%struct.evsel* %89, i32 %92, i32 0, i32* @rt_stat)
  br label %94

94:                                               ; preds = %88, %76
  br label %95

95:                                               ; preds = %94, %66
  br label %120

96:                                               ; preds = %29
  %97 = load %struct.perf_counts_values*, %struct.perf_counts_values** %11, align 8
  %98 = getelementptr inbounds %struct.perf_counts_values, %struct.perf_counts_values* %97, i32 0, i32 2
  %99 = load i32, i32* %98, align 4
  %100 = load %struct.perf_counts_values*, %struct.perf_counts_values** %12, align 8
  %101 = getelementptr inbounds %struct.perf_counts_values, %struct.perf_counts_values* %100, i32 0, i32 2
  %102 = load i32, i32* %101, align 4
  %103 = add nsw i32 %102, %99
  store i32 %103, i32* %101, align 4
  %104 = load %struct.perf_counts_values*, %struct.perf_counts_values** %11, align 8
  %105 = getelementptr inbounds %struct.perf_counts_values, %struct.perf_counts_values* %104, i32 0, i32 1
  %106 = load i32, i32* %105, align 4
  %107 = load %struct.perf_counts_values*, %struct.perf_counts_values** %12, align 8
  %108 = getelementptr inbounds %struct.perf_counts_values, %struct.perf_counts_values* %107, i32 0, i32 1
  %109 = load i32, i32* %108, align 4
  %110 = add nsw i32 %109, %106
  store i32 %110, i32* %108, align 4
  %111 = load %struct.perf_counts_values*, %struct.perf_counts_values** %11, align 8
  %112 = getelementptr inbounds %struct.perf_counts_values, %struct.perf_counts_values* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 4
  %114 = load %struct.perf_counts_values*, %struct.perf_counts_values** %12, align 8
  %115 = getelementptr inbounds %struct.perf_counts_values, %struct.perf_counts_values* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 4
  %117 = add nsw i32 %116, %113
  store i32 %117, i32* %115, align 4
  br label %118

118:                                              ; preds = %29, %96
  br label %119

119:                                              ; preds = %29, %118
  br label %120

120:                                              ; preds = %119, %95
  store i32 0, i32* %6, align 4
  br label %121

121:                                              ; preds = %120, %23
  %122 = load i32, i32* %6, align 4
  ret i32 %122
}

declare dso_local i64 @check_per_pkg(%struct.evsel*, %struct.perf_counts_values*, i32, i32*) #1

declare dso_local i32 @pr_err(i8*) #1

declare dso_local i32 @perf_evsel__compute_deltas(%struct.evsel*, i32, i32, %struct.perf_counts_values*) #1

declare dso_local i32 @perf_counts_values__scale(%struct.perf_counts_values*, i32, i32*) #1

declare dso_local i32 @perf_stat__update_shadow_stats(%struct.evsel*, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
