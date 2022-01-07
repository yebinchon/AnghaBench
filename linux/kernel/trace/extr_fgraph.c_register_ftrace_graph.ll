; ModuleID = '/home/carl/AnghaBench/linux/kernel/trace/extr_fgraph.c_register_ftrace_graph.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/trace/extr_fgraph.c_register_ftrace_graph.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fgraph_ops = type { i32, i32 }

@ftrace_lock = common dso_local global i32 0, align 4
@ftrace_graph_active = common dso_local global i64 0, align 8
@EBUSY = common dso_local global i32 0, align 4
@ftrace_suspend_notifier = common dso_local global i32 0, align 4
@ftrace_graph_return = common dso_local global i32 0, align 4
@__ftrace_graph_entry = common dso_local global i32 0, align 4
@ftrace_graph_entry_test = common dso_local global i32 0, align 4
@ftrace_graph_entry = common dso_local global i32 0, align 4
@graph_ops = common dso_local global i32 0, align 4
@FTRACE_START_FUNC_RET = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @register_ftrace_graph(%struct.fgraph_ops* %0) #0 {
  %2 = alloca %struct.fgraph_ops*, align 8
  %3 = alloca i32, align 4
  store %struct.fgraph_ops* %0, %struct.fgraph_ops** %2, align 8
  store i32 0, i32* %3, align 4
  %4 = call i32 @mutex_lock(i32* @ftrace_lock)
  %5 = load i64, i64* @ftrace_graph_active, align 8
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %7, label %10

7:                                                ; preds = %1
  %8 = load i32, i32* @EBUSY, align 4
  %9 = sub nsw i32 0, %8
  store i32 %9, i32* %3, align 4
  br label %31

10:                                               ; preds = %1
  %11 = call i32 @register_pm_notifier(i32* @ftrace_suspend_notifier)
  %12 = load i64, i64* @ftrace_graph_active, align 8
  %13 = add nsw i64 %12, 1
  store i64 %13, i64* @ftrace_graph_active, align 8
  %14 = call i32 (...) @start_graph_tracing()
  store i32 %14, i32* %3, align 4
  %15 = load i32, i32* %3, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %10
  %18 = load i64, i64* @ftrace_graph_active, align 8
  %19 = add nsw i64 %18, -1
  store i64 %19, i64* @ftrace_graph_active, align 8
  br label %31

20:                                               ; preds = %10
  %21 = load %struct.fgraph_ops*, %struct.fgraph_ops** %2, align 8
  %22 = getelementptr inbounds %struct.fgraph_ops, %struct.fgraph_ops* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  store i32 %23, i32* @ftrace_graph_return, align 4
  %24 = load %struct.fgraph_ops*, %struct.fgraph_ops** %2, align 8
  %25 = getelementptr inbounds %struct.fgraph_ops, %struct.fgraph_ops* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  store i32 %26, i32* @__ftrace_graph_entry, align 4
  %27 = load i32, i32* @ftrace_graph_entry_test, align 4
  store i32 %27, i32* @ftrace_graph_entry, align 4
  %28 = call i32 (...) @update_function_graph_func()
  %29 = load i32, i32* @FTRACE_START_FUNC_RET, align 4
  %30 = call i32 @ftrace_startup(i32* @graph_ops, i32 %29)
  store i32 %30, i32* %3, align 4
  br label %31

31:                                               ; preds = %20, %17, %7
  %32 = call i32 @mutex_unlock(i32* @ftrace_lock)
  %33 = load i32, i32* %3, align 4
  ret i32 %33
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @register_pm_notifier(i32*) #1

declare dso_local i32 @start_graph_tracing(...) #1

declare dso_local i32 @update_function_graph_func(...) #1

declare dso_local i32 @ftrace_startup(i32*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
