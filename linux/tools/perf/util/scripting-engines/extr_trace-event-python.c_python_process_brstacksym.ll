; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/util/scripting-engines/extr_trace-event-python.c_python_process_brstacksym.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/util/scripting-engines/extr_trace-event-python.c_python_process_brstacksym.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.perf_sample = type { i32, %struct.branch_stack* }
%struct.branch_stack = type { i64, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.TYPE_4__, i32, i32 }
%struct.TYPE_4__ = type { i64, i64 }
%struct.thread = type { i32 }
%struct.addr_location = type { i32 }

@.str = private unnamed_addr constant [28 x i8] c"couldn't create Python list\00", align 1
@.str.1 = private unnamed_addr constant [34 x i8] c"couldn't create Python dictionary\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"from\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"to\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"pred\00", align 1
@.str.5 = private unnamed_addr constant [6 x i8] c"in_tx\00", align 1
@.str.6 = private unnamed_addr constant [2 x i8] c"X\00", align 1
@.str.7 = private unnamed_addr constant [2 x i8] c"-\00", align 1
@.str.8 = private unnamed_addr constant [6 x i8] c"abort\00", align 1
@.str.9 = private unnamed_addr constant [2 x i8] c"A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (%struct.perf_sample*, %struct.thread*)* @python_process_brstacksym to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @python_process_brstacksym(%struct.perf_sample* %0, %struct.thread* %1) #0 {
  %3 = alloca %struct.perf_sample*, align 8
  %4 = alloca %struct.thread*, align 8
  %5 = alloca %struct.branch_stack*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i64, align 8
  %8 = alloca [512 x i8], align 16
  %9 = alloca %struct.addr_location, align 4
  %10 = alloca i32*, align 8
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
  br label %139

28:                                               ; preds = %22
  store i64 0, i64* %7, align 8
  br label %29

29:                                               ; preds = %135, %28
  %30 = load i64, i64* %7, align 8
  %31 = load %struct.branch_stack*, %struct.branch_stack** %5, align 8
  %32 = getelementptr inbounds %struct.branch_stack, %struct.branch_stack* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = icmp ult i64 %30, %33
  br i1 %34, label %35, label %138

35:                                               ; preds = %29
  %36 = call i32* (...) @PyDict_New()
  store i32* %36, i32** %10, align 8
  %37 = load i32*, i32** %10, align 8
  %38 = icmp ne i32* %37, null
  br i1 %38, label %41, label %39

39:                                               ; preds = %35
  %40 = call i32 @Py_FatalError(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0))
  br label %41

41:                                               ; preds = %39, %35
  %42 = load %struct.thread*, %struct.thread** %4, align 8
  %43 = load %struct.perf_sample*, %struct.perf_sample** %3, align 8
  %44 = getelementptr inbounds %struct.perf_sample, %struct.perf_sample* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = load %struct.branch_stack*, %struct.branch_stack** %5, align 8
  %47 = getelementptr inbounds %struct.branch_stack, %struct.branch_stack* %46, i32 0, i32 1
  %48 = load %struct.TYPE_3__*, %struct.TYPE_3__** %47, align 8
  %49 = load i64, i64* %7, align 8
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %48, i64 %49
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %50, i32 0, i32 2
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @thread__find_symbol_fb(%struct.thread* %42, i32 %45, i32 %52, %struct.addr_location* %9)
  %54 = getelementptr inbounds %struct.addr_location, %struct.addr_location* %9, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = getelementptr inbounds [512 x i8], [512 x i8]* %8, i64 0, i64 0
  %57 = call i32 @get_symoff(i32 %55, %struct.addr_location* %9, i32 1, i8* %56, i32 512)
  %58 = load i32*, i32** %10, align 8
  %59 = getelementptr inbounds [512 x i8], [512 x i8]* %8, i64 0, i64 0
  %60 = call i32 @_PyUnicode_FromString(i8* %59)
  %61 = call i32 @pydict_set_item_string_decref(i32* %58, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i32 %60)
  %62 = load %struct.thread*, %struct.thread** %4, align 8
  %63 = load %struct.perf_sample*, %struct.perf_sample** %3, align 8
  %64 = getelementptr inbounds %struct.perf_sample, %struct.perf_sample* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = load %struct.branch_stack*, %struct.branch_stack** %5, align 8
  %67 = getelementptr inbounds %struct.branch_stack, %struct.branch_stack* %66, i32 0, i32 1
  %68 = load %struct.TYPE_3__*, %struct.TYPE_3__** %67, align 8
  %69 = load i64, i64* %7, align 8
  %70 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %68, i64 %69
  %71 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 8
  %73 = call i32 @thread__find_symbol_fb(%struct.thread* %62, i32 %65, i32 %72, %struct.addr_location* %9)
  %74 = getelementptr inbounds %struct.addr_location, %struct.addr_location* %9, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = getelementptr inbounds [512 x i8], [512 x i8]* %8, i64 0, i64 0
  %77 = call i32 @get_symoff(i32 %75, %struct.addr_location* %9, i32 1, i8* %76, i32 512)
  %78 = load i32*, i32** %10, align 8
  %79 = getelementptr inbounds [512 x i8], [512 x i8]* %8, i64 0, i64 0
  %80 = call i32 @_PyUnicode_FromString(i8* %79)
  %81 = call i32 @pydict_set_item_string_decref(i32* %78, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i32 %80)
  %82 = load %struct.branch_stack*, %struct.branch_stack** %5, align 8
  %83 = getelementptr inbounds %struct.branch_stack, %struct.branch_stack* %82, i32 0, i32 1
  %84 = load %struct.TYPE_3__*, %struct.TYPE_3__** %83, align 8
  %85 = load i64, i64* %7, align 8
  %86 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %84, i64 %85
  %87 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %86, i32 0, i32 0
  %88 = getelementptr inbounds [512 x i8], [512 x i8]* %8, i64 0, i64 0
  %89 = call i32 @get_br_mspred(%struct.TYPE_4__* %87, i8* %88, i32 512)
  %90 = load i32*, i32** %10, align 8
  %91 = getelementptr inbounds [512 x i8], [512 x i8]* %8, i64 0, i64 0
  %92 = call i32 @_PyUnicode_FromString(i8* %91)
  %93 = call i32 @pydict_set_item_string_decref(i32* %90, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i32 %92)
  %94 = load %struct.branch_stack*, %struct.branch_stack** %5, align 8
  %95 = getelementptr inbounds %struct.branch_stack, %struct.branch_stack* %94, i32 0, i32 1
  %96 = load %struct.TYPE_3__*, %struct.TYPE_3__** %95, align 8
  %97 = load i64, i64* %7, align 8
  %98 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %96, i64 %97
  %99 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %98, i32 0, i32 0
  %100 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %99, i32 0, i32 1
  %101 = load i64, i64* %100, align 8
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %103, label %107

