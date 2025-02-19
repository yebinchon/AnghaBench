; ModuleID = '/home/carl/AnghaBench/linux/kernel/trace/extr_trace_mmiotrace.c_mmio_trace_rw.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/trace/extr_trace_mmiotrace.c_mmio_trace_rw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.trace_array = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.mmiotrace_rw = type { i32 }
%struct.trace_array_cpu = type { i32 }

@mmio_trace_array = common dso_local global %struct.trace_array* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mmio_trace_rw(%struct.mmiotrace_rw* %0) #0 {
  %2 = alloca %struct.mmiotrace_rw*, align 8
  %3 = alloca %struct.trace_array*, align 8
  %4 = alloca %struct.trace_array_cpu*, align 8
  store %struct.mmiotrace_rw* %0, %struct.mmiotrace_rw** %2, align 8
  %5 = load %struct.trace_array*, %struct.trace_array** @mmio_trace_array, align 8
  store %struct.trace_array* %5, %struct.trace_array** %3, align 8
  %6 = load %struct.trace_array*, %struct.trace_array** %3, align 8
  %7 = getelementptr inbounds %struct.trace_array, %struct.trace_array* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = call i32 (...) @smp_processor_id()
  %11 = call %struct.trace_array_cpu* @per_cpu_ptr(i32 %9, i32 %10)
  store %struct.trace_array_cpu* %11, %struct.trace_array_cpu** %4, align 8
  %12 = load %struct.trace_array*, %struct.trace_array** %3, align 8
  %13 = load %struct.trace_array_cpu*, %struct.trace_array_cpu** %4, align 8
  %14 = load %struct.mmiotrace_rw*, %struct.mmiotrace_rw** %2, align 8
  %15 = call i32 @__trace_mmiotrace_rw(%struct.trace_array* %12, %struct.trace_array_cpu* %13, %struct.mmiotrace_rw* %14)
  ret void
}

declare dso_local %struct.trace_array_cpu* @per_cpu_ptr(i32, i32) #1

declare dso_local i32 @smp_processor_id(...) #1

declare dso_local i32 @__trace_mmiotrace_rw(%struct.trace_array*, %struct.trace_array_cpu*, %struct.mmiotrace_rw*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
