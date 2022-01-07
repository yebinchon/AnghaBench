; ModuleID = '/home/carl/AnghaBench/linux/kernel/events/extr_core.c___perf_event_disable.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/events/extr_core.c___perf_event_disable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.perf_event = type { i64, %struct.perf_event* }
%struct.perf_cpu_context = type { i32 }
%struct.perf_event_context = type { i32 }

@PERF_EVENT_STATE_INACTIVE = common dso_local global i64 0, align 8
@EVENT_TIME = common dso_local global i32 0, align 4
@PERF_EVENT_STATE_OFF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.perf_event*, %struct.perf_cpu_context*, %struct.perf_event_context*, i8*)* @__perf_event_disable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__perf_event_disable(%struct.perf_event* %0, %struct.perf_cpu_context* %1, %struct.perf_event_context* %2, i8* %3) #0 {
  %5 = alloca %struct.perf_event*, align 8
  %6 = alloca %struct.perf_cpu_context*, align 8
  %7 = alloca %struct.perf_event_context*, align 8
  %8 = alloca i8*, align 8
  store %struct.perf_event* %0, %struct.perf_event** %5, align 8
  store %struct.perf_cpu_context* %1, %struct.perf_cpu_context** %6, align 8
  store %struct.perf_event_context* %2, %struct.perf_event_context** %7, align 8
  store i8* %3, i8** %8, align 8
  %9 = load %struct.perf_event*, %struct.perf_event** %5, align 8
  %10 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* @PERF_EVENT_STATE_INACTIVE, align 8
  %13 = icmp slt i64 %11, %12
  br i1 %13, label %14, label %15

14:                                               ; preds = %4
  br label %47

15:                                               ; preds = %4
  %16 = load %struct.perf_event_context*, %struct.perf_event_context** %7, align 8
  %17 = getelementptr inbounds %struct.perf_event_context, %struct.perf_event_context* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* @EVENT_TIME, align 4
  %20 = and i32 %18, %19
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %27

22:                                               ; preds = %15
  %23 = load %struct.perf_event_context*, %struct.perf_event_context** %7, align 8
  %24 = call i32 @update_context_time(%struct.perf_event_context* %23)
  %25 = load %struct.perf_event*, %struct.perf_event** %5, align 8
  %26 = call i32 @update_cgrp_time_from_event(%struct.perf_event* %25)
  br label %27

27:                                               ; preds = %22, %15
  %28 = load %struct.perf_event*, %struct.perf_event** %5, align 8
  %29 = load %struct.perf_event*, %struct.perf_event** %5, align 8
  %30 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %29, i32 0, i32 1
  %31 = load %struct.perf_event*, %struct.perf_event** %30, align 8
  %32 = icmp eq %struct.perf_event* %28, %31
  br i1 %32, label %33, label %38

33:                                               ; preds = %27
  %34 = load %struct.perf_event*, %struct.perf_event** %5, align 8
  %35 = load %struct.perf_cpu_context*, %struct.perf_cpu_context** %6, align 8
  %36 = load %struct.perf_event_context*, %struct.perf_event_context** %7, align 8
  %37 = call i32 @group_sched_out(%struct.perf_event* %34, %struct.perf_cpu_context* %35, %struct.perf_event_context* %36)
  br label %43

38:                                               ; preds = %27
  %39 = load %struct.perf_event*, %struct.perf_event** %5, align 8
  %40 = load %struct.perf_cpu_context*, %struct.perf_cpu_context** %6, align 8
  %41 = load %struct.perf_event_context*, %struct.perf_event_context** %7, align 8
  %42 = call i32 @event_sched_out(%struct.perf_event* %39, %struct.perf_cpu_context* %40, %struct.perf_event_context* %41)
  br label %43

43:                                               ; preds = %38, %33
  %44 = load %struct.perf_event*, %struct.perf_event** %5, align 8
  %45 = load i32, i32* @PERF_EVENT_STATE_OFF, align 4
  %46 = call i32 @perf_event_set_state(%struct.perf_event* %44, i32 %45)
  br label %47

47:                                               ; preds = %43, %14
  ret void
}

declare dso_local i32 @update_context_time(%struct.perf_event_context*) #1

declare dso_local i32 @update_cgrp_time_from_event(%struct.perf_event*) #1

declare dso_local i32 @group_sched_out(%struct.perf_event*, %struct.perf_cpu_context*, %struct.perf_event_context*) #1

declare dso_local i32 @event_sched_out(%struct.perf_event*, %struct.perf_cpu_context*, %struct.perf_event_context*) #1

declare dso_local i32 @perf_event_set_state(%struct.perf_event*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
