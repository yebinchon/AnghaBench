; ModuleID = '/home/carl/AnghaBench/linux/kernel/events/extr_core.c__perf_event_enable.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/events/extr_core.c__perf_event_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.perf_event = type { i64, %struct.perf_event_context* }
%struct.perf_event_context = type { i32 }

@PERF_EVENT_STATE_INACTIVE = common dso_local global i64 0, align 8
@PERF_EVENT_STATE_ERROR = common dso_local global i64 0, align 8
@PERF_EVENT_STATE_OFF = common dso_local global i64 0, align 8
@__perf_event_enable = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.perf_event*)* @_perf_event_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @_perf_event_enable(%struct.perf_event* %0) #0 {
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
  %13 = load i64, i64* @PERF_EVENT_STATE_INACTIVE, align 8
  %14 = icmp sge i64 %12, %13
  br i1 %14, label %21, label %15

15:                                               ; preds = %1
  %16 = load %struct.perf_event*, %struct.perf_event** %2, align 8
  %17 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @PERF_EVENT_STATE_ERROR, align 8
  %20 = icmp slt i64 %18, %19
  br i1 %20, label %21, label %25

21:                                               ; preds = %15, %1
  %22 = load %struct.perf_event_context*, %struct.perf_event_context** %3, align 8
  %23 = getelementptr inbounds %struct.perf_event_context, %struct.perf_event_context* %22, i32 0, i32 0
  %24 = call i32 @raw_spin_unlock_irq(i32* %23)
  br label %42

25:                                               ; preds = %15
  %26 = load %struct.perf_event*, %struct.perf_event** %2, align 8
  %27 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @PERF_EVENT_STATE_ERROR, align 8
  %30 = icmp eq i64 %28, %29
  br i1 %30, label %31, label %35

31:                                               ; preds = %25
  %32 = load i64, i64* @PERF_EVENT_STATE_OFF, align 8
  %33 = load %struct.perf_event*, %struct.perf_event** %2, align 8
  %34 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %33, i32 0, i32 0
  store i64 %32, i64* %34, align 8
  br label %35

35:                                               ; preds = %31, %25
  %36 = load %struct.perf_event_context*, %struct.perf_event_context** %3, align 8
  %37 = getelementptr inbounds %struct.perf_event_context, %struct.perf_event_context* %36, i32 0, i32 0
  %38 = call i32 @raw_spin_unlock_irq(i32* %37)
  %39 = load %struct.perf_event*, %struct.perf_event** %2, align 8
  %40 = load i32, i32* @__perf_event_enable, align 4
  %41 = call i32 @event_function_call(%struct.perf_event* %39, i32 %40, i32* null)
  br label %42

42:                                               ; preds = %35, %21
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
