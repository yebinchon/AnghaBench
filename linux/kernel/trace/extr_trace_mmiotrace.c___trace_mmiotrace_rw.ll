; ModuleID = '/home/carl/AnghaBench/linux/kernel/trace/extr_trace_mmiotrace.c___trace_mmiotrace_rw.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/trace/extr_trace_mmiotrace.c___trace_mmiotrace_rw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.trace_event_call = type { i32 }
%struct.trace_array = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.ring_buffer* }
%struct.ring_buffer = type { i32 }
%struct.trace_array_cpu = type { i32 }
%struct.mmiotrace_rw = type { i32 }
%struct.ring_buffer_event = type { i32 }
%struct.trace_mmiotrace_rw = type { %struct.mmiotrace_rw }

@event_mmiotrace_rw = common dso_local global %struct.trace_event_call zeroinitializer, align 4
@TRACE_MMIO_RW = common dso_local global i32 0, align 4
@dropped_count = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.trace_array*, %struct.trace_array_cpu*, %struct.mmiotrace_rw*)* @__trace_mmiotrace_rw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__trace_mmiotrace_rw(%struct.trace_array* %0, %struct.trace_array_cpu* %1, %struct.mmiotrace_rw* %2) #0 {
  %4 = alloca %struct.trace_array*, align 8
  %5 = alloca %struct.trace_array_cpu*, align 8
  %6 = alloca %struct.mmiotrace_rw*, align 8
  %7 = alloca %struct.trace_event_call*, align 8
  %8 = alloca %struct.ring_buffer*, align 8
  %9 = alloca %struct.ring_buffer_event*, align 8
  %10 = alloca %struct.trace_mmiotrace_rw*, align 8
  %11 = alloca i32, align 4
  store %struct.trace_array* %0, %struct.trace_array** %4, align 8
  store %struct.trace_array_cpu* %1, %struct.trace_array_cpu** %5, align 8
  store %struct.mmiotrace_rw* %2, %struct.mmiotrace_rw** %6, align 8
  store %struct.trace_event_call* @event_mmiotrace_rw, %struct.trace_event_call** %7, align 8
  %12 = load %struct.trace_array*, %struct.trace_array** %4, align 8
  %13 = getelementptr inbounds %struct.trace_array, %struct.trace_array* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load %struct.ring_buffer*, %struct.ring_buffer** %14, align 8
  store %struct.ring_buffer* %15, %struct.ring_buffer** %8, align 8
  %16 = call i32 (...) @preempt_count()
  store i32 %16, i32* %11, align 4
  %17 = load %struct.ring_buffer*, %struct.ring_buffer** %8, align 8
  %18 = load i32, i32* @TRACE_MMIO_RW, align 4
  %19 = load i32, i32* %11, align 4
  %20 = call %struct.ring_buffer_event* @trace_buffer_lock_reserve(%struct.ring_buffer* %17, i32 %18, i32 4, i32 0, i32 %19)
  store %struct.ring_buffer_event* %20, %struct.ring_buffer_event** %9, align 8
  %21 = load %struct.ring_buffer_event*, %struct.ring_buffer_event** %9, align 8
  %22 = icmp ne %struct.ring_buffer_event* %21, null
  br i1 %22, label %25, label %23

23:                                               ; preds = %3
  %24 = call i32 @atomic_inc(i32* @dropped_count)
  br label %45

25:                                               ; preds = %3
  %26 = load %struct.ring_buffer_event*, %struct.ring_buffer_event** %9, align 8
  %27 = call %struct.trace_mmiotrace_rw* @ring_buffer_event_data(%struct.ring_buffer_event* %26)
  store %struct.trace_mmiotrace_rw* %27, %struct.trace_mmiotrace_rw** %10, align 8
  %28 = load %struct.trace_mmiotrace_rw*, %struct.trace_mmiotrace_rw** %10, align 8
  %29 = getelementptr inbounds %struct.trace_mmiotrace_rw, %struct.trace_mmiotrace_rw* %28, i32 0, i32 0
  %30 = load %struct.mmiotrace_rw*, %struct.mmiotrace_rw** %6, align 8
  %31 = bitcast %struct.mmiotrace_rw* %29 to i8*
  %32 = bitcast %struct.mmiotrace_rw* %30 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %31, i8* align 4 %32, i64 4, i1 false)
  %33 = load %struct.trace_event_call*, %struct.trace_event_call** %7, align 8
  %34 = load %struct.trace_mmiotrace_rw*, %struct.trace_mmiotrace_rw** %10, align 8
  %35 = load %struct.ring_buffer*, %struct.ring_buffer** %8, align 8
  %36 = load %struct.ring_buffer_event*, %struct.ring_buffer_event** %9, align 8
  %37 = call i32 @call_filter_check_discard(%struct.trace_event_call* %33, %struct.trace_mmiotrace_rw* %34, %struct.ring_buffer* %35, %struct.ring_buffer_event* %36)
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %45, label %39

39:                                               ; preds = %25
  %40 = load %struct.trace_array*, %struct.trace_array** %4, align 8
  %41 = load %struct.ring_buffer*, %struct.ring_buffer** %8, align 8
  %42 = load %struct.ring_buffer_event*, %struct.ring_buffer_event** %9, align 8
  %43 = load i32, i32* %11, align 4
  %44 = call i32 @trace_buffer_unlock_commit(%struct.trace_array* %40, %struct.ring_buffer* %41, %struct.ring_buffer_event* %42, i32 0, i32 %43)
  br label %45

45:                                               ; preds = %23, %39, %25
  ret void
}

declare dso_local i32 @preempt_count(...) #1

declare dso_local %struct.ring_buffer_event* @trace_buffer_lock_reserve(%struct.ring_buffer*, i32, i32, i32, i32) #1

declare dso_local i32 @atomic_inc(i32*) #1

declare dso_local %struct.trace_mmiotrace_rw* @ring_buffer_event_data(%struct.ring_buffer_event*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @call_filter_check_discard(%struct.trace_event_call*, %struct.trace_mmiotrace_rw*, %struct.ring_buffer*, %struct.ring_buffer_event*) #1

declare dso_local i32 @trace_buffer_unlock_commit(%struct.trace_array*, %struct.ring_buffer*, %struct.ring_buffer_event*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
