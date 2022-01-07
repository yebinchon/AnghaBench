; ModuleID = '/home/carl/AnghaBench/linux/kernel/time/extr_tick-oneshot.c_tick_program_event.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/time/extr_tick-oneshot.c_tick_program_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.clock_event_device = type { i64 }

@tick_cpu_device = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@KTIME_MAX = common dso_local global i64 0, align 8
@CLOCK_EVT_STATE_ONESHOT_STOPPED = common dso_local global i32 0, align 4
@CLOCK_EVT_STATE_ONESHOT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @tick_program_event(i64 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.clock_event_device*, align 8
  store i64 %0, i64* %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @tick_cpu_device, i32 0, i32 0), align 4
  %8 = call %struct.clock_event_device* @__this_cpu_read(i32 %7)
  store %struct.clock_event_device* %8, %struct.clock_event_device** %6, align 8
  %9 = load i64, i64* %4, align 8
  %10 = load i64, i64* @KTIME_MAX, align 8
  %11 = icmp eq i64 %9, %10
  %12 = zext i1 %11 to i32
  %13 = call i64 @unlikely(i32 %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %22

15:                                               ; preds = %2
  %16 = load %struct.clock_event_device*, %struct.clock_event_device** %6, align 8
  %17 = load i32, i32* @CLOCK_EVT_STATE_ONESHOT_STOPPED, align 4
  %18 = call i32 @clockevents_switch_state(%struct.clock_event_device* %16, i32 %17)
  %19 = load i64, i64* @KTIME_MAX, align 8
  %20 = load %struct.clock_event_device*, %struct.clock_event_device** %6, align 8
  %21 = getelementptr inbounds %struct.clock_event_device, %struct.clock_event_device* %20, i32 0, i32 0
  store i64 %19, i64* %21, align 8
  store i32 0, i32* %3, align 4
  br label %36

22:                                               ; preds = %2
  %23 = load %struct.clock_event_device*, %struct.clock_event_device** %6, align 8
  %24 = call i32 @clockevent_state_oneshot_stopped(%struct.clock_event_device* %23)
  %25 = call i64 @unlikely(i32 %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %31

27:                                               ; preds = %22
  %28 = load %struct.clock_event_device*, %struct.clock_event_device** %6, align 8
  %29 = load i32, i32* @CLOCK_EVT_STATE_ONESHOT, align 4
  %30 = call i32 @clockevents_switch_state(%struct.clock_event_device* %28, i32 %29)
  br label %31

31:                                               ; preds = %27, %22
  %32 = load %struct.clock_event_device*, %struct.clock_event_device** %6, align 8
  %33 = load i64, i64* %4, align 8
  %34 = load i32, i32* %5, align 4
  %35 = call i32 @clockevents_program_event(%struct.clock_event_device* %32, i64 %33, i32 %34)
  store i32 %35, i32* %3, align 4
  br label %36

36:                                               ; preds = %31, %15
  %37 = load i32, i32* %3, align 4
  ret i32 %37
}

declare dso_local %struct.clock_event_device* @__this_cpu_read(i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @clockevents_switch_state(%struct.clock_event_device*, i32) #1

declare dso_local i32 @clockevent_state_oneshot_stopped(%struct.clock_event_device*) #1

declare dso_local i32 @clockevents_program_event(%struct.clock_event_device*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
