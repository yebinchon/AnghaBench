; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/util/extr_stat.c_create_perf_stat_counter.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/util/extr_stat.c_create_perf_stat_counter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.evsel = type { %struct.TYPE_2__, %struct.evsel* }
%struct.TYPE_2__ = type { i32, i32, %struct.perf_event_attr }
%struct.perf_event_attr = type { i32, i32, i32, i32, i32, i64 }
%struct.perf_stat_config = type { i32, i64, i32 }
%struct.target = type { i32 }

@PERF_FORMAT_TOTAL_TIME_ENABLED = common dso_local global i32 0, align 4
@PERF_FORMAT_TOTAL_TIME_RUNNING = common dso_local global i32 0, align 4
@PERF_FORMAT_ID = common dso_local global i32 0, align 4
@PERF_FORMAT_GROUP = common dso_local global i32 0, align 4
@PERF_SAMPLE_IDENTIFIER = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @create_perf_stat_counter(%struct.evsel* %0, %struct.perf_stat_config* %1, %struct.target* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.evsel*, align 8
  %6 = alloca %struct.perf_stat_config*, align 8
  %7 = alloca %struct.target*, align 8
  %8 = alloca %struct.perf_event_attr*, align 8
  %9 = alloca %struct.evsel*, align 8
  store %struct.evsel* %0, %struct.evsel** %5, align 8
  store %struct.perf_stat_config* %1, %struct.perf_stat_config** %6, align 8
  store %struct.target* %2, %struct.target** %7, align 8
  %10 = load %struct.evsel*, %struct.evsel** %5, align 8
  %11 = getelementptr inbounds %struct.evsel, %struct.evsel* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 2
  store %struct.perf_event_attr* %12, %struct.perf_event_attr** %8, align 8
  %13 = load %struct.evsel*, %struct.evsel** %5, align 8
  %14 = getelementptr inbounds %struct.evsel, %struct.evsel* %13, i32 0, i32 1
  %15 = load %struct.evsel*, %struct.evsel** %14, align 8
  store %struct.evsel* %15, %struct.evsel** %9, align 8
  %16 = load i32, i32* @PERF_FORMAT_TOTAL_TIME_ENABLED, align 4
  %17 = load i32, i32* @PERF_FORMAT_TOTAL_TIME_RUNNING, align 4
  %18 = or i32 %16, %17
  %19 = load %struct.perf_event_attr*, %struct.perf_event_attr** %8, align 8
  %20 = getelementptr inbounds %struct.perf_event_attr, %struct.perf_event_attr* %19, i32 0, i32 0
  store i32 %18, i32* %20, align 8
  %21 = load %struct.evsel*, %struct.evsel** %9, align 8
  %22 = getelementptr inbounds %struct.evsel, %struct.evsel* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = icmp sgt i32 %24, 1
  br i1 %25, label %26, label %34

26:                                               ; preds = %3
  %27 = load i32, i32* @PERF_FORMAT_ID, align 4
  %28 = load i32, i32* @PERF_FORMAT_GROUP, align 4
  %29 = or i32 %27, %28
  %30 = load %struct.perf_event_attr*, %struct.perf_event_attr** %8, align 8
  %31 = getelementptr inbounds %struct.perf_event_attr, %struct.perf_event_attr* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = or i32 %32, %29
  store i32 %33, i32* %31, align 8
  br label %34

34:                                               ; preds = %26, %3
  %35 = load %struct.perf_stat_config*, %struct.perf_stat_config** %6, align 8
  %36 = getelementptr inbounds %struct.perf_stat_config, %struct.perf_stat_config* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 8
  %38 = icmp ne i32 %37, 0
  %39 = xor i1 %38, true
  %40 = zext i1 %39 to i32
  %41 = load %struct.perf_event_attr*, %struct.perf_event_attr** %8, align 8
  %42 = getelementptr inbounds %struct.perf_event_attr, %struct.perf_event_attr* %41, i32 0, i32 1
  store i32 %40, i32* %42, align 4
  %43 = load %struct.perf_event_attr*, %struct.perf_event_attr** %8, align 8
  %44 = getelementptr inbounds %struct.perf_event_attr, %struct.perf_event_attr* %43, i32 0, i32 5
  store i64 0, i64* %44, align 8
  %45 = load %struct.perf_stat_config*, %struct.perf_stat_config** %6, align 8
  %46 = getelementptr inbounds %struct.perf_stat_config, %struct.perf_stat_config* %45, i32 0, i32 1
  %47 = load i64, i64* %46, align 8
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %53

49:                                               ; preds = %34
  %50 = load i32, i32* @PERF_SAMPLE_IDENTIFIER, align 4
  %51 = load %struct.perf_event_attr*, %struct.perf_event_attr** %8, align 8
  %52 = getelementptr inbounds %struct.perf_event_attr, %struct.perf_event_attr* %51, i32 0, i32 4
  store i32 %50, i32* %52, align 8
  br label %53

53:                                               ; preds = %49, %34
  %54 = load %struct.evsel*, %struct.evsel** %5, align 8
  %55 = call i64 @perf_evsel__is_group_leader(%struct.evsel* %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %72

57:                                               ; preds = %53
  %58 = load %struct.perf_event_attr*, %struct.perf_event_attr** %8, align 8
  %59 = getelementptr inbounds %struct.perf_event_attr, %struct.perf_event_attr* %58, i32 0, i32 2
  store i32 1, i32* %59, align 8
  %60 = load %struct.target*, %struct.target** %7, align 8
  %61 = call i64 @target__none(%struct.target* %60)
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %71

63:                                               ; preds = %57
  %64 = load %struct.perf_stat_config*, %struct.perf_stat_config** %6, align 8
  %65 = getelementptr inbounds %struct.perf_stat_config, %struct.perf_stat_config* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %71, label %68

68:                                               ; preds = %63
  %69 = load %struct.perf_event_attr*, %struct.perf_event_attr** %8, align 8
  %70 = getelementptr inbounds %struct.perf_event_attr, %struct.perf_event_attr* %69, i32 0, i32 3
  store i32 1, i32* %70, align 4
  br label %71

71:                                               ; preds = %68, %63, %57
  br label %72

72:                                               ; preds = %71, %53
  %73 = load %struct.target*, %struct.target** %7, align 8
  %74 = call i64 @target__has_cpu(%struct.target* %73)
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %85

76:                                               ; preds = %72
  %77 = load %struct.target*, %struct.target** %7, align 8
  %78 = call i32 @target__has_per_thread(%struct.target* %77)
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %85, label %80

80:                                               ; preds = %76
  %81 = load %struct.evsel*, %struct.evsel** %5, align 8
  %82 = load %struct.evsel*, %struct.evsel** %5, align 8
  %83 = call i32 @evsel__cpus(%struct.evsel* %82)
  %84 = call i32 @perf_evsel__open_per_cpu(%struct.evsel* %81, i32 %83)
  store i32 %84, i32* %4, align 4
  br label %92

85:                                               ; preds = %76, %72
  %86 = load %struct.evsel*, %struct.evsel** %5, align 8
  %87 = load %struct.evsel*, %struct.evsel** %5, align 8
  %88 = getelementptr inbounds %struct.evsel, %struct.evsel* %87, i32 0, i32 0
  %89 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %88, i32 0, i32 1
  %90 = load i32, i32* %89, align 4
  %91 = call i32 @perf_evsel__open_per_thread(%struct.evsel* %86, i32 %90)
  store i32 %91, i32* %4, align 4
  br label %92

92:                                               ; preds = %85, %80
  %93 = load i32, i32* %4, align 4
  ret i32 %93
}

declare dso_local i64 @perf_evsel__is_group_leader(%struct.evsel*) #1

declare dso_local i64 @target__none(%struct.target*) #1

declare dso_local i64 @target__has_cpu(%struct.target*) #1

declare dso_local i32 @target__has_per_thread(%struct.target*) #1

declare dso_local i32 @perf_evsel__open_per_cpu(%struct.evsel*, i32) #1

declare dso_local i32 @evsel__cpus(%struct.evsel*) #1

declare dso_local i32 @perf_evsel__open_per_thread(%struct.evsel*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
