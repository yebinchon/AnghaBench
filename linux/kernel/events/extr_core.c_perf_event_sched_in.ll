; ModuleID = '/home/carl/AnghaBench/linux/kernel/events/extr_core.c_perf_event_sched_in.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/events/extr_core.c_perf_event_sched_in.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.perf_cpu_context = type { i32 }
%struct.perf_event_context = type { i32 }
%struct.task_struct = type { i32 }

@EVENT_PINNED = common dso_local global i32 0, align 4
@EVENT_FLEXIBLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.perf_cpu_context*, %struct.perf_event_context*, %struct.task_struct*)* @perf_event_sched_in to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @perf_event_sched_in(%struct.perf_cpu_context* %0, %struct.perf_event_context* %1, %struct.task_struct* %2) #0 {
  %4 = alloca %struct.perf_cpu_context*, align 8
  %5 = alloca %struct.perf_event_context*, align 8
  %6 = alloca %struct.task_struct*, align 8
  store %struct.perf_cpu_context* %0, %struct.perf_cpu_context** %4, align 8
  store %struct.perf_event_context* %1, %struct.perf_event_context** %5, align 8
  store %struct.task_struct* %2, %struct.task_struct** %6, align 8
  %7 = load %struct.perf_cpu_context*, %struct.perf_cpu_context** %4, align 8
  %8 = load i32, i32* @EVENT_PINNED, align 4
  %9 = load %struct.task_struct*, %struct.task_struct** %6, align 8
  %10 = call i32 @cpu_ctx_sched_in(%struct.perf_cpu_context* %7, i32 %8, %struct.task_struct* %9)
  %11 = load %struct.perf_event_context*, %struct.perf_event_context** %5, align 8
  %12 = icmp ne %struct.perf_event_context* %11, null
  br i1 %12, label %13, label %19

13:                                               ; preds = %3
  %14 = load %struct.perf_event_context*, %struct.perf_event_context** %5, align 8
  %15 = load %struct.perf_cpu_context*, %struct.perf_cpu_context** %4, align 8
  %16 = load i32, i32* @EVENT_PINNED, align 4
  %17 = load %struct.task_struct*, %struct.task_struct** %6, align 8
  %18 = call i32 @ctx_sched_in(%struct.perf_event_context* %14, %struct.perf_cpu_context* %15, i32 %16, %struct.task_struct* %17)
  br label %19

19:                                               ; preds = %13, %3
  %20 = load %struct.perf_cpu_context*, %struct.perf_cpu_context** %4, align 8
  %21 = load i32, i32* @EVENT_FLEXIBLE, align 4
  %22 = load %struct.task_struct*, %struct.task_struct** %6, align 8
  %23 = call i32 @cpu_ctx_sched_in(%struct.perf_cpu_context* %20, i32 %21, %struct.task_struct* %22)
  %24 = load %struct.perf_event_context*, %struct.perf_event_context** %5, align 8
  %25 = icmp ne %struct.perf_event_context* %24, null
  br i1 %25, label %26, label %32

26:                                               ; preds = %19
  %27 = load %struct.perf_event_context*, %struct.perf_event_context** %5, align 8
  %28 = load %struct.perf_cpu_context*, %struct.perf_cpu_context** %4, align 8
  %29 = load i32, i32* @EVENT_FLEXIBLE, align 4
  %30 = load %struct.task_struct*, %struct.task_struct** %6, align 8
  %31 = call i32 @ctx_sched_in(%struct.perf_event_context* %27, %struct.perf_cpu_context* %28, i32 %29, %struct.task_struct* %30)
  br label %32

32:                                               ; preds = %26, %19
  ret void
}

declare dso_local i32 @cpu_ctx_sched_in(%struct.perf_cpu_context*, i32, %struct.task_struct*) #1

declare dso_local i32 @ctx_sched_in(%struct.perf_event_context*, %struct.perf_cpu_context*, i32, %struct.task_struct*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
