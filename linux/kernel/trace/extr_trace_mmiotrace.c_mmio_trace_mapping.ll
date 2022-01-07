; ModuleID = '/home/carl/AnghaBench/linux/kernel/trace/extr_trace_mmiotrace.c_mmio_trace_mapping.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/trace/extr_trace_mmiotrace.c_mmio_trace_mapping.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.trace_array = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.mmiotrace_map = type { i32 }
%struct.trace_array_cpu = type { i32 }

@mmio_trace_array = common dso_local global %struct.trace_array* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mmio_trace_mapping(%struct.mmiotrace_map* %0) #0 {
  %2 = alloca %struct.mmiotrace_map*, align 8
  %3 = alloca %struct.trace_array*, align 8
  %4 = alloca %struct.trace_array_cpu*, align 8
  store %struct.mmiotrace_map* %0, %struct.mmiotrace_map** %2, align 8
  %5 = load %struct.trace_array*, %struct.trace_array** @mmio_trace_array, align 8
  store %struct.trace_array* %5, %struct.trace_array** %3, align 8
  %6 = call i32 (...) @preempt_disable()
  %7 = load %struct.trace_array*, %struct.trace_array** %3, align 8
  %8 = getelementptr inbounds %struct.trace_array, %struct.trace_array* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = call i32 (...) @smp_processor_id()
  %12 = call %struct.trace_array_cpu* @per_cpu_ptr(i32 %10, i32 %11)
  store %struct.trace_array_cpu* %12, %struct.trace_array_cpu** %4, align 8
  %13 = load %struct.trace_array*, %struct.trace_array** %3, align 8
  %14 = load %struct.trace_array_cpu*, %struct.trace_array_cpu** %4, align 8
  %15 = load %struct.mmiotrace_map*, %struct.mmiotrace_map** %2, align 8
  %16 = call i32 @__trace_mmiotrace_map(%struct.trace_array* %13, %struct.trace_array_cpu* %14, %struct.mmiotrace_map* %15)
  %17 = call i32 (...) @preempt_enable()
  ret void
}

declare dso_local i32 @preempt_disable(...) #1

declare dso_local %struct.trace_array_cpu* @per_cpu_ptr(i32, i32) #1

declare dso_local i32 @smp_processor_id(...) #1

declare dso_local i32 @__trace_mmiotrace_map(%struct.trace_array*, %struct.trace_array_cpu*, %struct.mmiotrace_map*) #1

declare dso_local i32 @preempt_enable(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
