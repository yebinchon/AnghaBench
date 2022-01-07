; ModuleID = '/home/carl/AnghaBench/linux/kernel/trace/extr_trace_events.c_trace_remove_event_call.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/trace/extr_trace_events.c_trace_remove_event_call.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.trace_event_call = type { i32 }

@event_mutex = common dso_local global i32 0, align 4
@trace_types_lock = common dso_local global i32 0, align 4
@trace_event_sem = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @trace_remove_event_call(%struct.trace_event_call* %0) #0 {
  %2 = alloca %struct.trace_event_call*, align 8
  %3 = alloca i32, align 4
  store %struct.trace_event_call* %0, %struct.trace_event_call** %2, align 8
  %4 = call i32 @lockdep_assert_held(i32* @event_mutex)
  %5 = call i32 @mutex_lock(i32* @trace_types_lock)
  %6 = call i32 @down_write(i32* @trace_event_sem)
  %7 = load %struct.trace_event_call*, %struct.trace_event_call** %2, align 8
  %8 = call i32 @probe_remove_event_call(%struct.trace_event_call* %7)
  store i32 %8, i32* %3, align 4
  %9 = call i32 @up_write(i32* @trace_event_sem)
  %10 = call i32 @mutex_unlock(i32* @trace_types_lock)
  %11 = load i32, i32* %3, align 4
  ret i32 %11
}

declare dso_local i32 @lockdep_assert_held(i32*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @down_write(i32*) #1

declare dso_local i32 @probe_remove_event_call(%struct.trace_event_call*) #1

declare dso_local i32 @up_write(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
