; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/util/extr_stat-display.c_print_aggr_thread.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/util/extr_stat-display.c_print_aggr_thread.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.perf_stat_config = type { i32*, i32* }
%struct.target = type { i32 }
%struct.evsel = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }
%struct.perf_aggr_thread_value = type { i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [24 x i8] c"cannot sort aggr thread\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@rt_stat = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.perf_stat_config*, %struct.target*, %struct.evsel*, i8*)* @print_aggr_thread to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @print_aggr_thread(%struct.perf_stat_config* %0, %struct.target* %1, %struct.evsel* %2, i8* %3) #0 {
  %5 = alloca %struct.perf_stat_config*, align 8
  %6 = alloca %struct.target*, align 8
  %7 = alloca %struct.evsel*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.perf_aggr_thread_value*, align 8
  store %struct.perf_stat_config* %0, %struct.perf_stat_config** %5, align 8
  store %struct.target* %1, %struct.target** %6, align 8
  store %struct.evsel* %2, %struct.evsel** %7, align 8
  store i8* %3, i8** %8, align 8
  %16 = load %struct.perf_stat_config*, %struct.perf_stat_config** %5, align 8
  %17 = getelementptr inbounds %struct.perf_stat_config, %struct.perf_stat_config* %16, i32 0, i32 1
  %18 = load i32*, i32** %17, align 8
  store i32* %18, i32** %9, align 8
  %19 = load %struct.evsel*, %struct.evsel** %7, align 8
  %20 = getelementptr inbounds %struct.evsel, %struct.evsel* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @perf_thread_map__nr(i32 %22)
  store i32 %23, i32* %10, align 4
  %24 = load %struct.evsel*, %struct.evsel** %7, align 8
  %25 = getelementptr inbounds %struct.evsel, %struct.evsel* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @perf_cpu_map__nr(i32 %27)
  store i32 %28, i32* %11, align 4
  %29 = load %struct.evsel*, %struct.evsel** %7, align 8
  %30 = load i32, i32* %10, align 4
  %31 = load i32, i32* %11, align 4
  %32 = load %struct.target*, %struct.target** %6, align 8
  %33 = call %struct.perf_aggr_thread_value* @sort_aggr_thread(%struct.evsel* %29, i32 %30, i32 %31, i32* %13, %struct.target* %32)
  store %struct.perf_aggr_thread_value* %33, %struct.perf_aggr_thread_value** %15, align 8
  %34 = load %struct.perf_aggr_thread_value*, %struct.perf_aggr_thread_value** %15, align 8
  %35 = icmp ne %struct.perf_aggr_thread_value* %34, null
  br i1 %35, label %38, label %36

36:                                               ; preds = %4
  %37 = call i32 @perror(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  br label %134

38:                                               ; preds = %4
  store i32 0, i32* %12, align 4
  br label %39

39:                                               ; preds = %128, %38
  %40 = load i32, i32* %12, align 4
  %41 = load i32, i32* %13, align 4
  %42 = icmp slt i32 %40, %41
  br i1 %42, label %43, label %131

43:                                               ; preds = %39
  %44 = load i8*, i8** %8, align 8
  %45 = icmp ne i8* %44, null
  br i1 %45, label %46, label %50

46:                                               ; preds = %43
  %47 = load i32*, i32** %9, align 8
  %48 = load i8*, i8** %8, align 8
  %49 = call i32 @fprintf(i32* %47, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8* %48)
  br label %50

50:                                               ; preds = %46, %43
  %51 = load %struct.perf_aggr_thread_value*, %struct.perf_aggr_thread_value** %15, align 8
  %52 = load i32, i32* %12, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds %struct.perf_aggr_thread_value, %struct.perf_aggr_thread_value* %51, i64 %53
  %55 = getelementptr inbounds %struct.perf_aggr_thread_value, %struct.perf_aggr_thread_value* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  store i32 %56, i32* %14, align 4
  %57 = load %struct.perf_stat_config*, %struct.perf_stat_config** %5, align 8
  %58 = getelementptr inbounds %struct.perf_stat_config, %struct.perf_stat_config* %57, i32 0, i32 0
  %59 = load i32*, i32** %58, align 8
  %60 = icmp ne i32* %59, null
  br i1 %60, label %61, label %96

61:                                               ; preds = %50
  %62 = load %struct.perf_stat_config*, %struct.perf_stat_config** %5, align 8
  %63 = load i32, i32* %14, align 4
  %64 = load %struct.perf_aggr_thread_value*, %struct.perf_aggr_thread_value** %15, align 8
  %65 = load i32, i32* %12, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds %struct.perf_aggr_thread_value, %struct.perf_aggr_thread_value* %64, i64 %66
  %68 = getelementptr inbounds %struct.perf_aggr_thread_value, %struct.perf_aggr_thread_value* %67, i32 0, i32 4
  %69 = load i32, i32* %68, align 4
  %70 = load %struct.perf_aggr_thread_value*, %struct.perf_aggr_thread_value** %15, align 8
  %71 = load i32, i32* %12, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds %struct.perf_aggr_thread_value, %struct.perf_aggr_thread_value* %70, i64 %72
  %74 = getelementptr inbounds %struct.perf_aggr_thread_value, %struct.perf_aggr_thread_value* %73, i32 0, i32 3
  %75 = load i32, i32* %74, align 4
  %76 = load i8*, i8** %8, align 8
  %77 = load %struct.perf_aggr_thread_value*, %struct.perf_aggr_thread_value** %15, align 8
  %78 = load i32, i32* %12, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds %struct.perf_aggr_thread_value, %struct.perf_aggr_thread_value* %77, i64 %79
  %81 = getelementptr inbounds %struct.perf_aggr_thread_value, %struct.perf_aggr_thread_value* %80, i32 0, i32 2
  %82 = load i32, i32* %81, align 4
  %83 = load %struct.perf_aggr_thread_value*, %struct.perf_aggr_thread_value** %15, align 8
  %84 = load i32, i32* %12, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds %struct.perf_aggr_thread_value, %struct.perf_aggr_thread_value* %83, i64 %85
  %87 = getelementptr inbounds %struct.perf_aggr_thread_value, %struct.perf_aggr_thread_value* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 4
  %89 = load %struct.perf_stat_config*, %struct.perf_stat_config** %5, align 8
  %90 = getelementptr inbounds %struct.perf_stat_config, %struct.perf_stat_config* %89, i32 0, i32 0
  %91 = load i32*, i32** %90, align 8
  %92 = load i32, i32* %14, align 4
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds i32, i32* %91, i64 %93
  %95 = call i32 @printout(%struct.perf_stat_config* %62, i32 %63, i32 0, i32 %69, i32 %75, i8* %76, i32 %82, i32 %88, double 1.000000e+00, i32* %94)
  br label %125

96:                                               ; preds = %50
  %97 = load %struct.perf_stat_config*, %struct.perf_stat_config** %5, align 8
  %98 = load i32, i32* %14, align 4
  %99 = load %struct.perf_aggr_thread_value*, %struct.perf_aggr_thread_value** %15, align 8
  %100 = load i32, i32* %12, align 4
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds %struct.perf_aggr_thread_value, %struct.perf_aggr_thread_value* %99, i64 %101
  %103 = getelementptr inbounds %struct.perf_aggr_thread_value, %struct.perf_aggr_thread_value* %102, i32 0, i32 4
  %104 = load i32, i32* %103, align 4
  %105 = load %struct.perf_aggr_thread_value*, %struct.perf_aggr_thread_value** %15, align 8
  %106 = load i32, i32* %12, align 4
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds %struct.perf_aggr_thread_value, %struct.perf_aggr_thread_value* %105, i64 %107
  %109 = getelementptr inbounds %struct.perf_aggr_thread_value, %struct.perf_aggr_thread_value* %108, i32 0, i32 3
  %110 = load i32, i32* %109, align 4
  %111 = load i8*, i8** %8, align 8
  %112 = load %struct.perf_aggr_thread_value*, %struct.perf_aggr_thread_value** %15, align 8
  %113 = load i32, i32* %12, align 4
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds %struct.perf_aggr_thread_value, %struct.perf_aggr_thread_value* %112, i64 %114
  %116 = getelementptr inbounds %struct.perf_aggr_thread_value, %struct.perf_aggr_thread_value* %115, i32 0, i32 2
  %117 = load i32, i32* %116, align 4
  %118 = load %struct.perf_aggr_thread_value*, %struct.perf_aggr_thread_value** %15, align 8
  %119 = load i32, i32* %12, align 4
  %120 = sext i32 %119 to i64
  %121 = getelementptr inbounds %struct.perf_aggr_thread_value, %struct.perf_aggr_thread_value* %118, i64 %120
  %122 = getelementptr inbounds %struct.perf_aggr_thread_value, %struct.perf_aggr_thread_value* %121, i32 0, i32 1
  %123 = load i32, i32* %122, align 4
  %124 = call i32 @printout(%struct.perf_stat_config* %97, i32 %98, i32 0, i32 %104, i32 %110, i8* %111, i32 %117, i32 %123, double 1.000000e+00, i32* @rt_stat)
  br label %125

125:                                              ; preds = %96, %61
  %126 = load i32*, i32** %9, align 8
  %127 = call i32 @fputc(i8 signext 10, i32* %126)
  br label %128

128:                                              ; preds = %125
  %129 = load i32, i32* %12, align 4
  %130 = add nsw i32 %129, 1
  store i32 %130, i32* %12, align 4
  br label %39

131:                                              ; preds = %39
  %132 = load %struct.perf_aggr_thread_value*, %struct.perf_aggr_thread_value** %15, align 8
  %133 = call i32 @free(%struct.perf_aggr_thread_value* %132)
  br label %134

134:                                              ; preds = %131, %36
  ret void
}

declare dso_local i32 @perf_thread_map__nr(i32) #1

declare dso_local i32 @perf_cpu_map__nr(i32) #1

declare dso_local %struct.perf_aggr_thread_value* @sort_aggr_thread(%struct.evsel*, i32, i32, i32*, %struct.target*) #1

declare dso_local i32 @perror(i8*) #1

declare dso_local i32 @fprintf(i32*, i8*, i8*) #1

declare dso_local i32 @printout(%struct.perf_stat_config*, i32, i32, i32, i32, i8*, i32, i32, double, i32*) #1

declare dso_local i32 @fputc(i8 signext, i32*) #1

declare dso_local i32 @free(%struct.perf_aggr_thread_value*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
