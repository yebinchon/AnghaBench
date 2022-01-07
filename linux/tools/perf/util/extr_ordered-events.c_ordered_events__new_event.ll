; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/util/extr_ordered-events.c_ordered_events__new_event.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/util/extr_ordered-events.c_ordered_events__new_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ordered_event = type { i32 }
%struct.ordered_events = type { i32 }
%union.perf_event = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.ordered_event* (%struct.ordered_events*, i32, %union.perf_event*)* @ordered_events__new_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.ordered_event* @ordered_events__new_event(%struct.ordered_events* %0, i32 %1, %union.perf_event* %2) #0 {
  %4 = alloca %struct.ordered_events*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %union.perf_event*, align 8
  %7 = alloca %struct.ordered_event*, align 8
  store %struct.ordered_events* %0, %struct.ordered_events** %4, align 8
  store i32 %1, i32* %5, align 4
  store %union.perf_event* %2, %union.perf_event** %6, align 8
  %8 = load %struct.ordered_events*, %struct.ordered_events** %4, align 8
  %9 = load %union.perf_event*, %union.perf_event** %6, align 8
  %10 = call %struct.ordered_event* @alloc_event(%struct.ordered_events* %8, %union.perf_event* %9)
  store %struct.ordered_event* %10, %struct.ordered_event** %7, align 8
  %11 = load %struct.ordered_event*, %struct.ordered_event** %7, align 8
  %12 = icmp ne %struct.ordered_event* %11, null
  br i1 %12, label %13, label %20

13:                                               ; preds = %3
  %14 = load i32, i32* %5, align 4
  %15 = load %struct.ordered_event*, %struct.ordered_event** %7, align 8
  %16 = getelementptr inbounds %struct.ordered_event, %struct.ordered_event* %15, i32 0, i32 0
  store i32 %14, i32* %16, align 4
  %17 = load %struct.ordered_events*, %struct.ordered_events** %4, align 8
  %18 = load %struct.ordered_event*, %struct.ordered_event** %7, align 8
  %19 = call i32 @queue_event(%struct.ordered_events* %17, %struct.ordered_event* %18)
  br label %20

20:                                               ; preds = %13, %3
  %21 = load %struct.ordered_event*, %struct.ordered_event** %7, align 8
  ret %struct.ordered_event* %21
}

declare dso_local %struct.ordered_event* @alloc_event(%struct.ordered_events*, %union.perf_event*) #1

declare dso_local i32 @queue_event(%struct.ordered_events*, %struct.ordered_event*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
