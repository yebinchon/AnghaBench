; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/util/extr_cs-etm.c_cs_etm__mem_access.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/util/extr_cs-etm.c_cs_etm__mem_access.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cs_etm_queue = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { %struct.thread*, %struct.machine* }
%struct.thread = type { i32 }
%struct.machine = type { i32 }
%struct.addr_location = type { %struct.TYPE_9__* }
%struct.TYPE_9__ = type { %struct.TYPE_10__*, i32 (%struct.TYPE_9__*, i32)* }
%struct.TYPE_10__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i64 }
%struct.cs_etm_traceid_queue = type { %struct.thread* }

@PERF_RECORD_MISC_KERNEL = common dso_local global i64 0, align 8
@DSO_DATA_STATUS_ERROR = common dso_local global i64 0, align 8
@DSO_DATA_STATUS_SEEN_ITRACE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cs_etm_queue*, i64, i32, i64, i64*)* @cs_etm__mem_access to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cs_etm__mem_access(%struct.cs_etm_queue* %0, i64 %1, i32 %2, i64 %3, i64* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.cs_etm_queue*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i64*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.thread*, align 8
  %16 = alloca %struct.machine*, align 8
  %17 = alloca %struct.addr_location, align 8
  %18 = alloca %struct.cs_etm_traceid_queue*, align 8
  store %struct.cs_etm_queue* %0, %struct.cs_etm_queue** %7, align 8
  store i64 %1, i64* %8, align 8
  store i32 %2, i32* %9, align 4
  store i64 %3, i64* %10, align 8
  store i64* %4, i64** %11, align 8
  %19 = load %struct.cs_etm_queue*, %struct.cs_etm_queue** %7, align 8
  %20 = icmp ne %struct.cs_etm_queue* %19, null
  br i1 %20, label %22, label %21

21:                                               ; preds = %5
  store i32 0, i32* %6, align 4
  br label %112

22:                                               ; preds = %5
  %23 = load %struct.cs_etm_queue*, %struct.cs_etm_queue** %7, align 8
  %24 = getelementptr inbounds %struct.cs_etm_queue, %struct.cs_etm_queue* %23, i32 0, i32 0
  %25 = load %struct.TYPE_7__*, %struct.TYPE_7__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %25, i32 0, i32 1
  %27 = load %struct.machine*, %struct.machine** %26, align 8
  store %struct.machine* %27, %struct.machine** %16, align 8
  %28 = load %struct.cs_etm_queue*, %struct.cs_etm_queue** %7, align 8
  %29 = load i32, i32* %9, align 4
  %30 = call i64 @cs_etm__cpu_mode(%struct.cs_etm_queue* %28, i32 %29)
  store i64 %30, i64* %12, align 8
  %31 = load %struct.cs_etm_queue*, %struct.cs_etm_queue** %7, align 8
  %32 = load i64, i64* %8, align 8
  %33 = call %struct.cs_etm_traceid_queue* @cs_etm__etmq_get_traceid_queue(%struct.cs_etm_queue* %31, i64 %32)
  store %struct.cs_etm_traceid_queue* %33, %struct.cs_etm_traceid_queue** %18, align 8
  %34 = load %struct.cs_etm_traceid_queue*, %struct.cs_etm_traceid_queue** %18, align 8
  %35 = icmp ne %struct.cs_etm_traceid_queue* %34, null
  br i1 %35, label %37, label %36

36:                                               ; preds = %22
  store i32 0, i32* %6, align 4
  br label %112

37:                                               ; preds = %22
  %38 = load %struct.cs_etm_traceid_queue*, %struct.cs_etm_traceid_queue** %18, align 8
  %39 = getelementptr inbounds %struct.cs_etm_traceid_queue, %struct.cs_etm_traceid_queue* %38, i32 0, i32 0
  %40 = load %struct.thread*, %struct.thread** %39, align 8
  store %struct.thread* %40, %struct.thread** %15, align 8
  %41 = load %struct.thread*, %struct.thread** %15, align 8
  %42 = icmp ne %struct.thread* %41, null
  br i1 %42, label %54, label %43

43:                                               ; preds = %37
  %44 = load i64, i64* %12, align 8
  %45 = load i64, i64* @PERF_RECORD_MISC_KERNEL, align 8
  %46 = icmp ne i64 %44, %45
  br i1 %46, label %47, label %48

47:                                               ; preds = %43
  store i32 0, i32* %6, align 4
  br label %112

48:                                               ; preds = %43
  %49 = load %struct.cs_etm_queue*, %struct.cs_etm_queue** %7, align 8
  %50 = getelementptr inbounds %struct.cs_etm_queue, %struct.cs_etm_queue* %49, i32 0, i32 0
  %51 = load %struct.TYPE_7__*, %struct.TYPE_7__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %51, i32 0, i32 0
  %53 = load %struct.thread*, %struct.thread** %52, align 8
  store %struct.thread* %53, %struct.thread** %15, align 8
  br label %54

54:                                               ; preds = %48, %37
  %55 = load %struct.thread*, %struct.thread** %15, align 8
  %56 = load i64, i64* %12, align 8
  %57 = load i32, i32* %9, align 4
  %58 = call i32 @thread__find_map(%struct.thread* %55, i64 %56, i32 %57, %struct.addr_location* %17)
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %66

60:                                               ; preds = %54
  %61 = getelementptr inbounds %struct.addr_location, %struct.addr_location* %17, i32 0, i32 0
  %62 = load %struct.TYPE_9__*, %struct.TYPE_9__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %62, i32 0, i32 0
  %64 = load %struct.TYPE_10__*, %struct.TYPE_10__** %63, align 8
  %65 = icmp ne %struct.TYPE_10__* %64, null
  br i1 %65, label %67, label %66

66:                                               ; preds = %60, %54
  store i32 0, i32* %6, align 4
  br label %112

67:                                               ; preds = %60
  %68 = getelementptr inbounds %struct.addr_location, %struct.addr_location* %17, i32 0, i32 0
  %69 = load %struct.TYPE_9__*, %struct.TYPE_9__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %69, i32 0, i32 0
  %71 = load %struct.TYPE_10__*, %struct.TYPE_10__** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = load i64, i64* @DSO_DATA_STATUS_ERROR, align 8
  %76 = icmp eq i64 %74, %75
  br i1 %76, label %77, label %86

77:                                               ; preds = %67
  %78 = getelementptr inbounds %struct.addr_location, %struct.addr_location* %17, i32 0, i32 0
  %79 = load %struct.TYPE_9__*, %struct.TYPE_9__** %78, align 8
  %80 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %79, i32 0, i32 0
  %81 = load %struct.TYPE_10__*, %struct.TYPE_10__** %80, align 8
  %82 = load i32, i32* @DSO_DATA_STATUS_SEEN_ITRACE, align 4
  %83 = call i64 @dso__data_status_seen(%struct.TYPE_10__* %81, i32 %82)
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %86

85:                                               ; preds = %77
  store i32 0, i32* %6, align 4
  br label %112

86:                                               ; preds = %77, %67
  %87 = getelementptr inbounds %struct.addr_location, %struct.addr_location* %17, i32 0, i32 0
  %88 = load %struct.TYPE_9__*, %struct.TYPE_9__** %87, align 8
  %89 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %88, i32 0, i32 1
  %90 = load i32 (%struct.TYPE_9__*, i32)*, i32 (%struct.TYPE_9__*, i32)** %89, align 8
  %91 = getelementptr inbounds %struct.addr_location, %struct.addr_location* %17, i32 0, i32 0
  %92 = load %struct.TYPE_9__*, %struct.TYPE_9__** %91, align 8
  %93 = load i32, i32* %9, align 4
  %94 = call i32 %90(%struct.TYPE_9__* %92, i32 %93)
  store i32 %94, i32* %13, align 4
  %95 = getelementptr inbounds %struct.addr_location, %struct.addr_location* %17, i32 0, i32 0
  %96 = load %struct.TYPE_9__*, %struct.TYPE_9__** %95, align 8
  %97 = call i32 @map__load(%struct.TYPE_9__* %96)
  %98 = getelementptr inbounds %struct.addr_location, %struct.addr_location* %17, i32 0, i32 0
  %99 = load %struct.TYPE_9__*, %struct.TYPE_9__** %98, align 8
  %100 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %99, i32 0, i32 0
  %101 = load %struct.TYPE_10__*, %struct.TYPE_10__** %100, align 8
  %102 = load %struct.machine*, %struct.machine** %16, align 8
  %103 = load i32, i32* %13, align 4
  %104 = load i64*, i64** %11, align 8
  %105 = load i64, i64* %10, align 8
  %106 = call i32 @dso__data_read_offset(%struct.TYPE_10__* %101, %struct.machine* %102, i32 %103, i64* %104, i64 %105)
  store i32 %106, i32* %14, align 4
  %107 = load i32, i32* %14, align 4
  %108 = icmp sle i32 %107, 0
  br i1 %108, label %109, label %110

109:                                              ; preds = %86
  store i32 0, i32* %6, align 4
  br label %112

110:                                              ; preds = %86
  %111 = load i32, i32* %14, align 4
  store i32 %111, i32* %6, align 4
  br label %112

112:                                              ; preds = %110, %109, %85, %66, %47, %36, %21
  %113 = load i32, i32* %6, align 4
  ret i32 %113
}

declare dso_local i64 @cs_etm__cpu_mode(%struct.cs_etm_queue*, i32) #1

declare dso_local %struct.cs_etm_traceid_queue* @cs_etm__etmq_get_traceid_queue(%struct.cs_etm_queue*, i64) #1

declare dso_local i32 @thread__find_map(%struct.thread*, i64, i32, %struct.addr_location*) #1

declare dso_local i64 @dso__data_status_seen(%struct.TYPE_10__*, i32) #1

declare dso_local i32 @map__load(%struct.TYPE_9__*) #1

declare dso_local i32 @dso__data_read_offset(%struct.TYPE_10__*, %struct.machine*, i32, i64*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
