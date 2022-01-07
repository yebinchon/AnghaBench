; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/util/scripting-engines/extr_trace-event-python.c_python_process_general_event.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/util/scripting-engines/extr_trace-event-python.c_python_process_general_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.perf_sample = type { i32 }
%struct.evsel = type { i32 }
%struct.addr_location = type { i32 }

@python_process_general_event.handler_name = internal global [64 x i8] zeroinitializer, align 16
@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c"process_event\00", align 1
@MAX_FIELDS = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [29 x i8] c"couldn't create Python tuple\00", align 1
@.str.3 = private unnamed_addr constant [28 x i8] c"error resizing Python tuple\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.perf_sample*, %struct.evsel*, %struct.addr_location*)* @python_process_general_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @python_process_general_event(%struct.perf_sample* %0, %struct.evsel* %1, %struct.addr_location* %2) #0 {
  %4 = alloca %struct.perf_sample*, align 8
  %5 = alloca %struct.evsel*, align 8
  %6 = alloca %struct.addr_location*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  store %struct.perf_sample* %0, %struct.perf_sample** %4, align 8
  store %struct.evsel* %1, %struct.evsel** %5, align 8
  store %struct.addr_location* %2, %struct.addr_location** %6, align 8
  store i32 0, i32* %11, align 4
  %12 = call i32 @snprintf(i8* getelementptr inbounds ([64 x i8], [64 x i8]* @python_process_general_event.handler_name, i64 0, i64 0), i32 64, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0))
  %13 = call i32* @get_handler(i8* getelementptr inbounds ([64 x i8], [64 x i8]* @python_process_general_event.handler_name, i64 0, i64 0))
  store i32* %13, i32** %7, align 8
  %14 = load i32*, i32** %7, align 8
  %15 = icmp ne i32* %14, null
  br i1 %15, label %17, label %16

16:                                               ; preds = %3
  br label %50

17:                                               ; preds = %3
  %18 = load i32, i32* @MAX_FIELDS, align 4
  %19 = call i32* @PyTuple_New(i32 %18)
  store i32* %19, i32** %8, align 8
  %20 = load i32*, i32** %8, align 8
  %21 = icmp ne i32* %20, null
  br i1 %21, label %24, label %22

22:                                               ; preds = %17
  %23 = call i32 @Py_FatalError(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0))
  br label %24

24:                                               ; preds = %22, %17
  %25 = load %struct.perf_sample*, %struct.perf_sample** %4, align 8
  %26 = load %struct.evsel*, %struct.evsel** %5, align 8
  %27 = load %struct.addr_location*, %struct.addr_location** %6, align 8
  %28 = call i32* @python_process_callchain(%struct.perf_sample* %25, %struct.evsel* %26, %struct.addr_location* %27)
  store i32* %28, i32** %10, align 8
  %29 = load %struct.perf_sample*, %struct.perf_sample** %4, align 8
  %30 = load %struct.evsel*, %struct.evsel** %5, align 8
  %31 = load %struct.addr_location*, %struct.addr_location** %6, align 8
  %32 = load i32*, i32** %10, align 8
  %33 = call i32* @get_perf_sample_dict(%struct.perf_sample* %29, %struct.evsel* %30, %struct.addr_location* %31, i32* %32)
  store i32* %33, i32** %9, align 8
  %34 = load i32*, i32** %8, align 8
  %35 = load i32, i32* %11, align 4
  %36 = add i32 %35, 1
  store i32 %36, i32* %11, align 4
  %37 = load i32*, i32** %9, align 8
  %38 = call i32 @PyTuple_SetItem(i32* %34, i32 %35, i32* %37)
  %39 = load i32, i32* %11, align 4
  %40 = call i32 @_PyTuple_Resize(i32** %8, i32 %39)
  %41 = icmp eq i32 %40, -1
  br i1 %41, label %42, label %44

42:                                               ; preds = %24
  %43 = call i32 @Py_FatalError(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i64 0, i64 0))
  br label %44

44:                                               ; preds = %42, %24
  %45 = load i32*, i32** %7, align 8
  %46 = load i32*, i32** %8, align 8
  %47 = call i32 @call_object(i32* %45, i32* %46, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @python_process_general_event.handler_name, i64 0, i64 0))
  %48 = load i32*, i32** %8, align 8
  %49 = call i32 @Py_DECREF(i32* %48)
  br label %50

50:                                               ; preds = %44, %16
  ret void
}

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*) #1

declare dso_local i32* @get_handler(i8*) #1

declare dso_local i32* @PyTuple_New(i32) #1

declare dso_local i32 @Py_FatalError(i8*) #1

declare dso_local i32* @python_process_callchain(%struct.perf_sample*, %struct.evsel*, %struct.addr_location*) #1

declare dso_local i32* @get_perf_sample_dict(%struct.perf_sample*, %struct.evsel*, %struct.addr_location*, i32*) #1

declare dso_local i32 @PyTuple_SetItem(i32*, i32, i32*) #1

declare dso_local i32 @_PyTuple_Resize(i32**, i32) #1

declare dso_local i32 @call_object(i32*, i32*, i8*) #1

declare dso_local i32 @Py_DECREF(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
