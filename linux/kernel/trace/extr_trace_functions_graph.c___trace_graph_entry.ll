; ModuleID = '/home/carl/AnghaBench/linux/kernel/trace/extr_trace_functions_graph.c___trace_graph_entry.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/trace/extr_trace_functions_graph.c___trace_graph_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.trace_event_call = type { i32 }
%struct.trace_array = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.ring_buffer* }
%struct.ring_buffer = type { i32 }
%struct.ftrace_graph_ent = type { i32 }
%struct.ring_buffer_event = type { i32 }
%struct.ftrace_graph_ent_entry = type { %struct.ftrace_graph_ent }

@event_funcgraph_entry = common dso_local global %struct.trace_event_call zeroinitializer, align 4
@TRACE_GRAPH_ENT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @__trace_graph_entry(%struct.trace_array* %0, %struct.ftrace_graph_ent* %1, i64 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.trace_array*, align 8
  %7 = alloca %struct.ftrace_graph_ent*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.trace_event_call*, align 8
  %11 = alloca %struct.ring_buffer_event*, align 8
  %12 = alloca %struct.ring_buffer*, align 8
  %13 = alloca %struct.ftrace_graph_ent_entry*, align 8
  store %struct.trace_array* %0, %struct.trace_array** %6, align 8
  store %struct.ftrace_graph_ent* %1, %struct.ftrace_graph_ent** %7, align 8
  store i64 %2, i64* %8, align 8
  store i32 %3, i32* %9, align 4
  store %struct.trace_event_call* @event_funcgraph_entry, %struct.trace_event_call** %10, align 8
  %14 = load %struct.trace_array*, %struct.trace_array** %6, align 8
  %15 = getelementptr inbounds %struct.trace_array, %struct.trace_array* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load %struct.ring_buffer*, %struct.ring_buffer** %16, align 8
  store %struct.ring_buffer* %17, %struct.ring_buffer** %12, align 8
  %18 = load %struct.ring_buffer*, %struct.ring_buffer** %12, align 8
  %19 = load i32, i32* @TRACE_GRAPH_ENT, align 4
  %20 = load i64, i64* %8, align 8
  %21 = load i32, i32* %9, align 4
  %22 = call %struct.ring_buffer_event* @trace_buffer_lock_reserve(%struct.ring_buffer* %18, i32 %19, i32 4, i64 %20, i32 %21)
  store %struct.ring_buffer_event* %22, %struct.ring_buffer_event** %11, align 8
  %23 = load %struct.ring_buffer_event*, %struct.ring_buffer_event** %11, align 8
  %24 = icmp ne %struct.ring_buffer_event* %23, null
  br i1 %24, label %26, label %25

25:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  br label %45

26:                                               ; preds = %4
  %27 = load %struct.ring_buffer_event*, %struct.ring_buffer_event** %11, align 8
  %28 = call %struct.ftrace_graph_ent_entry* @ring_buffer_event_data(%struct.ring_buffer_event* %27)
  store %struct.ftrace_graph_ent_entry* %28, %struct.ftrace_graph_ent_entry** %13, align 8
  %29 = load %struct.ftrace_graph_ent_entry*, %struct.ftrace_graph_ent_entry** %13, align 8
  %30 = getelementptr inbounds %struct.ftrace_graph_ent_entry, %struct.ftrace_graph_ent_entry* %29, i32 0, i32 0
  %31 = load %struct.ftrace_graph_ent*, %struct.ftrace_graph_ent** %7, align 8
  %32 = bitcast %struct.ftrace_graph_ent* %30 to i8*
  %33 = bitcast %struct.ftrace_graph_ent* %31 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %32, i8* align 4 %33, i64 4, i1 false)
  %34 = load %struct.trace_event_call*, %struct.trace_event_call** %10, align 8
  %35 = load %struct.ftrace_graph_ent_entry*, %struct.ftrace_graph_ent_entry** %13, align 8
  %36 = load %struct.ring_buffer*, %struct.ring_buffer** %12, align 8
  %37 = load %struct.ring_buffer_event*, %struct.ring_buffer_event** %11, align 8
  %38 = call i32 @call_filter_check_discard(%struct.trace_event_call* %34, %struct.ftrace_graph_ent_entry* %35, %struct.ring_buffer* %36, %struct.ring_buffer_event* %37)
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %44, label %40

40:                                               ; preds = %26
  %41 = load %struct.ring_buffer*, %struct.ring_buffer** %12, align 8
  %42 = load %struct.ring_buffer_event*, %struct.ring_buffer_event** %11, align 8
  %43 = call i32 @trace_buffer_unlock_commit_nostack(%struct.ring_buffer* %41, %struct.ring_buffer_event* %42)
  br label %44

44:                                               ; preds = %40, %26
  store i32 1, i32* %5, align 4
  br label %45

45:                                               ; preds = %44, %25
  %46 = load i32, i32* %5, align 4
  ret i32 %46
}

declare dso_local %struct.ring_buffer_event* @trace_buffer_lock_reserve(%struct.ring_buffer*, i32, i32, i64, i32) #1

declare dso_local %struct.ftrace_graph_ent_entry* @ring_buffer_event_data(%struct.ring_buffer_event*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @call_filter_check_discard(%struct.trace_event_call*, %struct.ftrace_graph_ent_entry*, %struct.ring_buffer*, %struct.ring_buffer_event*) #1

declare dso_local i32 @trace_buffer_unlock_commit_nostack(%struct.ring_buffer*, %struct.ring_buffer_event*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
