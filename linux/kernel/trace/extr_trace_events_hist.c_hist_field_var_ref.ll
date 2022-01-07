; ModuleID = '/home/carl/AnghaBench/linux/kernel/trace/extr_trace_events_hist.c_hist_field_var_ref.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/trace/extr_trace_events_hist.c_hist_field_var_ref.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hist_field = type { i64 }
%struct.tracing_map_elt = type { %struct.hist_elt_data* }
%struct.hist_elt_data = type { i32* }
%struct.ring_buffer_event = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hist_field*, %struct.tracing_map_elt*, %struct.ring_buffer_event*, i8*)* @hist_field_var_ref to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hist_field_var_ref(%struct.hist_field* %0, %struct.tracing_map_elt* %1, %struct.ring_buffer_event* %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.hist_field*, align 8
  %7 = alloca %struct.tracing_map_elt*, align 8
  %8 = alloca %struct.ring_buffer_event*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.hist_elt_data*, align 8
  %11 = alloca i32, align 4
  store %struct.hist_field* %0, %struct.hist_field** %6, align 8
  store %struct.tracing_map_elt* %1, %struct.tracing_map_elt** %7, align 8
  store %struct.ring_buffer_event* %2, %struct.ring_buffer_event** %8, align 8
  store i8* %3, i8** %9, align 8
  store i32 0, i32* %11, align 4
  %12 = load %struct.tracing_map_elt*, %struct.tracing_map_elt** %7, align 8
  %13 = icmp ne %struct.tracing_map_elt* %12, null
  %14 = xor i1 %13, true
  %15 = zext i1 %14 to i32
  %16 = call i64 @WARN_ON_ONCE(i32 %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %4
  %19 = load i32, i32* %11, align 4
  store i32 %19, i32* %5, align 4
  br label %33

20:                                               ; preds = %4
  %21 = load %struct.tracing_map_elt*, %struct.tracing_map_elt** %7, align 8
  %22 = getelementptr inbounds %struct.tracing_map_elt, %struct.tracing_map_elt* %21, i32 0, i32 0
  %23 = load %struct.hist_elt_data*, %struct.hist_elt_data** %22, align 8
  store %struct.hist_elt_data* %23, %struct.hist_elt_data** %10, align 8
  %24 = load %struct.hist_elt_data*, %struct.hist_elt_data** %10, align 8
  %25 = getelementptr inbounds %struct.hist_elt_data, %struct.hist_elt_data* %24, i32 0, i32 0
  %26 = load i32*, i32** %25, align 8
  %27 = load %struct.hist_field*, %struct.hist_field** %6, align 8
  %28 = getelementptr inbounds %struct.hist_field, %struct.hist_field* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = getelementptr inbounds i32, i32* %26, i64 %29
  %31 = load i32, i32* %30, align 4
  store i32 %31, i32* %11, align 4
  %32 = load i32, i32* %11, align 4
  store i32 %32, i32* %5, align 4
  br label %33

33:                                               ; preds = %20, %18
  %34 = load i32, i32* %5, align 4
  ret i32 %34
}

declare dso_local i64 @WARN_ON_ONCE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
