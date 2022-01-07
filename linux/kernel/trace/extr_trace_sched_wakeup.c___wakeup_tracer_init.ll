; ModuleID = '/home/carl/AnghaBench/linux/kernel/trace/extr_trace_sched_wakeup.c___wakeup_tracer_init.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/trace/extr_trace_sched_wakeup.c___wakeup_tracer_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.trace_array = type { i64, i32 }

@save_flags = common dso_local global i32 0, align 4
@TRACE_ITER_OVERWRITE = common dso_local global i32 0, align 4
@TRACE_ITER_LATENCY_FMT = common dso_local global i32 0, align 4
@wakeup_trace = common dso_local global %struct.trace_array* null, align 8
@wakeup_tracer_call = common dso_local global i32 0, align 4
@wakeup_busy = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.trace_array*)* @__wakeup_tracer_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__wakeup_tracer_init(%struct.trace_array* %0) #0 {
  %2 = alloca %struct.trace_array*, align 8
  store %struct.trace_array* %0, %struct.trace_array** %2, align 8
  %3 = load %struct.trace_array*, %struct.trace_array** %2, align 8
  %4 = getelementptr inbounds %struct.trace_array, %struct.trace_array* %3, i32 0, i32 1
  %5 = load i32, i32* %4, align 8
  store i32 %5, i32* @save_flags, align 4
  %6 = load %struct.trace_array*, %struct.trace_array** %2, align 8
  %7 = load i32, i32* @TRACE_ITER_OVERWRITE, align 4
  %8 = call i32 @set_tracer_flag(%struct.trace_array* %6, i32 %7, i32 1)
  %9 = load %struct.trace_array*, %struct.trace_array** %2, align 8
  %10 = load i32, i32* @TRACE_ITER_LATENCY_FMT, align 4
  %11 = call i32 @set_tracer_flag(%struct.trace_array* %9, i32 %10, i32 1)
  %12 = load %struct.trace_array*, %struct.trace_array** %2, align 8
  %13 = getelementptr inbounds %struct.trace_array, %struct.trace_array* %12, i32 0, i32 0
  store i64 0, i64* %13, align 8
  %14 = load %struct.trace_array*, %struct.trace_array** %2, align 8
  store %struct.trace_array* %14, %struct.trace_array** @wakeup_trace, align 8
  %15 = load %struct.trace_array*, %struct.trace_array** %2, align 8
  %16 = load i32, i32* @wakeup_tracer_call, align 4
  %17 = call i32 @ftrace_init_array_ops(%struct.trace_array* %15, i32 %16)
  %18 = load %struct.trace_array*, %struct.trace_array** %2, align 8
  %19 = call i32 @start_wakeup_tracer(%struct.trace_array* %18)
  store i32 1, i32* @wakeup_busy, align 4
  ret i32 0
}

declare dso_local i32 @set_tracer_flag(%struct.trace_array*, i32, i32) #1

declare dso_local i32 @ftrace_init_array_ops(%struct.trace_array*, i32) #1

declare dso_local i32 @start_wakeup_tracer(%struct.trace_array*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
