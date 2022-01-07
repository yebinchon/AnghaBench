; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/util/extr_ordered-events.c_dup_event.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/util/extr_ordered-events.c_dup_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ordered_events = type { i64 }
%union.perf_event = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%union.perf_event* (%struct.ordered_events*, %union.perf_event*)* @dup_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %union.perf_event* @dup_event(%struct.ordered_events* %0, %union.perf_event* %1) #0 {
  %3 = alloca %struct.ordered_events*, align 8
  %4 = alloca %union.perf_event*, align 8
  store %struct.ordered_events* %0, %struct.ordered_events** %3, align 8
  store %union.perf_event* %1, %union.perf_event** %4, align 8
  %5 = load %struct.ordered_events*, %struct.ordered_events** %3, align 8
  %6 = getelementptr inbounds %struct.ordered_events, %struct.ordered_events* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %13

9:                                                ; preds = %2
  %10 = load %struct.ordered_events*, %struct.ordered_events** %3, align 8
  %11 = load %union.perf_event*, %union.perf_event** %4, align 8
  %12 = call %union.perf_event* @__dup_event(%struct.ordered_events* %10, %union.perf_event* %11)
  br label %15

13:                                               ; preds = %2
  %14 = load %union.perf_event*, %union.perf_event** %4, align 8
  br label %15

15:                                               ; preds = %13, %9
  %16 = phi %union.perf_event* [ %12, %9 ], [ %14, %13 ]
  ret %union.perf_event* %16
}

declare dso_local %union.perf_event* @__dup_event(%struct.ordered_events*, %union.perf_event*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
