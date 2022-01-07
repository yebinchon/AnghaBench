; ModuleID = '/home/carl/AnghaBench/linux/kernel/trace/extr_trace_events_hist.c_save_track_data_snapshot.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/trace/extr_trace_events_hist.c_save_track_data_snapshot.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hist_trigger_data = type { i32 }
%struct.tracing_map_elt = type { i32 }
%struct.ring_buffer_event = type { i32 }
%struct.action_data = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hist_trigger_data*, %struct.tracing_map_elt*, i8*, %struct.ring_buffer_event*, i8*, %struct.action_data*, i32*)* @save_track_data_snapshot to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @save_track_data_snapshot(%struct.hist_trigger_data* %0, %struct.tracing_map_elt* %1, i8* %2, %struct.ring_buffer_event* %3, i8* %4, %struct.action_data* %5, i32* %6) #0 {
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
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
