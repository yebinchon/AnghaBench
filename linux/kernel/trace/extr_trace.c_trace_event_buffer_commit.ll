; ModuleID = '/home/carl/AnghaBench/linux/kernel/trace/extr_trace.c_trace_event_buffer_commit.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/trace/extr_trace.c_trace_event_buffer_commit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.trace_event_buffer = type { i32, i32, i32, i32, i32, i32 }

@tracepoint_printk_key = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @trace_event_buffer_commit(%struct.trace_event_buffer* %0) #0 {
  %2 = alloca %struct.trace_event_buffer*, align 8
  store %struct.trace_event_buffer* %0, %struct.trace_event_buffer** %2, align 8
  %3 = call i64 @static_key_false(i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @tracepoint_printk_key, i32 0, i32 0))
  %4 = icmp ne i64 %3, 0
  br i1 %4, label %5, label %8

5:                                                ; preds = %1
  %6 = load %struct.trace_event_buffer*, %struct.trace_event_buffer** %2, align 8
  %7 = call i32 @output_printk(%struct.trace_event_buffer* %6)
  br label %8

8:                                                ; preds = %5, %1
  %9 = load %struct.trace_event_buffer*, %struct.trace_event_buffer** %2, align 8
  %10 = getelementptr inbounds %struct.trace_event_buffer, %struct.trace_event_buffer* %9, i32 0, i32 5
  %11 = load i32, i32* %10, align 4
  %12 = load %struct.trace_event_buffer*, %struct.trace_event_buffer** %2, align 8
  %13 = getelementptr inbounds %struct.trace_event_buffer, %struct.trace_event_buffer* %12, i32 0, i32 4
  %14 = load i32, i32* %13, align 4
  %15 = load %struct.trace_event_buffer*, %struct.trace_event_buffer** %2, align 8
  %16 = getelementptr inbounds %struct.trace_event_buffer, %struct.trace_event_buffer* %15, i32 0, i32 3
  %17 = load i32, i32* %16, align 4
  %18 = load %struct.trace_event_buffer*, %struct.trace_event_buffer** %2, align 8
  %19 = getelementptr inbounds %struct.trace_event_buffer, %struct.trace_event_buffer* %18, i32 0, i32 2
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.trace_event_buffer*, %struct.trace_event_buffer** %2, align 8
  %22 = getelementptr inbounds %struct.trace_event_buffer, %struct.trace_event_buffer* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.trace_event_buffer*, %struct.trace_event_buffer** %2, align 8
  %25 = getelementptr inbounds %struct.trace_event_buffer, %struct.trace_event_buffer* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @event_trigger_unlock_commit(i32 %11, i32 %14, i32 %17, i32 %20, i32 %23, i32 %26)
  ret void
}

declare dso_local i64 @static_key_false(i32*) #1

declare dso_local i32 @output_printk(%struct.trace_event_buffer*) #1

declare dso_local i32 @event_trigger_unlock_commit(i32, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
