; ModuleID = '/home/carl/AnghaBench/linux/kernel/events/extr_core.c_ctx_flexible_sched_in.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/events/extr_core.c_ctx_flexible_sched_in.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.perf_event_context = type { i32 }
%struct.perf_cpu_context = type { i32 }
%struct.sched_in_data = type { i32, %struct.perf_cpu_context*, %struct.perf_event_context* }

@flexible_sched_in = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.perf_event_context*, %struct.perf_cpu_context*)* @ctx_flexible_sched_in to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ctx_flexible_sched_in(%struct.perf_event_context* %0, %struct.perf_cpu_context* %1) #0 {
  %3 = alloca %struct.perf_event_context*, align 8
  %4 = alloca %struct.perf_cpu_context*, align 8
  %5 = alloca %struct.sched_in_data, align 8
  store %struct.perf_event_context* %0, %struct.perf_event_context** %3, align 8
  store %struct.perf_cpu_context* %1, %struct.perf_cpu_context** %4, align 8
  %6 = getelementptr inbounds %struct.sched_in_data, %struct.sched_in_data* %5, i32 0, i32 0
  store i32 1, i32* %6, align 8
  %7 = getelementptr inbounds %struct.sched_in_data, %struct.sched_in_data* %5, i32 0, i32 1
  %8 = load %struct.perf_cpu_context*, %struct.perf_cpu_context** %4, align 8
  store %struct.perf_cpu_context* %8, %struct.perf_cpu_context** %7, align 8
  %9 = getelementptr inbounds %struct.sched_in_data, %struct.sched_in_data* %5, i32 0, i32 2
  %10 = load %struct.perf_event_context*, %struct.perf_event_context** %3, align 8
  store %struct.perf_event_context* %10, %struct.perf_event_context** %9, align 8
  %11 = load %struct.perf_event_context*, %struct.perf_event_context** %3, align 8
  %12 = getelementptr inbounds %struct.perf_event_context, %struct.perf_event_context* %11, i32 0, i32 0
  %13 = call i32 (...) @smp_processor_id()
  %14 = load i32, i32* @flexible_sched_in, align 4
  %15 = call i32 @visit_groups_merge(i32* %12, i32 %13, i32 %14, %struct.sched_in_data* %5)
  ret void
}

declare dso_local i32 @visit_groups_merge(i32*, i32, i32, %struct.sched_in_data*) #1

declare dso_local i32 @smp_processor_id(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
