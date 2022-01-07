; ModuleID = '/home/carl/AnghaBench/linux/kernel/trace/extr_trace_events_hist.c_hist_field_minus.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/trace/extr_trace_events_hist.c_hist_field_minus.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hist_field = type { {}*, %struct.hist_field** }
%struct.tracing_map_elt = type { i32 }
%struct.ring_buffer_event = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.hist_field*, %struct.tracing_map_elt*, %struct.ring_buffer_event*, i8*)* @hist_field_minus to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @hist_field_minus(%struct.hist_field* %0, %struct.tracing_map_elt* %1, %struct.ring_buffer_event* %2, i8* %3) #0 {
  %5 = alloca %struct.hist_field*, align 8
  %6 = alloca %struct.tracing_map_elt*, align 8
  %7 = alloca %struct.ring_buffer_event*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.hist_field*, align 8
  %10 = alloca %struct.hist_field*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  store %struct.hist_field* %0, %struct.hist_field** %5, align 8
  store %struct.tracing_map_elt* %1, %struct.tracing_map_elt** %6, align 8
  store %struct.ring_buffer_event* %2, %struct.ring_buffer_event** %7, align 8
  store i8* %3, i8** %8, align 8
  %13 = load %struct.hist_field*, %struct.hist_field** %5, align 8
  %14 = getelementptr inbounds %struct.hist_field, %struct.hist_field* %13, i32 0, i32 1
  %15 = load %struct.hist_field**, %struct.hist_field*** %14, align 8
  %16 = getelementptr inbounds %struct.hist_field*, %struct.hist_field** %15, i64 0
  %17 = load %struct.hist_field*, %struct.hist_field** %16, align 8
  store %struct.hist_field* %17, %struct.hist_field** %9, align 8
  %18 = load %struct.hist_field*, %struct.hist_field** %5, align 8
  %19 = getelementptr inbounds %struct.hist_field, %struct.hist_field* %18, i32 0, i32 1
  %20 = load %struct.hist_field**, %struct.hist_field*** %19, align 8
  %21 = getelementptr inbounds %struct.hist_field*, %struct.hist_field** %20, i64 1
  %22 = load %struct.hist_field*, %struct.hist_field** %21, align 8
  store %struct.hist_field* %22, %struct.hist_field** %10, align 8
  %23 = load %struct.hist_field*, %struct.hist_field** %9, align 8
  %24 = getelementptr inbounds %struct.hist_field, %struct.hist_field* %23, i32 0, i32 0
  %25 = bitcast {}** %24 to i64 (%struct.hist_field*, %struct.tracing_map_elt*, %struct.ring_buffer_event*, i8*)**
  %26 = load i64 (%struct.hist_field*, %struct.tracing_map_elt*, %struct.ring_buffer_event*, i8*)*, i64 (%struct.hist_field*, %struct.tracing_map_elt*, %struct.ring_buffer_event*, i8*)** %25, align 8
  %27 = load %struct.hist_field*, %struct.hist_field** %9, align 8
  %28 = load %struct.tracing_map_elt*, %struct.tracing_map_elt** %6, align 8
  %29 = load %struct.ring_buffer_event*, %struct.ring_buffer_event** %7, align 8
  %30 = load i8*, i8** %8, align 8
  %31 = call i64 %26(%struct.hist_field* %27, %struct.tracing_map_elt* %28, %struct.ring_buffer_event* %29, i8* %30)
  store i64 %31, i64* %11, align 8
  %32 = load %struct.hist_field*, %struct.hist_field** %10, align 8
  %33 = getelementptr inbounds %struct.hist_field, %struct.hist_field* %32, i32 0, i32 0
  %34 = bitcast {}** %33 to i64 (%struct.hist_field*, %struct.tracing_map_elt*, %struct.ring_buffer_event*, i8*)**
  %35 = load i64 (%struct.hist_field*, %struct.tracing_map_elt*, %struct.ring_buffer_event*, i8*)*, i64 (%struct.hist_field*, %struct.tracing_map_elt*, %struct.ring_buffer_event*, i8*)** %34, align 8
  %36 = load %struct.hist_field*, %struct.hist_field** %10, align 8
  %37 = load %struct.tracing_map_elt*, %struct.tracing_map_elt** %6, align 8
  %38 = load %struct.ring_buffer_event*, %struct.ring_buffer_event** %7, align 8
  %39 = load i8*, i8** %8, align 8
  %40 = call i64 %35(%struct.hist_field* %36, %struct.tracing_map_elt* %37, %struct.ring_buffer_event* %38, i8* %39)
  store i64 %40, i64* %12, align 8
  %41 = load i64, i64* %11, align 8
  %42 = load i64, i64* %12, align 8
  %43 = sub nsw i64 %41, %42
  ret i64 %43
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
