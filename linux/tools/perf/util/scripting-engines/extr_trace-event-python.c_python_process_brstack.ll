; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/util/scripting-engines/extr_trace-event-python.c_python_process_brstack.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/util/scripting-engines/extr_trace-event-python.c_python_process_brstack.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.perf_sample = type { i32, %struct.branch_stack* }
%struct.branch_stack = type { i64, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32, i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32, i32, i32, i32 }
%struct.thread = type { i32 }
%struct.addr_location = type { i32 }

@.str = private unnamed_addr constant [28 x i8] c"couldn't create Python list\00", align 1
@.str.1 = private unnamed_addr constant [34 x i8] c"couldn't create Python dictionary\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"from\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"to\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"mispred\00", align 1
@.str.5 = private unnamed_addr constant [10 x i8] c"predicted\00", align 1
@.str.6 = private unnamed_addr constant [6 x i8] c"in_tx\00", align 1
@.str.7 = private unnamed_addr constant [6 x i8] c"abort\00", align 1
@.str.8 = private unnamed_addr constant [7 x i8] c"cycles\00", align 1
@.str.9 = private unnamed_addr constant [13 x i8] c"from_dsoname\00", align 1
@.str.10 = private unnamed_addr constant [11 x i8] c"to_dsoname\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (%struct.perf_sample*, %struct.thread*)* @python_process_brstack to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @python_process_brstack(%struct.perf_sample* %0, %struct.thread* %1) #0 {
  %3 = alloca %struct.perf_sample*, align 8
  %4 = alloca %struct.thread*, align 8
  %5 = alloca %struct.branch_stack*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.addr_location, align 4
  %10 = alloca i8*, align 8
  store %struct.perf_sample* %0, %struct.perf_sample** %3, align 8
  store %struct.thread* %1, %struct.thread** %4, align 8
  %11 = load %struct.perf_sample*, %struct.perf_sample** %3, align 8
  %12 = getelementptr inbounds %struct.perf_sample, %struct.perf_sample* %11, i32 0, i32 1
  %13 = load %struct.branch_stack*, %struct.branch_stack** %12, align 8
  store %struct.branch_stack* %13, %struct.branch_stack** %5, align 8
  %14 = call i32* @PyList_New(i32 0)
  store i32* %14, i32** %6, align 8
  %15 = load i32*, i32** %6, align 8
  %16 = icmp ne i32* %15, null
  br i1 %16, label %19, label %17

17:                                               ; preds = %2
  %18 = call i32 @Py_FatalError(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  br label %19

19:                                               ; preds = %17, %2
  %20 = load %struct.branch_stack*, %struct.branch_stack** %5, align 8
  %21 = icmp ne %struct.branch_stack* %20, null
  br i1 %21, label %22, label %27

22:                                               ; preds = %19
  %23 = load %struct.branch_stack*, %struct.branch_stack** %5, align 8
  %24 = getelementptr inbounds %struct.branch_stack, %struct.branch_stack* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %28, label %27

27:                                               ; preds = %22, %19
  br label %164

28:                                               ; preds = %22
  store i64 0, i64* %7, align 8
  br label %29

29:                                               ; preds = %160, %28
  %30 = load i64, i64* %7, align 8
  %31 = load %struct.branch_stack*, %struct.branch_stack** %5, align 8
  %32 = getelementptr inbounds %struct.branch_stack, %struct.branch_stack* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = icmp ult i64 %30, %33
  br i1 %34, label %35, label %163

35:                                               ; preds = %29
  %36 = call i32* (...) @PyDict_New()
  store i32* %36, i32** %8, align 8
  %37 = load i32*, i32** %8, align 8
  %38 = icmp ne i32* %37, null
  br i1 %38, label %41, label %39

39:                                               ; preds = %35
  %40 = call i32 @Py_FatalError(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0))
  br label %41

