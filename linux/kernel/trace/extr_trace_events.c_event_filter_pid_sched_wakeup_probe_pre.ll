; ModuleID = '/home/carl/AnghaBench/linux/kernel/trace/extr_trace_events.c_event_filter_pid_sched_wakeup_probe_pre.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/trace/extr_trace_events.c_event_filter_pid_sched_wakeup_probe_pre.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.task_struct = type { i32 }
%struct.trace_array = type { %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.trace_pid_list = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, %struct.task_struct*)* @event_filter_pid_sched_wakeup_probe_pre to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @event_filter_pid_sched_wakeup_probe_pre(i8* %0, %struct.task_struct* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.task_struct*, align 8
  %5 = alloca %struct.trace_array*, align 8
  %6 = alloca %struct.trace_pid_list*, align 8
  store i8* %0, i8** %3, align 8
  store %struct.task_struct* %1, %struct.task_struct** %4, align 8
  %7 = load i8*, i8** %3, align 8
  %8 = bitcast i8* %7 to %struct.trace_array*
  store %struct.trace_array* %8, %struct.trace_array** %5, align 8
  %9 = load %struct.trace_array*, %struct.trace_array** %5, align 8
  %10 = getelementptr inbounds %struct.trace_array, %struct.trace_array* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 0
  %12 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @this_cpu_read(i32 %14)
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %18, label %17

17:                                               ; preds = %2
  br label %33

18:                                               ; preds = %2
  %19 = load %struct.trace_array*, %struct.trace_array** %5, align 8
  %20 = getelementptr inbounds %struct.trace_array, %struct.trace_array* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 8
  %22 = call %struct.trace_pid_list* @rcu_dereference_sched(i32 %21)
  store %struct.trace_pid_list* %22, %struct.trace_pid_list** %6, align 8
  %23 = load %struct.trace_array*, %struct.trace_array** %5, align 8
  %24 = getelementptr inbounds %struct.trace_array, %struct.trace_array* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 0
  %26 = load %struct.TYPE_3__*, %struct.TYPE_3__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.trace_pid_list*, %struct.trace_pid_list** %6, align 8
  %30 = load %struct.task_struct*, %struct.task_struct** %4, align 8
  %31 = call i32 @trace_ignore_this_task(%struct.trace_pid_list* %29, %struct.task_struct* %30)
  %32 = call i32 @this_cpu_write(i32 %28, i32 %31)
  br label %33

33:                                               ; preds = %18, %17
  ret void
}

declare dso_local i32 @this_cpu_read(i32) #1

declare dso_local %struct.trace_pid_list* @rcu_dereference_sched(i32) #1

declare dso_local i32 @this_cpu_write(i32, i32) #1

declare dso_local i32 @trace_ignore_this_task(%struct.trace_pid_list*, %struct.task_struct*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
