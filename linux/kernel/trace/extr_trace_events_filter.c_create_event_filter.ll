; ModuleID = '/home/carl/AnghaBench/linux/kernel/trace/extr_trace_events_filter.c_create_event_filter.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/trace/extr_trace_events_filter.c_create_event_filter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.trace_array = type { i32 }
%struct.trace_event_call = type { i32 }
%struct.event_filter = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @create_event_filter(%struct.trace_array* %0, %struct.trace_event_call* %1, i8* %2, i32 %3, %struct.event_filter** %4) #0 {
  %6 = alloca %struct.trace_array*, align 8
  %7 = alloca %struct.trace_event_call*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.event_filter**, align 8
  store %struct.trace_array* %0, %struct.trace_array** %6, align 8
  store %struct.trace_event_call* %1, %struct.trace_event_call** %7, align 8
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  store %struct.event_filter** %4, %struct.event_filter*** %10, align 8
  %11 = load %struct.trace_array*, %struct.trace_array** %6, align 8
  %12 = load %struct.trace_event_call*, %struct.trace_event_call** %7, align 8
  %13 = load i8*, i8** %8, align 8
  %14 = load i32, i32* %9, align 4
  %15 = load %struct.event_filter**, %struct.event_filter*** %10, align 8
  %16 = call i32 @create_filter(%struct.trace_array* %11, %struct.trace_event_call* %12, i8* %13, i32 %14, %struct.event_filter** %15)
  ret i32 %16
}

declare dso_local i32 @create_filter(%struct.trace_array*, %struct.trace_event_call*, i8*, i32, %struct.event_filter**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
