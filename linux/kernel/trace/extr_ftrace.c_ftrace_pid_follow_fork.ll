; ModuleID = '/home/carl/AnghaBench/linux/kernel/trace/extr_ftrace.c_ftrace_pid_follow_fork.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/trace/extr_ftrace.c_ftrace_pid_follow_fork.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.trace_array = type { i32 }

@ftrace_pid_follow_sched_process_fork = common dso_local global i32 0, align 4
@ftrace_pid_follow_sched_process_exit = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ftrace_pid_follow_fork(%struct.trace_array* %0, i32 %1) #0 {
  %3 = alloca %struct.trace_array*, align 8
  %4 = alloca i32, align 4
  store %struct.trace_array* %0, %struct.trace_array** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* %4, align 4
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %7, label %14

7:                                                ; preds = %2
  %8 = load i32, i32* @ftrace_pid_follow_sched_process_fork, align 4
  %9 = load %struct.trace_array*, %struct.trace_array** %3, align 8
  %10 = call i32 @register_trace_sched_process_fork(i32 %8, %struct.trace_array* %9)
  %11 = load i32, i32* @ftrace_pid_follow_sched_process_exit, align 4
  %12 = load %struct.trace_array*, %struct.trace_array** %3, align 8
  %13 = call i32 @register_trace_sched_process_exit(i32 %11, %struct.trace_array* %12)
  br label %21

14:                                               ; preds = %2
  %15 = load i32, i32* @ftrace_pid_follow_sched_process_fork, align 4
  %16 = load %struct.trace_array*, %struct.trace_array** %3, align 8
  %17 = call i32 @unregister_trace_sched_process_fork(i32 %15, %struct.trace_array* %16)
  %18 = load i32, i32* @ftrace_pid_follow_sched_process_exit, align 4
  %19 = load %struct.trace_array*, %struct.trace_array** %3, align 8
  %20 = call i32 @unregister_trace_sched_process_exit(i32 %18, %struct.trace_array* %19)
  br label %21

21:                                               ; preds = %14, %7
  ret void
}

declare dso_local i32 @register_trace_sched_process_fork(i32, %struct.trace_array*) #1

declare dso_local i32 @register_trace_sched_process_exit(i32, %struct.trace_array*) #1

declare dso_local i32 @unregister_trace_sched_process_fork(i32, %struct.trace_array*) #1

declare dso_local i32 @unregister_trace_sched_process_exit(i32, %struct.trace_array*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
