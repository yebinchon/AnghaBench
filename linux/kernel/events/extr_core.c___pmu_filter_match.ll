; ModuleID = '/home/carl/AnghaBench/linux/kernel/events/extr_core.c___pmu_filter_match.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/events/extr_core.c___pmu_filter_match.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.perf_event = type { %struct.pmu* }
%struct.pmu = type { i32 (%struct.perf_event.0*)* }
%struct.perf_event.0 = type opaque

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.perf_event*)* @__pmu_filter_match to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__pmu_filter_match(%struct.perf_event* %0) #0 {
  %2 = alloca %struct.perf_event*, align 8
  %3 = alloca %struct.pmu*, align 8
  store %struct.perf_event* %0, %struct.perf_event** %2, align 8
  %4 = load %struct.perf_event*, %struct.perf_event** %2, align 8
  %5 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %4, i32 0, i32 0
  %6 = load %struct.pmu*, %struct.pmu** %5, align 8
  store %struct.pmu* %6, %struct.pmu** %3, align 8
  %7 = load %struct.pmu*, %struct.pmu** %3, align 8
  %8 = getelementptr inbounds %struct.pmu, %struct.pmu* %7, i32 0, i32 0
  %9 = load i32 (%struct.perf_event.0*)*, i32 (%struct.perf_event.0*)** %8, align 8
  %10 = icmp ne i32 (%struct.perf_event.0*)* %9, null
  br i1 %10, label %11, label %18

11:                                               ; preds = %1
  %12 = load %struct.pmu*, %struct.pmu** %3, align 8
  %13 = getelementptr inbounds %struct.pmu, %struct.pmu* %12, i32 0, i32 0
  %14 = load i32 (%struct.perf_event.0*)*, i32 (%struct.perf_event.0*)** %13, align 8
  %15 = load %struct.perf_event*, %struct.perf_event** %2, align 8
  %16 = bitcast %struct.perf_event* %15 to %struct.perf_event.0*
  %17 = call i32 %14(%struct.perf_event.0* %16)
  br label %19

18:                                               ; preds = %1
  br label %19

19:                                               ; preds = %18, %11
  %20 = phi i32 [ %17, %11 ], [ 1, %18 ]
  ret i32 %20
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
