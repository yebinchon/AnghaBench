; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/util/scripting-engines/extr_trace-event-python.c_get_perf_sample_dict.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/util/scripting-engines/extr_trace-event-python.c_get_perf_sample_dict.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.perf_sample = type { i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.evsel = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }
%struct.addr_location = type { i32, %struct.TYPE_8__*, %struct.TYPE_7__* }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 }

@.str = private unnamed_addr constant [34 x i8] c"couldn't create Python dictionary\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"ev_name\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"attr\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"pid\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"tid\00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c"cpu\00", align 1
@.str.6 = private unnamed_addr constant [3 x i8] c"ip\00", align 1
@.str.7 = private unnamed_addr constant [5 x i8] c"time\00", align 1
@.str.8 = private unnamed_addr constant [7 x i8] c"period\00", align 1
@.str.9 = private unnamed_addr constant [10 x i8] c"phys_addr\00", align 1
@.str.10 = private unnamed_addr constant [5 x i8] c"addr\00", align 1
@.str.11 = private unnamed_addr constant [7 x i8] c"weight\00", align 1
@.str.12 = private unnamed_addr constant [12 x i8] c"transaction\00", align 1
@.str.13 = private unnamed_addr constant [7 x i8] c"sample\00", align 1
@.str.14 = private unnamed_addr constant [8 x i8] c"raw_buf\00", align 1
@.str.15 = private unnamed_addr constant [5 x i8] c"comm\00", align 1
@.str.16 = private unnamed_addr constant [4 x i8] c"dso\00", align 1
@.str.17 = private unnamed_addr constant [7 x i8] c"symbol\00", align 1
@.str.18 = private unnamed_addr constant [10 x i8] c"callchain\00", align 1
@.str.19 = private unnamed_addr constant [8 x i8] c"brstack\00", align 1
@.str.20 = private unnamed_addr constant [11 x i8] c"brstacksym\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (%struct.perf_sample*, %struct.evsel*, %struct.addr_location*, i32*)* @get_perf_sample_dict to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @get_perf_sample_dict(%struct.perf_sample* %0, %struct.evsel* %1, %struct.addr_location* %2, i32* %3) #0 {
  %5 = alloca %struct.perf_sample*, align 8
  %6 = alloca %struct.evsel*, align 8
  %7 = alloca %struct.addr_location*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  store %struct.perf_sample* %0, %struct.perf_sample** %5, align 8
  store %struct.evsel* %1, %struct.evsel** %6, align 8
  store %struct.addr_location* %2, %struct.addr_location** %7, align 8
  store i32* %3, i32** %8, align 8
  %13 = call i32* (...) @PyDict_New()
  store i32* %13, i32** %9, align 8
  %14 = load i32*, i32** %9, align 8
  %15 = icmp ne i32* %14, null
  br i1 %15, label %18, label %16

