; ModuleID = '/home/carl/AnghaBench/linux/kernel/trace/extr_trace_events_hist.c_hist_field_unary_minus.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/trace/extr_trace_events_hist.c_hist_field_unary_minus.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hist_field = type { {}*, %struct.hist_field** }
%struct.tracing_map_elt = type { i32 }
%struct.ring_buffer_event = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hist_field*, %struct.tracing_map_elt*, %struct.ring_buffer_event*, i8*)* @hist_field_unary_minus to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hist_field_unary_minus(%struct.hist_field* %0, %struct.tracing_map_elt* %1, %struct.ring_buffer_event* %2, i8* %3) #0 {
  %5 = alloca %struct.hist_field*, align 8
  %6 = alloca %struct.tracing_map_elt*, align 8
  %7 = alloca %struct.ring_buffer_event*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.hist_field*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.hist_field* %0, %struct.hist_field** %5, align 8
  store %struct.tracing_map_elt* %1, %struct.tracing_map_elt** %6, align 8
  store %struct.ring_buffer_event* %2, %struct.ring_buffer_event** %7, align 8
  store i8* %3, i8** %8, align 8
  %12 = load %struct.hist_field*, %struct.hist_field** %5, align 8
  %13 = getelementptr inbounds %struct.hist_field, %struct.hist_field* %12, i32 0, i32 1
  %14 = load %struct.hist_field**, %struct.hist_field*** %13, align 8
  %15 = getelementptr inbounds %struct.hist_field*, %struct.hist_field** %14, i64 0
  %16 = load %struct.hist_field*, %struct.hist_field** %15, align 8
  store %struct.hist_field* %16, %struct.hist_field** %9, align 8
  %17 = load %struct.hist_field*, %struct.hist_field** %9, align 8
  %18 = getelementptr inbounds %struct.hist_field, %struct.hist_field* %17, i32 0, i32 0
  %19 = bitcast {}** %18 to i32 (%struct.hist_field*, %struct.tracing_map_elt*, %struct.ring_buffer_event*, i8*)**
  %20 = load i32 (%struct.hist_field*, %struct.tracing_map_elt*, %struct.ring_buffer_event*, i8*)*, i32 (%struct.hist_field*, %struct.tracing_map_elt*, %struct.ring_buffer_event*, i8*)** %19, align 8
  %21 = load %struct.hist_field*, %struct.hist_field** %9, align 8
  %22 = load %struct.tracing_map_elt*, %struct.tracing_map_elt** %6, align 8
  %23 = load %struct.ring_buffer_event*, %struct.ring_buffer_event** %7, align 8
  %24 = load i8*, i8** %8, align 8
  %25 = call i32 %20(%struct.hist_field* %21, %struct.tracing_map_elt* %22, %struct.ring_buffer_event* %23, i8* %24)
  store i32 %25, i32* %10, align 4
  %26 = load i32, i32* %10, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %11, align 4
  %28 = load i32, i32* %11, align 4
  ret i32 %28
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
