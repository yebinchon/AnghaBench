; ModuleID = '/home/carl/AnghaBench/linux/kernel/trace/extr_trace_sched_wakeup.c_tracing_sched_switch_trace.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/trace/extr_trace_sched_wakeup.c_tracing_sched_switch_trace.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.trace_event_call = type { i32 }
%struct.trace_array = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.ring_buffer* }
%struct.ring_buffer = type { i32 }
%struct.task_struct = type { i32, i32 }
%struct.ring_buffer_event = type { i32 }
%struct.ctx_switch_entry = type { i32, i8*, i32, i32, i8*, i32, i32 }

@event_context_switch = common dso_local global %struct.trace_event_call zeroinitializer, align 4
@TRACE_CTX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.trace_array*, %struct.task_struct*, %struct.task_struct*, i64, i32)* @tracing_sched_switch_trace to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tracing_sched_switch_trace(%struct.trace_array* %0, %struct.task_struct* %1, %struct.task_struct* %2, i64 %3, i32 %4) #0 {
  %6 = alloca %struct.trace_array*, align 8
  %7 = alloca %struct.task_struct*, align 8
  %8 = alloca %struct.task_struct*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.trace_event_call*, align 8
  %12 = alloca %struct.ring_buffer*, align 8
  %13 = alloca %struct.ring_buffer_event*, align 8
  %14 = alloca %struct.ctx_switch_entry*, align 8
  store %struct.trace_array* %0, %struct.trace_array** %6, align 8
  store %struct.task_struct* %1, %struct.task_struct** %7, align 8
  store %struct.task_struct* %2, %struct.task_struct** %8, align 8
  store i64 %3, i64* %9, align 8
  store i32 %4, i32* %10, align 4
  store %struct.trace_event_call* @event_context_switch, %struct.trace_event_call** %11, align 8
  %15 = load %struct.trace_array*, %struct.trace_array** %6, align 8
  %16 = getelementptr inbounds %struct.trace_array, %struct.trace_array* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load %struct.ring_buffer*, %struct.ring_buffer** %17, align 8
  store %struct.ring_buffer* %18, %struct.ring_buffer** %12, align 8
  %19 = load %struct.ring_buffer*, %struct.ring_buffer** %12, align 8
  %20 = load i32, i32* @TRACE_CTX, align 4
  %21 = load i64, i64* %9, align 8
  %22 = load i32, i32* %10, align 4
  %23 = call %struct.ring_buffer_event* @trace_buffer_lock_reserve(%struct.ring_buffer* %19, i32 %20, i32 40, i64 %21, i32 %22)
  store %struct.ring_buffer_event* %23, %struct.ring_buffer_event** %13, align 8
  %24 = load %struct.ring_buffer_event*, %struct.ring_buffer_event** %13, align 8
  %25 = icmp ne %struct.ring_buffer_event* %24, null
  br i1 %25, label %27, label %26

26:                                               ; preds = %5
  br label %75