16:                                               ; preds = %4
  %17 = call i32 @Py_FatalError(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  br label %18

18:                                               ; preds = %16, %4
  %19 = call i32* (...) @PyDict_New()
  store i32* %19, i32** %10, align 8
  %20 = load i32*, i32** %10, align 8
  %21 = icmp ne i32* %20, null
  br i1 %21, label %24, label %22

22:                                               ; preds = %18
  %23 = call i32 @Py_FatalError(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  br label %24

24:                                               ; preds = %22, %18
  %25 = load i32*, i32** %9, align 8
  %26 = load %struct.evsel*, %struct.evsel** %6, align 8
  %27 = call i32 @perf_evsel__name(%struct.evsel* %26)
  %28 = call i32* @_PyUnicode_FromString(i32 %27)
  %29 = call i32 @pydict_set_item_string_decref(i32* %25, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i32* %28)
  %30 = load i32*, i32** %9, align 8
  %31 = load %struct.evsel*, %struct.evsel** %6, align 8
  %32 = getelementptr inbounds %struct.evsel, %struct.evsel* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %32, i32 0, i32 0
  %34 = bitcast i32* %33 to i8*
  %35 = call i32* @_PyBytes_FromStringAndSize(i8* %34, i32 4)
  %36 = call i32 @pydict_set_item_string_decref(i32* %30, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i32* %35)
  %37 = load i32*, i32** %10, align 8
  %38 = load %struct.perf_sample*, %struct.perf_sample** %5, align 8
  %39 = getelementptr inbounds %struct.perf_sample, %struct.perf_sample* %38, i32 0, i32 11
  %40 = load i32, i32* %39, align 4
  %41 = call i32* @_PyLong_FromLong(i32 %40)
  %42 = call i32 @pydict_set_item_string_decref(i32* %37, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i32* %41)
  %43 = load i32*, i32** %10, align 8
  %44 = load %struct.perf_sample*, %struct.perf_sample** %5, align 8
  %45 = getelementptr inbounds %struct.perf_sample, %struct.perf_sample* %44, i32 0, i32 10
  %46 = load i32, i32* %45, align 8
  %47 = call i32* @_PyLong_FromLong(i32 %46)
  %48 = call i32 @pydict_set_item_string_decref(i32* %43, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), i32* %47)
  %49 = load i32*, i32** %10, align 8
  %50 = load %struct.perf_sample*, %struct.perf_sample** %5, align 8
  %51 = getelementptr inbounds %struct.perf_sample, %struct.perf_sample* %50, i32 0, i32 9
  %52 = load i32, i32* %51, align 4
  %53 = call i32* @_PyLong_FromLong(i32 %52)
  %54 = call i32 @pydict_set_item_string_decref(i32* %49, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0), i32* %53)
  %55 = load i32*, i32** %10, align 8
  %56 = load %struct.perf_sample*, %struct.perf_sample** %5, align 8
  %57 = getelementptr inbounds %struct.perf_sample, %struct.perf_sample* %56, i32 0, i32 8
  %58 = load i32, i32* %57, align 8
  %59 = call i32* @PyLong_FromUnsignedLongLong(i32 %58)
  %60 = call i32 @pydict_set_item_string_decref(i32* %55, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i64 0, i64 0), i32* %59)
  %61 = load i32*, i32** %10, align 8
  %62 = load %struct.perf_sample*, %struct.perf_sample** %5, align 8
  %63 = getelementptr inbounds %struct.perf_sample, %struct.perf_sample* %62, i32 0, i32 7
  %64 = load i32, i32* %63, align 4
  %65 = call i32* @PyLong_FromUnsignedLongLong(i32 %64)
  %66 = call i32 @pydict_set_item_string_decref(i32* %61, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0), i32* %65)
  %67 = load i32*, i32** %10, align 8
  %68 = load %struct.perf_sample*, %struct.perf_sample** %5, align 8
  %69 = getelementptr inbounds %struct.perf_sample, %struct.perf_sample* %68, i32 0, i32 6
  %70 = load i32, i32* %69, align 8
  %71 = call i32* @PyLong_FromUnsignedLongLong(i32 %70)
  %72 = call i32 @pydict_set_item_string_decref(i32* %67, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8, i64 0, i64 0), i32* %71)
  %73 = load i32*, i32** %10, align 8
  %74 = load %struct.perf_sample*, %struct.perf_sample** %5, align 8
  %75 = getelementptr inbounds %struct.perf_sample, %struct.perf_sample* %74, i32 0, i32 5
  %76 = load i32, i32* %75, align 4
  %77 = call i32* @PyLong_FromUnsignedLongLong(i32 %76)
  %78 = call i32 @pydict_set_item_string_decref(i32* %73, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.9, i64 0, i64 0), i32* %77)
  %79 = load i32*, i32** %10, align 8
  %80 = load %struct.perf_sample*, %struct.perf_sample** %5, align 8
  %81 = getelementptr inbounds %struct.perf_sample, %struct.perf_sample* %80, i32 0, i32 4
  %82 = load i32, i32* %81, align 8
  %83 = call i32* @PyLong_FromUnsignedLongLong(i32 %82)
  %84 = call i32 @pydict_set_item_string_decref(i32* %79, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i64 0, i64 0), i32* %83)
  %85 = load i32*, i32** %10, align 8
  %86 = load %struct.perf_sample*, %struct.perf_sample** %5, align 8
  %87 = load %struct.evsel*, %struct.evsel** %6, align 8
  %88 = call i32 @set_sample_read_in_dict(i32* %85, %struct.perf_sample* %86, %struct.evsel* %87)
  %89 = load i32*, i32** %10, align 8
  %90 = load %struct.perf_sample*, %struct.perf_sample** %5, align 8
  %91 = getelementptr inbounds %struct.perf_sample, %struct.perf_sample* %90, i32 0, i32 3
  %92 = load i32, i32* %91, align 4
  %93 = call i32* @PyLong_FromUnsignedLongLong(i32 %92)
  %94 = call i32 @pydict_set_item_string_decref(i32* %89, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.11, i64 0, i64 0), i32* %93)
  %95 = load i32*, i32** %10, align 8
  %96 = load %struct.perf_sample*, %struct.perf_sample** %5, align 8
  %97 = getelementptr inbounds %struct.perf_sample, %struct.perf_sample* %96, i32 0, i32 2
  %98 = load i32, i32* %97, align 8
  %99 = call i32* @PyLong_FromUnsignedLongLong(i32 %98)
  %100 = call i32 @pydict_set_item_string_decref(i32* %95, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.12, i64 0, i64 0), i32* %99)
  %101 = load i32*, i32** %10, align 8
  %102 = load %struct.perf_sample*, %struct.perf_sample** %5, align 8
  %103 = call i32 @set_sample_datasrc_in_dict(i32* %101, %struct.perf_sample* %102)
  %104 = load i32*, i32** %9, align 8
  %105 = load i32*, i32** %10, align 8
  %106 = call i32 @pydict_set_item_string_decref(i32* %104, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.13, i64 0, i64 0), i32* %105)
  %107 = load i32*, i32** %9, align 8
  %108 = load %struct.perf_sample*, %struct.perf_sample** %5, align 8
  %109 = getelementptr inbounds %struct.perf_sample, %struct.perf_sample* %108, i32 0, i32 1
  %110 = load i64, i64* %109, align 8
  %111 = inttoptr i64 %110 to i8*
  %112 = load %struct.perf_sample*, %struct.perf_sample** %5, align 8
  %113 = getelementptr inbounds %struct.perf_sample, %struct.perf_sample* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 8
  %115 = call i32* @_PyBytes_FromStringAndSize(i8* %111, i32 %114)
  %116 = call i32 @pydict_set_item_string_decref(i32* %107, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.14, i64 0, i64 0), i32* %115)
  %117 = load i32*, i32** %9, align 8
  %118 = load %struct.addr_location*, %struct.addr_location** %7, align 8
  %119 = getelementptr inbounds %struct.addr_location, %struct.addr_location* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 8
  %121 = call i32 @thread__comm_str(i32 %120)
  %122 = call i32* @_PyUnicode_FromString(i32 %121)
  %123 = call i32 @pydict_set_item_string_decref(i32* %117, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.15, i64 0, i64 0), i32* %122)
  %124 = load %struct.addr_location*, %struct.addr_location** %7, align 8
  %125 = getelementptr inbounds %struct.addr_location, %struct.addr_location* %124, i32 0, i32 2
  %126 = load %struct.TYPE_7__*, %struct.TYPE_7__** %125, align 8
  %127 = icmp ne %struct.TYPE_7__* %126, null
  br i1 %127, label %128, label %139

