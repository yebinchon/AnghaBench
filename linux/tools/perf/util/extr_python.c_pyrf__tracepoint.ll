; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/util/extr_python.c_pyrf__tracepoint.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/util/extr_python.c_pyrf__tracepoint.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pyrf_evsel = type { i32 }
%struct.tep_event = type { i32 }

@pyrf__tracepoint.kwlist = internal global [3 x i8*] [i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i32 0, i32 0), i8* null], align 16
@.str = private unnamed_addr constant [4 x i8] c"sys\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"name\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"|ss\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (%struct.pyrf_evsel*, i32*, i32*)* @pyrf__tracepoint to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @pyrf__tracepoint(%struct.pyrf_evsel* %0, i32* %1, i32* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca %struct.pyrf_evsel*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.tep_event*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  store %struct.pyrf_evsel* %0, %struct.pyrf_evsel** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  store i8* null, i8** %9, align 8
  store i8* null, i8** %10, align 8
  %11 = load i32*, i32** %6, align 8
  %12 = load i32*, i32** %7, align 8
  %13 = call i32 @PyArg_ParseTupleAndKeywords(i32* %11, i32* %12, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i8** getelementptr inbounds ([3 x i8*], [3 x i8*]* @pyrf__tracepoint.kwlist, i64 0, i64 0), i8** %9, i8** %10)
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %16, label %15

15:                                               ; preds = %3
  store i32* null, i32** %4, align 8
  br label %30

16:                                               ; preds = %3
  %17 = load i8*, i8** %9, align 8
  %18 = load i8*, i8** %10, align 8
  %19 = call %struct.tep_event* @trace_event__tp_format(i8* %17, i8* %18)
  store %struct.tep_event* %19, %struct.tep_event** %8, align 8
  %20 = load %struct.tep_event*, %struct.tep_event** %8, align 8
  %21 = call i64 @IS_ERR(%struct.tep_event* %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %16
  %24 = call i32* @_PyLong_FromLong(i32 -1)
  store i32* %24, i32** %4, align 8
  br label %30

25:                                               ; preds = %16
  %26 = load %struct.tep_event*, %struct.tep_event** %8, align 8
  %27 = getelementptr inbounds %struct.tep_event, %struct.tep_event* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = call i32* @_PyLong_FromLong(i32 %28)
  store i32* %29, i32** %4, align 8
  br label %30

30:                                               ; preds = %25, %23, %15
  %31 = load i32*, i32** %4, align 8
  ret i32* %31
}

declare dso_local i32 @PyArg_ParseTupleAndKeywords(i32*, i32*, i8*, i8**, i8**, i8**) #1

declare dso_local %struct.tep_event* @trace_event__tp_format(i8*, i8*) #1

declare dso_local i64 @IS_ERR(%struct.tep_event*) #1

declare dso_local i32* @_PyLong_FromLong(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
