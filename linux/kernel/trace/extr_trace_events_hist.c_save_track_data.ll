; ModuleID = '/home/carl/AnghaBench/linux/kernel/trace/extr_trace_events_hist.c_save_track_data.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/trace/extr_trace_events_hist.c_save_track_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hist_trigger_data = type { i32 }
%struct.tracing_map_elt = type { i32 }
%struct.ring_buffer_event = type { i32 }
%struct.action_data = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 (%struct.hist_trigger_data*, %struct.tracing_map_elt*, i8*, %struct.ring_buffer_event*, i8*, %struct.action_data.0*, i32*)* }
%struct.action_data.0 = type opaque

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hist_trigger_data*, %struct.tracing_map_elt*, i8*, %struct.ring_buffer_event*, i8*, %struct.action_data*, i32*)* @save_track_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @save_track_data(%struct.hist_trigger_data* %0, %struct.tracing_map_elt* %1, i8* %2, %struct.ring_buffer_event* %3, i8* %4, %struct.action_data* %5, i32* %6) #0 {
  %8 = alloca %struct.hist_trigger_data*, align 8
  %9 = alloca %struct.tracing_map_elt*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca %struct.ring_buffer_event*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca %struct.action_data*, align 8
  %14 = alloca i32*, align 8
  store %struct.hist_trigger_data* %0, %struct.hist_trigger_data** %8, align 8
  store %struct.tracing_map_elt* %1, %struct.tracing_map_elt** %9, align 8
  store i8* %2, i8** %10, align 8
  store %struct.ring_buffer_event* %3, %struct.ring_buffer_event** %11, align 8
  store i8* %4, i8** %12, align 8
  store %struct.action_data* %5, %struct.action_data** %13, align 8
  store i32* %6, i32** %14, align 8
  %15 = load %struct.action_data*, %struct.action_data** %13, align 8
  %16 = getelementptr inbounds %struct.action_data, %struct.action_data* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i32 (%struct.hist_trigger_data*, %struct.tracing_map_elt*, i8*, %struct.ring_buffer_event*, i8*, %struct.action_data.0*, i32*)*, i32 (%struct.hist_trigger_data*, %struct.tracing_map_elt*, i8*, %struct.ring_buffer_event*, i8*, %struct.action_data.0*, i32*)** %17, align 8
  %19 = icmp ne i32 (%struct.hist_trigger_data*, %struct.tracing_map_elt*, i8*, %struct.ring_buffer_event*, i8*, %struct.action_data.0*, i32*)* %18, null
  br i1 %19, label %20, label %34

20:                                               ; preds = %7
  %21 = load %struct.action_data*, %struct.action_data** %13, align 8
  %22 = getelementptr inbounds %struct.action_data, %struct.action_data* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load i32 (%struct.hist_trigger_data*, %struct.tracing_map_elt*, i8*, %struct.ring_buffer_event*, i8*, %struct.action_data.0*, i32*)*, i32 (%struct.hist_trigger_data*, %struct.tracing_map_elt*, i8*, %struct.ring_buffer_event*, i8*, %struct.action_data.0*, i32*)** %23, align 8
  %25 = load %struct.hist_trigger_data*, %struct.hist_trigger_data** %8, align 8
  %26 = load %struct.tracing_map_elt*, %struct.tracing_map_elt** %9, align 8
  %27 = load i8*, i8** %10, align 8
  %28 = load %struct.ring_buffer_event*, %struct.ring_buffer_event** %11, align 8
  %29 = load i8*, i8** %12, align 8
  %30 = load %struct.action_data*, %struct.action_data** %13, align 8
  %31 = bitcast %struct.action_data* %30 to %struct.action_data.0*
  %32 = load i32*, i32** %14, align 8
  %33 = call i32 %24(%struct.hist_trigger_data* %25, %struct.tracing_map_elt* %26, i8* %27, %struct.ring_buffer_event* %28, i8* %29, %struct.action_data.0* %31, i32* %32)
  br label %34

34:                                               ; preds = %20, %7
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
