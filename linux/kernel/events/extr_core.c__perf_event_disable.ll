; ModuleID = '/home/carl/AnghaBench/linux/kernel/events/extr_core.c__perf_event_disable.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/events/extr_core.c__perf_event_disable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.perf_event = type { i64, %struct.perf_event_context* }
%struct.perf_event_context = type { i32 }

@PERF_EVENT_STATE_OFF = common dso_local global i64 0, align 8
@__perf_event_disable = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.perf_event*)* @_perf_event_disable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @_perf_event_disable(%struct.perf_event* %0) #0 {
  %2 = alloca %struct.perf_event*, align 8
  %3 = alloca %struct.perf_event_context*, align 8
  store %struct.perf_event* %0, %struct.perf_event** %2, align 8
  %4 = load %struct.perf_event*, %struct.perf_event** %2, align 8
  %5 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %4, i32 0, i32 1
  %6 = load %struct.perf_event_context*, %struct.perf_event_context** %5, align 8
  store %struct.perf_event_context* %6, %struct.perf_event_context** %3, align 8
  %7 = load %struct.perf_event_context*, %struct.perf_event_context** %3, align 8
  %8 = getelementptr inbounds %struct.perf_event_context, %struct.perf_event_context* %7, i32 0, i32 0
  %9 = call i32 @raw_spin_lock_irq(i32* %8)
  %10 = load %struct.perf_event*, %struct.perf_event** %2, align 8
  %11 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @PERF_EVENT_STATE_OFF, align 8
  %14 = icmp sle i64 %12, %13
  br i1 %14, label %15, label %19

15:                                               ; preds = %1
  %16 = load %struct.perf_event_context*, %struct.perf_event_context** %3, align 8
  %17 = getelementptr inbounds %struct.perf_event_context, %struct.perf_event_context* %16, i32 0, i32 0
  %18 = call i32 @raw_spin_unlock_irq(i32* %17)
  br label %26

19:                                               ; preds = %1
  %20 = load %struct.perf_event_context*, %struct.perf_event_context** %3, align 8
  %21 = getelementptr inbounds %struct.perf_event_context, %struct.perf_event_context* %20, i32 0, i32 0
  %22 = call i32 @raw_spin_unlock_irq(i32* %21)
  %23 = load %struct.perf_event*, %struct.perf_event** %2, align 8
  %24 = load i32, i32* @__perf_event_disable, align 4
  %25 = call i32 @event_function_call(%struct.perf_event* %23, i32 %24, i32* null)
  br label %26

26:                                               ; preds = %19, %15
  ret void
}

declare dso_local i32 @raw_spin_lock_irq(i32*) #1

declare dso_local i32 @raw_spin_unlock_irq(i32*) #1

declare dso_local i32 @event_function_call(%struct.perf_event*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
