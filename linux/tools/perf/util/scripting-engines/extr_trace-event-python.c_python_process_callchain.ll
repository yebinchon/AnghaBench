; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/util/scripting-engines/extr_trace-event-python.c_python_process_callchain.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/util/scripting-engines/extr_trace-event-python.c_python_process_callchain.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }
%struct.perf_sample = type { i32 }
%struct.evsel = type { i32 }
%struct.addr_location = type { i32 }
%struct.callchain_cursor_node = type { i64, %struct.TYPE_3__*, i32 }
%struct.TYPE_3__ = type { i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [28 x i8] c"couldn't create Python list\00", align 1
@symbol_conf = common dso_local global %struct.TYPE_4__ zeroinitializer, align 4
@callchain_cursor = common dso_local global i32 0, align 4
@scripting_max_stack = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [39 x i8] c"Failed to resolve callchain. Skipping\0A\00", align 1
@.str.2 = private unnamed_addr constant [34 x i8] c"couldn't create Python dictionary\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"ip\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"start\00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c"end\00", align 1
@.str.6 = private unnamed_addr constant [8 x i8] c"binding\00", align 1
@.str.7 = private unnamed_addr constant [5 x i8] c"name\00", align 1
@.str.8 = private unnamed_addr constant [4 x i8] c"sym\00", align 1
@.str.9 = private unnamed_addr constant [4 x i8] c"dso\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (%struct.perf_sample*, %struct.evsel*, %struct.addr_location*)* @python_process_callchain to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @python_process_callchain(%struct.perf_sample* %0, %struct.evsel* %1, %struct.addr_location* %2) #0 {
  %4 = alloca %struct.perf_sample*, align 8
  %5 = alloca %struct.evsel*, align 8
  %6 = alloca %struct.addr_location*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.callchain_cursor_node*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i8*, align 8
  store %struct.perf_sample* %0, %struct.perf_sample** %4, align 8
  store %struct.evsel* %1, %struct.evsel** %5, align 8
  store %struct.addr_location* %2, %struct.addr_location** %6, align 8
  %12 = call i32* @PyList_New(i32 0)
  store i32* %12, i32** %7, align 8
  %13 = load i32*, i32** %7, align 8
  %14 = icmp ne i32* %13, null
  br i1 %14, label %17, label %15

15:                                               ; preds = %3
  %16 = call i32 @Py_FatalError(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  br label %17

17:                                               ; preds = %15, %3
  %18 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @symbol_conf, i32 0, i32 0), align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %25

20:                                               ; preds = %17
  %21 = load %struct.perf_sample*, %struct.perf_sample** %4, align 8
  %22 = getelementptr inbounds %struct.perf_sample, %struct.perf_sample* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %26, label %25

25:                                               ; preds = %20, %17
  br label %130

26:                                               ; preds = %20
  %27 = load %struct.addr_location*, %struct.addr_location** %6, align 8
  %28 = getelementptr inbounds %struct.addr_location, %struct.addr_location* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.evsel*, %struct.evsel** %5, align 8
  %31 = load %struct.perf_sample*, %struct.perf_sample** %4, align 8
  %32 = load i32, i32* @scripting_max_stack, align 4
  %33 = call i64 @thread__resolve_callchain(i32 %29, i32* @callchain_cursor, %struct.evsel* %30, %struct.perf_sample* %31, i32* null, i32* null, i32 %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %26
  %36 = call i32 @pr_err(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0))
  br label %130

37:                                               ; preds = %26
  %38 = call i32 @callchain_cursor_commit(i32* @callchain_cursor)
  br label %39

39:                                               ; preds = %37, %122
  %40 = call %struct.callchain_cursor_node* @callchain_cursor_current(i32* @callchain_cursor)
  store %struct.callchain_cursor_node* %40, %struct.callchain_cursor_node** %9, align 8
  %41 = load %struct.callchain_cursor_node*, %struct.callchain_cursor_node** %9, align 8
  %42 = icmp ne %struct.callchain_cursor_node* %41, null
  br i1 %42, label %44, label %43

43:                                               ; preds = %39
  br label %129

44:                                               ; preds = %39
  %45 = call i32* (...) @PyDict_New()
  store i32* %45, i32** %8, align 8
  %46 = load i32*, i32** %8, align 8
  %47 = icmp ne i32* %46, null
  br i1 %47, label %50, label %48

48:                                               ; preds = %44
  %49 = call i32 @Py_FatalError(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0))
  br label %50

