; ModuleID = '/home/carl/AnghaBench/linux/kernel/trace/extr_trace_functions_graph.c_trace_graph_thresh_return.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/trace/extr_trace_functions_graph.c_trace_graph_thresh_return.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ftrace_graph_ret = type { i64, i64 }

@TRACE_GRAPH_NOTRACE_BIT = common dso_local global i32 0, align 4
@tracing_thresh = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ftrace_graph_ret*)* @trace_graph_thresh_return to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @trace_graph_thresh_return(%struct.ftrace_graph_ret* %0) #0 {
  %2 = alloca %struct.ftrace_graph_ret*, align 8
  store %struct.ftrace_graph_ret* %0, %struct.ftrace_graph_ret** %2, align 8
  %3 = load %struct.ftrace_graph_ret*, %struct.ftrace_graph_ret** %2, align 8
  %4 = call i32 @ftrace_graph_addr_finish(%struct.ftrace_graph_ret* %3)
  %5 = load i32, i32* @TRACE_GRAPH_NOTRACE_BIT, align 4
  %6 = call i64 @trace_recursion_test(i32 %5)
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %11

8:                                                ; preds = %1
  %9 = load i32, i32* @TRACE_GRAPH_NOTRACE_BIT, align 4
  %10 = call i32 @trace_recursion_clear(i32 %9)
  br label %28

11:                                               ; preds = %1
  %12 = load i64, i64* @tracing_thresh, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %25

14:                                               ; preds = %11
  %15 = load %struct.ftrace_graph_ret*, %struct.ftrace_graph_ret** %2, align 8
  %16 = getelementptr inbounds %struct.ftrace_graph_ret, %struct.ftrace_graph_ret* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load %struct.ftrace_graph_ret*, %struct.ftrace_graph_ret** %2, align 8
  %19 = getelementptr inbounds %struct.ftrace_graph_ret, %struct.ftrace_graph_ret* %18, i32 0, i32 1
  %20 = load i64, i64* %19, align 8
  %21 = sub nsw i64 %17, %20
  %22 = load i64, i64* @tracing_thresh, align 8
  %23 = icmp slt i64 %21, %22
  br i1 %23, label %24, label %25

24:                                               ; preds = %14
  br label %28

25:                                               ; preds = %14, %11
  %26 = load %struct.ftrace_graph_ret*, %struct.ftrace_graph_ret** %2, align 8
  %27 = call i32 @trace_graph_return(%struct.ftrace_graph_ret* %26)
  br label %28

28:                                               ; preds = %8, %24, %25
  ret void
}

declare dso_local i32 @ftrace_graph_addr_finish(%struct.ftrace_graph_ret*) #1

declare dso_local i64 @trace_recursion_test(i32) #1

declare dso_local i32 @trace_recursion_clear(i32) #1

declare dso_local i32 @trace_graph_return(%struct.ftrace_graph_ret*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
