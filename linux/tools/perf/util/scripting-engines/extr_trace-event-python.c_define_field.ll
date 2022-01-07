; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/util/scripting-engines/extr_trace-event-python.c_define_field.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/util/scripting-engines/extr_trace-event-python.c_define_field.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [18 x i8] c"define_flag_field\00", align 1
@TEP_PRINT_SYMBOL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [22 x i8] c"define_symbolic_field\00", align 1
@TEP_PRINT_FLAGS = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [29 x i8] c"couldn't create Python tuple\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i8*, i8*, i8*)* @define_field to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @define_field(i32 %0, i8* %1, i8* %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  store i8* %3, i8** %8, align 8
  store i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i8** %9, align 8
  store i32 0, i32* %11, align 4
  %12 = load i32, i32* %5, align 4
  %13 = load i32, i32* @TEP_PRINT_SYMBOL, align 4
  %14 = icmp eq i32 %12, %13
  br i1 %14, label %15, label %16

15:                                               ; preds = %4
  store i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i8** %9, align 8
  br label %16

16:                                               ; preds = %15, %4
  %17 = load i32, i32* %5, align 4
  %18 = load i32, i32* @TEP_PRINT_FLAGS, align 4
  %19 = icmp eq i32 %17, %18
  br i1 %19, label %20, label %22

20:                                               ; preds = %16
  %21 = call i32* @PyTuple_New(i32 3)
  store i32* %21, i32** %10, align 8
  br label %24

22:                                               ; preds = %16
  %23 = call i32* @PyTuple_New(i32 2)
  store i32* %23, i32** %10, align 8
  br label %24

24:                                               ; preds = %22, %20
  %25 = load i32*, i32** %10, align 8
  %26 = icmp ne i32* %25, null
  br i1 %26, label %29, label %27

27:                                               ; preds = %24
  %28 = call i32 @Py_FatalError(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0))
  br label %29

29:                                               ; preds = %27, %24
  %30 = load i32*, i32** %10, align 8
  %31 = load i32, i32* %11, align 4
  %32 = add i32 %31, 1
  store i32 %32, i32* %11, align 4
  %33 = load i8*, i8** %6, align 8
  %34 = call i32 @_PyUnicode_FromString(i8* %33)
  %35 = call i32 @PyTuple_SetItem(i32* %30, i32 %31, i32 %34)
  %36 = load i32*, i32** %10, align 8
  %37 = load i32, i32* %11, align 4
  %38 = add i32 %37, 1
  store i32 %38, i32* %11, align 4
  %39 = load i8*, i8** %7, align 8
  %40 = call i32 @_PyUnicode_FromString(i8* %39)
  %41 = call i32 @PyTuple_SetItem(i32* %36, i32 %37, i32 %40)
  %42 = load i32, i32* %5, align 4
  %43 = load i32, i32* @TEP_PRINT_FLAGS, align 4
  %44 = icmp eq i32 %42, %43
  br i1 %44, label %45, label %52

45:                                               ; preds = %29
  %46 = load i32*, i32** %10, align 8
  %47 = load i32, i32* %11, align 4
  %48 = add i32 %47, 1
  store i32 %48, i32* %11, align 4
  %49 = load i8*, i8** %8, align 8
  %50 = call i32 @_PyUnicode_FromString(i8* %49)
  %51 = call i32 @PyTuple_SetItem(i32* %46, i32 %47, i32 %50)
  br label %52

52:                                               ; preds = %45, %29
  %53 = load i8*, i8** %9, align 8
  %54 = load i32*, i32** %10, align 8
  %55 = call i32 @try_call_object(i8* %53, i32* %54)
  %56 = load i32*, i32** %10, align 8
  %57 = call i32 @Py_DECREF(i32* %56)
  ret void
}

declare dso_local i32* @PyTuple_New(i32) #1

declare dso_local i32 @Py_FatalError(i8*) #1

declare dso_local i32 @PyTuple_SetItem(i32*, i32, i32) #1

declare dso_local i32 @_PyUnicode_FromString(i8*) #1

declare dso_local i32 @try_call_object(i8*, i32*) #1

declare dso_local i32 @Py_DECREF(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
