; ModuleID = '/home/carl/AnghaBench/linux/kernel/events/extr_core.c_event_filter_match.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/events/extr_core.c_event_filter_match.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.perf_event = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.perf_event*)* @event_filter_match to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @event_filter_match(%struct.perf_event* %0) #0 {
  %2 = alloca %struct.perf_event*, align 8
  store %struct.perf_event* %0, %struct.perf_event** %2, align 8
  %3 = load %struct.perf_event*, %struct.perf_event** %2, align 8
  %4 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %3, i32 0, i32 0
  %5 = load i32, i32* %4, align 4
  %6 = icmp eq i32 %5, -1
  br i1 %6, label %13, label %7

7:                                                ; preds = %1
  %8 = load %struct.perf_event*, %struct.perf_event** %2, align 8
  %9 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = call i32 (...) @smp_processor_id()
  %12 = icmp eq i32 %10, %11
  br i1 %12, label %13, label %21

13:                                               ; preds = %7, %1
  %14 = load %struct.perf_event*, %struct.perf_event** %2, align 8
  %15 = call i64 @perf_cgroup_match(%struct.perf_event* %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %21

17:                                               ; preds = %13
  %18 = load %struct.perf_event*, %struct.perf_event** %2, align 8
  %19 = call i64 @pmu_filter_match(%struct.perf_event* %18)
  %20 = icmp ne i64 %19, 0
  br label %21

21:                                               ; preds = %17, %13, %7
  %22 = phi i1 [ false, %13 ], [ false, %7 ], [ %20, %17 ]
  %23 = zext i1 %22 to i32
  ret i32 %23
}

declare dso_local i32 @smp_processor_id(...) #1

declare dso_local i64 @perf_cgroup_match(%struct.perf_event*) #1

declare dso_local i64 @pmu_filter_match(%struct.perf_event*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
