; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/util/extr_ordered-events.c_ordered_events__delete.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/util/extr_ordered-events.c_ordered_events__delete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ordered_events = type { i32, i32 }
%struct.ordered_event = type { i32*, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ordered_events__delete(%struct.ordered_events* %0, %struct.ordered_event* %1) #0 {
  %3 = alloca %struct.ordered_events*, align 8
  %4 = alloca %struct.ordered_event*, align 8
  store %struct.ordered_events* %0, %struct.ordered_events** %3, align 8
  store %struct.ordered_event* %1, %struct.ordered_event** %4, align 8
  %5 = load %struct.ordered_event*, %struct.ordered_event** %4, align 8
  %6 = getelementptr inbounds %struct.ordered_event, %struct.ordered_event* %5, i32 0, i32 1
  %7 = load %struct.ordered_events*, %struct.ordered_events** %3, align 8
  %8 = getelementptr inbounds %struct.ordered_events, %struct.ordered_events* %7, i32 0, i32 1
  %9 = call i32 @list_move(i32* %6, i32* %8)
  %10 = load %struct.ordered_events*, %struct.ordered_events** %3, align 8
  %11 = getelementptr inbounds %struct.ordered_events, %struct.ordered_events* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = add nsw i32 %12, -1
  store i32 %13, i32* %11, align 4
  %14 = load %struct.ordered_events*, %struct.ordered_events** %3, align 8
  %15 = load %struct.ordered_event*, %struct.ordered_event** %4, align 8
  %16 = getelementptr inbounds %struct.ordered_event, %struct.ordered_event* %15, i32 0, i32 0
  %17 = load i32*, i32** %16, align 8
  %18 = call i32 @free_dup_event(%struct.ordered_events* %14, i32* %17)
  %19 = load %struct.ordered_event*, %struct.ordered_event** %4, align 8
  %20 = getelementptr inbounds %struct.ordered_event, %struct.ordered_event* %19, i32 0, i32 0
  store i32* null, i32** %20, align 8
  ret void
}

declare dso_local i32 @list_move(i32*, i32*) #1

declare dso_local i32 @free_dup_event(%struct.ordered_events*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
