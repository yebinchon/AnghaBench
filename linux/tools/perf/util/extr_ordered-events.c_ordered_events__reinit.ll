; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/util/extr_ordered-events.c_ordered_events__reinit.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/util/extr_ordered-events.c_ordered_events__reinit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ordered_events = type { i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ordered_events__reinit(%struct.ordered_events* %0) #0 {
  %2 = alloca %struct.ordered_events*, align 8
  %3 = alloca i32, align 4
  store %struct.ordered_events* %0, %struct.ordered_events** %2, align 8
  %4 = load %struct.ordered_events*, %struct.ordered_events** %2, align 8
  %5 = getelementptr inbounds %struct.ordered_events, %struct.ordered_events* %4, i32 0, i32 1
  %6 = load i32, i32* %5, align 4
  store i32 %6, i32* %3, align 4
  %7 = load %struct.ordered_events*, %struct.ordered_events** %2, align 8
  %8 = call i32 @ordered_events__free(%struct.ordered_events* %7)
  %9 = load %struct.ordered_events*, %struct.ordered_events** %2, align 8
  %10 = call i32 @memset(%struct.ordered_events* %9, i8 signext 0, i32 8)
  %11 = load %struct.ordered_events*, %struct.ordered_events** %2, align 8
  %12 = load i32, i32* %3, align 4
  %13 = load %struct.ordered_events*, %struct.ordered_events** %2, align 8
  %14 = getelementptr inbounds %struct.ordered_events, %struct.ordered_events* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @ordered_events__init(%struct.ordered_events* %11, i32 %12, i32 %15)
  ret void
}

declare dso_local i32 @ordered_events__free(%struct.ordered_events*) #1

declare dso_local i32 @memset(%struct.ordered_events*, i8 signext, i32) #1

declare dso_local i32 @ordered_events__init(%struct.ordered_events*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
