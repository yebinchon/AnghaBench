; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/util/scripting-engines/extr_trace-event-python.c_process_stat.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/util/scripting-engines/extr_trace-event-python.c_process_stat.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.evsel = type { i32 }
%struct.perf_counts_values = type { i32, i32, i32 }

@process_stat.handler_name = internal global [256 x i8] zeroinitializer, align 16
@MAX_FIELDS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"couldn't create Python tuple\00", align 1
@.str.1 = private unnamed_addr constant [30 x i8] c"can't find python handler %s\0A\00", align 1
@.str.2 = private unnamed_addr constant [28 x i8] c"error resizing Python tuple\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.evsel*, i32, i32, i32, %struct.perf_counts_values*)* @process_stat to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @process_stat(%struct.evsel* %0, i32 %1, i32 %2, i32 %3, %struct.perf_counts_values* %4) #0 {
  %6 = alloca %struct.evsel*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.perf_counts_values*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  store %struct.evsel* %0, %struct.evsel** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store %struct.perf_counts_values* %4, %struct.perf_counts_values** %10, align 8
  store i32 0, i32* %13, align 4
  %14 = load i32, i32* @MAX_FIELDS, align 4
  %15 = call i32* @PyTuple_New(i32 %14)
  store i32* %15, i32** %12, align 8
  %16 = load i32*, i32** %12, align 8
  %17 = icmp ne i32* %16, null
  br i1 %17, label %20, label %18

18:                                               ; preds = %5
  %19 = call i32 @Py_FatalError(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  br label %20

20:                                               ; preds = %18, %5
  %21 = load %struct.evsel*, %struct.evsel** %6, align 8
  %22 = call i32 @get_handler_name(i8* getelementptr inbounds ([256 x i8], [256 x i8]* @process_stat.handler_name, i64 0, i64 0), i32 256, %struct.evsel* %21)
  %23 = call i32* @get_handler(i8* getelementptr inbounds ([256 x i8], [256 x i8]* @process_stat.handler_name, i64 0, i64 0))
  store i32* %23, i32** %11, align 8
  %24 = load i32*, i32** %11, align 8
  %25 = icmp ne i32* %24, null
  br i1 %25, label %28, label %26

26:                                               ; preds = %20
  %27 = call i32 @pr_debug(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([256 x i8], [256 x i8]* @process_stat.handler_name, i64 0, i64 0))
  br label %78

28:                                               ; preds = %20
  %29 = load i32*, i32** %12, align 8
  %30 = load i32, i32* %13, align 4
  %31 = add nsw i32 %30, 1
  store i32 %31, i32* %13, align 4
  %32 = load i32, i32* %7, align 4
  %33 = call i32 @_PyLong_FromLong(i32 %32)
  %34 = call i32 @PyTuple_SetItem(i32* %29, i32 %30, i32 %33)
  %35 = load i32*, i32** %12, align 8
  %36 = load i32, i32* %13, align 4
  %37 = add nsw i32 %36, 1
  store i32 %37, i32* %13, align 4
  %38 = load i32, i32* %8, align 4
  %39 = call i32 @_PyLong_FromLong(i32 %38)
  %40 = call i32 @PyTuple_SetItem(i32* %35, i32 %36, i32 %39)
  %41 = load i32*, i32** %12, align 8
  %42 = load i32, i32* %13, align 4
  %43 = add nsw i32 %42, 1
  store i32 %43, i32* %13, align 4
  %44 = load i32, i32* %9, align 4
  %45 = call i32 @tuple_set_u64(i32* %41, i32 %42, i32 %44)
  %46 = load i32*, i32** %12, align 8
  %47 = load i32, i32* %13, align 4
  %48 = add nsw i32 %47, 1
  store i32 %48, i32* %13, align 4
  %49 = load %struct.perf_counts_values*, %struct.perf_counts_values** %10, align 8
  %50 = getelementptr inbounds %struct.perf_counts_values, %struct.perf_counts_values* %49, i32 0, i32 2
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @tuple_set_u64(i32* %46, i32 %47, i32 %51)
  %53 = load i32*, i32** %12, align 8
  %54 = load i32, i32* %13, align 4
  %55 = add nsw i32 %54, 1
  store i32 %55, i32* %13, align 4
  %56 = load %struct.perf_counts_values*, %struct.perf_counts_values** %10, align 8
  %57 = getelementptr inbounds %struct.perf_counts_values, %struct.perf_counts_values* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = call i32 @tuple_set_u64(i32* %53, i32 %54, i32 %58)
  %60 = load i32*, i32** %12, align 8
  %61 = load i32, i32* %13, align 4
  %62 = add nsw i32 %61, 1
  store i32 %62, i32* %13, align 4
  %63 = load %struct.perf_counts_values*, %struct.perf_counts_values** %10, align 8
  %64 = getelementptr inbounds %struct.perf_counts_values, %struct.perf_counts_values* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = call i32 @tuple_set_u64(i32* %60, i32 %61, i32 %65)
  %67 = load i32, i32* %13, align 4
  %68 = call i32 @_PyTuple_Resize(i32** %12, i32 %67)
  %69 = icmp eq i32 %68, -1
  br i1 %69, label %70, label %72

70:                                               ; preds = %28
  %71 = call i32 @Py_FatalError(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0))
  br label %72

72:                                               ; preds = %70, %28
  %73 = load i32*, i32** %11, align 8
  %74 = load i32*, i32** %12, align 8
  %75 = call i32 @call_object(i32* %73, i32* %74, i8* getelementptr inbounds ([256 x i8], [256 x i8]* @process_stat.handler_name, i64 0, i64 0))
  %76 = load i32*, i32** %12, align 8
  %77 = call i32 @Py_DECREF(i32* %76)
  br label %78

78:                                               ; preds = %72, %26
  ret void
}

declare dso_local i32* @PyTuple_New(i32) #1

declare dso_local i32 @Py_FatalError(i8*) #1

declare dso_local i32 @get_handler_name(i8*, i32, %struct.evsel*) #1

declare dso_local i32* @get_handler(i8*) #1

declare dso_local i32 @pr_debug(i8*, i8*) #1

declare dso_local i32 @PyTuple_SetItem(i32*, i32, i32) #1

declare dso_local i32 @_PyLong_FromLong(i32) #1

declare dso_local i32 @tuple_set_u64(i32*, i32, i32) #1

declare dso_local i32 @_PyTuple_Resize(i32**, i32) #1

declare dso_local i32 @call_object(i32*, i32*, i8*) #1

declare dso_local i32 @Py_DECREF(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
