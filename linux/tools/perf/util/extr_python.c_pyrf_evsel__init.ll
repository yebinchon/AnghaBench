; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/util/extr_python.c_pyrf_evsel__init.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/util/extr_python.c_pyrf_evsel__init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pyrf_evsel = type { i32 }
%struct.perf_event_attr = type { i32, i64, i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i64, i32, i32, i32, i32, i32, i32, i32 }

@PERF_SAMPLE_PERIOD = common dso_local global i32 0, align 4
@PERF_SAMPLE_TID = common dso_local global i32 0, align 4
@PERF_COUNT_HW_CPU_CYCLES = common dso_local global i32 0, align 4
@PERF_TYPE_HARDWARE = common dso_local global i32 0, align 4
@pyrf_evsel__init.kwlist = internal global [30 x i8*] [i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.7, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.9, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.10, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.11, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.12, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.13, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.15, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.16, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.17, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.18, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.19, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.20, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.21, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.22, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.23, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.24, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.25, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.26, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.27, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.28, i32 0, i32 0), i8* null], align 16
@.str = private unnamed_addr constant [5 x i8] c"type\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"config\00", align 1
@.str.2 = private unnamed_addr constant [12 x i8] c"sample_freq\00", align 1
@.str.3 = private unnamed_addr constant [14 x i8] c"sample_period\00", align 1
@.str.4 = private unnamed_addr constant [12 x i8] c"sample_type\00", align 1
@.str.5 = private unnamed_addr constant [12 x i8] c"read_format\00", align 1
@.str.6 = private unnamed_addr constant [9 x i8] c"disabled\00", align 1
@.str.7 = private unnamed_addr constant [8 x i8] c"inherit\00", align 1
@.str.8 = private unnamed_addr constant [7 x i8] c"pinned\00", align 1
@.str.9 = private unnamed_addr constant [10 x i8] c"exclusive\00", align 1
@.str.10 = private unnamed_addr constant [13 x i8] c"exclude_user\00", align 1
@.str.11 = private unnamed_addr constant [15 x i8] c"exclude_kernel\00", align 1
@.str.12 = private unnamed_addr constant [11 x i8] c"exclude_hv\00", align 1
@.str.13 = private unnamed_addr constant [13 x i8] c"exclude_idle\00", align 1
@.str.14 = private unnamed_addr constant [5 x i8] c"mmap\00", align 1
@.str.15 = private unnamed_addr constant [15 x i8] c"context_switch\00", align 1
@.str.16 = private unnamed_addr constant [5 x i8] c"comm\00", align 1
@.str.17 = private unnamed_addr constant [5 x i8] c"freq\00", align 1
@.str.18 = private unnamed_addr constant [13 x i8] c"inherit_stat\00", align 1
@.str.19 = private unnamed_addr constant [15 x i8] c"enable_on_exec\00", align 1
@.str.20 = private unnamed_addr constant [5 x i8] c"task\00", align 1
@.str.21 = private unnamed_addr constant [10 x i8] c"watermark\00", align 1
@.str.22 = private unnamed_addr constant [11 x i8] c"precise_ip\00", align 1
@.str.23 = private unnamed_addr constant [10 x i8] c"mmap_data\00", align 1
@.str.24 = private unnamed_addr constant [14 x i8] c"sample_id_all\00", align 1
@.str.25 = private unnamed_addr constant [14 x i8] c"wakeup_events\00", align 1
@.str.26 = private unnamed_addr constant [8 x i8] c"bp_type\00", align 1
@.str.27 = private unnamed_addr constant [8 x i8] c"bp_addr\00", align 1
@.str.28 = private unnamed_addr constant [7 x i8] c"bp_len\00", align 1
@.str.29 = private unnamed_addr constant [31 x i8] c"|iKiKKiiiiiiiiiiiiiiiiiiiiiiKK\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pyrf_evsel*, i32*, i32*)* @pyrf_evsel__init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pyrf_evsel__init(%struct.pyrf_evsel* %0, i32* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.pyrf_evsel*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.perf_event_attr, align 8
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i8*, align 8
  %19 = alloca i8*, align 8
  %20 = alloca i8*, align 8
  %21 = alloca i8*, align 8
  %22 = alloca i8*, align 8
  %23 = alloca i8*, align 8
  %24 = alloca i8*, align 8
  %25 = alloca i8*, align 8
  %26 = alloca i8*, align 8
  %27 = alloca i8*, align 8
  %28 = alloca i8*, align 8
  %29 = alloca i32, align 4
  store %struct.pyrf_evsel* %0, %struct.pyrf_evsel** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  %30 = bitcast %struct.perf_event_attr* %8 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %30, i8 0, i64 216, i1 false)
  %31 = getelementptr inbounds %struct.perf_event_attr, %struct.perf_event_attr* %8, i32 0, i32 0
  %32 = load i32, i32* @PERF_SAMPLE_PERIOD, align 4
  %33 = load i32, i32* @PERF_SAMPLE_TID, align 4
  %34 = or i32 %32, %33
  store i32 %34, i32* %31, align 8
  %35 = getelementptr inbounds %struct.perf_event_attr, %struct.perf_event_attr* %8, i32 0, i32 28
  %36 = load i32, i32* @PERF_COUNT_HW_CPU_CYCLES, align 4
  store i32 %36, i32* %35, align 4
  %37 = getelementptr inbounds %struct.perf_event_attr, %struct.perf_event_attr* %8, i32 0, i32 29
  %38 = load i32, i32* @PERF_TYPE_HARDWARE, align 4
  store i32 %38, i32* %37, align 8
  store i64 0, i64* %9, align 8
  store i8* null, i8** %10, align 8
  store i8* null, i8** %11, align 8
  store i8* null, i8** %12, align 8
  store i8* null, i8** %13, align 8
  store i8* null, i8** %14, align 8
  store i8* null, i8** %15, align 8
  store i8* null, i8** %16, align 8
  store i8* null, i8** %17, align 8
  store i8* null, i8** %18, align 8
  store i8* null, i8** %19, align 8
  store i8* null, i8** %20, align 8
  store i8* inttoptr (i64 1 to i8*), i8** %21, align 8
  store i8* null, i8** %22, align 8
  store i8* null, i8** %23, align 8
  store i8* null, i8** %24, align 8
  store i8* null, i8** %25, align 8
  store i8* null, i8** %26, align 8
  store i8* null, i8** %27, align 8
  store i8* inttoptr (i64 1 to i8*), i8** %28, align 8
  store i32 0, i32* %29, align 4
  %39 = load i32*, i32** %6, align 8
  %40 = load i32*, i32** %7, align 8
  %41 = getelementptr inbounds %struct.perf_event_attr, %struct.perf_event_attr* %8, i32 0, i32 29
  %42 = getelementptr inbounds %struct.perf_event_attr, %struct.perf_event_attr* %8, i32 0, i32 28
  %43 = getelementptr inbounds %struct.perf_event_attr, %struct.perf_event_attr* %8, i32 0, i32 1
  %44 = getelementptr inbounds %struct.perf_event_attr, %struct.perf_event_attr* %8, i32 0, i32 0
  %45 = getelementptr inbounds %struct.perf_event_attr, %struct.perf_event_attr* %8, i32 0, i32 27
  %46 = getelementptr inbounds %struct.perf_event_attr, %struct.perf_event_attr* %8, i32 0, i32 26
  %47 = getelementptr inbounds %struct.perf_event_attr, %struct.perf_event_attr* %8, i32 0, i32 25
  %48 = getelementptr inbounds %struct.perf_event_attr, %struct.perf_event_attr* %8, i32 0, i32 24
  %49 = getelementptr inbounds %struct.perf_event_attr, %struct.perf_event_attr* %8, i32 0, i32 23
  %50 = call i32 @PyArg_ParseTupleAndKeywords(i32* %39, i32* %40, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.29, i64 0, i64 0), i8** getelementptr inbounds ([30 x i8*], [30 x i8*]* @pyrf_evsel__init.kwlist, i64 0, i64 0), i32* %41, i32* %42, i64* %43, i64* %9, i32* %44, i32* %45, i8** %10, i8** %11, i8** %12, i8** %13, i8** %14, i8** %15, i8** %16, i8** %17, i8** %18, i8** %19, i8** %20, i8** %21, i8** %22, i8** %23, i8** %24, i8** %25, i8** %26, i8** %27, i8** %28, i32* %46, i32* %47, i32* %48, i32* %49, i32* %29)
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %53, label %52