50:                                               ; preds = %48, %44
  %51 = load i32*, i32** %8, align 8
  %52 = load %struct.callchain_cursor_node*, %struct.callchain_cursor_node** %9, align 8
  %53 = getelementptr inbounds %struct.callchain_cursor_node, %struct.callchain_cursor_node* %52, i32 0, i32 2
  %54 = load i32, i32* %53, align 8
  %55 = call i32* @PyLong_FromUnsignedLongLong(i32 %54)
  %56 = call i32 @pydict_set_item_string_decref(i32* %51, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i32* %55)
  %57 = load %struct.callchain_cursor_node*, %struct.callchain_cursor_node** %9, align 8
  %58 = getelementptr inbounds %struct.callchain_cursor_node, %struct.callchain_cursor_node* %57, i32 0, i32 1
  %59 = load %struct.TYPE_3__*, %struct.TYPE_3__** %58, align 8
  %60 = icmp ne %struct.TYPE_3__* %59, null
  br i1 %60, label %61, label %108

61:                                               ; preds = %50
  %62 = call i32* (...) @PyDict_New()
  store i32* %62, i32** %10, align 8
  %63 = load i32*, i32** %10, align 8
  %64 = icmp ne i32* %63, null
  br i1 %64, label %67, label %65

65:                                               ; preds = %61
  %66 = call i32 @Py_FatalError(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0))
  br label %67

67:                                               ; preds = %65, %61
  %68 = load i32*, i32** %10, align 8
  %69 = load %struct.callchain_cursor_node*, %struct.callchain_cursor_node** %9, align 8
  %70 = getelementptr inbounds %struct.callchain_cursor_node, %struct.callchain_cursor_node* %69, i32 0, i32 1
  %71 = load %struct.TYPE_3__*, %struct.TYPE_3__** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %71, i32 0, i32 4
  %73 = load i32, i32* %72, align 4
  %74 = call i32* @PyLong_FromUnsignedLongLong(i32 %73)
  %75 = call i32 @pydict_set_item_string_decref(i32* %68, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0), i32* %74)
  %76 = load i32*, i32** %10, align 8
  %77 = load %struct.callchain_cursor_node*, %struct.callchain_cursor_node** %9, align 8
  %78 = getelementptr inbounds %struct.callchain_cursor_node, %struct.callchain_cursor_node* %77, i32 0, i32 1
  %79 = load %struct.TYPE_3__*, %struct.TYPE_3__** %78, align 8
  %80 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %79, i32 0, i32 3
  %81 = load i32, i32* %80, align 4
  %82 = call i32* @PyLong_FromUnsignedLongLong(i32 %81)
  %83 = call i32 @pydict_set_item_string_decref(i32* %76, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0), i32* %82)
  %84 = load i32*, i32** %10, align 8
  %85 = load %struct.callchain_cursor_node*, %struct.callchain_cursor_node** %9, align 8
  %86 = getelementptr inbounds %struct.callchain_cursor_node, %struct.callchain_cursor_node* %85, i32 0, i32 1
  %87 = load %struct.TYPE_3__*, %struct.TYPE_3__** %86, align 8
  %88 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %87, i32 0, i32 2
  %89 = load i32, i32* %88, align 4
  %90 = call i32* @_PyLong_FromLong(i32 %89)
  %91 = call i32 @pydict_set_item_string_decref(i32* %84, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i64 0, i64 0), i32* %90)
  %92 = load i32*, i32** %10, align 8
  %93 = load %struct.callchain_cursor_node*, %struct.callchain_cursor_node** %9, align 8
  %94 = getelementptr inbounds %struct.callchain_cursor_node, %struct.callchain_cursor_node* %93, i32 0, i32 1
  %95 = load %struct.TYPE_3__*, %struct.TYPE_3__** %94, align 8
  %96 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %95, i32 0, i32 1
  %97 = load i32, i32* %96, align 4
  %98 = load %struct.callchain_cursor_node*, %struct.callchain_cursor_node** %9, align 8
  %99 = getelementptr inbounds %struct.callchain_cursor_node, %struct.callchain_cursor_node* %98, i32 0, i32 1
  %100 = load %struct.TYPE_3__*, %struct.TYPE_3__** %99, align 8
  %101 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 4
  %103 = call i32* @_PyUnicode_FromStringAndSize(i32 %97, i32 %102)
  %104 = call i32 @pydict_set_item_string_decref(i32* %92, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0), i32* %103)
  %105 = load i32*, i32** %8, align 8
  %106 = load i32*, i32** %10, align 8
  %107 = call i32 @pydict_set_item_string_decref(i32* %105, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.8, i64 0, i64 0), i32* %106)
  br label %108