128:                                              ; preds = %24
  %129 = load i32*, i32** %9, align 8
  %130 = load %struct.addr_location*, %struct.addr_location** %7, align 8
  %131 = getelementptr inbounds %struct.addr_location, %struct.addr_location* %130, i32 0, i32 2
  %132 = load %struct.TYPE_7__*, %struct.TYPE_7__** %131, align 8
  %133 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %132, i32 0, i32 0
  %134 = load %struct.TYPE_6__*, %struct.TYPE_6__** %133, align 8
  %135 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %134, i32 0, i32 0
  %136 = load i32, i32* %135, align 4
  %137 = call i32* @_PyUnicode_FromString(i32 %136)
  %138 = call i32 @pydict_set_item_string_decref(i32* %129, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.16, i64 0, i64 0), i32* %137)
  br label %139

139:                                              ; preds = %128, %24
  %140 = load %struct.addr_location*, %struct.addr_location** %7, align 8
  %141 = getelementptr inbounds %struct.addr_location, %struct.addr_location* %140, i32 0, i32 1
  %142 = load %struct.TYPE_8__*, %struct.TYPE_8__** %141, align 8
  %143 = icmp ne %struct.TYPE_8__* %142, null
  br i1 %143, label %144, label %153

144:                                              ; preds = %139
  %145 = load i32*, i32** %9, align 8
  %146 = load %struct.addr_location*, %struct.addr_location** %7, align 8
  %147 = getelementptr inbounds %struct.addr_location, %struct.addr_location* %146, i32 0, i32 1
  %148 = load %struct.TYPE_8__*, %struct.TYPE_8__** %147, align 8
  %149 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %148, i32 0, i32 0
  %150 = load i32, i32* %149, align 4
  %151 = call i32* @_PyUnicode_FromString(i32 %150)
  %152 = call i32 @pydict_set_item_string_decref(i32* %145, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.17, i64 0, i64 0), i32* %151)
  br label %153

