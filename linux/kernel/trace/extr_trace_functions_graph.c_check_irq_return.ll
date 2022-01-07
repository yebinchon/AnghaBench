; ModuleID = '/home/carl/AnghaBench/linux/kernel/trace/extr_trace_functions_graph.c_check_irq_return.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/trace/extr_trace_functions_graph.c_check_irq_return.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.trace_iterator = type { i32, %struct.fgraph_data* }
%struct.fgraph_data = type { i32 }
%struct.TYPE_2__ = type { i32 }

@TRACE_GRAPH_PRINT_IRQS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.trace_iterator*, i32, i32)* @check_irq_return to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @check_irq_return(%struct.trace_iterator* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.trace_iterator*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca %struct.fgraph_data*, align 8
  store %struct.trace_iterator* %0, %struct.trace_iterator** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %11 = load %struct.trace_iterator*, %struct.trace_iterator** %5, align 8
  %12 = getelementptr inbounds %struct.trace_iterator, %struct.trace_iterator* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  store i32 %13, i32* %8, align 4
  %14 = load %struct.trace_iterator*, %struct.trace_iterator** %5, align 8
  %15 = getelementptr inbounds %struct.trace_iterator, %struct.trace_iterator* %14, i32 0, i32 1
  %16 = load %struct.fgraph_data*, %struct.fgraph_data** %15, align 8
  store %struct.fgraph_data* %16, %struct.fgraph_data** %10, align 8
  %17 = load i32, i32* %6, align 4
  %18 = load i32, i32* @TRACE_GRAPH_PRINT_IRQS, align 4
  %19 = and i32 %17, %18
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %24, label %21

21:                                               ; preds = %3
  %22 = load %struct.fgraph_data*, %struct.fgraph_data** %10, align 8
  %23 = icmp ne %struct.fgraph_data* %22, null
  br i1 %23, label %25, label %24

24:                                               ; preds = %21, %3
  store i32 0, i32* %4, align 4
  br label %44

25:                                               ; preds = %21
  %26 = load %struct.fgraph_data*, %struct.fgraph_data** %10, align 8
  %27 = getelementptr inbounds %struct.fgraph_data, %struct.fgraph_data* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* %8, align 4
  %30 = call %struct.TYPE_2__* @per_cpu_ptr(i32 %28, i32 %29)
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  store i32* %31, i32** %9, align 8
  %32 = load i32*, i32** %9, align 8
  %33 = load i32, i32* %32, align 4
  %34 = icmp eq i32 %33, -1
  br i1 %34, label %35, label %36

35:                                               ; preds = %25
  store i32 0, i32* %4, align 4
  br label %44

36:                                               ; preds = %25
  %37 = load i32*, i32** %9, align 8
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* %7, align 4
  %40 = icmp sge i32 %38, %39
  br i1 %40, label %41, label %43

41:                                               ; preds = %36
  %42 = load i32*, i32** %9, align 8
  store i32 -1, i32* %42, align 4
  store i32 1, i32* %4, align 4
  br label %44

43:                                               ; preds = %36
  store i32 1, i32* %4, align 4
  br label %44

44:                                               ; preds = %43, %41, %35, %24
  %45 = load i32, i32* %4, align 4
  ret i32 %45
}

declare dso_local %struct.TYPE_2__* @per_cpu_ptr(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
