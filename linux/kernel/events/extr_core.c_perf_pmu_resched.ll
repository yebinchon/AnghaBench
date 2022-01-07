; ModuleID = '/home/carl/AnghaBench/linux/kernel/events/extr_core.c_perf_pmu_resched.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/events/extr_core.c_perf_pmu_resched.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pmu = type { i32 }
%struct.perf_cpu_context = type { %struct.perf_event_context* }
%struct.perf_event_context = type { i32 }

@EVENT_ALL = common dso_local global i32 0, align 4
@EVENT_CPU = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @perf_pmu_resched(%struct.pmu* %0) #0 {
  %2 = alloca %struct.pmu*, align 8
  %3 = alloca %struct.perf_cpu_context*, align 8
  %4 = alloca %struct.perf_event_context*, align 8
  store %struct.pmu* %0, %struct.pmu** %2, align 8
  %5 = load %struct.pmu*, %struct.pmu** %2, align 8
  %6 = getelementptr inbounds %struct.pmu, %struct.pmu* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  %8 = call %struct.perf_cpu_context* @this_cpu_ptr(i32 %7)
  store %struct.perf_cpu_context* %8, %struct.perf_cpu_context** %3, align 8
  %9 = load %struct.perf_cpu_context*, %struct.perf_cpu_context** %3, align 8
  %10 = getelementptr inbounds %struct.perf_cpu_context, %struct.perf_cpu_context* %9, i32 0, i32 0
  %11 = load %struct.perf_event_context*, %struct.perf_event_context** %10, align 8
  store %struct.perf_event_context* %11, %struct.perf_event_context** %4, align 8
  %12 = load %struct.perf_cpu_context*, %struct.perf_cpu_context** %3, align 8
  %13 = load %struct.perf_event_context*, %struct.perf_event_context** %4, align 8
  %14 = call i32 @perf_ctx_lock(%struct.perf_cpu_context* %12, %struct.perf_event_context* %13)
  %15 = load %struct.perf_cpu_context*, %struct.perf_cpu_context** %3, align 8
  %16 = load %struct.perf_event_context*, %struct.perf_event_context** %4, align 8
  %17 = load i32, i32* @EVENT_ALL, align 4
  %18 = load i32, i32* @EVENT_CPU, align 4
  %19 = or i32 %17, %18
  %20 = call i32 @ctx_resched(%struct.perf_cpu_context* %15, %struct.perf_event_context* %16, i32 %19)
  %21 = load %struct.perf_cpu_context*, %struct.perf_cpu_context** %3, align 8
  %22 = load %struct.perf_event_context*, %struct.perf_event_context** %4, align 8
  %23 = call i32 @perf_ctx_unlock(%struct.perf_cpu_context* %21, %struct.perf_event_context* %22)
  ret void
}

declare dso_local %struct.perf_cpu_context* @this_cpu_ptr(i32) #1

declare dso_local i32 @perf_ctx_lock(%struct.perf_cpu_context*, %struct.perf_event_context*) #1

declare dso_local i32 @ctx_resched(%struct.perf_cpu_context*, %struct.perf_event_context*, i32) #1

declare dso_local i32 @perf_ctx_unlock(%struct.perf_cpu_context*, %struct.perf_event_context*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
