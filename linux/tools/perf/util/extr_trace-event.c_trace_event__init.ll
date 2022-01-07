; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/util/extr_trace-event.c_trace_event__init.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/util/extr_trace-event.c_trace_event__init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.trace_event = type { %struct.tep_handle*, i32 }
%struct.tep_handle = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @trace_event__init(%struct.trace_event* %0) #0 {
  %2 = alloca %struct.trace_event*, align 8
  %3 = alloca %struct.tep_handle*, align 8
  store %struct.trace_event* %0, %struct.trace_event** %2, align 8
  %4 = call %struct.tep_handle* (...) @tep_alloc()
  store %struct.tep_handle* %4, %struct.tep_handle** %3, align 8
  %5 = load %struct.tep_handle*, %struct.tep_handle** %3, align 8
  %6 = icmp ne %struct.tep_handle* %5, null
  br i1 %6, label %7, label %15

7:                                                ; preds = %1
  %8 = load %struct.tep_handle*, %struct.tep_handle** %3, align 8
  %9 = call i32 @tep_load_plugins(%struct.tep_handle* %8)
  %10 = load %struct.trace_event*, %struct.trace_event** %2, align 8
  %11 = getelementptr inbounds %struct.trace_event, %struct.trace_event* %10, i32 0, i32 1
  store i32 %9, i32* %11, align 8
  %12 = load %struct.tep_handle*, %struct.tep_handle** %3, align 8
  %13 = load %struct.trace_event*, %struct.trace_event** %2, align 8
  %14 = getelementptr inbounds %struct.trace_event, %struct.trace_event* %13, i32 0, i32 0
  store %struct.tep_handle* %12, %struct.tep_handle** %14, align 8
  br label %15

15:                                               ; preds = %7, %1
  %16 = load %struct.tep_handle*, %struct.tep_handle** %3, align 8
  %17 = icmp ne %struct.tep_handle* %16, null
  %18 = zext i1 %17 to i64
  %19 = select i1 %17, i32 0, i32 -1
  ret i32 %19
}

declare dso_local %struct.tep_handle* @tep_alloc(...) #1

declare dso_local i32 @tep_load_plugins(%struct.tep_handle*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
