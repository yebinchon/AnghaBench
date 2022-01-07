; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/util/extr_bpf-loader.c___bpf_map__config_event.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/util/extr_bpf-loader.c___bpf_map__config_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bpf_map = type { i32 }
%struct.parse_events_term = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.evlist = type { i32 }
%struct.evsel = type { i32 }
%struct.bpf_map_def = type { i64, %struct.TYPE_3__, i32 }
%struct.TYPE_3__ = type { %struct.evsel* }
%struct.bpf_map_op = type { i64, %struct.TYPE_3__, i32 }

@.str = private unnamed_addr constant [37 x i8] c"Event (for '%s') '%s' doesn't exist\0A\00", align 1
@BPF_LOADER_ERRNO__OBJCONF_MAP_NOEVT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [40 x i8] c"Unable to get map definition from '%s'\0A\00", align 1
@BPF_MAP_TYPE_PERF_EVENT_ARRAY = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [50 x i8] c"Map %s type is not BPF_MAP_TYPE_PERF_EVENT_ARRAY\0A\00", align 1
@BPF_LOADER_ERRNO__OBJCONF_MAP_TYPE = common dso_local global i32 0, align 4
@BPF_MAP_OP_SET_EVSEL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bpf_map*, %struct.parse_events_term*, %struct.evlist*)* @__bpf_map__config_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__bpf_map__config_event(%struct.bpf_map* %0, %struct.parse_events_term* %1, %struct.evlist* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.bpf_map*, align 8
  %6 = alloca %struct.parse_events_term*, align 8
  %7 = alloca %struct.evlist*, align 8
  %8 = alloca %struct.evsel*, align 8
  %9 = alloca %struct.bpf_map_def*, align 8
  %10 = alloca %struct.bpf_map_op*, align 8
  %11 = alloca i8*, align 8
  store %struct.bpf_map* %0, %struct.bpf_map** %5, align 8
  store %struct.parse_events_term* %1, %struct.parse_events_term** %6, align 8
  store %struct.evlist* %2, %struct.evlist** %7, align 8
  %12 = load %struct.bpf_map*, %struct.bpf_map** %5, align 8
  %13 = call i8* @bpf_map__name(%struct.bpf_map* %12)
  store i8* %13, i8** %11, align 8
  %14 = load %struct.evlist*, %struct.evlist** %7, align 8
  %15 = load %struct.parse_events_term*, %struct.parse_events_term** %6, align 8
  %16 = getelementptr inbounds %struct.parse_events_term, %struct.parse_events_term* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call %struct.evsel* @perf_evlist__find_evsel_by_str(%struct.evlist* %14, i32 %18)
  store %struct.evsel* %19, %struct.evsel** %8, align 8
  %20 = load %struct.evsel*, %struct.evsel** %8, align 8
  %21 = icmp ne %struct.evsel* %20, null
  br i1 %21, label %31, label %22

22:                                               ; preds = %3
  %23 = load i8*, i8** %11, align 8
  %24 = load %struct.parse_events_term*, %struct.parse_events_term** %6, align 8
  %25 = getelementptr inbounds %struct.parse_events_term, %struct.parse_events_term* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = call i32 (i8*, i8*, ...) @pr_debug(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i8* %23, i32 %27)
  %29 = load i32, i32* @BPF_LOADER_ERRNO__OBJCONF_MAP_NOEVT, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %4, align 4
  br label %74

31:                                               ; preds = %3
  %32 = load %struct.bpf_map*, %struct.bpf_map** %5, align 8
  %33 = call %struct.bpf_map_op* @bpf_map__def(%struct.bpf_map* %32)
  %34 = bitcast %struct.bpf_map_op* %33 to %struct.bpf_map_def*
  store %struct.bpf_map_def* %34, %struct.bpf_map_def** %9, align 8
  %35 = load %struct.bpf_map_def*, %struct.bpf_map_def** %9, align 8
  %36 = bitcast %struct.bpf_map_def* %35 to %struct.bpf_map_op*
  %37 = call i64 @IS_ERR(%struct.bpf_map_op* %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %45

39:                                               ; preds = %31
  %40 = load i8*, i8** %11, align 8
  %41 = call i32 (i8*, i8*, ...) @pr_debug(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0), i8* %40)
  %42 = load %struct.bpf_map_def*, %struct.bpf_map_def** %9, align 8
  %43 = bitcast %struct.bpf_map_def* %42 to %struct.bpf_map_op*
  %44 = call i32 @PTR_ERR(%struct.bpf_map_op* %43)
  store i32 %44, i32* %4, align 4
  br label %74

45:                                               ; preds = %31
  %46 = load %struct.bpf_map_def*, %struct.bpf_map_def** %9, align 8
  %47 = getelementptr inbounds %struct.bpf_map_def, %struct.bpf_map_def* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = load i64, i64* @BPF_MAP_TYPE_PERF_EVENT_ARRAY, align 8
  %50 = icmp ne i64 %48, %49
  br i1 %50, label %51, label %56

51:                                               ; preds = %45
  %52 = load i8*, i8** %11, align 8
  %53 = call i32 (i8*, i8*, ...) @pr_debug(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.2, i64 0, i64 0), i8* %52)
  %54 = load i32, i32* @BPF_LOADER_ERRNO__OBJCONF_MAP_TYPE, align 4
  %55 = sub nsw i32 0, %54
  store i32 %55, i32* %4, align 4
  br label %74

