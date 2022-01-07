; ModuleID = '/home/carl/AnghaBench/linux/kernel/trace/extr_trace_hwlat.c_trace_hwlat_sample.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/trace/extr_trace_hwlat.c_trace_hwlat_sample.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.trace_array = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.ring_buffer* }
%struct.ring_buffer = type { i32 }
%struct.trace_event_call = type { i32 }
%struct.hwlat_sample = type { i32, i32, i32, i32, i32, i32 }
%struct.ring_buffer_event = type { i32 }
%struct.hwlat_entry = type { i32, i32, i32, i32, i32, i32 }

@hwlat_trace = common dso_local global %struct.trace_array* null, align 8
@event_hwlat = common dso_local global %struct.trace_event_call zeroinitializer, align 4
@TRACE_HWLAT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hwlat_sample*)* @trace_hwlat_sample to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @trace_hwlat_sample(%struct.hwlat_sample* %0) #0 {
  %2 = alloca %struct.hwlat_sample*, align 8
  %3 = alloca %struct.trace_array*, align 8
  %4 = alloca %struct.trace_event_call*, align 8
  %5 = alloca %struct.ring_buffer*, align 8
  %6 = alloca %struct.ring_buffer_event*, align 8
  %7 = alloca %struct.hwlat_entry*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store %struct.hwlat_sample* %0, %struct.hwlat_sample** %2, align 8
  %10 = load %struct.trace_array*, %struct.trace_array** @hwlat_trace, align 8
  store %struct.trace_array* %10, %struct.trace_array** %3, align 8
  store %struct.trace_event_call* @event_hwlat, %struct.trace_event_call** %4, align 8
  %11 = load %struct.trace_array*, %struct.trace_array** %3, align 8
  %12 = getelementptr inbounds %struct.trace_array, %struct.trace_array* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load %struct.ring_buffer*, %struct.ring_buffer** %13, align 8
  store %struct.ring_buffer* %14, %struct.ring_buffer** %5, align 8
  %15 = call i32 (...) @preempt_count()
  store i32 %15, i32* %9, align 4
  %16 = load i64, i64* %8, align 8
  %17 = call i32 @local_save_flags(i64 %16)
  %18 = load %struct.ring_buffer*, %struct.ring_buffer** %5, align 8
  %19 = load i32, i32* @TRACE_HWLAT, align 4
  %20 = load i64, i64* %8, align 8
  %21 = load i32, i32* %9, align 4
  %22 = call %struct.ring_buffer_event* @trace_buffer_lock_reserve(%struct.ring_buffer* %18, i32 %19, i32 24, i64 %20, i32 %21)
  store %struct.ring_buffer_event* %22, %struct.ring_buffer_event** %6, align 8
  %23 = load %struct.ring_buffer_event*, %struct.ring_buffer_event** %6, align 8
  %24 = icmp ne %struct.ring_buffer_event* %23, null
  br i1 %24, label %26, label %25

25:                                               ; preds = %1
  br label %69