153:                                              ; preds = %144, %139
  %154 = load i32*, i32** %9, align 8
  %155 = load i32*, i32** %8, align 8
  %156 = call i32 @pydict_set_item_string_decref(i32* %154, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.18, i64 0, i64 0), i32* %155)
  %157 = load %struct.perf_sample*, %struct.perf_sample** %5, align 8
  %158 = load %struct.addr_location*, %struct.addr_location** %7, align 8
  %159 = getelementptr inbounds %struct.addr_location, %struct.addr_location* %158, i32 0, i32 0
  %160 = load i32, i32* %159, align 8
  %161 = call i32* @python_process_brstack(%struct.perf_sample* %157, i32 %160)
  store i32* %161, i32** %11, align 8
  %162 = load i32*, i32** %9, align 8
  %163 = load i32*, i32** %11, align 8
  %164 = call i32 @pydict_set_item_string_decref(i32* %162, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.19, i64 0, i64 0), i32* %163)
  %165 = load %struct.perf_sample*, %struct.perf_sample** %5, align 8
  %166 = load %struct.addr_location*, %struct.addr_location** %7, align 8
  %167 = getelementptr inbounds %struct.addr_location, %struct.addr_location* %166, i32 0, i32 0
  %168 = load i32, i32* %167, align 8
  %169 = call i32* @python_process_brstacksym(%struct.perf_sample* %165, i32 %168)
  store i32* %169, i32** %12, align 8
  %170 = load i32*, i32** %9, align 8
  %171 = load i32*, i32** %12, align 8
  %172 = call i32 @pydict_set_item_string_decref(i32* %170, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.20, i64 0, i64 0), i32* %171)
  %173 = load i32*, i32** %9, align 8
  %174 = load %struct.perf_sample*, %struct.perf_sample** %5, align 8
  %175 = load %struct.evsel*, %struct.evsel** %6, align 8
  %176 = call i32 @set_regs_in_dict(i32* %173, %struct.perf_sample* %174, %struct.evsel* %175)
  %177 = load i32*, i32** %9, align 8
  ret i32* %177
}

declare dso_local i32* @PyDict_New(...) #1

declare dso_local i32 @Py_FatalError(i8*) #1

declare dso_local i32 @pydict_set_item_string_decref(i32*, i8*, i32*) #1

declare dso_local i32* @_PyUnicode_FromString(i32) #1

declare dso_local i32 @perf_evsel__name(%struct.evsel*) #1

declare dso_local i32* @_PyBytes_FromStringAndSize(i8*, i32) #1

declare dso_local i32* @_PyLong_FromLong(i32) #1

declare dso_local i32* @PyLong_FromUnsignedLongLong(i32) #1

declare dso_local i32 @set_sample_read_in_dict(i32*, %struct.perf_sample*, %struct.evsel*) #1

declare dso_local i32 @set_sample_datasrc_in_dict(i32*, %struct.perf_sample*) #1

declare dso_local i32 @thread__comm_str(i32) #1

declare dso_local i32* @python_process_brstack(%struct.perf_sample*, i32) #1

declare dso_local i32* @python_process_brstacksym(%struct.perf_sample*, i32) #1

declare dso_local i32 @set_regs_in_dict(i32*, %struct.perf_sample*, %struct.evsel*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
