; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/util/extr_trace-event.c_trace_event__tp_format_id.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/util/extr_trace-event.c_trace_event__tp_format_id.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.tep_event = type { i32 }

@tevent_initialized = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@tevent = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.tep_event* @trace_event__tp_format_id(i32 %0) #0 {
  %2 = alloca %struct.tep_event*, align 8
  %3 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %4 = load i32, i32* @tevent_initialized, align 4
  %5 = icmp ne i32 %4, 0
  br i1 %5, label %13, label %6

6:                                                ; preds = %1
  %7 = call i64 (...) @trace_event__init2()
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %13

9:                                                ; preds = %6
  %10 = load i32, i32* @ENOMEM, align 4
  %11 = sub nsw i32 0, %10
  %12 = call %struct.tep_event* @ERR_PTR(i32 %11)
  store %struct.tep_event* %12, %struct.tep_event** %2, align 8
  br label %17

13:                                               ; preds = %6, %1
  %14 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @tevent, i32 0, i32 0), align 4
  %15 = load i32, i32* %3, align 4
  %16 = call %struct.tep_event* @tep_find_event(i32 %14, i32 %15)
  store %struct.tep_event* %16, %struct.tep_event** %2, align 8
  br label %17

17:                                               ; preds = %13, %9
  %18 = load %struct.tep_event*, %struct.tep_event** %2, align 8
  ret %struct.tep_event* %18
}

declare dso_local i64 @trace_event__init2(...) #1

declare dso_local %struct.tep_event* @ERR_PTR(i32) #1

declare dso_local %struct.tep_event* @tep_find_event(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