52:                                               ; preds = %3
  store i32 -1, i32* %4, align 4
  br label %108

53:                                               ; preds = %3
  %54 = load i64, i64* %9, align 8
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %64

56:                                               ; preds = %53
  %57 = getelementptr inbounds %struct.perf_event_attr, %struct.perf_event_attr* %8, i32 0, i32 1
  %58 = load i64, i64* %57, align 8
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %61

60:                                               ; preds = %56
  store i32 -1, i32* %4, align 4
  br label %108

61:                                               ; preds = %56
  %62 = load i64, i64* %9, align 8
  %63 = getelementptr inbounds %struct.perf_event_attr, %struct.perf_event_attr* %8, i32 0, i32 22
  store i64 %62, i64* %63, align 8
  br label %64

64:                                               ; preds = %61, %53
  %65 = load i8*, i8** %10, align 8
  %66 = getelementptr inbounds %struct.perf_event_attr, %struct.perf_event_attr* %8, i32 0, i32 21
  store i8* %65, i8** %66, align 8
  %67 = load i8*, i8** %11, align 8
  %68 = getelementptr inbounds %struct.perf_event_attr, %struct.perf_event_attr* %8, i32 0, i32 20
  store i8* %67, i8** %68, align 8
  %69 = load i8*, i8** %12, align 8
  %70 = getelementptr inbounds %struct.perf_event_attr, %struct.perf_event_attr* %8, i32 0, i32 19
  store i8* %69, i8** %70, align 8
  %71 = load i8*, i8** %13, align 8
  %72 = getelementptr inbounds %struct.perf_event_attr, %struct.perf_event_attr* %8, i32 0, i32 18
  store i8* %71, i8** %72, align 8
  %73 = load i8*, i8** %14, align 8
  %74 = getelementptr inbounds %struct.perf_event_attr, %struct.perf_event_attr* %8, i32 0, i32 17
  store i8* %73, i8** %74, align 8
  %75 = load i8*, i8** %15, align 8
  %76 = getelementptr inbounds %struct.perf_event_attr, %struct.perf_event_attr* %8, i32 0, i32 16
  store i8* %75, i8** %76, align 8
  %77 = load i8*, i8** %16, align 8
  %78 = getelementptr inbounds %struct.perf_event_attr, %struct.perf_event_attr* %8, i32 0, i32 15
  store i8* %77, i8** %78, align 8
  %79 = load i8*, i8** %17, align 8
  %80 = getelementptr inbounds %struct.perf_event_attr, %struct.perf_event_attr* %8, i32 0, i32 14
  store i8* %79, i8** %80, align 8
  %81 = load i8*, i8** %18, align 8
  %82 = getelementptr inbounds %struct.perf_event_attr, %struct.perf_event_attr* %8, i32 0, i32 13
  store i8* %81, i8** %82, align 8
  %83 = load i8*, i8** %19, align 8
  %84 = getelementptr inbounds %struct.perf_event_attr, %struct.perf_event_attr* %8, i32 0, i32 12
  store i8* %83, i8** %84, align 8
  %85 = load i8*, i8** %20, align 8
  %86 = getelementptr inbounds %struct.perf_event_attr, %struct.perf_event_attr* %8, i32 0, i32 11
  store i8* %85, i8** %86, align 8
  %87 = load i8*, i8** %21, align 8
  %88 = getelementptr inbounds %struct.perf_event_attr, %struct.perf_event_attr* %8, i32 0, i32 10
  store i8* %87, i8** %88, align 8
  %89 = load i8*, i8** %22, align 8
  %90 = getelementptr inbounds %struct.perf_event_attr, %struct.perf_event_attr* %8, i32 0, i32 9
  store i8* %89, i8** %90, align 8
  %91 = load i8*, i8** %23, align 8
  %92 = getelementptr inbounds %struct.perf_event_attr, %struct.perf_event_attr* %8, i32 0, i32 8
  store i8* %91, i8** %92, align 8
  %93 = load i8*, i8** %24, align 8
  %94 = getelementptr inbounds %struct.perf_event_attr, %struct.perf_event_attr* %8, i32 0, i32 7
  store i8* %93, i8** %94, align 8
  %95 = load i8*, i8** %25, align 8
  %96 = getelementptr inbounds %struct.perf_event_attr, %struct.perf_event_attr* %8, i32 0, i32 6
  store i8* %95, i8** %96, align 8
  %97 = load i8*, i8** %26, align 8
  %98 = getelementptr inbounds %struct.perf_event_attr, %struct.perf_event_attr* %8, i32 0, i32 5
  store i8* %97, i8** %98, align 8
  %99 = load i8*, i8** %27, align 8
  %100 = getelementptr inbounds %struct.perf_event_attr, %struct.perf_event_attr* %8, i32 0, i32 4
  store i8* %99, i8** %100, align 8
  %101 = load i8*, i8** %28, align 8
  %102 = getelementptr inbounds %struct.perf_event_attr, %struct.perf_event_attr* %8, i32 0, i32 3
  store i8* %101, i8** %102, align 8
  %103 = getelementptr inbounds %struct.perf_event_attr, %struct.perf_event_attr* %8, i32 0, i32 2
  store i32 216, i32* %103, align 8
  %104 = load %struct.pyrf_evsel*, %struct.pyrf_evsel** %5, align 8
  %105 = getelementptr inbounds %struct.pyrf_evsel, %struct.pyrf_evsel* %104, i32 0, i32 0
  %106 = load i32, i32* %29, align 4
  %107 = call i32 @evsel__init(i32* %105, %struct.perf_event_attr* %8, i32 %106)
  store i32 0, i32* %4, align 4
  br label %108

108:                                              ; preds = %64, %60, %52
  %109 = load i32, i32* %4, align 4
  ret i32 %109
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @PyArg_ParseTupleAndKeywords(i32*, i32*, i8*, i8**, i32*, i32*, i64*, i64*, i32*, i32*, i8**, i8**, i8**, i8**, i8**, i8**, i8**, i8**, i8**, i8**, i8**, i8**, i8**, i8**, i8**, i8**, i8**, i8**, i8**, i32*, i32*, i32*, i32*, i32*) #2

declare dso_local i32 @evsel__init(i32*, %struct.perf_event_attr*, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
