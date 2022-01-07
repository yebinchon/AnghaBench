; ModuleID = '/home/carl/AnghaBench/linux/kernel/trace/extr_trace_functions.c_function_trace_init.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/trace/extr_trace_functions.c_function_trace_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }
%struct.trace_array = type { i32, %struct.TYPE_3__, i32 }
%struct.TYPE_3__ = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4
@TRACE_ARRAY_FL_GLOBAL = common dso_local global i32 0, align 4
@func_flags = common dso_local global %struct.TYPE_4__ zeroinitializer, align 4
@TRACE_FUNC_OPT_STACK = common dso_local global i32 0, align 4
@function_stack_trace_call = common dso_local global i32 0, align 4
@function_trace_call = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.trace_array*)* @function_trace_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @function_trace_init(%struct.trace_array* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.trace_array*, align 8
  %4 = alloca i32, align 4
  store %struct.trace_array* %0, %struct.trace_array** %3, align 8
  %5 = load %struct.trace_array*, %struct.trace_array** %3, align 8
  %6 = getelementptr inbounds %struct.trace_array, %struct.trace_array* %5, i32 0, i32 2
  %7 = load i32, i32* %6, align 4
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %12, label %9

9:                                                ; preds = %1
  %10 = load i32, i32* @ENOMEM, align 4
  %11 = sub nsw i32 0, %10
  store i32 %11, i32* %2, align 4
  br label %40

12:                                               ; preds = %1
  %13 = load %struct.trace_array*, %struct.trace_array** %3, align 8
  %14 = getelementptr inbounds %struct.trace_array, %struct.trace_array* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* @TRACE_ARRAY_FL_GLOBAL, align 4
  %17 = and i32 %15, %16
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %26

19:                                               ; preds = %12
  %20 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @func_flags, i32 0, i32 0), align 4
  %21 = load i32, i32* @TRACE_FUNC_OPT_STACK, align 4
  %22 = and i32 %20, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %19
  %25 = load i32, i32* @function_stack_trace_call, align 4
  store i32 %25, i32* %4, align 4
  br label %28

26:                                               ; preds = %19, %12
  %27 = load i32, i32* @function_trace_call, align 4
  store i32 %27, i32* %4, align 4
  br label %28

28:                                               ; preds = %26, %24
  %29 = load %struct.trace_array*, %struct.trace_array** %3, align 8
  %30 = load i32, i32* %4, align 4
  %31 = call i32 @ftrace_init_array_ops(%struct.trace_array* %29, i32 %30)
  %32 = call i32 (...) @get_cpu()
  %33 = load %struct.trace_array*, %struct.trace_array** %3, align 8
  %34 = getelementptr inbounds %struct.trace_array, %struct.trace_array* %33, i32 0, i32 1
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 0
  store i32 %32, i32* %35, align 4
  %36 = call i32 (...) @put_cpu()
  %37 = call i32 (...) @tracing_start_cmdline_record()
  %38 = load %struct.trace_array*, %struct.trace_array** %3, align 8
  %39 = call i32 @tracing_start_function_trace(%struct.trace_array* %38)
  store i32 0, i32* %2, align 4
  br label %40

40:                                               ; preds = %28, %9
  %41 = load i32, i32* %2, align 4
  ret i32 %41
}

declare dso_local i32 @ftrace_init_array_ops(%struct.trace_array*, i32) #1

declare dso_local i32 @get_cpu(...) #1

declare dso_local i32 @put_cpu(...) #1

declare dso_local i32 @tracing_start_cmdline_record(...) #1

declare dso_local i32 @tracing_start_function_trace(%struct.trace_array*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
