; ModuleID = '/home/carl/AnghaBench/linux/kernel/trace/extr_trace_events.c_event_trace_del_tracer.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/trace/extr_trace_events.c_event_trace_del_tracer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.trace_array = type { i32* }

@event_mutex = common dso_local global i32 0, align 4
@trace_event_sem = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @event_trace_del_tracer(%struct.trace_array* %0) #0 {
  %2 = alloca %struct.trace_array*, align 8
  store %struct.trace_array* %0, %struct.trace_array** %2, align 8
  %3 = call i32 @lockdep_assert_held(i32* @event_mutex)
  %4 = load %struct.trace_array*, %struct.trace_array** %2, align 8
  %5 = call i32 @clear_event_triggers(%struct.trace_array* %4)
  %6 = load %struct.trace_array*, %struct.trace_array** %2, align 8
  %7 = call i32 @__ftrace_clear_event_pids(%struct.trace_array* %6)
  %8 = load %struct.trace_array*, %struct.trace_array** %2, align 8
  %9 = call i32 @__ftrace_set_clr_event_nolock(%struct.trace_array* %8, i32* null, i32* null, i32* null, i32 0)
  %10 = call i32 (...) @tracepoint_synchronize_unregister()
  %11 = call i32 @down_write(i32* @trace_event_sem)
  %12 = load %struct.trace_array*, %struct.trace_array** %2, align 8
  %13 = call i32 @__trace_remove_event_dirs(%struct.trace_array* %12)
  %14 = load %struct.trace_array*, %struct.trace_array** %2, align 8
  %15 = getelementptr inbounds %struct.trace_array, %struct.trace_array* %14, i32 0, i32 0
  %16 = load i32*, i32** %15, align 8
  %17 = call i32 @tracefs_remove_recursive(i32* %16)
  %18 = call i32 @up_write(i32* @trace_event_sem)
  %19 = load %struct.trace_array*, %struct.trace_array** %2, align 8
  %20 = getelementptr inbounds %struct.trace_array, %struct.trace_array* %19, i32 0, i32 0
  store i32* null, i32** %20, align 8
  ret i32 0
}

declare dso_local i32 @lockdep_assert_held(i32*) #1

declare dso_local i32 @clear_event_triggers(%struct.trace_array*) #1

declare dso_local i32 @__ftrace_clear_event_pids(%struct.trace_array*) #1

declare dso_local i32 @__ftrace_set_clr_event_nolock(%struct.trace_array*, i32*, i32*, i32*, i32) #1

declare dso_local i32 @tracepoint_synchronize_unregister(...) #1

declare dso_local i32 @down_write(i32*) #1

declare dso_local i32 @__trace_remove_event_dirs(%struct.trace_array*) #1

declare dso_local i32 @tracefs_remove_recursive(i32*) #1

declare dso_local i32 @up_write(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
