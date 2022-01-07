; ModuleID = '/home/carl/AnghaBench/linux/kernel/trace/extr_trace_functions_graph.c_trace_graph_entry.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/trace/extr_trace_functions_graph.c_trace_graph_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.trace_array = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.ftrace_graph_ent = type { i32 }
%struct.trace_array_cpu = type { i32 }

@graph_array = common dso_local global %struct.trace_array* null, align 8
@TRACE_GRAPH_NOTRACE_BIT = common dso_local global i32 0, align 4
@tracing_thresh = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @trace_graph_entry(%struct.ftrace_graph_ent* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ftrace_graph_ent*, align 8
  %4 = alloca %struct.trace_array*, align 8
  %5 = alloca %struct.trace_array_cpu*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.ftrace_graph_ent* %0, %struct.ftrace_graph_ent** %3, align 8
  %11 = load %struct.trace_array*, %struct.trace_array** @graph_array, align 8
  store %struct.trace_array* %11, %struct.trace_array** %4, align 8
  %12 = load i32, i32* @TRACE_GRAPH_NOTRACE_BIT, align 4
  %13 = call i64 @trace_recursion_test(i32 %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %76

16:                                               ; preds = %1
  %17 = load %struct.ftrace_graph_ent*, %struct.ftrace_graph_ent** %3, align 8
  %18 = getelementptr inbounds %struct.ftrace_graph_ent, %struct.ftrace_graph_ent* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call i64 @ftrace_graph_notrace_addr(i32 %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %16
  %23 = load i32, i32* @TRACE_GRAPH_NOTRACE_BIT, align 4
  %24 = call i32 @trace_recursion_set(i32 %23)
  store i32 1, i32* %2, align 4
  br label %76

25:                                               ; preds = %16
  %26 = load %struct.trace_array*, %struct.trace_array** %4, align 8
  %27 = call i32 @ftrace_trace_task(%struct.trace_array* %26)
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %30, label %29

29:                                               ; preds = %25
  store i32 0, i32* %2, align 4
  br label %76

30:                                               ; preds = %25
  %31 = load %struct.ftrace_graph_ent*, %struct.ftrace_graph_ent** %3, align 8
  %32 = call i64 @ftrace_graph_ignore_func(%struct.ftrace_graph_ent* %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %30
  store i32 0, i32* %2, align 4
  br label %76

35:                                               ; preds = %30
  %36 = call i64 (...) @ftrace_graph_ignore_irqs()
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %35
  store i32 0, i32* %2, align 4
  br label %76

39:                                               ; preds = %35
  %40 = load i64, i64* @tracing_thresh, align 8
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %39
  store i32 1, i32* %2, align 4
  br label %76

43:                                               ; preds = %39
  %44 = load i64, i64* %6, align 8
  %45 = call i32 @local_irq_save(i64 %44)
  %46 = call i32 (...) @raw_smp_processor_id()
  store i32 %46, i32* %9, align 4
  %47 = load %struct.trace_array*, %struct.trace_array** %4, align 8
  %48 = getelementptr inbounds %struct.trace_array, %struct.trace_array* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = load i32, i32* %9, align 4
  %52 = call %struct.trace_array_cpu* @per_cpu_ptr(i32 %50, i32 %51)
  store %struct.trace_array_cpu* %52, %struct.trace_array_cpu** %5, align 8
  %53 = load %struct.trace_array_cpu*, %struct.trace_array_cpu** %5, align 8
  %54 = getelementptr inbounds %struct.trace_array_cpu, %struct.trace_array_cpu* %53, i32 0, i32 0
  %55 = call i64 @atomic_inc_return(i32* %54)
  store i64 %55, i64* %7, align 8
  %56 = load i64, i64* %7, align 8
  %57 = icmp eq i64 %56, 1
  %58 = zext i1 %57 to i32
  %59 = call i64 @likely(i32 %58)
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %68

61:                                               ; preds = %43
  %62 = call i32 (...) @preempt_count()
  store i32 %62, i32* %10, align 4
  %63 = load %struct.trace_array*, %struct.trace_array** %4, align 8
  %64 = load %struct.ftrace_graph_ent*, %struct.ftrace_graph_ent** %3, align 8
  %65 = load i64, i64* %6, align 8
  %66 = load i32, i32* %10, align 4
  %67 = call i32 @__trace_graph_entry(%struct.trace_array* %63, %struct.ftrace_graph_ent* %64, i64 %65, i32 %66)
  store i32 %67, i32* %8, align 4
  br label %69

68:                                               ; preds = %43
  store i32 0, i32* %8, align 4
  br label %69

69:                                               ; preds = %68, %61
  %70 = load %struct.trace_array_cpu*, %struct.trace_array_cpu** %5, align 8
  %71 = getelementptr inbounds %struct.trace_array_cpu, %struct.trace_array_cpu* %70, i32 0, i32 0
  %72 = call i32 @atomic_dec(i32* %71)
  %73 = load i64, i64* %6, align 8
  %74 = call i32 @local_irq_restore(i64 %73)
  %75 = load i32, i32* %8, align 4
  store i32 %75, i32* %2, align 4
  br label %76

76:                                               ; preds = %69, %42, %38, %34, %29, %22, %15
  %77 = load i32, i32* %2, align 4
  ret i32 %77
}

declare dso_local i64 @trace_recursion_test(i32) #1

declare dso_local i64 @ftrace_graph_notrace_addr(i32) #1

declare dso_local i32 @trace_recursion_set(i32) #1

declare dso_local i32 @ftrace_trace_task(%struct.trace_array*) #1

declare dso_local i64 @ftrace_graph_ignore_func(%struct.ftrace_graph_ent*) #1

declare dso_local i64 @ftrace_graph_ignore_irqs(...) #1

declare dso_local i32 @local_irq_save(i64) #1

declare dso_local i32 @raw_smp_processor_id(...) #1

declare dso_local %struct.trace_array_cpu* @per_cpu_ptr(i32, i32) #1

declare dso_local i64 @atomic_inc_return(i32*) #1

declare dso_local i64 @likely(i32) #1

declare dso_local i32 @preempt_count(...) #1

declare dso_local i32 @__trace_graph_entry(%struct.trace_array*, %struct.ftrace_graph_ent*, i64, i32) #1

declare dso_local i32 @atomic_dec(i32*) #1

declare dso_local i32 @local_irq_restore(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
