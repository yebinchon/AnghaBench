; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/util/extr_bpf-loader.c_apply_config_evsel_for_key.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/util/extr_bpf-loader.c_apply_config_evsel_for_key.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.evsel = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.perf_event_attr, %struct.xyarray* }
%struct.perf_event_attr = type { i64, i64 }
%struct.xyarray = type { i32, i32, i32 }

@.str = private unnamed_addr constant [35 x i8] c"ERROR: evsel not ready for map %s\0A\00", align 1
@BPF_LOADER_ERRNO__INTERNAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [58 x i8] c"ERROR: Dimension of target event is incorrect for map %s\0A\00", align 1
@BPF_LOADER_ERRNO__OBJCONF_MAP_EVTDIM = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [44 x i8] c"ERROR: Can't put inherit event into map %s\0A\00", align 1
@BPF_LOADER_ERRNO__OBJCONF_MAP_EVTINH = common dso_local global i32 0, align 4
@PERF_TYPE_RAW = common dso_local global i64 0, align 8
@PERF_TYPE_HARDWARE = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [39 x i8] c"ERROR: Event type is wrong for map %s\0A\00", align 1
@BPF_LOADER_ERRNO__OBJCONF_MAP_EVTTYPE = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [40 x i8] c"ERROR: there is no event %d for map %s\0A\00", align 1
@BPF_LOADER_ERRNO__OBJCONF_MAP_MAPSIZE = common dso_local global i32 0, align 4
@BPF_ANY = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32, i8*, %struct.evsel*)* @apply_config_evsel_for_key to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @apply_config_evsel_for_key(i8* %0, i32 %1, i8* %2, %struct.evsel* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca %struct.evsel*, align 8
  %10 = alloca %struct.xyarray*, align 8
  %11 = alloca %struct.perf_event_attr*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32*, align 8
  %16 = alloca i32, align 4
  store i8* %0, i8** %6, align 8
  store i32 %1, i32* %7, align 4
  store i8* %2, i8** %8, align 8
  store %struct.evsel* %3, %struct.evsel** %9, align 8
  %17 = load %struct.evsel*, %struct.evsel** %9, align 8
  %18 = getelementptr inbounds %struct.evsel, %struct.evsel* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 1
  %20 = load %struct.xyarray*, %struct.xyarray** %19, align 8
  store %struct.xyarray* %20, %struct.xyarray** %10, align 8
  store i32 0, i32* %14, align 4
  %21 = load %struct.xyarray*, %struct.xyarray** %10, align 8
  %22 = icmp ne %struct.xyarray* %21, null
  br i1 %22, label %28, label %23

23:                                               ; preds = %4
  %24 = load i8*, i8** %6, align 8
  %25 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i8* %24)
  %26 = load i32, i32* @BPF_LOADER_ERRNO__INTERNAL, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %5, align 4
  br label %125

28:                                               ; preds = %4
  %29 = load %struct.xyarray*, %struct.xyarray** %10, align 8
  %30 = getelementptr inbounds %struct.xyarray, %struct.xyarray* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.xyarray*, %struct.xyarray** %10, align 8
  %33 = getelementptr inbounds %struct.xyarray, %struct.xyarray* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = sdiv i32 %31, %34
  %36 = icmp ne i32 %35, 1
  br i1 %36, label %37, label %42

37:                                               ; preds = %28
  %38 = load i8*, i8** %6, align 8
  %39 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.1, i64 0, i64 0), i8* %38)
  %40 = load i32, i32* @BPF_LOADER_ERRNO__OBJCONF_MAP_EVTDIM, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %5, align 4
  br label %125

42:                                               ; preds = %28
  %43 = load %struct.evsel*, %struct.evsel** %9, align 8
  %44 = getelementptr inbounds %struct.evsel, %struct.evsel* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 0
  store %struct.perf_event_attr* %45, %struct.perf_event_attr** %11, align 8
  %46 = load %struct.perf_event_attr*, %struct.perf_event_attr** %11, align 8
  %47 = getelementptr inbounds %struct.perf_event_attr, %struct.perf_event_attr* %46, i32 0, i32 1
  %48 = load i64, i64* %47, align 8
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %55

50:                                               ; preds = %42
  %51 = load i8*, i8** %6, align 8
  %52 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.2, i64 0, i64 0), i8* %51)
  %53 = load i32, i32* @BPF_LOADER_ERRNO__OBJCONF_MAP_EVTINH, align 4
  %54 = sub nsw i32 0, %53
  store i32 %54, i32* %5, align 4
  br label %125

55:                                               ; preds = %42
  %56 = load %struct.evsel*, %struct.evsel** %9, align 8
  %57 = call i64 @perf_evsel__is_bpf_output(%struct.evsel* %56)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %60