41:                                               ; preds = %39, %35
  %42 = load i32*, i32** %8, align 8
  %43 = load %struct.branch_stack*, %struct.branch_stack** %5, align 8
  %44 = getelementptr inbounds %struct.branch_stack, %struct.branch_stack* %43, i32 0, i32 1
  %45 = load %struct.TYPE_4__*, %struct.TYPE_4__** %44, align 8
  %46 = load i64, i64* %7, align 8
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i64 %46
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @PyLong_FromUnsignedLongLong(i32 %49)
  %51 = call i32 @pydict_set_item_string_decref(i32* %42, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i32 %50)
  %52 = load i32*, i32** %8, align 8
  %53 = load %struct.branch_stack*, %struct.branch_stack** %5, align 8
  %54 = getelementptr inbounds %struct.branch_stack, %struct.branch_stack* %53, i32 0, i32 1
  %55 = load %struct.TYPE_4__*, %struct.TYPE_4__** %54, align 8
  %56 = load i64, i64* %7, align 8
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i64 %56
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = call i32 @PyLong_FromUnsignedLongLong(i32 %59)
  %61 = call i32 @pydict_set_item_string_decref(i32* %52, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i32 %60)
  %62 = load i32*, i32** %8, align 8
  %63 = load %struct.branch_stack*, %struct.branch_stack** %5, align 8
  %64 = getelementptr inbounds %struct.branch_stack, %struct.branch_stack* %63, i32 0, i32 1
  %65 = load %struct.TYPE_4__*, %struct.TYPE_4__** %64, align 8
  %66 = load i64, i64* %7, align 8
  %67 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %65, i64 %66
  %68 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %67, i32 0, i32 2
  %69 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %68, i32 0, i32 4
  %70 = load i32, i32* %69, align 4
  %71 = call i32 @PyBool_FromLong(i32 %70)
  %72 = call i32 @pydict_set_item_string_decref(i32* %62, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0), i32 %71)
  %73 = load i32*, i32** %8, align 8
  %74 = load %struct.branch_stack*, %struct.branch_stack** %5, align 8
  %75 = getelementptr inbounds %struct.branch_stack, %struct.branch_stack* %74, i32 0, i32 1
  %76 = load %struct.TYPE_4__*, %struct.TYPE_4__** %75, align 8
  %77 = load i64, i64* %7, align 8
  %78 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %76, i64 %77
  %79 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %78, i32 0, i32 2
  %80 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %79, i32 0, i32 3
  %81 = load i32, i32* %80, align 4
  %82 = call i32 @PyBool_FromLong(i32 %81)
  %83 = call i32 @pydict_set_item_string_decref(i32* %73, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5, i64 0, i64 0), i32 %82)
  %84 = load i32*, i32** %8, align 8
  %85 = load %struct.branch_stack*, %struct.branch_stack** %5, align 8
  %86 = getelementptr inbounds %struct.branch_stack, %struct.branch_stack* %85, i32 0, i32 1
  %87 = load %struct.TYPE_4__*, %struct.TYPE_4__** %86, align 8
  %88 = load i64, i64* %7, align 8
  %89 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %87, i64 %88
  %90 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %89, i32 0, i32 2
  %91 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %90, i32 0, i32 2
  %92 = load i32, i32* %91, align 4
  %93 = call i32 @PyBool_FromLong(i32 %92)
  %94 = call i32 @pydict_set_item_string_decref(i32* %84, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0), i32 %93)
  %95 = load i32*, i32** %8, align 8
  %96 = load %struct.branch_stack*, %struct.branch_stack** %5, align 8
  %97 = getelementptr inbounds %struct.branch_stack, %struct.branch_stack* %96, i32 0, i32 1
  %98 = load %struct.TYPE_4__*, %struct.TYPE_4__** %97, align 8
  %99 = load i64, i64* %7, align 8
  %100 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %98, i64 %99
  %101 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %100, i32 0, i32 2
  %102 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %101, i32 0, i32 1
  %103 = load i32, i32* %102, align 4
  %104 = call i32 @PyBool_FromLong(i32 %103)
  %105 = call i32 @pydict_set_item_string_decref(i32* %95, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i64 0, i64 0), i32 %104)
  %106 = load i32*, i32** %8, align 8
  %107 = load %struct.branch_stack*, %struct.branch_stack** %5, align 8
  %108 = getelementptr inbounds %struct.branch_stack, %struct.branch_stack* %107, i32 0, i32 1
  %109 = load %struct.TYPE_4__*, %struct.TYPE_4__** %108, align 8
  %110 = load i64, i64* %7, align 8
  %111 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %109, i64 %110
  %112 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %111, i32 0, i32 2
  %113 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 4
  %115 = call i32 @PyLong_FromUnsignedLongLong(i32 %114)
  %116 = call i32 @pydict_set_item_string_decref(i32* %106, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8, i64 0, i64 0), i32 %115)
  %117 = load %struct.thread*, %struct.thread** %4, align 8
  %118 = load %struct.perf_sample*, %struct.perf_sample** %3, align 8
  %119 = getelementptr inbounds %struct.perf_sample, %struct.perf_sample* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 8
  %121 = load %struct.branch_stack*, %struct.branch_stack** %5, align 8
  %122 = getelementptr inbounds %struct.branch_stack, %struct.branch_stack* %121, i32 0, i32 1
  %123 = load %struct.TYPE_4__*, %struct.TYPE_4__** %122, align 8
  %124 = load i64, i64* %7, align 8
  %125 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %123, i64 %124
  %126 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %125, i32 0, i32 1
  %127 = load i32, i32* %126, align 4
  %128 = call i32 @thread__find_map_fb(%struct.thread* %117, i32 %120, i32 %127, %struct.addr_location* %9)
  %129 = getelementptr inbounds %struct.addr_location, %struct.addr_location* %9, i32 0, i32 0
  %130 = load i32, i32* %129, align 4
  %131 = call i8* @get_dsoname(i32 %130)
  store i8* %131, i8** %10, align 8
  %132 = load i32*, i32** %8, align 8
  %133 = load i8*, i8** %10, align 8
  %134 = call i32 @_PyUnicode_FromString(i8* %133)
  %135 = call i32 @pydict_set_item_string_decref(i32* %132, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.9, i64 0, i64 0), i32 %134)
  %136 = load %struct.thread*, %struct.thread** %4, align 8
  %137 = load %struct.perf_sample*, %struct.perf_sample** %3, align 8
  %138 = getelementptr inbounds %struct.perf_sample, %struct.perf_sample* %137, i32 0, i32 0
  %139 = load i32, i32* %138, align 8
  %140 = load %struct.branch_stack*, %struct.branch_stack** %5, align 8
  %141 = getelementptr inbounds %struct.branch_stack, %struct.branch_stack* %140, i32 0, i32 1
  %142 = load %struct.TYPE_4__*, %struct.TYPE_4__** %141, align 8
  %143 = load i64, i64* %7, align 8
  %144 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %142, i64 %143
  %145 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %144, i32 0, i32 0
  %146 = load i32, i32* %145, align 4
  %147 = call i32 @thread__find_map_fb(%struct.thread* %136, i32 %139, i32 %146, %struct.addr_location* %9)
  %148 = getelementptr inbounds %struct.addr_location, %struct.addr_location* %9, i32 0, i32 0
  %149 = load i32, i32* %148, align 4
  %150 = call i8* @get_dsoname(i32 %149)
  store i8* %150, i8** %10, align 8
  %151 = load i32*, i32** %8, align 8
  %152 = load i8*, i8** %10, align 8
  %153 = call i32 @_PyUnicode_FromString(i8* %152)
  %154 = call i32 @pydict_set_item_string_decref(i32* %151, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.10, i64 0, i64 0), i32 %153)
  %155 = load i32*, i32** %6, align 8
  %156 = load i32*, i32** %8, align 8
  %157 = call i32 @PyList_Append(i32* %155, i32* %156)
  %158 = load i32*, i32** %8, align 8
  %159 = call i32 @Py_DECREF(i32* %158)
  br label %160

160:                                              ; preds = %41
  %161 = load i64, i64* %7, align 8
  %162 = add i64 %161, 1
  store i64 %162, i64* %7, align 8
  br label %29

163:                                              ; preds = %29
  br label %164

164:                                              ; preds = %163, %27
  %165 = load i32*, i32** %6, align 8
  ret i32* %165
}

declare dso_local i32* @PyList_New(i32) #1

declare dso_local i32 @Py_FatalError(i8*) #1

declare dso_local i32* @PyDict_New(...) #1

declare dso_local i32 @pydict_set_item_string_decref(i32*, i8*, i32) #1

declare dso_local i32 @PyLong_FromUnsignedLongLong(i32) #1

declare dso_local i32 @PyBool_FromLong(i32) #1

declare dso_local i32 @thread__find_map_fb(%struct.thread*, i32, i32, %struct.addr_location*) #1

declare dso_local i8* @get_dsoname(i32) #1

declare dso_local i32 @_PyUnicode_FromString(i8*) #1

declare dso_local i32 @PyList_Append(i32*, i32*) #1

declare dso_local i32 @Py_DECREF(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
