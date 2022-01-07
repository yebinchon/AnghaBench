; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/util/extr_python.c_pyrf_evlist__read_on_cpu.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/util/extr_python.c_pyrf_evlist__read_on_cpu.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pyrf_evlist = type { %struct.evlist }
%struct.evlist = type { i32 }
%union.perf_event = type { i32 }
%struct.mmap = type { i32 }
%struct.pyrf_event = type { i32, %struct.evsel* }
%struct.evsel = type { i32 }

@pyrf_evlist__read_on_cpu.kwlist = internal global [3 x i8*] [i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i32 0, i32 0), i8* null], align 16
@.str = private unnamed_addr constant [4 x i8] c"cpu\00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c"sample_id_all\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"i|i\00", align 1
@Py_None = common dso_local global i32* null, align 8
@PyExc_OSError = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [33 x i8] c"perf: can't parse sample, err=%d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (%struct.pyrf_evlist*, i32*, i32*)* @pyrf_evlist__read_on_cpu to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @pyrf_evlist__read_on_cpu(%struct.pyrf_evlist* %0, i32* %1, i32* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca %struct.pyrf_evlist*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.evlist*, align 8
  %9 = alloca %union.perf_event*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.mmap*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32*, align 8
  %15 = alloca %struct.pyrf_event*, align 8
  %16 = alloca %struct.evsel*, align 8
  store %struct.pyrf_evlist* %0, %struct.pyrf_evlist** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  %17 = load %struct.pyrf_evlist*, %struct.pyrf_evlist** %5, align 8
  %18 = getelementptr inbounds %struct.pyrf_evlist, %struct.pyrf_evlist* %17, i32 0, i32 0
  store %struct.evlist* %18, %struct.evlist** %8, align 8
  store i32 1, i32* %10, align 4
  %19 = load i32*, i32** %6, align 8
  %20 = load i32*, i32** %7, align 8
  %21 = call i32 @PyArg_ParseTupleAndKeywords(i32* %19, i32* %20, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i8** getelementptr inbounds ([3 x i8*], [3 x i8*]* @pyrf_evlist__read_on_cpu.kwlist, i64 0, i64 0), i32* %11, i32* %10)
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %24, label %23

23:                                               ; preds = %3
  store i32* null, i32** %4, align 8
  br label %84

24:                                               ; preds = %3
  %25 = load %struct.evlist*, %struct.evlist** %8, align 8
  %26 = load i32, i32* %11, align 4
  %27 = call %struct.mmap* @get_md(%struct.evlist* %25, i32 %26)
  store %struct.mmap* %27, %struct.mmap** %12, align 8
  %28 = load %struct.mmap*, %struct.mmap** %12, align 8
  %29 = icmp ne %struct.mmap* %28, null
  br i1 %29, label %31, label %30

30:                                               ; preds = %24
  store i32* null, i32** %4, align 8
  br label %84

31:                                               ; preds = %24
  %32 = load %struct.mmap*, %struct.mmap** %12, align 8
  %33 = call i64 @perf_mmap__read_init(%struct.mmap* %32)
  %34 = icmp slt i64 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %31
  br label %80

36:                                               ; preds = %31
  %37 = load %struct.mmap*, %struct.mmap** %12, align 8
  %38 = call %union.perf_event* @perf_mmap__read_event(%struct.mmap* %37)
  store %union.perf_event* %38, %union.perf_event** %9, align 8
  %39 = load %union.perf_event*, %union.perf_event** %9, align 8
  %40 = icmp ne %union.perf_event* %39, null
  br i1 %40, label %41, label %79

41:                                               ; preds = %36
  %42 = load %union.perf_event*, %union.perf_event** %9, align 8
  %43 = call i32* @pyrf_event__new(%union.perf_event* %42)
  store i32* %43, i32** %14, align 8
  %44 = load i32*, i32** %14, align 8
  %45 = bitcast i32* %44 to %struct.pyrf_event*
  store %struct.pyrf_event* %45, %struct.pyrf_event** %15, align 8
  %46 = load i32*, i32** %14, align 8
  %47 = icmp eq i32* %46, null
  br i1 %47, label %48, label %50

