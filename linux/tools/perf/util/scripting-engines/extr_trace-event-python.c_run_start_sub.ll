; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/util/scripting-engines/extr_trace-event-python.c_run_start_sub.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/util/scripting-engines/extr_trace-event-python.c_run_start_sub.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [9 x i8] c"__main__\00", align 1
@main_module = common dso_local global i32* null, align 8
@main_dict = common dso_local global i32* null, align 8
@.str.1 = private unnamed_addr constant [12 x i8] c"trace_begin\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @run_start_sub to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @run_start_sub() #0 {
  %1 = alloca i32, align 4
  %2 = call i32* @PyImport_AddModule(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  store i32* %2, i32** @main_module, align 8
  %3 = load i32*, i32** @main_module, align 8
  %4 = icmp eq i32* %3, null
  br i1 %4, label %5, label %6

5:                                                ; preds = %0
  store i32 -1, i32* %1, align 4
  br label %23

6:                                                ; preds = %0
  %7 = load i32*, i32** @main_module, align 8
  %8 = call i32 @Py_INCREF(i32* %7)
  %9 = load i32*, i32** @main_module, align 8
  %10 = call i32* @PyModule_GetDict(i32* %9)
  store i32* %10, i32** @main_dict, align 8
  %11 = load i32*, i32** @main_dict, align 8
  %12 = icmp eq i32* %11, null
  br i1 %12, label %13, label %14

13:                                               ; preds = %6
  br label %18

14:                                               ; preds = %6
  %15 = load i32*, i32** @main_dict, align 8
  %16 = call i32 @Py_INCREF(i32* %15)
  %17 = call i32 @try_call_object(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i32* null)
  store i32 0, i32* %1, align 4
  br label %23

18:                                               ; preds = %13
  %19 = load i32*, i32** @main_dict, align 8
  %20 = call i32 @Py_XDECREF(i32* %19)
  %21 = load i32*, i32** @main_module, align 8
  %22 = call i32 @Py_XDECREF(i32* %21)
  store i32 -1, i32* %1, align 4
  br label %23

23:                                               ; preds = %18, %14, %5
  %24 = load i32, i32* %1, align 4
  ret i32 %24
}

declare dso_local i32* @PyImport_AddModule(i8*) #1

declare dso_local i32 @Py_INCREF(i32*) #1

declare dso_local i32* @PyModule_GetDict(i32*) #1

declare dso_local i32 @try_call_object(i8*, i32*) #1

declare dso_local i32 @Py_XDECREF(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
