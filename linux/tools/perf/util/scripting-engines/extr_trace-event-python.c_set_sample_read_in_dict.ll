; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/util/scripting-engines/extr_trace-event-python.c_set_sample_read_in_dict.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/util/scripting-engines/extr_trace-event-python.c_set_sample_read_in_dict.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.perf_sample = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32, %struct.TYPE_7__, i32, i32 }
%struct.TYPE_7__ = type { i32, i32* }
%struct.evsel = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }

@PERF_FORMAT_TOTAL_TIME_ENABLED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [13 x i8] c"time_enabled\00", align 1
@PERF_FORMAT_TOTAL_TIME_RUNNING = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [13 x i8] c"time_running\00", align 1
@PERF_FORMAT_GROUP = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [28 x i8] c"couldn't create Python list\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"values\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, %struct.perf_sample*, %struct.evsel*)* @set_sample_read_in_dict to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @set_sample_read_in_dict(i32* %0, %struct.perf_sample* %1, %struct.evsel* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca %struct.perf_sample*, align 8
  %6 = alloca %struct.evsel*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  store i32* %0, i32** %4, align 8
  store %struct.perf_sample* %1, %struct.perf_sample** %5, align 8
  store %struct.evsel* %2, %struct.evsel** %6, align 8
  %12 = load %struct.evsel*, %struct.evsel** %6, align 8
  %13 = getelementptr inbounds %struct.evsel, %struct.evsel* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  store i32 %16, i32* %7, align 4
  %17 = load i32, i32* %7, align 4
  %18 = load i32, i32* @PERF_FORMAT_TOTAL_TIME_ENABLED, align 4
  %19 = and i32 %17, %18
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %29

21:                                               ; preds = %3
  %22 = load i32*, i32** %4, align 8
  %23 = load %struct.perf_sample*, %struct.perf_sample** %5, align 8
  %24 = getelementptr inbounds %struct.perf_sample, %struct.perf_sample* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %24, i32 0, i32 3
  %26 = load i32, i32* %25, align 4
  %27 = call i32* @PyLong_FromUnsignedLongLong(i32 %26)
  %28 = call i32 @pydict_set_item_string_decref(i32* %22, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i32* %27)
  br label %29

29:                                               ; preds = %21, %3
  %30 = load i32, i32* %7, align 4
  %31 = load i32, i32* @PERF_FORMAT_TOTAL_TIME_RUNNING, align 4
  %32 = and i32 %30, %31
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %42

34:                                               ; preds = %29
  %35 = load i32*, i32** %4, align 8
  %36 = load %struct.perf_sample*, %struct.perf_sample** %5, align 8
  %37 = getelementptr inbounds %struct.perf_sample, %struct.perf_sample* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %37, i32 0, i32 2
  %39 = load i32, i32* %38, align 8
  %40 = call i32* @PyLong_FromUnsignedLongLong(i32 %39)
  %41 = call i32 @pydict_set_item_string_decref(i32* %35, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), i32* %40)
  br label %42

42:                                               ; preds = %34, %29
  %43 = load i32, i32* %7, align 4
  %44 = load i32, i32* @PERF_FORMAT_GROUP, align 4
  %45 = and i32 %43, %44
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %54

47:                                               ; preds = %42
  %48 = load %struct.perf_sample*, %struct.perf_sample** %5, align 8
  %49 = getelementptr inbounds %struct.perf_sample, %struct.perf_sample* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %49, i32 0, i32 1
  %51 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = call i32* @PyList_New(i32 %52)
  store i32* %53, i32** %8, align 8
  br label %56

54:                                               ; preds = %42
  %55 = call i32* @PyList_New(i32 1)
  store i32* %55, i32** %8, align 8
  br label %56

56:                                               ; preds = %54, %47
  %57 = load i32*, i32** %8, align 8
  %58 = icmp ne i32* %57, null
  br i1 %58, label %61, label %59

59:                                               ; preds = %56
  %60 = call i32 @Py_FatalError(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0))
  br label %61

61:                                               ; preds = %59, %56
  %62 = load i32, i32* %7, align 4
  %63 = load i32, i32* @PERF_FORMAT_GROUP, align 4
  %64 = and i32 %62, %63
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %93

66:                                               ; preds = %61
  store i32 0, i32* %9, align 4
  br label %67

67:                                               ; preds = %89, %66
  %68 = load i32, i32* %9, align 4
  %69 = load %struct.perf_sample*, %struct.perf_sample** %5, align 8
  %70 = getelementptr inbounds %struct.perf_sample, %struct.perf_sample* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %70, i32 0, i32 1
  %72 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = icmp ult i32 %68, %73
  br i1 %74, label %75, label %92

75:                                               ; preds = %67
  %76 = load %struct.perf_sample*, %struct.perf_sample** %5, align 8
  %77 = getelementptr inbounds %struct.perf_sample, %struct.perf_sample* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %77, i32 0, i32 1
  %79 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %78, i32 0, i32 1
  %80 = load i32*, i32** %79, align 8
  %81 = load i32, i32* %9, align 4
  %82 = zext i32 %81 to i64
  %83 = getelementptr inbounds i32, i32* %80, i64 %82
  %84 = call i32* @get_sample_value_as_tuple(i32* %83)
  store i32* %84, i32** %10, align 8
  %85 = load i32*, i32** %8, align 8
  %86 = load i32, i32* %9, align 4
  %87 = load i32*, i32** %10, align 8
  %88 = call i32 @PyList_SET_ITEM(i32* %85, i32 %86, i32* %87)
  br label %89

89:                                               ; preds = %75
  %90 = load i32, i32* %9, align 4
  %91 = add i32 %90, 1
  store i32 %91, i32* %9, align 4
  br label %67

92:                                               ; preds = %67
  br label %101

93:                                               ; preds = %61
  %94 = load %struct.perf_sample*, %struct.perf_sample** %5, align 8
  %95 = getelementptr inbounds %struct.perf_sample, %struct.perf_sample* %94, i32 0, i32 0
  %96 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %95, i32 0, i32 0
  %97 = call i32* @get_sample_value_as_tuple(i32* %96)
  store i32* %97, i32** %11, align 8
  %98 = load i32*, i32** %8, align 8
  %99 = load i32*, i32** %11, align 8
  %100 = call i32 @PyList_SET_ITEM(i32* %98, i32 0, i32* %99)
  br label %101

101:                                              ; preds = %93, %92
  %102 = load i32*, i32** %4, align 8
  %103 = load i32*, i32** %8, align 8
  %104 = call i32 @pydict_set_item_string_decref(i32* %102, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), i32* %103)
  ret void
}

declare dso_local i32 @pydict_set_item_string_decref(i32*, i8*, i32*) #1

declare dso_local i32* @PyLong_FromUnsignedLongLong(i32) #1

declare dso_local i32* @PyList_New(i32) #1

declare dso_local i32 @Py_FatalError(i8*) #1

declare dso_local i32* @get_sample_value_as_tuple(i32*) #1

declare dso_local i32 @PyList_SET_ITEM(i32*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
