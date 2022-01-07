; ModuleID = '/home/carl/AnghaBench/linux/kernel/trace/extr_trace.c_trace_function.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/trace/extr_trace.c_trace_function.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.trace_event_call = type { i32 }
%struct.trace_array = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.ring_buffer* }
%struct.ring_buffer = type { i32 }
%struct.ring_buffer_event = type { i32 }
%struct.ftrace_entry = type { i64, i64 }

@event_function = common dso_local global %struct.trace_event_call zeroinitializer, align 4
@TRACE_FN = common dso_local global i32 0, align 4
@ftrace_exports_enabled = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @trace_function(%struct.trace_array* %0, i64 %1, i64 %2, i64 %3, i32 %4) #0 {
  %6 = alloca %struct.trace_array*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.trace_event_call*, align 8
  %12 = alloca %struct.ring_buffer*, align 8
  %13 = alloca %struct.ring_buffer_event*, align 8
  %14 = alloca %struct.ftrace_entry*, align 8
  store %struct.trace_array* %0, %struct.trace_array** %6, align 8
  store i64 %1, i64* %7, align 8
  store i64 %2, i64* %8, align 8
  store i64 %3, i64* %9, align 8
  store i32 %4, i32* %10, align 4
  store %struct.trace_event_call* @event_function, %struct.trace_event_call** %11, align 8
  %15 = load %struct.trace_array*, %struct.trace_array** %6, align 8
  %16 = getelementptr inbounds %struct.trace_array, %struct.trace_array* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load %struct.ring_buffer*, %struct.ring_buffer** %17, align 8
  store %struct.ring_buffer* %18, %struct.ring_buffer** %12, align 8
  %19 = load %struct.ring_buffer*, %struct.ring_buffer** %12, align 8
  %20 = load i32, i32* @TRACE_FN, align 4
  %21 = load i64, i64* %9, align 8
  %22 = load i32, i32* %10, align 4
  %23 = call %struct.ring_buffer_event* @__trace_buffer_lock_reserve(%struct.ring_buffer* %19, i32 %20, i32 16, i64 %21, i32 %22)
  store %struct.ring_buffer_event* %23, %struct.ring_buffer_event** %13, align 8
  %24 = load %struct.ring_buffer_event*, %struct.ring_buffer_event** %13, align 8
  %25 = icmp ne %struct.ring_buffer_event* %24, null
  br i1 %25, label %27, label %26

26:                                               ; preds = %5
  br label %52

27:                                               ; preds = %5
  %28 = load %struct.ring_buffer_event*, %struct.ring_buffer_event** %13, align 8
  %29 = call %struct.ftrace_entry* @ring_buffer_event_data(%struct.ring_buffer_event* %28)
  store %struct.ftrace_entry* %29, %struct.ftrace_entry** %14, align 8
  %30 = load i64, i64* %7, align 8
  %31 = load %struct.ftrace_entry*, %struct.ftrace_entry** %14, align 8
  %32 = getelementptr inbounds %struct.ftrace_entry, %struct.ftrace_entry* %31, i32 0, i32 0
  store i64 %30, i64* %32, align 8
  %33 = load i64, i64* %8, align 8
  %34 = load %struct.ftrace_entry*, %struct.ftrace_entry** %14, align 8
  %35 = getelementptr inbounds %struct.ftrace_entry, %struct.ftrace_entry* %34, i32 0, i32 1
  store i64 %33, i64* %35, align 8
  %36 = load %struct.trace_event_call*, %struct.trace_event_call** %11, align 8
  %37 = load %struct.ftrace_entry*, %struct.ftrace_entry** %14, align 8
  %38 = load %struct.ring_buffer*, %struct.ring_buffer** %12, align 8
  %39 = load %struct.ring_buffer_event*, %struct.ring_buffer_event** %13, align 8
  %40 = call i32 @call_filter_check_discard(%struct.trace_event_call* %36, %struct.ftrace_entry* %37, %struct.ring_buffer* %38, %struct.ring_buffer_event* %39)
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %52, label %42

42:                                               ; preds = %27
  %43 = call i64 @static_branch_unlikely(i32* @ftrace_exports_enabled)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %48

45:                                               ; preds = %42
  %46 = load %struct.ring_buffer_event*, %struct.ring_buffer_event** %13, align 8
  %47 = call i32 @ftrace_exports(%struct.ring_buffer_event* %46)
  br label %48

48:                                               ; preds = %45, %42
  %49 = load %struct.ring_buffer*, %struct.ring_buffer** %12, align 8
  %50 = load %struct.ring_buffer_event*, %struct.ring_buffer_event** %13, align 8
  %51 = call i32 @__buffer_unlock_commit(%struct.ring_buffer* %49, %struct.ring_buffer_event* %50)
  br label %52

52:                                               ; preds = %26, %48, %27
  ret void
}

declare dso_local %struct.ring_buffer_event* @__trace_buffer_lock_reserve(%struct.ring_buffer*, i32, i32, i64, i32) #1

declare dso_local %struct.ftrace_entry* @ring_buffer_event_data(%struct.ring_buffer_event*) #1

declare dso_local i32 @call_filter_check_discard(%struct.trace_event_call*, %struct.ftrace_entry*, %struct.ring_buffer*, %struct.ring_buffer_event*) #1

declare dso_local i64 @static_branch_unlikely(i32*) #1

declare dso_local i32 @ftrace_exports(%struct.ring_buffer_event*) #1

declare dso_local i32 @__buffer_unlock_commit(%struct.ring_buffer*, %struct.ring_buffer_event*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
