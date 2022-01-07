; ModuleID = '/home/carl/AnghaBench/linux/kernel/trace/extr_trace_functions.c_func_set_flag.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/trace/extr_trace_functions.c_func_set_flag.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32 }
%struct.trace_array = type { %struct.TYPE_4__*, i32* }
%struct.TYPE_4__ = type { i32 }

@func_flags = common dso_local global %struct.TYPE_5__ zeroinitializer, align 4
@function_trace = common dso_local global i32 0, align 4
@function_stack_trace_call = common dso_local global i32 0, align 4
@function_trace_call = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.trace_array*, i32, i32, i32)* @func_set_flag to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @func_set_flag(%struct.trace_array* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.trace_array*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.trace_array* %0, %struct.trace_array** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %10 = load i32, i32* %8, align 4
  switch i32 %10, label %59 [
    i32 128, label %11
  ]

11:                                               ; preds = %4
  %12 = load i32, i32* %9, align 4
  %13 = icmp ne i32 %12, 0
  %14 = xor i1 %13, true
  %15 = xor i1 %14, true
  %16 = zext i1 %15 to i32
  %17 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @func_flags, i32 0, i32 0), align 4
  %18 = and i32 %17, 128
  %19 = icmp ne i32 %18, 0
  %20 = xor i1 %19, true
  %21 = xor i1 %20, true
  %22 = zext i1 %21 to i32
  %23 = icmp eq i32 %16, %22
  br i1 %23, label %24, label %25

24:                                               ; preds = %11
  br label %62

25:                                               ; preds = %11
  %26 = load %struct.trace_array*, %struct.trace_array** %6, align 8
  %27 = getelementptr inbounds %struct.trace_array, %struct.trace_array* %26, i32 0, i32 1
  %28 = load i32*, i32** %27, align 8
  %29 = icmp ne i32* %28, @function_trace
  br i1 %29, label %30, label %31

30:                                               ; preds = %25
  br label %62

31:                                               ; preds = %25
  %32 = load %struct.trace_array*, %struct.trace_array** %6, align 8
  %33 = getelementptr inbounds %struct.trace_array, %struct.trace_array* %32, i32 0, i32 0
  %34 = load %struct.TYPE_4__*, %struct.TYPE_4__** %33, align 8
  %35 = call i32 @unregister_ftrace_function(%struct.TYPE_4__* %34)
  %36 = load i32, i32* %9, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %48

38:                                               ; preds = %31
  %39 = load i32, i32* @function_stack_trace_call, align 4
  %40 = load %struct.trace_array*, %struct.trace_array** %6, align 8
  %41 = getelementptr inbounds %struct.trace_array, %struct.trace_array* %40, i32 0, i32 0
  %42 = load %struct.TYPE_4__*, %struct.TYPE_4__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 0
  store i32 %39, i32* %43, align 4
  %44 = load %struct.trace_array*, %struct.trace_array** %6, align 8
  %45 = getelementptr inbounds %struct.trace_array, %struct.trace_array* %44, i32 0, i32 0
  %46 = load %struct.TYPE_4__*, %struct.TYPE_4__** %45, align 8
  %47 = call i32 @register_ftrace_function(%struct.TYPE_4__* %46)
  br label %58

48:                                               ; preds = %31
  %49 = load i32, i32* @function_trace_call, align 4
  %50 = load %struct.trace_array*, %struct.trace_array** %6, align 8
  %51 = getelementptr inbounds %struct.trace_array, %struct.trace_array* %50, i32 0, i32 0
  %52 = load %struct.TYPE_4__*, %struct.TYPE_4__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i32 0, i32 0
  store i32 %49, i32* %53, align 4
  %54 = load %struct.trace_array*, %struct.trace_array** %6, align 8
  %55 = getelementptr inbounds %struct.trace_array, %struct.trace_array* %54, i32 0, i32 0
  %56 = load %struct.TYPE_4__*, %struct.TYPE_4__** %55, align 8
  %57 = call i32 @register_ftrace_function(%struct.TYPE_4__* %56)
  br label %58

58:                                               ; preds = %48, %38
  br label %62

59:                                               ; preds = %4
  %60 = load i32, i32* @EINVAL, align 4
  %61 = sub nsw i32 0, %60
  store i32 %61, i32* %5, align 4
  br label %63

62:                                               ; preds = %58, %30, %24
  store i32 0, i32* %5, align 4
  br label %63

63:                                               ; preds = %62, %59
  %64 = load i32, i32* %5, align 4
  ret i32 %64
}

declare dso_local i32 @unregister_ftrace_function(%struct.TYPE_4__*) #1

declare dso_local i32 @register_ftrace_function(%struct.TYPE_4__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
