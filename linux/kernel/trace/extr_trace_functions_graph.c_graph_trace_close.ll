; ModuleID = '/home/carl/AnghaBench/linux/kernel/trace/extr_trace_functions_graph.c_graph_trace_close.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/trace/extr_trace_functions_graph.c_graph_trace_close.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.trace_iterator = type { %struct.fgraph_data* }
%struct.fgraph_data = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @graph_trace_close(%struct.trace_iterator* %0) #0 {
  %2 = alloca %struct.trace_iterator*, align 8
  %3 = alloca %struct.fgraph_data*, align 8
  store %struct.trace_iterator* %0, %struct.trace_iterator** %2, align 8
  %4 = load %struct.trace_iterator*, %struct.trace_iterator** %2, align 8
  %5 = getelementptr inbounds %struct.trace_iterator, %struct.trace_iterator* %4, i32 0, i32 0
  %6 = load %struct.fgraph_data*, %struct.fgraph_data** %5, align 8
  store %struct.fgraph_data* %6, %struct.fgraph_data** %3, align 8
  %7 = load %struct.fgraph_data*, %struct.fgraph_data** %3, align 8
  %8 = icmp ne %struct.fgraph_data* %7, null
  br i1 %8, label %9, label %16

9:                                                ; preds = %1
  %10 = load %struct.fgraph_data*, %struct.fgraph_data** %3, align 8
  %11 = getelementptr inbounds %struct.fgraph_data, %struct.fgraph_data* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @free_percpu(i32 %12)
  %14 = load %struct.fgraph_data*, %struct.fgraph_data** %3, align 8
  %15 = call i32 @kfree(%struct.fgraph_data* %14)
  br label %16

16:                                               ; preds = %9, %1
  ret void
}

declare dso_local i32 @free_percpu(i32) #1

declare dso_local i32 @kfree(%struct.fgraph_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
