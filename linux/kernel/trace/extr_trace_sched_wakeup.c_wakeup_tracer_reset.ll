; ModuleID = '/home/carl/AnghaBench/linux/kernel/trace/extr_trace_sched_wakeup.c_wakeup_tracer_reset.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/trace/extr_trace_sched_wakeup.c_wakeup_tracer_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.trace_array = type { i32 }

@save_flags = common dso_local global i32 0, align 4
@TRACE_ITER_LATENCY_FMT = common dso_local global i32 0, align 4
@TRACE_ITER_OVERWRITE = common dso_local global i32 0, align 4
@wakeup_busy = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.trace_array*)* @wakeup_tracer_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @wakeup_tracer_reset(%struct.trace_array* %0) #0 {
  %2 = alloca %struct.trace_array*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.trace_array* %0, %struct.trace_array** %2, align 8
  %5 = load i32, i32* @save_flags, align 4
  %6 = load i32, i32* @TRACE_ITER_LATENCY_FMT, align 4
  %7 = and i32 %5, %6
  store i32 %7, i32* %3, align 4
  %8 = load i32, i32* @save_flags, align 4
  %9 = load i32, i32* @TRACE_ITER_OVERWRITE, align 4
  %10 = and i32 %8, %9
  store i32 %10, i32* %4, align 4
  %11 = load %struct.trace_array*, %struct.trace_array** %2, align 8
  %12 = call i32 @stop_wakeup_tracer(%struct.trace_array* %11)
  %13 = load %struct.trace_array*, %struct.trace_array** %2, align 8
  %14 = call i32 @wakeup_reset(%struct.trace_array* %13)
  %15 = load %struct.trace_array*, %struct.trace_array** %2, align 8
  %16 = load i32, i32* @TRACE_ITER_LATENCY_FMT, align 4
  %17 = load i32, i32* %3, align 4
  %18 = call i32 @set_tracer_flag(%struct.trace_array* %15, i32 %16, i32 %17)
  %19 = load %struct.trace_array*, %struct.trace_array** %2, align 8
  %20 = load i32, i32* @TRACE_ITER_OVERWRITE, align 4
  %21 = load i32, i32* %4, align 4
  %22 = call i32 @set_tracer_flag(%struct.trace_array* %19, i32 %20, i32 %21)
  %23 = load %struct.trace_array*, %struct.trace_array** %2, align 8
  %24 = call i32 @ftrace_reset_array_ops(%struct.trace_array* %23)
  store i32 0, i32* @wakeup_busy, align 4
  ret void
}

declare dso_local i32 @stop_wakeup_tracer(%struct.trace_array*) #1

declare dso_local i32 @wakeup_reset(%struct.trace_array*) #1

declare dso_local i32 @set_tracer_flag(%struct.trace_array*, i32, i32) #1

declare dso_local i32 @ftrace_reset_array_ops(%struct.trace_array*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
