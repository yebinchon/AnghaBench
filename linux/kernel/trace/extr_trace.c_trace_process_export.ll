; ModuleID = '/home/carl/AnghaBench/linux/kernel/trace/extr_trace.c_trace_process_export.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/trace/extr_trace.c_trace_process_export.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.trace_export = type { i32 (%struct.trace_export*, %struct.trace_entry*, i32)* }
%struct.trace_entry = type opaque
%struct.ring_buffer_event = type { i32 }
%struct.trace_entry.0 = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.trace_export*, %struct.ring_buffer_event*)* @trace_process_export to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @trace_process_export(%struct.trace_export* %0, %struct.ring_buffer_event* %1) #0 {
  %3 = alloca %struct.trace_export*, align 8
  %4 = alloca %struct.ring_buffer_event*, align 8
  %5 = alloca %struct.trace_entry.0*, align 8
  %6 = alloca i32, align 4
  store %struct.trace_export* %0, %struct.trace_export** %3, align 8
  store %struct.ring_buffer_event* %1, %struct.ring_buffer_event** %4, align 8
  store i32 0, i32* %6, align 4
  %7 = load %struct.ring_buffer_event*, %struct.ring_buffer_event** %4, align 8
  %8 = call %struct.trace_entry.0* @ring_buffer_event_data(%struct.ring_buffer_event* %7)
  store %struct.trace_entry.0* %8, %struct.trace_entry.0** %5, align 8
  %9 = load %struct.ring_buffer_event*, %struct.ring_buffer_event** %4, align 8
  %10 = call i32 @ring_buffer_event_length(%struct.ring_buffer_event* %9)
  store i32 %10, i32* %6, align 4
  %11 = load %struct.trace_export*, %struct.trace_export** %3, align 8
  %12 = getelementptr inbounds %struct.trace_export, %struct.trace_export* %11, i32 0, i32 0
  %13 = load i32 (%struct.trace_export*, %struct.trace_entry*, i32)*, i32 (%struct.trace_export*, %struct.trace_entry*, i32)** %12, align 8
  %14 = load %struct.trace_export*, %struct.trace_export** %3, align 8
  %15 = load %struct.trace_entry.0*, %struct.trace_entry.0** %5, align 8
  %16 = bitcast %struct.trace_entry.0* %15 to %struct.trace_entry*
  %17 = load i32, i32* %6, align 4
  %18 = call i32 %13(%struct.trace_export* %14, %struct.trace_entry* %16, i32 %17)
  ret void
}

declare dso_local %struct.trace_entry.0* @ring_buffer_event_data(%struct.ring_buffer_event*) #1

declare dso_local i32 @ring_buffer_event_length(%struct.ring_buffer_event*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
