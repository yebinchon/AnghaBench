; ModuleID = '/home/carl/AnghaBench/linux/kernel/trace/extr_trace.c_ftrace_exports.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/trace/extr_trace.c_ftrace_exports.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ring_buffer_event = type { i32 }
%struct.trace_export = type { i32 }

@ftrace_exports_list = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ring_buffer_event*)* @ftrace_exports to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ftrace_exports(%struct.ring_buffer_event* %0) #0 {
  %2 = alloca %struct.ring_buffer_event*, align 8
  %3 = alloca %struct.trace_export*, align 8
  store %struct.ring_buffer_event* %0, %struct.ring_buffer_event** %2, align 8
  %4 = call i32 (...) @preempt_disable_notrace()
  %5 = load i32, i32* @ftrace_exports_list, align 4
  %6 = call %struct.trace_export* @rcu_dereference_raw_check(i32 %5)
  store %struct.trace_export* %6, %struct.trace_export** %3, align 8
  br label %7

7:                                                ; preds = %10, %1
  %8 = load %struct.trace_export*, %struct.trace_export** %3, align 8
  %9 = icmp ne %struct.trace_export* %8, null
  br i1 %9, label %10, label %18

10:                                               ; preds = %7
  %11 = load %struct.trace_export*, %struct.trace_export** %3, align 8
  %12 = load %struct.ring_buffer_event*, %struct.ring_buffer_event** %2, align 8
  %13 = call i32 @trace_process_export(%struct.trace_export* %11, %struct.ring_buffer_event* %12)
  %14 = load %struct.trace_export*, %struct.trace_export** %3, align 8
  %15 = getelementptr inbounds %struct.trace_export, %struct.trace_export* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call %struct.trace_export* @rcu_dereference_raw_check(i32 %16)
  store %struct.trace_export* %17, %struct.trace_export** %3, align 8
  br label %7

18:                                               ; preds = %7
  %19 = call i32 (...) @preempt_enable_notrace()
  ret void
}

declare dso_local i32 @preempt_disable_notrace(...) #1

declare dso_local %struct.trace_export* @rcu_dereference_raw_check(i32) #1

declare dso_local i32 @trace_process_export(%struct.trace_export*, %struct.ring_buffer_event*) #1

declare dso_local i32 @preempt_enable_notrace(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
