; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/extr_builtin-stat.c_perf_stat_init_aggr_mode.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/extr_builtin-stat.c_perf_stat_init_aggr_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i64, i8*, i32 }
%struct.TYPE_6__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }

@stat_config = common dso_local global %struct.TYPE_5__ zeroinitializer, align 8
@evsel_list = common dso_local global %struct.TYPE_6__* null, align 8
@.str = private unnamed_addr constant [24 x i8] c"cannot build socket map\00", align 1
@perf_stat__get_socket_cached = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [21 x i8] c"cannot build die map\00", align 1
@perf_stat__get_die_cached = common dso_local global i8* null, align 8
@.str.2 = private unnamed_addr constant [22 x i8] c"cannot build core map\00", align 1
@perf_stat__get_core_cached = common dso_local global i8* null, align 8
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @perf_stat_init_aggr_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @perf_stat_init_aggr_mode() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @stat_config, i32 0, i32 0), align 8
  switch i32 %3, label %53 [
    i32 130, label %4
    i32 133, label %15
    i32 134, label %26
    i32 131, label %37
    i32 132, label %52
    i32 129, label %52
    i32 128, label %52
  ]

4:                                                ; preds = %0
  %5 = load %struct.TYPE_6__*, %struct.TYPE_6__** @evsel_list, align 8
  %6 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %5, i32 0, i32 0
  %7 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = call i32 @cpu_map__build_socket_map(i32 %8, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @stat_config, i32 0, i32 3))
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %13

11:                                               ; preds = %4
  %12 = call i32 @perror(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %1, align 4
  br label %71

13:                                               ; preds = %4
  %14 = load i8*, i8** @perf_stat__get_socket_cached, align 8
  store i8* %14, i8** getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @stat_config, i32 0, i32 2), align 8
  br label %54

15:                                               ; preds = %0
  %16 = load %struct.TYPE_6__*, %struct.TYPE_6__** @evsel_list, align 8
  %17 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @cpu_map__build_die_map(i32 %19, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @stat_config, i32 0, i32 3))
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %15
  %23 = call i32 @perror(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0))
  store i32 -1, i32* %1, align 4
  br label %71

24:                                               ; preds = %15
  %25 = load i8*, i8** @perf_stat__get_die_cached, align 8
  store i8* %25, i8** getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @stat_config, i32 0, i32 2), align 8
  br label %54

26:                                               ; preds = %0
  %27 = load %struct.TYPE_6__*, %struct.TYPE_6__** @evsel_list, align 8
  %28 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @cpu_map__build_core_map(i32 %30, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @stat_config, i32 0, i32 3))
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %26
  %34 = call i32 @perror(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0))
  store i32 -1, i32* %1, align 4
  br label %71

35:                                               ; preds = %26
  %36 = load i8*, i8** @perf_stat__get_core_cached, align 8
  store i8* %36, i8** getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @stat_config, i32 0, i32 2), align 8
  br label %54

37:                                               ; preds = %0
  %38 = call i32 (...) @term_percore_set()
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %51

40:                                               ; preds = %37
  %41 = load %struct.TYPE_6__*, %struct.TYPE_6__** @evsel_list, align 8
  %42 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @cpu_map__build_core_map(i32 %44, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @stat_config, i32 0, i32 3))
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %49

47:                                               ; preds = %40
  %48 = call i32 @perror(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0))
  store i32 -1, i32* %1, align 4
  br label %71

49:                                               ; preds = %40
  %50 = load i8*, i8** @perf_stat__get_core_cached, align 8
  store i8* %50, i8** getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @stat_config, i32 0, i32 2), align 8
  br label %51

51:                                               ; preds = %49, %37
  br label %54

52:                                               ; preds = %0, %0, %0
  br label %53

53:                                               ; preds = %0, %52
  br label %54

54:                                               ; preds = %53, %51, %35, %24, %13
  %55 = load %struct.TYPE_6__*, %struct.TYPE_6__** @evsel_list, align 8
  %56 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = call i32 @perf_cpu_map__max(i32 %58)
  store i32 %59, i32* %2, align 4
  %60 = load i32, i32* %2, align 4
  %61 = add nsw i32 %60, 1
  %62 = call i64 @perf_cpu_map__empty_new(i32 %61)
  store i64 %62, i64* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @stat_config, i32 0, i32 1), align 8
  %63 = load i64, i64* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @stat_config, i32 0, i32 1), align 8
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %66

65:                                               ; preds = %54
  br label %69

66:                                               ; preds = %54
  %67 = load i32, i32* @ENOMEM, align 4
  %68 = sub nsw i32 0, %67
  br label %69

69:                                               ; preds = %66, %65
  %70 = phi i32 [ 0, %65 ], [ %68, %66 ]
  store i32 %70, i32* %1, align 4
  br label %71

71:                                               ; preds = %69, %47, %33, %22, %11
  %72 = load i32, i32* %1, align 4
  ret i32 %72
}

declare dso_local i32 @cpu_map__build_socket_map(i32, i32*) #1

declare dso_local i32 @perror(i8*) #1

declare dso_local i32 @cpu_map__build_die_map(i32, i32*) #1

declare dso_local i32 @cpu_map__build_core_map(i32, i32*) #1

declare dso_local i32 @term_percore_set(...) #1

declare dso_local i32 @perf_cpu_map__max(i32) #1

declare dso_local i64 @perf_cpu_map__empty_new(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