48:                                               ; preds = %41
  %49 = call i32* (...) @PyErr_NoMemory()
  store i32* %49, i32** %4, align 8
  br label %84

50:                                               ; preds = %41
  %51 = load %struct.evlist*, %struct.evlist** %8, align 8
  %52 = load %union.perf_event*, %union.perf_event** %9, align 8
  %53 = call %struct.evsel* @perf_evlist__event2evsel(%struct.evlist* %51, %union.perf_event* %52)
  store %struct.evsel* %53, %struct.evsel** %16, align 8
  %54 = load %struct.evsel*, %struct.evsel** %16, align 8
  %55 = icmp ne %struct.evsel* %54, null
  br i1 %55, label %60, label %56

56:                                               ; preds = %50
  %57 = load i32*, i32** @Py_None, align 8
  %58 = call i32 @Py_INCREF(i32* %57)
  %59 = load i32*, i32** @Py_None, align 8
  store i32* %59, i32** %4, align 8
  br label %84

60:                                               ; preds = %50
  %61 = load %struct.evsel*, %struct.evsel** %16, align 8
  %62 = load %struct.pyrf_event*, %struct.pyrf_event** %15, align 8
  %63 = getelementptr inbounds %struct.pyrf_event, %struct.pyrf_event* %62, i32 0, i32 1
  store %struct.evsel* %61, %struct.evsel** %63, align 8
  %64 = load %struct.evsel*, %struct.evsel** %16, align 8
  %65 = load %union.perf_event*, %union.perf_event** %9, align 8
  %66 = load %struct.pyrf_event*, %struct.pyrf_event** %15, align 8
  %67 = getelementptr inbounds %struct.pyrf_event, %struct.pyrf_event* %66, i32 0, i32 0
  %68 = call i32 @perf_evsel__parse_sample(%struct.evsel* %64, %union.perf_event* %65, i32* %67)
  store i32 %68, i32* %13, align 4
  %69 = load %struct.mmap*, %struct.mmap** %12, align 8
  %70 = call i32 @perf_mmap__consume(%struct.mmap* %69)
  %71 = load i32, i32* %13, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %77

73:                                               ; preds = %60
  %74 = load i32, i32* @PyExc_OSError, align 4
  %75 = load i32, i32* %13, align 4
  %76 = call i32* @PyErr_Format(i32 %74, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.3, i64 0, i64 0), i32 %75)
  store i32* %76, i32** %4, align 8
  br label %84

77:                                               ; preds = %60
  %78 = load i32*, i32** %14, align 8
  store i32* %78, i32** %4, align 8
  br label %84

79:                                               ; preds = %36
  br label %80

80:                                               ; preds = %79, %35
  %81 = load i32*, i32** @Py_None, align 8
  %82 = call i32 @Py_INCREF(i32* %81)
  %83 = load i32*, i32** @Py_None, align 8
  store i32* %83, i32** %4, align 8
  br label %84

84:                                               ; preds = %80, %77, %73, %56, %48, %30, %23
  %85 = load i32*, i32** %4, align 8
  ret i32* %85
}

declare dso_local i32 @PyArg_ParseTupleAndKeywords(i32*, i32*, i8*, i8**, i32*, i32*) #1

declare dso_local %struct.mmap* @get_md(%struct.evlist*, i32) #1

declare dso_local i64 @perf_mmap__read_init(%struct.mmap*) #1

declare dso_local %union.perf_event* @perf_mmap__read_event(%struct.mmap*) #1

declare dso_local i32* @pyrf_event__new(%union.perf_event*) #1

declare dso_local i32* @PyErr_NoMemory(...) #1

declare dso_local %struct.evsel* @perf_evlist__event2evsel(%struct.evlist*, %union.perf_event*) #1

declare dso_local i32 @Py_INCREF(i32*) #1

declare dso_local i32 @perf_evsel__parse_sample(%struct.evsel*, %union.perf_event*, i32*) #1

declare dso_local i32 @perf_mmap__consume(%struct.mmap*) #1

declare dso_local i32* @PyErr_Format(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
