; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/util/extr_ordered-events.c___dup_event.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/util/extr_ordered-events.c___dup_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ordered_events = type { i64, i64 }
%union.perf_event = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%union.perf_event* (%struct.ordered_events*, %union.perf_event*)* @__dup_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %union.perf_event* @__dup_event(%struct.ordered_events* %0, %union.perf_event* %1) #0 {
  %3 = alloca %struct.ordered_events*, align 8
  %4 = alloca %union.perf_event*, align 8
  %5 = alloca %union.perf_event*, align 8
  store %struct.ordered_events* %0, %struct.ordered_events** %3, align 8
  store %union.perf_event* %1, %union.perf_event** %4, align 8
  store %union.perf_event* null, %union.perf_event** %5, align 8
  %6 = load %struct.ordered_events*, %struct.ordered_events** %3, align 8
  %7 = getelementptr inbounds %struct.ordered_events, %struct.ordered_events* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = load %struct.ordered_events*, %struct.ordered_events** %3, align 8
  %10 = getelementptr inbounds %struct.ordered_events, %struct.ordered_events* %9, i32 0, i32 1
  %11 = load i64, i64* %10, align 8
  %12 = icmp slt i64 %8, %11
  br i1 %12, label %13, label %32

13:                                               ; preds = %2
  %14 = load %union.perf_event*, %union.perf_event** %4, align 8
  %15 = load %union.perf_event*, %union.perf_event** %4, align 8
  %16 = bitcast %union.perf_event* %15 to %struct.TYPE_2__*
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = call %union.perf_event* @memdup(%union.perf_event* %14, i64 %18)
  store %union.perf_event* %19, %union.perf_event** %5, align 8
  %20 = load %union.perf_event*, %union.perf_event** %5, align 8
  %21 = icmp ne %union.perf_event* %20, null
  br i1 %21, label %22, label %31

22:                                               ; preds = %13
  %23 = load %union.perf_event*, %union.perf_event** %4, align 8
  %24 = bitcast %union.perf_event* %23 to %struct.TYPE_2__*
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load %struct.ordered_events*, %struct.ordered_events** %3, align 8
  %28 = getelementptr inbounds %struct.ordered_events, %struct.ordered_events* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = add nsw i64 %29, %26
  store i64 %30, i64* %28, align 8
  br label %31

31:                                               ; preds = %22, %13
  br label %32

32:                                               ; preds = %31, %2
  %33 = load %union.perf_event*, %union.perf_event** %5, align 8
  ret %union.perf_event* %33
}

declare dso_local %union.perf_event* @memdup(%union.perf_event*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
