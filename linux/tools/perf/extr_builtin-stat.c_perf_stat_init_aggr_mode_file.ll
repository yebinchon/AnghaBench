; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/extr_builtin-stat.c_perf_stat_init_aggr_mode_file.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/extr_builtin-stat.c_perf_stat_init_aggr_mode_file.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32, i32, i32 }
%struct.TYPE_10__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }
%struct.perf_stat = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.perf_env }
%struct.perf_env = type { i32 }

@stat_config = common dso_local global %struct.TYPE_9__ zeroinitializer, align 4
@evsel_list = common dso_local global %struct.TYPE_10__* null, align 8
@.str = private unnamed_addr constant [24 x i8] c"cannot build socket map\00", align 1
@perf_stat__get_socket_file = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [21 x i8] c"cannot build die map\00", align 1
@perf_stat__get_die_file = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [22 x i8] c"cannot build core map\00", align 1
@perf_stat__get_core_file = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.perf_stat*)* @perf_stat_init_aggr_mode_file to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @perf_stat_init_aggr_mode_file(%struct.perf_stat* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.perf_stat*, align 8
  %4 = alloca %struct.perf_env*, align 8
  store %struct.perf_stat* %0, %struct.perf_stat** %3, align 8
  %5 = load %struct.perf_stat*, %struct.perf_stat** %3, align 8
  %6 = getelementptr inbounds %struct.perf_stat, %struct.perf_stat* %5, i32 0, i32 0
  %7 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %8 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %8, i32 0, i32 0
  store %struct.perf_env* %9, %struct.perf_env** %4, align 8
  %10 = load i32, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @stat_config, i32 0, i32 0), align 4
  switch i32 %10, label %48 [
    i32 130, label %11
    i32 133, label %23
    i32 134, label %35
    i32 131, label %47
    i32 132, label %47
    i32 129, label %47
    i32 128, label %47
  ]

11:                                               ; preds = %1
  %12 = load %struct.perf_env*, %struct.perf_env** %4, align 8
  %13 = load %struct.TYPE_10__*, %struct.TYPE_10__** @evsel_list, align 8
  %14 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @perf_env__build_socket_map(%struct.perf_env* %12, i32 %16, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @stat_config, i32 0, i32 2))
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %11
  %20 = call i32 @perror(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %2, align 4
  br label %50

21:                                               ; preds = %11
  %22 = load i32, i32* @perf_stat__get_socket_file, align 4
  store i32 %22, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @stat_config, i32 0, i32 1), align 4
  br label %49

23:                                               ; preds = %1
  %24 = load %struct.perf_env*, %struct.perf_env** %4, align 8
  %25 = load %struct.TYPE_10__*, %struct.TYPE_10__** @evsel_list, align 8
  %26 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @perf_env__build_die_map(%struct.perf_env* %24, i32 %28, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @stat_config, i32 0, i32 2))
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %23
  %32 = call i32 @perror(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0))
  store i32 -1, i32* %2, align 4
  br label %50

33:                                               ; preds = %23
  %34 = load i32, i32* @perf_stat__get_die_file, align 4
  store i32 %34, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @stat_config, i32 0, i32 1), align 4
  br label %49

35:                                               ; preds = %1
  %36 = load %struct.perf_env*, %struct.perf_env** %4, align 8
  %37 = load %struct.TYPE_10__*, %struct.TYPE_10__** @evsel_list, align 8
  %38 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @perf_env__build_core_map(%struct.perf_env* %36, i32 %40, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @stat_config, i32 0, i32 2))
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %45

43:                                               ; preds = %35
  %44 = call i32 @perror(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0))
  store i32 -1, i32* %2, align 4
  br label %50

45:                                               ; preds = %35
  %46 = load i32, i32* @perf_stat__get_core_file, align 4
  store i32 %46, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @stat_config, i32 0, i32 1), align 4
  br label %49

47:                                               ; preds = %1, %1, %1, %1
  br label %48

48:                                               ; preds = %1, %47
  br label %49

49:                                               ; preds = %48, %45, %33, %21
  store i32 0, i32* %2, align 4
  br label %50

50:                                               ; preds = %49, %43, %31, %19
  %51 = load i32, i32* %2, align 4
  ret i32 %51
}

declare dso_local i32 @perf_env__build_socket_map(%struct.perf_env*, i32, i32*) #1

declare dso_local i32 @perror(i8*) #1

declare dso_local i32 @perf_env__build_die_map(%struct.perf_env*, i32, i32*) #1

declare dso_local i32 @perf_env__build_core_map(%struct.perf_env*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