26:                                               ; preds = %1
  %27 = load %struct.ring_buffer_event*, %struct.ring_buffer_event** %6, align 8
  %28 = call %struct.hwlat_entry* @ring_buffer_event_data(%struct.ring_buffer_event* %27)
  store %struct.hwlat_entry* %28, %struct.hwlat_entry** %7, align 8
  %29 = load %struct.hwlat_sample*, %struct.hwlat_sample** %2, align 8
  %30 = getelementptr inbounds %struct.hwlat_sample, %struct.hwlat_sample* %29, i32 0, i32 5
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.hwlat_entry*, %struct.hwlat_entry** %7, align 8
  %33 = getelementptr inbounds %struct.hwlat_entry, %struct.hwlat_entry* %32, i32 0, i32 5
  store i32 %31, i32* %33, align 4
  %34 = load %struct.hwlat_sample*, %struct.hwlat_sample** %2, align 8
  %35 = getelementptr inbounds %struct.hwlat_sample, %struct.hwlat_sample* %34, i32 0, i32 4
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.hwlat_entry*, %struct.hwlat_entry** %7, align 8
  %38 = getelementptr inbounds %struct.hwlat_entry, %struct.hwlat_entry* %37, i32 0, i32 4
  store i32 %36, i32* %38, align 4
  %39 = load %struct.hwlat_sample*, %struct.hwlat_sample** %2, align 8
  %40 = getelementptr inbounds %struct.hwlat_sample, %struct.hwlat_sample* %39, i32 0, i32 3
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.hwlat_entry*, %struct.hwlat_entry** %7, align 8
  %43 = getelementptr inbounds %struct.hwlat_entry, %struct.hwlat_entry* %42, i32 0, i32 3
  store i32 %41, i32* %43, align 4
  %44 = load %struct.hwlat_sample*, %struct.hwlat_sample** %2, align 8
  %45 = getelementptr inbounds %struct.hwlat_sample, %struct.hwlat_sample* %44, i32 0, i32 2
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.hwlat_entry*, %struct.hwlat_entry** %7, align 8
  %48 = getelementptr inbounds %struct.hwlat_entry, %struct.hwlat_entry* %47, i32 0, i32 2
  store i32 %46, i32* %48, align 4
  %49 = load %struct.hwlat_sample*, %struct.hwlat_sample** %2, align 8
  %50 = getelementptr inbounds %struct.hwlat_sample, %struct.hwlat_sample* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.hwlat_entry*, %struct.hwlat_entry** %7, align 8
  %53 = getelementptr inbounds %struct.hwlat_entry, %struct.hwlat_entry* %52, i32 0, i32 1
  store i32 %51, i32* %53, align 4
  %54 = load %struct.hwlat_sample*, %struct.hwlat_sample** %2, align 8
  %55 = getelementptr inbounds %struct.hwlat_sample, %struct.hwlat_sample* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = load %struct.hwlat_entry*, %struct.hwlat_entry** %7, align 8
  %58 = getelementptr inbounds %struct.hwlat_entry, %struct.hwlat_entry* %57, i32 0, i32 0
  store i32 %56, i32* %58, align 4
  %59 = load %struct.trace_event_call*, %struct.trace_event_call** %4, align 8
  %60 = load %struct.hwlat_entry*, %struct.hwlat_entry** %7, align 8
  %61 = load %struct.ring_buffer*, %struct.ring_buffer** %5, align 8
  %62 = load %struct.ring_buffer_event*, %struct.ring_buffer_event** %6, align 8
  %63 = call i32 @call_filter_check_discard(%struct.trace_event_call* %59, %struct.hwlat_entry* %60, %struct.ring_buffer* %61, %struct.ring_buffer_event* %62)
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %69, label %65

65:                                               ; preds = %26
  %66 = load %struct.ring_buffer*, %struct.ring_buffer** %5, align 8
  %67 = load %struct.ring_buffer_event*, %struct.ring_buffer_event** %6, align 8
  %68 = call i32 @trace_buffer_unlock_commit_nostack(%struct.ring_buffer* %66, %struct.ring_buffer_event* %67)
  br label %69

69:                                               ; preds = %25, %65, %26
  ret void
}

declare dso_local i32 @preempt_count(...) #1

declare dso_local i32 @local_save_flags(i64) #1

declare dso_local %struct.ring_buffer_event* @trace_buffer_lock_reserve(%struct.ring_buffer*, i32, i32, i64, i32) #1

declare dso_local %struct.hwlat_entry* @ring_buffer_event_data(%struct.ring_buffer_event*) #1

declare dso_local i32 @call_filter_check_discard(%struct.trace_event_call*, %struct.hwlat_entry*, %struct.ring_buffer*, %struct.ring_buffer_event*) #1

declare dso_local i32 @trace_buffer_unlock_commit_nostack(%struct.ring_buffer*, %struct.ring_buffer_event*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
