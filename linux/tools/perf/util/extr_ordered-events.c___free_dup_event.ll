; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/util/extr_ordered-events.c___free_dup_event.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/util/extr_ordered-events.c___free_dup_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ordered_events = type { i32 }
%union.perf_event = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ordered_events*, %union.perf_event*)* @__free_dup_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__free_dup_event(%struct.ordered_events* %0, %union.perf_event* %1) #0 {
  %3 = alloca %struct.ordered_events*, align 8
  %4 = alloca %union.perf_event*, align 8
  store %struct.ordered_events* %0, %struct.ordered_events** %3, align 8
  store %union.perf_event* %1, %union.perf_event** %4, align 8
  %5 = load %union.perf_event*, %union.perf_event** %4, align 8
  %6 = icmp ne %union.perf_event* %5, null
  br i1 %6, label %7, label %20

7:                                                ; preds = %2
  %8 = load %union.perf_event*, %union.perf_event** %4, align 8
  %9 = bitcast %union.perf_event* %8 to %struct.TYPE_2__*
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load %struct.ordered_events*, %struct.ordered_events** %3, align 8
  %13 = getelementptr inbounds %struct.ordered_events, %struct.ordered_events* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = sext i32 %14 to i64
  %16 = sub nsw i64 %15, %11
  %17 = trunc i64 %16 to i32
  store i32 %17, i32* %13, align 4
  %18 = load %union.perf_event*, %union.perf_event** %4, align 8
  %19 = call i32 @free(%union.perf_event* %18)
  br label %20

20:                                               ; preds = %7, %2
  ret void
}

declare dso_local i32 @free(%union.perf_event*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
