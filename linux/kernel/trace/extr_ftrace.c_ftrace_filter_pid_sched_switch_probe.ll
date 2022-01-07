; ModuleID = '/home/carl/AnghaBench/linux/kernel/trace/extr_ftrace.c_ftrace_filter_pid_sched_switch_probe.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/trace/extr_ftrace.c_ftrace_filter_pid_sched_switch_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.task_struct = type { i32 }
%struct.trace_array = type { %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.trace_pid_list = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32, %struct.task_struct*, %struct.task_struct*)* @ftrace_filter_pid_sched_switch_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ftrace_filter_pid_sched_switch_probe(i8* %0, i32 %1, %struct.task_struct* %2, %struct.task_struct* %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.task_struct*, align 8
  %8 = alloca %struct.task_struct*, align 8
  %9 = alloca %struct.trace_array*, align 8
  %10 = alloca %struct.trace_pid_list*, align 8
  store i8* %0, i8** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.task_struct* %2, %struct.task_struct** %7, align 8
  store %struct.task_struct* %3, %struct.task_struct** %8, align 8
  %11 = load i8*, i8** %5, align 8
  %12 = bitcast i8* %11 to %struct.trace_array*
  store %struct.trace_array* %12, %struct.trace_array** %9, align 8
  %13 = load %struct.trace_array*, %struct.trace_array** %9, align 8
  %14 = getelementptr inbounds %struct.trace_array, %struct.trace_array* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 8
  %16 = call %struct.trace_pid_list* @rcu_dereference_sched(i32 %15)
  store %struct.trace_pid_list* %16, %struct.trace_pid_list** %10, align 8
  %17 = load %struct.trace_array*, %struct.trace_array** %9, align 8
  %18 = getelementptr inbounds %struct.trace_array, %struct.trace_array* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  %20 = load %struct.TYPE_3__*, %struct.TYPE_3__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.trace_pid_list*, %struct.trace_pid_list** %10, align 8
  %24 = load %struct.task_struct*, %struct.task_struct** %8, align 8
  %25 = call i32 @trace_ignore_this_task(%struct.trace_pid_list* %23, %struct.task_struct* %24)
  %26 = call i32 @this_cpu_write(i32 %22, i32 %25)
  ret void
}

declare dso_local %struct.trace_pid_list* @rcu_dereference_sched(i32) #1

declare dso_local i32 @this_cpu_write(i32, i32) #1

declare dso_local i32 @trace_ignore_this_task(%struct.trace_pid_list*, %struct.task_struct*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
