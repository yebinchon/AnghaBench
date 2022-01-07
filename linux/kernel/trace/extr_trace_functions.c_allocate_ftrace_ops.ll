; ModuleID = '/home/carl/AnghaBench/linux/kernel/trace/extr_trace_functions.c_allocate_ftrace_ops.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/trace/extr_trace_functions.c_allocate_ftrace_ops.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.trace_array = type { %struct.ftrace_ops* }
%struct.ftrace_ops = type { i32, %struct.trace_array*, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@function_trace_call = common dso_local global i32 0, align 4
@FTRACE_OPS_FL_RECURSION_SAFE = common dso_local global i32 0, align 4
@FTRACE_OPS_FL_PID = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.trace_array*)* @allocate_ftrace_ops to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @allocate_ftrace_ops(%struct.trace_array* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.trace_array*, align 8
  %4 = alloca %struct.ftrace_ops*, align 8
  store %struct.trace_array* %0, %struct.trace_array** %3, align 8
  %5 = load i32, i32* @GFP_KERNEL, align 4
  %6 = call %struct.ftrace_ops* @kzalloc(i32 24, i32 %5)
  store %struct.ftrace_ops* %6, %struct.ftrace_ops** %4, align 8
  %7 = load %struct.ftrace_ops*, %struct.ftrace_ops** %4, align 8
  %8 = icmp ne %struct.ftrace_ops* %7, null
  br i1 %8, label %12, label %9

9:                                                ; preds = %1
  %10 = load i32, i32* @ENOMEM, align 4
  %11 = sub nsw i32 0, %10
  store i32 %11, i32* %2, align 4
  br label %27

12:                                               ; preds = %1
  %13 = load i32, i32* @function_trace_call, align 4
  %14 = load %struct.ftrace_ops*, %struct.ftrace_ops** %4, align 8
  %15 = getelementptr inbounds %struct.ftrace_ops, %struct.ftrace_ops* %14, i32 0, i32 2
  store i32 %13, i32* %15, align 8
  %16 = load i32, i32* @FTRACE_OPS_FL_RECURSION_SAFE, align 4
  %17 = load i32, i32* @FTRACE_OPS_FL_PID, align 4
  %18 = or i32 %16, %17
  %19 = load %struct.ftrace_ops*, %struct.ftrace_ops** %4, align 8
  %20 = getelementptr inbounds %struct.ftrace_ops, %struct.ftrace_ops* %19, i32 0, i32 0
  store i32 %18, i32* %20, align 8
  %21 = load %struct.ftrace_ops*, %struct.ftrace_ops** %4, align 8
  %22 = load %struct.trace_array*, %struct.trace_array** %3, align 8
  %23 = getelementptr inbounds %struct.trace_array, %struct.trace_array* %22, i32 0, i32 0
  store %struct.ftrace_ops* %21, %struct.ftrace_ops** %23, align 8
  %24 = load %struct.trace_array*, %struct.trace_array** %3, align 8
  %25 = load %struct.ftrace_ops*, %struct.ftrace_ops** %4, align 8
  %26 = getelementptr inbounds %struct.ftrace_ops, %struct.ftrace_ops* %25, i32 0, i32 1
  store %struct.trace_array* %24, %struct.trace_array** %26, align 8
  store i32 0, i32* %2, align 4
  br label %27

27:                                               ; preds = %12, %9
  %28 = load i32, i32* %2, align 4
  ret i32 %28
}

declare dso_local %struct.ftrace_ops* @kzalloc(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