108:                                              ; preds = %67, %50
  %109 = load %struct.callchain_cursor_node*, %struct.callchain_cursor_node** %9, align 8
  %110 = getelementptr inbounds %struct.callchain_cursor_node, %struct.callchain_cursor_node* %109, i32 0, i32 0
  %111 = load i64, i64* %110, align 8
  %112 = icmp ne i64 %111, 0
  br i1 %112, label %113, label %122

113:                                              ; preds = %108
  %114 = load %struct.callchain_cursor_node*, %struct.callchain_cursor_node** %9, align 8
  %115 = getelementptr inbounds %struct.callchain_cursor_node, %struct.callchain_cursor_node* %114, i32 0, i32 0
  %116 = load i64, i64* %115, align 8
  %117 = call i8* @get_dsoname(i64 %116)
  store i8* %117, i8** %11, align 8
  %118 = load i32*, i32** %8, align 8
  %119 = load i8*, i8** %11, align 8
  %120 = call i32* @_PyUnicode_FromString(i8* %119)
  %121 = call i32 @pydict_set_item_string_decref(i32* %118, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.9, i64 0, i64 0), i32* %120)
  br label %122

122:                                              ; preds = %113, %108
  %123 = call i32 @callchain_cursor_advance(i32* @callchain_cursor)
  %124 = load i32*, i32** %7, align 8
  %125 = load i32*, i32** %8, align 8
  %126 = call i32 @PyList_Append(i32* %124, i32* %125)
  %127 = load i32*, i32** %8, align 8
  %128 = call i32 @Py_DECREF(i32* %127)
  br label %39

129:                                              ; preds = %43
  br label %130

130:                                              ; preds = %129, %35, %25
  %131 = load i32*, i32** %7, align 8
  ret i32* %131
}

declare dso_local i32* @PyList_New(i32) #1

declare dso_local i32 @Py_FatalError(i8*) #1

declare dso_local i64 @thread__resolve_callchain(i32, i32*, %struct.evsel*, %struct.perf_sample*, i32*, i32*, i32) #1

declare dso_local i32 @pr_err(i8*) #1

declare dso_local i32 @callchain_cursor_commit(i32*) #1

declare dso_local %struct.callchain_cursor_node* @callchain_cursor_current(i32*) #1

declare dso_local i32* @PyDict_New(...) #1

declare dso_local i32 @pydict_set_item_string_decref(i32*, i8*, i32*) #1

declare dso_local i32* @PyLong_FromUnsignedLongLong(i32) #1

declare dso_local i32* @_PyLong_FromLong(i32) #1

declare dso_local i32* @_PyUnicode_FromStringAndSize(i32, i32) #1

declare dso_local i8* @get_dsoname(i64) #1

declare dso_local i32* @_PyUnicode_FromString(i8*) #1

declare dso_local i32 @callchain_cursor_advance(i32*) #1

declare dso_local i32 @PyList_Append(i32*, i32*) #1

declare dso_local i32 @Py_DECREF(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
