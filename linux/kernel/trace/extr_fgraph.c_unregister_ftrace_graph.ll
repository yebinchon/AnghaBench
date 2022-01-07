; ModuleID = '/home/carl/AnghaBench/linux/kernel/trace/extr_fgraph.c_unregister_ftrace_graph.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/trace/extr_fgraph.c_unregister_ftrace_graph.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fgraph_ops = type { i32 }

@ftrace_lock = common dso_local global i32 0, align 4
@ftrace_graph_active = common dso_local global i32 0, align 4
@ftrace_stub = common dso_local global i64 0, align 8
@ftrace_graph_return = common dso_local global i64 0, align 8
@ftrace_graph_entry_stub = common dso_local global i8* null, align 8
@ftrace_graph_entry = common dso_local global i8* null, align 8
@__ftrace_graph_entry = common dso_local global i8* null, align 8
@graph_ops = common dso_local global i32 0, align 4
@FTRACE_STOP_FUNC_RET = common dso_local global i32 0, align 4
@ftrace_suspend_notifier = common dso_local global i32 0, align 4
@ftrace_graph_probe_sched_switch = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @unregister_ftrace_graph(%struct.fgraph_ops* %0) #0 {
  %2 = alloca %struct.fgraph_ops*, align 8
  store %struct.fgraph_ops* %0, %struct.fgraph_ops** %2, align 8
  %3 = call i32 @mutex_lock(i32* @ftrace_lock)
  %4 = load i32, i32* @ftrace_graph_active, align 4
  %5 = icmp ne i32 %4, 0
  %6 = xor i1 %5, true
  %7 = zext i1 %6 to i32
  %8 = call i64 @unlikely(i32 %7)
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %11

10:                                               ; preds = %1
  br label %22

11:                                               ; preds = %1
  %12 = load i32, i32* @ftrace_graph_active, align 4
  %13 = add nsw i32 %12, -1
  store i32 %13, i32* @ftrace_graph_active, align 4
  %14 = load i64, i64* @ftrace_stub, align 8
  store i64 %14, i64* @ftrace_graph_return, align 8
  %15 = load i8*, i8** @ftrace_graph_entry_stub, align 8
  store i8* %15, i8** @ftrace_graph_entry, align 8
  %16 = load i8*, i8** @ftrace_graph_entry_stub, align 8
  store i8* %16, i8** @__ftrace_graph_entry, align 8
  %17 = load i32, i32* @FTRACE_STOP_FUNC_RET, align 4
  %18 = call i32 @ftrace_shutdown(i32* @graph_ops, i32 %17)
  %19 = call i32 @unregister_pm_notifier(i32* @ftrace_suspend_notifier)
  %20 = load i32, i32* @ftrace_graph_probe_sched_switch, align 4
  %21 = call i32 @unregister_trace_sched_switch(i32 %20, i32* null)
  br label %22

22:                                               ; preds = %11, %10
  %23 = call i32 @mutex_unlock(i32* @ftrace_lock)
  ret void
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @ftrace_shutdown(i32*, i32) #1

declare dso_local i32 @unregister_pm_notifier(i32*) #1

declare dso_local i32 @unregister_trace_sched_switch(i32, i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
