; ModuleID = '/home/carl/AnghaBench/linux/kernel/trace/extr_trace_functions_graph.c___trace_graph_return.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/trace/extr_trace_functions_graph.c___trace_graph_return.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.trace_event_call = type { i32 }
%struct.trace_array = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.ring_buffer* }
%struct.ring_buffer = type { i32 }
%struct.ftrace_graph_ret = type { i32 }
%struct.ring_buffer_event = type { i32 }
%struct.ftrace_graph_ret_entry = type { %struct.ftrace_graph_ret }

@event_funcgraph_exit = common dso_local global %struct.trace_event_call zeroinitializer, align 4
@TRACE_GRAPH_RET = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @__trace_graph_return(%struct.trace_array* %0, %struct.ftrace_graph_ret* %1, i64 %2, i32 %3) #0 {
  %5 = alloca %struct.trace_array*, align 8
  %6 = alloca %struct.ftrace_graph_ret*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.trace_event_call*, align 8
  %10 = alloca %struct.ring_buffer_event*, align 8
  %11 = alloca %struct.ring_buffer*, align 8
  %12 = alloca %struct.ftrace_graph_ret_entry*, align 8
  store %struct.trace_array* %0, %struct.trace_array** %5, align 8
  store %struct.ftrace_graph_ret* %1, %struct.ftrace_graph_ret** %6, align 8
  store i64 %2, i64* %7, align 8
  store i32 %3, i32* %8, align 4
  store %struct.trace_event_call* @event_funcgraph_exit, %struct.trace_event_call** %9, align 8
  %13 = load %struct.trace_array*, %struct.trace_array** %5, align 8
  %14 = getelementptr inbounds %struct.trace_array, %struct.trace_array* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load %struct.ring_buffer*, %struct.ring_buffer** %15, align 8
  store %struct.ring_buffer* %16, %struct.ring_buffer** %11, align 8
  %17 = load %struct.ring_buffer*, %struct.ring_buffer** %11, align 8
  %18 = load i32, i32* @TRACE_GRAPH_RET, align 4
  %19 = load i64, i64* %7, align 8
  %20 = load i32, i32* %8, align 4
  %21 = call %struct.ring_buffer_event* @trace_buffer_lock_reserve(%struct.ring_buffer* %17, i32 %18, i32 4, i64 %19, i32 %20)
  store %struct.ring_buffer_event* %21, %struct.ring_buffer_event** %10, align 8
  %22 = load %struct.ring_buffer_event*, %struct.ring_buffer_event** %10, align 8
  %23 = icmp ne %struct.ring_buffer_event* %22, null
  br i1 %23, label %25, label %24

24:                                               ; preds = %4
  br label %43

25:                                               ; preds = %4
  %26 = load %struct.ring_buffer_event*, %struct.ring_buffer_event** %10, align 8
  %27 = call %struct.ftrace_graph_ret_entry* @ring_buffer_event_data(%struct.ring_buffer_event* %26)
  store %struct.ftrace_graph_ret_entry* %27, %struct.ftrace_graph_ret_entry** %12, align 8
  %28 = load %struct.ftrace_graph_ret_entry*, %struct.ftrace_graph_ret_entry** %12, align 8
  %29 = getelementptr inbounds %struct.ftrace_graph_ret_entry, %struct.ftrace_graph_ret_entry* %28, i32 0, i32 0
  %30 = load %struct.ftrace_graph_ret*, %struct.ftrace_graph_ret** %6, align 8
  %31 = bitcast %struct.ftrace_graph_ret* %29 to i8*
  %32 = bitcast %struct.ftrace_graph_ret* %30 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %31, i8* align 4 %32, i64 4, i1 false)
  %33 = load %struct.trace_event_call*, %struct.trace_event_call** %9, align 8
  %34 = load %struct.ftrace_graph_ret_entry*, %struct.ftrace_graph_ret_entry** %12, align 8
  %35 = load %struct.ring_buffer*, %struct.ring_buffer** %11, align 8
  %36 = load %struct.ring_buffer_event*, %struct.ring_buffer_event** %10, align 8
  %37 = call i32 @call_filter_check_discard(%struct.trace_event_call* %33, %struct.ftrace_graph_ret_entry* %34, %struct.ring_buffer* %35, %struct.ring_buffer_event* %36)
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %43, label %39

39:                                               ; preds = %25
  %40 = load %struct.ring_buffer*, %struct.ring_buffer** %11, align 8
  %41 = load %struct.ring_buffer_event*, %struct.ring_buffer_event** %10, align 8
  %42 = call i32 @trace_buffer_unlock_commit_nostack(%struct.ring_buffer* %40, %struct.ring_buffer_event* %41)
  br label %43

43:                                               ; preds = %24, %39, %25
  ret void
}

declare dso_local %struct.ring_buffer_event* @trace_buffer_lock_reserve(%struct.ring_buffer*, i32, i32, i64, i32) #1

declare dso_local %struct.ftrace_graph_ret_entry* @ring_buffer_event_data(%struct.ring_buffer_event*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @call_filter_check_discard(%struct.trace_event_call*, %struct.ftrace_graph_ret_entry*, %struct.ring_buffer*, %struct.ring_buffer_event*) #1

declare dso_local i32 @trace_buffer_unlock_commit_nostack(%struct.ring_buffer*, %struct.ring_buffer_event*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
