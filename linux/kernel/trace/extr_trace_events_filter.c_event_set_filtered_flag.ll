; ModuleID = '/home/carl/AnghaBench/linux/kernel/trace/extr_trace_events_filter.c_event_set_filtered_flag.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/trace/extr_trace_events_filter.c_event_set_filtered_flag.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.trace_event_file = type { i64 }

@EVENT_FILE_FL_FILTERED = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.trace_event_file*)* @event_set_filtered_flag to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @event_set_filtered_flag(%struct.trace_event_file* %0) #0 {
  %2 = alloca %struct.trace_event_file*, align 8
  %3 = alloca i64, align 8
  store %struct.trace_event_file* %0, %struct.trace_event_file** %2, align 8
  %4 = load %struct.trace_event_file*, %struct.trace_event_file** %2, align 8
  %5 = getelementptr inbounds %struct.trace_event_file, %struct.trace_event_file* %4, i32 0, i32 0
  %6 = load i64, i64* %5, align 8
  store i64 %6, i64* %3, align 8
  %7 = load i64, i64* @EVENT_FILE_FL_FILTERED, align 8
  %8 = load %struct.trace_event_file*, %struct.trace_event_file** %2, align 8
  %9 = getelementptr inbounds %struct.trace_event_file, %struct.trace_event_file* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = or i64 %10, %7
  store i64 %11, i64* %9, align 8
  %12 = load i64, i64* %3, align 8
  %13 = load %struct.trace_event_file*, %struct.trace_event_file** %2, align 8
  %14 = getelementptr inbounds %struct.trace_event_file, %struct.trace_event_file* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = icmp ne i64 %12, %15
  br i1 %16, label %17, label %19

17:                                               ; preds = %1
  %18 = call i32 (...) @trace_buffered_event_enable()
  br label %19

19:                                               ; preds = %17, %1
  ret void
}

declare dso_local i32 @trace_buffered_event_enable(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
