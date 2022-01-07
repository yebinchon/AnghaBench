; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/util/scripting-engines/extr_trace-event-python.c_define_value.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/util/scripting-engines/extr_trace-event-python.c_define_value.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [18 x i8] c"define_flag_value\00", align 1
@TEP_PRINT_SYMBOL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [22 x i8] c"define_symbolic_value\00", align 1
@.str.2 = private unnamed_addr constant [29 x i8] c"couldn't create Python tuple\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i8*, i8*, i8*, i8*)* @define_value to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @define_value(i32 %0, i8* %1, i8* %2, i8* %3, i8* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store i8* %1, i8** %7, align 8
  store i8* %2, i8** %8, align 8
  store i8* %3, i8** %9, align 8
  store i8* %4, i8** %10, align 8
  store i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i8** %11, align 8
  store i32 0, i32* %14, align 4
  %15 = load i32, i32* %6, align 4
  %16 = load i32, i32* @TEP_PRINT_SYMBOL, align 4
  %17 = icmp eq i32 %15, %16
  br i1 %17, label %18, label %19

18:                                               ; preds = %5
  store i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i8** %11, align 8
  br label %19

19:                                               ; preds = %18, %5
  %20 = call i32* @PyTuple_New(i32 4)
  store i32* %20, i32** %12, align 8
  %21 = load i32*, i32** %12, align 8
  %22 = icmp ne i32* %21, null
  br i1 %22, label %25, label %23

23:                                               ; preds = %19
  %24 = call i32 @Py_FatalError(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0))
  br label %25

25:                                               ; preds = %23, %19
  %26 = load i8*, i8** %9, align 8
  %27 = call i64 @eval_flag(i8* %26)
  store i64 %27, i64* %13, align 8
  %28 = load i32*, i32** %12, align 8
  %29 = load i32, i32* %14, align 4
  %30 = add i32 %29, 1
  store i32 %30, i32* %14, align 4
  %31 = load i8*, i8** %7, align 8
  %32 = call i32 @_PyUnicode_FromString(i8* %31)
  %33 = call i32 @PyTuple_SetItem(i32* %28, i32 %29, i32 %32)
  %34 = load i32*, i32** %12, align 8
  %35 = load i32, i32* %14, align 4
  %36 = add i32 %35, 1
  store i32 %36, i32* %14, align 4
  %37 = load i8*, i8** %8, align 8
  %38 = call i32 @_PyUnicode_FromString(i8* %37)
  %39 = call i32 @PyTuple_SetItem(i32* %34, i32 %35, i32 %38)
  %40 = load i32*, i32** %12, align 8
  %41 = load i32, i32* %14, align 4
  %42 = add i32 %41, 1
  store i32 %42, i32* %14, align 4
  %43 = load i64, i64* %13, align 8
  %44 = call i32 @_PyLong_FromLong(i64 %43)
  %45 = call i32 @PyTuple_SetItem(i32* %40, i32 %41, i32 %44)
  %46 = load i32*, i32** %12, align 8
  %47 = load i32, i32* %14, align 4
  %48 = add i32 %47, 1
  store i32 %48, i32* %14, align 4
  %49 = load i8*, i8** %10, align 8
  %50 = call i32 @_PyUnicode_FromString(i8* %49)
  %51 = call i32 @PyTuple_SetItem(i32* %46, i32 %47, i32 %50)
  %52 = load i8*, i8** %11, align 8
  %53 = load i32*, i32** %12, align 8
  %54 = call i32 @try_call_object(i8* %52, i32* %53)
  %55 = load i32*, i32** %12, align 8
  %56 = call i32 @Py_DECREF(i32* %55)
  ret void
}

declare dso_local i32* @PyTuple_New(i32) #1

declare dso_local i32 @Py_FatalError(i8*) #1

declare dso_local i64 @eval_flag(i8*) #1

declare dso_local i32 @PyTuple_SetItem(i32*, i32, i32) #1

declare dso_local i32 @_PyUnicode_FromString(i8*) #1

declare dso_local i32 @_PyLong_FromLong(i64) #1

declare dso_local i32 @try_call_object(i8*, i32*) #1

declare dso_local i32 @Py_DECREF(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
