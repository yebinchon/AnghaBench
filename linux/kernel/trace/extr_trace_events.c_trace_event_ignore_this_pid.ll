; ModuleID = '/home/carl/AnghaBench/linux/kernel/trace/extr_trace_events.c_trace_event_ignore_this_pid.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/trace/extr_trace_events.c_trace_event_ignore_this_pid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.trace_event_file = type { %struct.trace_array* }
%struct.trace_array = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.trace_array_cpu = type { i32 }
%struct.trace_pid_list = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @trace_event_ignore_this_pid(%struct.trace_event_file* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.trace_event_file*, align 8
  %4 = alloca %struct.trace_array*, align 8
  %5 = alloca %struct.trace_array_cpu*, align 8
  %6 = alloca %struct.trace_pid_list*, align 8
  store %struct.trace_event_file* %0, %struct.trace_event_file** %3, align 8
  %7 = load %struct.trace_event_file*, %struct.trace_event_file** %3, align 8
  %8 = getelementptr inbounds %struct.trace_event_file, %struct.trace_event_file* %7, i32 0, i32 0
  %9 = load %struct.trace_array*, %struct.trace_array** %8, align 8
  store %struct.trace_array* %9, %struct.trace_array** %4, align 8
  %10 = load %struct.trace_array*, %struct.trace_array** %4, align 8
  %11 = getelementptr inbounds %struct.trace_array, %struct.trace_array* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  %13 = call %struct.trace_pid_list* @rcu_dereference_raw(i32 %12)
  store %struct.trace_pid_list* %13, %struct.trace_pid_list** %6, align 8
  %14 = load %struct.trace_pid_list*, %struct.trace_pid_list** %6, align 8
  %15 = icmp ne %struct.trace_pid_list* %14, null
  br i1 %15, label %17, label %16

16:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %26

17:                                               ; preds = %1
  %18 = load %struct.trace_array*, %struct.trace_array** %4, align 8
  %19 = getelementptr inbounds %struct.trace_array, %struct.trace_array* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call %struct.trace_array_cpu* @this_cpu_ptr(i32 %21)
  store %struct.trace_array_cpu* %22, %struct.trace_array_cpu** %5, align 8
  %23 = load %struct.trace_array_cpu*, %struct.trace_array_cpu** %5, align 8
  %24 = getelementptr inbounds %struct.trace_array_cpu, %struct.trace_array_cpu* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  store i32 %25, i32* %2, align 4
  br label %26

26:                                               ; preds = %17, %16
  %27 = load i32, i32* %2, align 4
  ret i32 %27
}

declare dso_local %struct.trace_pid_list* @rcu_dereference_raw(i32) #1

declare dso_local %struct.trace_array_cpu* @this_cpu_ptr(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
