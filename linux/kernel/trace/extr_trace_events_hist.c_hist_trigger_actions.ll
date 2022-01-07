; ModuleID = '/home/carl/AnghaBench/linux/kernel/trace/extr_trace_events_hist.c_hist_trigger_actions.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/trace/extr_trace_events_hist.c_hist_trigger_actions.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hist_trigger_data = type { i32, %struct.action_data** }
%struct.action_data = type { i32 (%struct.hist_trigger_data*, %struct.tracing_map_elt*, i8*, %struct.ring_buffer_event*, i8*, %struct.action_data*, i32*)* }
%struct.tracing_map_elt = type { i32 }
%struct.ring_buffer_event = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hist_trigger_data*, %struct.tracing_map_elt*, i8*, %struct.ring_buffer_event*, i8*, i32*)* @hist_trigger_actions to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hist_trigger_actions(%struct.hist_trigger_data* %0, %struct.tracing_map_elt* %1, i8* %2, %struct.ring_buffer_event* %3, i8* %4, i32* %5) #0 {
  %7 = alloca %struct.hist_trigger_data*, align 8
  %8 = alloca %struct.tracing_map_elt*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.ring_buffer_event*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca %struct.action_data*, align 8
  %14 = alloca i32, align 4
  store %struct.hist_trigger_data* %0, %struct.hist_trigger_data** %7, align 8
  store %struct.tracing_map_elt* %1, %struct.tracing_map_elt** %8, align 8
  store i8* %2, i8** %9, align 8
  store %struct.ring_buffer_event* %3, %struct.ring_buffer_event** %10, align 8
  store i8* %4, i8** %11, align 8
  store i32* %5, i32** %12, align 8
  store i32 0, i32* %14, align 4
  br label %15

15:                                               ; preds = %40, %6
  %16 = load i32, i32* %14, align 4
  %17 = load %struct.hist_trigger_data*, %struct.hist_trigger_data** %7, align 8
  %18 = getelementptr inbounds %struct.hist_trigger_data, %struct.hist_trigger_data* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = icmp ult i32 %16, %19
  br i1 %20, label %21, label %43

21:                                               ; preds = %15
  %22 = load %struct.hist_trigger_data*, %struct.hist_trigger_data** %7, align 8
  %23 = getelementptr inbounds %struct.hist_trigger_data, %struct.hist_trigger_data* %22, i32 0, i32 1
  %24 = load %struct.action_data**, %struct.action_data*** %23, align 8
  %25 = load i32, i32* %14, align 4
  %26 = zext i32 %25 to i64
  %27 = getelementptr inbounds %struct.action_data*, %struct.action_data** %24, i64 %26
  %28 = load %struct.action_data*, %struct.action_data** %27, align 8
  store %struct.action_data* %28, %struct.action_data** %13, align 8
  %29 = load %struct.action_data*, %struct.action_data** %13, align 8
  %30 = getelementptr inbounds %struct.action_data, %struct.action_data* %29, i32 0, i32 0
  %31 = load i32 (%struct.hist_trigger_data*, %struct.tracing_map_elt*, i8*, %struct.ring_buffer_event*, i8*, %struct.action_data*, i32*)*, i32 (%struct.hist_trigger_data*, %struct.tracing_map_elt*, i8*, %struct.ring_buffer_event*, i8*, %struct.action_data*, i32*)** %30, align 8
  %32 = load %struct.hist_trigger_data*, %struct.hist_trigger_data** %7, align 8
  %33 = load %struct.tracing_map_elt*, %struct.tracing_map_elt** %8, align 8
  %34 = load i8*, i8** %9, align 8
  %35 = load %struct.ring_buffer_event*, %struct.ring_buffer_event** %10, align 8
  %36 = load i8*, i8** %11, align 8
  %37 = load %struct.action_data*, %struct.action_data** %13, align 8
  %38 = load i32*, i32** %12, align 8
  %39 = call i32 %31(%struct.hist_trigger_data* %32, %struct.tracing_map_elt* %33, i8* %34, %struct.ring_buffer_event* %35, i8* %36, %struct.action_data* %37, i32* %38)
  br label %40

40:                                               ; preds = %21
  %41 = load i32, i32* %14, align 4
  %42 = add i32 %41, 1
  store i32 %42, i32* %14, align 4
  br label %15

43:                                               ; preds = %15
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