27:                                               ; preds = %5
  %28 = load %struct.ring_buffer_event*, %struct.ring_buffer_event** %13, align 8
  %29 = call %struct.ctx_switch_entry* @ring_buffer_event_data(%struct.ring_buffer_event* %28)
  store %struct.ctx_switch_entry* %29, %struct.ctx_switch_entry** %14, align 8
  %30 = load %struct.task_struct*, %struct.task_struct** %7, align 8
  %31 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.ctx_switch_entry*, %struct.ctx_switch_entry** %14, align 8
  %34 = getelementptr inbounds %struct.ctx_switch_entry, %struct.ctx_switch_entry* %33, i32 0, i32 6
  store i32 %32, i32* %34, align 4
  %35 = load %struct.task_struct*, %struct.task_struct** %7, align 8
  %36 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.ctx_switch_entry*, %struct.ctx_switch_entry** %14, align 8
  %39 = getelementptr inbounds %struct.ctx_switch_entry, %struct.ctx_switch_entry* %38, i32 0, i32 5
  store i32 %37, i32* %39, align 8
  %40 = load %struct.task_struct*, %struct.task_struct** %7, align 8
  %41 = call i8* @task_state_index(%struct.task_struct* %40)
  %42 = load %struct.ctx_switch_entry*, %struct.ctx_switch_entry** %14, align 8
  %43 = getelementptr inbounds %struct.ctx_switch_entry, %struct.ctx_switch_entry* %42, i32 0, i32 4
  store i8* %41, i8** %43, align 8
  %44 = load %struct.task_struct*, %struct.task_struct** %8, align 8
  %45 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.ctx_switch_entry*, %struct.ctx_switch_entry** %14, align 8
  %48 = getelementptr inbounds %struct.ctx_switch_entry, %struct.ctx_switch_entry* %47, i32 0, i32 3
  store i32 %46, i32* %48, align 4
  %49 = load %struct.task_struct*, %struct.task_struct** %8, align 8
  %50 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.ctx_switch_entry*, %struct.ctx_switch_entry** %14, align 8
  %53 = getelementptr inbounds %struct.ctx_switch_entry, %struct.ctx_switch_entry* %52, i32 0, i32 2
  store i32 %51, i32* %53, align 8
  %54 = load %struct.task_struct*, %struct.task_struct** %8, align 8
  %55 = call i8* @task_state_index(%struct.task_struct* %54)
  %56 = load %struct.ctx_switch_entry*, %struct.ctx_switch_entry** %14, align 8
  %57 = getelementptr inbounds %struct.ctx_switch_entry, %struct.ctx_switch_entry* %56, i32 0, i32 1
  store i8* %55, i8** %57, align 8
  %58 = load %struct.task_struct*, %struct.task_struct** %8, align 8
  %59 = call i32 @task_cpu(%struct.task_struct* %58)
  %60 = load %struct.ctx_switch_entry*, %struct.ctx_switch_entry** %14, align 8
  %61 = getelementptr inbounds %struct.ctx_switch_entry, %struct.ctx_switch_entry* %60, i32 0, i32 0
  store i32 %59, i32* %61, align 8
  %62 = load %struct.trace_event_call*, %struct.trace_event_call** %11, align 8
  %63 = load %struct.ctx_switch_entry*, %struct.ctx_switch_entry** %14, align 8
  %64 = load %struct.ring_buffer*, %struct.ring_buffer** %12, align 8
  %65 = load %struct.ring_buffer_event*, %struct.ring_buffer_event** %13, align 8
  %66 = call i32 @call_filter_check_discard(%struct.trace_event_call* %62, %struct.ctx_switch_entry* %63, %struct.ring_buffer* %64, %struct.ring_buffer_event* %65)
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %75, label %68

68:                                               ; preds = %27
  %69 = load %struct.trace_array*, %struct.trace_array** %6, align 8
  %70 = load %struct.ring_buffer*, %struct.ring_buffer** %12, align 8
  %71 = load %struct.ring_buffer_event*, %struct.ring_buffer_event** %13, align 8
  %72 = load i64, i64* %9, align 8
  %73 = load i32, i32* %10, align 4
  %74 = call i32 @trace_buffer_unlock_commit(%struct.trace_array* %69, %struct.ring_buffer* %70, %struct.ring_buffer_event* %71, i64 %72, i32 %73)
  br label %75

75:                                               ; preds = %26, %68, %27
  ret void
}

declare dso_local %struct.ring_buffer_event* @trace_buffer_lock_reserve(%struct.ring_buffer*, i32, i32, i64, i32) #1

declare dso_local %struct.ctx_switch_entry* @ring_buffer_event_data(%struct.ring_buffer_event*) #1

declare dso_local i8* @task_state_index(%struct.task_struct*) #1

declare dso_local i32 @task_cpu(%struct.task_struct*) #1

declare dso_local i32 @call_filter_check_discard(%struct.trace_event_call*, %struct.ctx_switch_entry*, %struct.ring_buffer*, %struct.ring_buffer_event*) #1

declare dso_local i32 @trace_buffer_unlock_commit(%struct.trace_array*, %struct.ring_buffer*, %struct.ring_buffer_event*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
