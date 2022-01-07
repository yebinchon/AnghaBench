; ModuleID = '/home/carl/AnghaBench/linux/kernel/trace/extr_trace_functions_graph.c_trace_graph_return.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/trace/extr_trace_functions_graph.c_trace_graph_return.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.trace_array = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.ftrace_graph_ret = type { i32 }
%struct.trace_array_cpu = type { i32 }

@graph_array = common dso_local global %struct.trace_array* null, align 8
@TRACE_GRAPH_NOTRACE_BIT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @trace_graph_return(%struct.ftrace_graph_ret* %0) #0 {
  %2 = alloca %struct.ftrace_graph_ret*, align 8
  %3 = alloca %struct.trace_array*, align 8
  %4 = alloca %struct.trace_array_cpu*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.ftrace_graph_ret* %0, %struct.ftrace_graph_ret** %2, align 8
  %9 = load %struct.trace_array*, %struct.trace_array** @graph_array, align 8
  store %struct.trace_array* %9, %struct.trace_array** %3, align 8
  %10 = load %struct.ftrace_graph_ret*, %struct.ftrace_graph_ret** %2, align 8
  %11 = call i32 @ftrace_graph_addr_finish(%struct.ftrace_graph_ret* %10)
  %12 = load i32, i32* @TRACE_GRAPH_NOTRACE_BIT, align 4
  %13 = call i64 @trace_recursion_test(i32 %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %18

15:                                               ; preds = %1
  %16 = load i32, i32* @TRACE_GRAPH_NOTRACE_BIT, align 4
  %17 = call i32 @trace_recursion_clear(i32 %16)
  br label %49

18:                                               ; preds = %1
  %19 = load i64, i64* %5, align 8
  %20 = call i32 @local_irq_save(i64 %19)
  %21 = call i32 (...) @raw_smp_processor_id()
  store i32 %21, i32* %7, align 4
  %22 = load %struct.trace_array*, %struct.trace_array** %3, align 8
  %23 = getelementptr inbounds %struct.trace_array, %struct.trace_array* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* %7, align 4
  %27 = call %struct.trace_array_cpu* @per_cpu_ptr(i32 %25, i32 %26)
  store %struct.trace_array_cpu* %27, %struct.trace_array_cpu** %4, align 8
  %28 = load %struct.trace_array_cpu*, %struct.trace_array_cpu** %4, align 8
  %29 = getelementptr inbounds %struct.trace_array_cpu, %struct.trace_array_cpu* %28, i32 0, i32 0
  %30 = call i64 @atomic_inc_return(i32* %29)
  store i64 %30, i64* %6, align 8
  %31 = load i64, i64* %6, align 8
  %32 = icmp eq i64 %31, 1
  %33 = zext i1 %32 to i32
  %34 = call i64 @likely(i32 %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %43

36:                                               ; preds = %18
  %37 = call i32 (...) @preempt_count()
  store i32 %37, i32* %8, align 4
  %38 = load %struct.trace_array*, %struct.trace_array** %3, align 8
  %39 = load %struct.ftrace_graph_ret*, %struct.ftrace_graph_ret** %2, align 8
  %40 = load i64, i64* %5, align 8
  %41 = load i32, i32* %8, align 4
  %42 = call i32 @__trace_graph_return(%struct.trace_array* %38, %struct.ftrace_graph_ret* %39, i64 %40, i32 %41)
  br label %43

43:                                               ; preds = %36, %18
  %44 = load %struct.trace_array_cpu*, %struct.trace_array_cpu** %4, align 8
  %45 = getelementptr inbounds %struct.trace_array_cpu, %struct.trace_array_cpu* %44, i32 0, i32 0
  %46 = call i32 @atomic_dec(i32* %45)
  %47 = load i64, i64* %5, align 8
  %48 = call i32 @local_irq_restore(i64 %47)
  br label %49

49:                                               ; preds = %43, %15
  ret void
}

declare dso_local i32 @ftrace_graph_addr_finish(%struct.ftrace_graph_ret*) #1

declare dso_local i64 @trace_recursion_test(i32) #1

declare dso_local i32 @trace_recursion_clear(i32) #1

declare dso_local i32 @local_irq_save(i64) #1

declare dso_local i32 @raw_smp_processor_id(...) #1

declare dso_local %struct.trace_array_cpu* @per_cpu_ptr(i32, i32) #1

declare dso_local i64 @atomic_inc_return(i32*) #1

declare dso_local i64 @likely(i32) #1

declare dso_local i32 @preempt_count(...) #1

declare dso_local i32 @__trace_graph_return(%struct.trace_array*, %struct.ftrace_graph_ret*, i64, i32) #1

declare dso_local i32 @atomic_dec(i32*) #1

declare dso_local i32 @local_irq_restore(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
