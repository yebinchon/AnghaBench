; ModuleID = '/home/carl/AnghaBench/linux/kernel/trace/extr_trace_functions_graph.c_func_graph_set_flag.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/trace/extr_trace_functions_graph.c_func_graph_set_flag.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.trace_array = type { i32 }

@TRACE_GRAPH_PRINT_IRQS = common dso_local global i64 0, align 8
@ftrace_graph_skip_irqs = common dso_local global i32 0, align 4
@TRACE_GRAPH_SLEEP_TIME = common dso_local global i64 0, align 8
@TRACE_GRAPH_GRAPH_TIME = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.trace_array*, i64, i64, i32)* @func_graph_set_flag to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @func_graph_set_flag(%struct.trace_array* %0, i64 %1, i64 %2, i32 %3) #0 {
  %5 = alloca %struct.trace_array*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store %struct.trace_array* %0, %struct.trace_array** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  store i32 %3, i32* %8, align 4
  %9 = load i64, i64* %7, align 8
  %10 = load i64, i64* @TRACE_GRAPH_PRINT_IRQS, align 8
  %11 = icmp eq i64 %9, %10
  br i1 %11, label %12, label %17

12:                                               ; preds = %4
  %13 = load i32, i32* %8, align 4
  %14 = icmp ne i32 %13, 0
  %15 = xor i1 %14, true
  %16 = zext i1 %15 to i32
  store i32 %16, i32* @ftrace_graph_skip_irqs, align 4
  br label %17

17:                                               ; preds = %12, %4
  %18 = load i64, i64* %7, align 8
  %19 = load i64, i64* @TRACE_GRAPH_SLEEP_TIME, align 8
  %20 = icmp eq i64 %18, %19
  br i1 %20, label %21, label %24

21:                                               ; preds = %17
  %22 = load i32, i32* %8, align 4
  %23 = call i32 @ftrace_graph_sleep_time_control(i32 %22)
  br label %24

24:                                               ; preds = %21, %17
  %25 = load i64, i64* %7, align 8
  %26 = load i64, i64* @TRACE_GRAPH_GRAPH_TIME, align 8
  %27 = icmp eq i64 %25, %26
  br i1 %27, label %28, label %31

28:                                               ; preds = %24
  %29 = load i32, i32* %8, align 4
  %30 = call i32 @ftrace_graph_graph_time_control(i32 %29)
  br label %31

31:                                               ; preds = %28, %24
  ret i32 0
}

declare dso_local i32 @ftrace_graph_sleep_time_control(i32) #1

declare dso_local i32 @ftrace_graph_graph_time_control(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
