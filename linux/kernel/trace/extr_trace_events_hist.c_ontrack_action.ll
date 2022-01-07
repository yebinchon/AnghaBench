; ModuleID = '/home/carl/AnghaBench/linux/kernel/trace/extr_trace_events_hist.c_ontrack_action.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/trace/extr_trace_events_hist.c_ontrack_action.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hist_trigger_data = type { i32 }
%struct.tracing_map_elt = type { i32 }
%struct.ring_buffer_event = type { i32 }
%struct.action_data = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hist_trigger_data*, %struct.tracing_map_elt*, i8*, %struct.ring_buffer_event*, i8*, %struct.action_data*, i32*)* @ontrack_action to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ontrack_action(%struct.hist_trigger_data* %0, %struct.tracing_map_elt* %1, i8* %2, %struct.ring_buffer_event* %3, i8* %4, %struct.action_data* %5, i32* %6) #0 {
  %8 = alloca %struct.hist_trigger_data*, align 8
  %9 = alloca %struct.tracing_map_elt*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca %struct.ring_buffer_event*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca %struct.action_data*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32, align 4
  store %struct.hist_trigger_data* %0, %struct.hist_trigger_data** %8, align 8
  store %struct.tracing_map_elt* %1, %struct.tracing_map_elt** %9, align 8
  store i8* %2, i8** %10, align 8
  store %struct.ring_buffer_event* %3, %struct.ring_buffer_event** %11, align 8
  store i8* %4, i8** %12, align 8
  store %struct.action_data* %5, %struct.action_data** %13, align 8
  store i32* %6, i32** %14, align 8
  %16 = load i32*, i32** %14, align 8
  %17 = load %struct.action_data*, %struct.action_data** %13, align 8
  %18 = getelementptr inbounds %struct.action_data, %struct.action_data* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  %20 = load %struct.TYPE_3__*, %struct.TYPE_3__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = getelementptr inbounds i32, i32* %16, i64 %22
  %24 = load i32, i32* %23, align 4
  store i32 %24, i32* %15, align 4
  %25 = load %struct.tracing_map_elt*, %struct.tracing_map_elt** %9, align 8
  %26 = load %struct.action_data*, %struct.action_data** %13, align 8
  %27 = load i32, i32* %15, align 4
  %28 = call i64 @check_track_val(%struct.tracing_map_elt* %25, %struct.action_data* %26, i32 %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %44

30:                                               ; preds = %7
  %31 = load %struct.hist_trigger_data*, %struct.hist_trigger_data** %8, align 8
  %32 = load %struct.tracing_map_elt*, %struct.tracing_map_elt** %9, align 8
  %33 = load %struct.action_data*, %struct.action_data** %13, align 8
  %34 = load i32, i32* %15, align 4
  %35 = call i32 @save_track_val(%struct.hist_trigger_data* %31, %struct.tracing_map_elt* %32, %struct.action_data* %33, i32 %34)
  %36 = load %struct.hist_trigger_data*, %struct.hist_trigger_data** %8, align 8
  %37 = load %struct.tracing_map_elt*, %struct.tracing_map_elt** %9, align 8
  %38 = load i8*, i8** %10, align 8
  %39 = load %struct.ring_buffer_event*, %struct.ring_buffer_event** %11, align 8
  %40 = load i8*, i8** %12, align 8
  %41 = load %struct.action_data*, %struct.action_data** %13, align 8
  %42 = load i32*, i32** %14, align 8
  %43 = call i32 @save_track_data(%struct.hist_trigger_data* %36, %struct.tracing_map_elt* %37, i8* %38, %struct.ring_buffer_event* %39, i8* %40, %struct.action_data* %41, i32* %42)
  br label %44

44:                                               ; preds = %30, %7
  ret void
}

declare dso_local i64 @check_track_val(%struct.tracing_map_elt*, %struct.action_data*, i32) #1

declare dso_local i32 @save_track_val(%struct.hist_trigger_data*, %struct.tracing_map_elt*, %struct.action_data*, i32) #1

declare dso_local i32 @save_track_data(%struct.hist_trigger_data*, %struct.tracing_map_elt*, i8*, %struct.ring_buffer_event*, i8*, %struct.action_data*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
