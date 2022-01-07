; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/util/scripting-engines/extr_trace-event-python.c_python_process_stat_interval.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/util/scripting-engines/extr_trace-event-python.c_python_process_stat_interval.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@python_process_stat_interval.handler_name = internal constant [15 x i8] c"stat__interval\00", align 1
@MAX_FIELDS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"couldn't create Python tuple\00", align 1
@.str.1 = private unnamed_addr constant [30 x i8] c"can't find python handler %s\0A\00", align 1
@.str.2 = private unnamed_addr constant [28 x i8] c"error resizing Python tuple\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @python_process_stat_interval to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @python_process_stat_interval(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  store i32 0, i32* %5, align 4
  %6 = load i32, i32* @MAX_FIELDS, align 4
  %7 = call i32* @PyTuple_New(i32 %6)
  store i32* %7, i32** %4, align 8
  %8 = load i32*, i32** %4, align 8
  %9 = icmp ne i32* %8, null
  br i1 %9, label %12, label %10

10:                                               ; preds = %1
  %11 = call i32 @Py_FatalError(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  br label %12

12:                                               ; preds = %10, %1
  %13 = call i32* @get_handler(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @python_process_stat_interval.handler_name, i64 0, i64 0))
  store i32* %13, i32** %3, align 8
  %14 = load i32*, i32** %3, align 8
  %15 = icmp ne i32* %14, null
  br i1 %15, label %18, label %16

16:                                               ; preds = %12
  %17 = call i32 @pr_debug(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @python_process_stat_interval.handler_name, i64 0, i64 0))
  br label %35

18:                                               ; preds = %12
  %19 = load i32*, i32** %4, align 8
  %20 = load i32, i32* %5, align 4
  %21 = add nsw i32 %20, 1
  store i32 %21, i32* %5, align 4
  %22 = load i32, i32* %2, align 4
  %23 = call i32 @tuple_set_u64(i32* %19, i32 %20, i32 %22)
  %24 = load i32, i32* %5, align 4
  %25 = call i32 @_PyTuple_Resize(i32** %4, i32 %24)
  %26 = icmp eq i32 %25, -1
  br i1 %26, label %27, label %29

27:                                               ; preds = %18
  %28 = call i32 @Py_FatalError(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0))
  br label %29

29:                                               ; preds = %27, %18
  %30 = load i32*, i32** %3, align 8
  %31 = load i32*, i32** %4, align 8
  %32 = call i32 @call_object(i32* %30, i32* %31, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @python_process_stat_interval.handler_name, i64 0, i64 0))
  %33 = load i32*, i32** %4, align 8
  %34 = call i32 @Py_DECREF(i32* %33)
  br label %35

35:                                               ; preds = %29, %16
  ret void
}

declare dso_local i32* @PyTuple_New(i32) #1

declare dso_local i32 @Py_FatalError(i8*) #1

declare dso_local i32* @get_handler(i8*) #1

declare dso_local i32 @pr_debug(i8*, i8*) #1

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
