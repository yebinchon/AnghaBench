; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/scripts/python/Perf-Trace-Util/extr_Context.c_perf_trace_context_common_lock_depth.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/scripts/python/Perf-Trace-Util/extr_Context.c_perf_trace_context_common_lock_depth.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scripting_context = type { i32 }

@perf_trace_context_common_lock_depth.scripting_context = internal global %struct.scripting_context* null, align 8
@.str = private unnamed_addr constant [2 x i8] c"O\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"i\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32*, i32*)* @perf_trace_context_common_lock_depth to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @perf_trace_context_common_lock_depth(i32* %0, i32* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i32* %1, i32** %5, align 8
  %8 = load i32*, i32** %5, align 8
  %9 = call i32 @PyArg_ParseTuple(i32* %8, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i32** %6)
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %12, label %11

11:                                               ; preds = %2
  store i32* null, i32** %3, align 8
  br label %19

12:                                               ; preds = %2
  %13 = load i32*, i32** %6, align 8
  %14 = call %struct.scripting_context* @_PyCapsule_GetPointer(i32* %13, i32* null)
  store %struct.scripting_context* %14, %struct.scripting_context** @perf_trace_context_common_lock_depth.scripting_context, align 8
  %15 = load %struct.scripting_context*, %struct.scripting_context** @perf_trace_context_common_lock_depth.scripting_context, align 8
  %16 = call i32 @common_lock_depth(%struct.scripting_context* %15)
  store i32 %16, i32* %7, align 4
  %17 = load i32, i32* %7, align 4
  %18 = call i32* @Py_BuildValue(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i32 %17)
  store i32* %18, i32** %3, align 8
  br label %19

19:                                               ; preds = %12, %11
  %20 = load i32*, i32** %3, align 8
  ret i32* %20
}

declare dso_local i32 @PyArg_ParseTuple(i32*, i8*, i32**) #1

declare dso_local %struct.scripting_context* @_PyCapsule_GetPointer(i32*, i32*) #1

declare dso_local i32 @common_lock_depth(%struct.scripting_context*) #1

declare dso_local i32* @Py_BuildValue(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
