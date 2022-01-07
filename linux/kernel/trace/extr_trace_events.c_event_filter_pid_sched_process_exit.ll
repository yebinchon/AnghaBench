; ModuleID = '/home/carl/AnghaBench/linux/kernel/trace/extr_trace_events.c_event_filter_pid_sched_process_exit.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/trace/extr_trace_events.c_event_filter_pid_sched_process_exit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.task_struct = type { i32 }
%struct.trace_pid_list = type { i32 }
%struct.trace_array = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, %struct.task_struct*)* @event_filter_pid_sched_process_exit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @event_filter_pid_sched_process_exit(i8* %0, %struct.task_struct* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.task_struct*, align 8
  %5 = alloca %struct.trace_pid_list*, align 8
  %6 = alloca %struct.trace_array*, align 8
  store i8* %0, i8** %3, align 8
  store %struct.task_struct* %1, %struct.task_struct** %4, align 8
  %7 = load i8*, i8** %3, align 8
  %8 = bitcast i8* %7 to %struct.trace_array*
  store %struct.trace_array* %8, %struct.trace_array** %6, align 8
  %9 = load %struct.trace_array*, %struct.trace_array** %6, align 8
  %10 = getelementptr inbounds %struct.trace_array, %struct.trace_array* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = call %struct.trace_pid_list* @rcu_dereference_raw(i32 %11)
  store %struct.trace_pid_list* %12, %struct.trace_pid_list** %5, align 8
  %13 = load %struct.trace_pid_list*, %struct.trace_pid_list** %5, align 8
  %14 = load %struct.task_struct*, %struct.task_struct** %4, align 8
  %15 = call i32 @trace_filter_add_remove_task(%struct.trace_pid_list* %13, i32* null, %struct.task_struct* %14)
  ret void
}

declare dso_local %struct.trace_pid_list* @rcu_dereference_raw(i32) #1

declare dso_local i32 @trace_filter_add_remove_task(%struct.trace_pid_list*, i32*, %struct.task_struct*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