103:                                              ; preds = %41
  %104 = load i32*, i32** %10, align 8
  %105 = call i32 @_PyUnicode_FromString(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i64 0, i64 0))
  %106 = call i32 @pydict_set_item_string_decref(i32* %104, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0), i32 %105)
  br label %111

107:                                              ; preds = %41
  %108 = load i32*, i32** %10, align 8
  %109 = call i32 @_PyUnicode_FromString(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i64 0, i64 0))
  %110 = call i32 @pydict_set_item_string_decref(i32* %108, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0), i32 %109)
  br label %111

111:                                              ; preds = %107, %103
  %112 = load %struct.branch_stack*, %struct.branch_stack** %5, align 8
  %113 = getelementptr inbounds %struct.branch_stack, %struct.branch_stack* %112, i32 0, i32 1
  %114 = load %struct.TYPE_3__*, %struct.TYPE_3__** %113, align 8
  %115 = load i64, i64* %7, align 8
  %116 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %114, i64 %115
  %117 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %116, i32 0, i32 0
  %118 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %117, i32 0, i32 0
  %119 = load i64, i64* %118, align 8
  %120 = icmp ne i64 %119, 0
  br i1 %120, label %121, label %125

121:                                              ; preds = %111
  %122 = load i32*, i32** %10, align 8
  %123 = call i32 @_PyUnicode_FromString(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.9, i64 0, i64 0))
  %124 = call i32 @pydict_set_item_string_decref(i32* %122, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.8, i64 0, i64 0), i32 %123)
  br label %129

125:                                              ; preds = %111
  %126 = load i32*, i32** %10, align 8
  %127 = call i32 @_PyUnicode_FromString(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i64 0, i64 0))
  %128 = call i32 @pydict_set_item_string_decref(i32* %126, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.8, i64 0, i64 0), i32 %127)
  br label %129

129:                                              ; preds = %125, %121
  %130 = load i32*, i32** %6, align 8
  %131 = load i32*, i32** %10, align 8
  %132 = call i32 @PyList_Append(i32* %130, i32* %131)
  %133 = load i32*, i32** %10, align 8
  %134 = call i32 @Py_DECREF(i32* %133)
  br label %135

135:                                              ; preds = %129
  %136 = load i64, i64* %7, align 8
  %137 = add i64 %136, 1
  store i64 %137, i64* %7, align 8
  br label %29

138:                                              ; preds = %29
  br label %139

139:                                              ; preds = %138, %27
  %140 = load i32*, i32** %6, align 8
  ret i32* %140
}

declare dso_local i32* @PyList_New(i32) #1

declare dso_local i32 @Py_FatalError(i8*) #1

declare dso_local i32* @PyDict_New(...) #1

declare dso_local i32 @thread__find_symbol_fb(%struct.thread*, i32, i32, %struct.addr_location*) #1

declare dso_local i32 @get_symoff(i32, %struct.addr_location*, i32, i8*, i32) #1

declare dso_local i32 @pydict_set_item_string_decref(i32*, i8*, i32) #1

declare dso_local i32 @_PyUnicode_FromString(i8*) #1

declare dso_local i32 @get_br_mspred(%struct.TYPE_4__*, i8*, i32) #1

declare dso_local i32 @PyList_Append(i32*, i32*) #1

declare dso_local i32 @Py_DECREF(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