59:                                               ; preds = %55
  store i32 1, i32* %14, align 4
  br label %60

60:                                               ; preds = %59, %55
  %61 = load %struct.perf_event_attr*, %struct.perf_event_attr** %11, align 8
  %62 = getelementptr inbounds %struct.perf_event_attr, %struct.perf_event_attr* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = load i64, i64* @PERF_TYPE_RAW, align 8
  %65 = icmp eq i64 %63, %64
  br i1 %65, label %66, label %67

66:                                               ; preds = %60
  store i32 1, i32* %14, align 4
  br label %67

67:                                               ; preds = %66, %60
  %68 = load %struct.perf_event_attr*, %struct.perf_event_attr** %11, align 8
  %69 = getelementptr inbounds %struct.perf_event_attr, %struct.perf_event_attr* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = load i64, i64* @PERF_TYPE_HARDWARE, align 8
  %72 = icmp eq i64 %70, %71
  br i1 %72, label %73, label %74

73:                                               ; preds = %67
  store i32 1, i32* %14, align 4
  br label %74

74:                                               ; preds = %73, %67
  %75 = load i32, i32* %14, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %82, label %77

77:                                               ; preds = %74
  %78 = load i8*, i8** %6, align 8
  %79 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.3, i64 0, i64 0), i8* %78)
  %80 = load i32, i32* @BPF_LOADER_ERRNO__OBJCONF_MAP_EVTTYPE, align 4
  %81 = sub nsw i32 0, %80
  store i32 %81, i32* %5, align 4
  br label %125

82:                                               ; preds = %74
  %83 = load %struct.xyarray*, %struct.xyarray** %10, align 8
  %84 = getelementptr inbounds %struct.xyarray, %struct.xyarray* %83, i32 0, i32 2
  %85 = load i32, i32* %84, align 4
  %86 = load %struct.xyarray*, %struct.xyarray** %10, align 8
  %87 = getelementptr inbounds %struct.xyarray, %struct.xyarray* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = load %struct.xyarray*, %struct.xyarray** %10, align 8
  %90 = getelementptr inbounds %struct.xyarray, %struct.xyarray* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 4
  %92 = sdiv i32 %88, %91
  %93 = udiv i32 %85, %92
  store i32 %93, i32* %13, align 4
  %94 = load i8*, i8** %8, align 8
  %95 = bitcast i8* %94 to i32*
  %96 = load i32, i32* %95, align 4
  store i32 %96, i32* %12, align 4
  %97 = load i32, i32* %12, align 4
  %98 = load i32, i32* %13, align 4
  %99 = icmp uge i32 %97, %98
  br i1 %99, label %100, label %106

100:                                              ; preds = %82
  %101 = load i32, i32* %12, align 4
  %102 = load i8*, i8** %6, align 8
  %103 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.4, i64 0, i64 0), i32 %101, i8* %102)
  %104 = load i32, i32* @BPF_LOADER_ERRNO__OBJCONF_MAP_MAPSIZE, align 4
  %105 = sub nsw i32 0, %104
  store i32 %105, i32* %5, align 4
  br label %125

106:                                              ; preds = %82
  %107 = load %struct.xyarray*, %struct.xyarray** %10, align 8
  %108 = load i32, i32* %12, align 4
  %109 = call i32* @xyarray__entry(%struct.xyarray* %107, i32 %108, i32 0)
  store i32* %109, i32** %15, align 8
  %110 = load i32, i32* %7, align 4
  %111 = load i8*, i8** %8, align 8
  %112 = load i32*, i32** %15, align 8
  %113 = load i32, i32* @BPF_ANY, align 4
  %114 = call i32 @bpf_map_update_elem(i32 %110, i8* %111, i32* %112, i32 %113)
  store i32 %114, i32* %16, align 4
  %115 = load i32, i32* %16, align 4
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %117, label %123

117:                                              ; preds = %106
  %118 = load i32, i32* @errno, align 4
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %120, label %123

120:                                              ; preds = %117
  %121 = load i32, i32* @errno, align 4
  %122 = sub nsw i32 0, %121
  store i32 %122, i32* %16, align 4
  br label %123

123:                                              ; preds = %120, %117, %106
  %124 = load i32, i32* %16, align 4
  store i32 %124, i32* %5, align 4
  br label %125

125:                                              ; preds = %123, %100, %77, %50, %37, %23
  %126 = load i32, i32* %5, align 4
  ret i32 %126
}

declare dso_local i32 @pr_debug(i8*, ...) #1

declare dso_local i64 @perf_evsel__is_bpf_output(%struct.evsel*) #1

declare dso_local i32* @xyarray__entry(%struct.xyarray*, i32, i32) #1

declare dso_local i32 @bpf_map_update_elem(i32, i8*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