56:                                               ; preds = %45
  %57 = load %struct.bpf_map*, %struct.bpf_map** %5, align 8
  %58 = load %struct.parse_events_term*, %struct.parse_events_term** %6, align 8
  %59 = call %struct.bpf_map_op* @bpf_map__add_newop(%struct.bpf_map* %57, %struct.parse_events_term* %58)
  store %struct.bpf_map_op* %59, %struct.bpf_map_op** %10, align 8
  %60 = load %struct.bpf_map_op*, %struct.bpf_map_op** %10, align 8
  %61 = call i64 @IS_ERR(%struct.bpf_map_op* %60)
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %66

63:                                               ; preds = %56
  %64 = load %struct.bpf_map_op*, %struct.bpf_map_op** %10, align 8
  %65 = call i32 @PTR_ERR(%struct.bpf_map_op* %64)
  store i32 %65, i32* %4, align 4
  br label %74

66:                                               ; preds = %56
  %67 = load i32, i32* @BPF_MAP_OP_SET_EVSEL, align 4
  %68 = load %struct.bpf_map_op*, %struct.bpf_map_op** %10, align 8
  %69 = getelementptr inbounds %struct.bpf_map_op, %struct.bpf_map_op* %68, i32 0, i32 2
  store i32 %67, i32* %69, align 8
  %70 = load %struct.evsel*, %struct.evsel** %8, align 8
  %71 = load %struct.bpf_map_op*, %struct.bpf_map_op** %10, align 8
  %72 = getelementptr inbounds %struct.bpf_map_op, %struct.bpf_map_op* %71, i32 0, i32 1
  %73 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %72, i32 0, i32 0
  store %struct.evsel* %70, %struct.evsel** %73, align 8
  store i32 0, i32* %4, align 4
  br label %74

74:                                               ; preds = %66, %63, %51, %39, %22
  %75 = load i32, i32* %4, align 4
  ret i32 %75
}

declare dso_local i8* @bpf_map__name(%struct.bpf_map*) #1

declare dso_local %struct.evsel* @perf_evlist__find_evsel_by_str(%struct.evlist*, i32) #1

declare dso_local i32 @pr_debug(i8*, i8*, ...) #1

declare dso_local %struct.bpf_map_op* @bpf_map__def(%struct.bpf_map*) #1

declare dso_local i64 @IS_ERR(%struct.bpf_map_op*) #1

declare dso_local i32 @PTR_ERR(%struct.bpf_map_op*) #1

declare dso_local %struct.bpf_map_op* @bpf_map__add_newop(%struct.bpf_map*, %struct.parse_events_term*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
