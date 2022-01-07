; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/util/extr_python.c_pyrf_evsel__open.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/util/extr_python.c_pyrf_evsel__open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pyrf_evsel = type { %struct.evsel }
%struct.evsel = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.perf_cpu_map = type { i32 }
%struct.perf_thread_map = type { i32 }
%struct.pyrf_thread_map = type { %struct.perf_thread_map* }
%struct.pyrf_cpu_map = type { %struct.perf_cpu_map* }

@pyrf_evsel__open.kwlist = internal global [5 x i8*] [i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i32 0, i32 0), i8* null], align 16
@.str = private unnamed_addr constant [5 x i8] c"cpus\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"threads\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"group\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"inherit\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"|OOii\00", align 1
@PyExc_OSError = common dso_local global i32 0, align 4
@Py_None = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (%struct.pyrf_evsel*, i32*, i32*)* @pyrf_evsel__open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @pyrf_evsel__open(%struct.pyrf_evsel* %0, i32* %1, i32* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca %struct.pyrf_evsel*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.evsel*, align 8
  %9 = alloca %struct.perf_cpu_map*, align 8
  %10 = alloca %struct.perf_thread_map*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.pyrf_evsel* %0, %struct.pyrf_evsel** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  %15 = load %struct.pyrf_evsel*, %struct.pyrf_evsel** %5, align 8
  %16 = getelementptr inbounds %struct.pyrf_evsel, %struct.pyrf_evsel* %15, i32 0, i32 0
  store %struct.evsel* %16, %struct.evsel** %8, align 8
  store %struct.perf_cpu_map* null, %struct.perf_cpu_map** %9, align 8
  store %struct.perf_thread_map* null, %struct.perf_thread_map** %10, align 8
  store i32* null, i32** %11, align 8
  store i32* null, i32** %12, align 8
  store i32 0, i32* %13, align 4
  store i32 0, i32* %14, align 4
  %17 = load i32*, i32** %6, align 8
  %18 = load i32*, i32** %7, align 8
  %19 = call i32 @PyArg_ParseTupleAndKeywords(i32* %17, i32* %18, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0), i8** getelementptr inbounds ([5 x i8*], [5 x i8*]* @pyrf_evsel__open.kwlist, i64 0, i64 0), i32** %11, i32** %12, i32* %13, i32* %14)
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %22, label %21

21:                                               ; preds = %3
  store i32* null, i32** %4, align 8
  br label %56

22:                                               ; preds = %3
  %23 = load i32*, i32** %12, align 8
  %24 = icmp ne i32* %23, null
  br i1 %24, label %25, label %30

25:                                               ; preds = %22
  %26 = load i32*, i32** %12, align 8
  %27 = bitcast i32* %26 to %struct.pyrf_thread_map*
  %28 = getelementptr inbounds %struct.pyrf_thread_map, %struct.pyrf_thread_map* %27, i32 0, i32 0
  %29 = load %struct.perf_thread_map*, %struct.perf_thread_map** %28, align 8
  store %struct.perf_thread_map* %29, %struct.perf_thread_map** %10, align 8
  br label %30

30:                                               ; preds = %25, %22
  %31 = load i32*, i32** %11, align 8
  %32 = icmp ne i32* %31, null
  br i1 %32, label %33, label %38

33:                                               ; preds = %30
  %34 = load i32*, i32** %11, align 8
  %35 = bitcast i32* %34 to %struct.pyrf_cpu_map*
  %36 = getelementptr inbounds %struct.pyrf_cpu_map, %struct.pyrf_cpu_map* %35, i32 0, i32 0
  %37 = load %struct.perf_cpu_map*, %struct.perf_cpu_map** %36, align 8
  store %struct.perf_cpu_map* %37, %struct.perf_cpu_map** %9, align 8
  br label %38

38:                                               ; preds = %33, %30
  %39 = load i32, i32* %14, align 4
  %40 = load %struct.evsel*, %struct.evsel** %8, align 8
  %41 = getelementptr inbounds %struct.evsel, %struct.evsel* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i32 0, i32 0
  store i32 %39, i32* %43, align 4
  %44 = load %struct.evsel*, %struct.evsel** %8, align 8
  %45 = load %struct.perf_cpu_map*, %struct.perf_cpu_map** %9, align 8
  %46 = load %struct.perf_thread_map*, %struct.perf_thread_map** %10, align 8
  %47 = call i64 @evsel__open(%struct.evsel* %44, %struct.perf_cpu_map* %45, %struct.perf_thread_map* %46)
  %48 = icmp slt i64 %47, 0
  br i1 %48, label %49, label %52

49:                                               ; preds = %38
  %50 = load i32, i32* @PyExc_OSError, align 4
  %51 = call i32 @PyErr_SetFromErrno(i32 %50)
  store i32* null, i32** %4, align 8
  br label %56

52:                                               ; preds = %38
  %53 = load i32*, i32** @Py_None, align 8
  %54 = call i32 @Py_INCREF(i32* %53)
  %55 = load i32*, i32** @Py_None, align 8
  store i32* %55, i32** %4, align 8
  br label %56

56:                                               ; preds = %52, %49, %21
  %57 = load i32*, i32** %4, align 8
  ret i32* %57
}

declare dso_local i32 @PyArg_ParseTupleAndKeywords(i32*, i32*, i8*, i8**, i32**, i32**, i32*, i32*) #1

declare dso_local i64 @evsel__open(%struct.evsel*, %struct.perf_cpu_map*, %struct.perf_thread_map*) #1

declare dso_local i32 @PyErr_SetFromErrno(i32) #1

declare dso_local i32 @Py_INCREF(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
