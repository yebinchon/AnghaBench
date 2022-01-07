; ModuleID = '/home/carl/AnghaBench/linux/kernel/time/extr_clockevents.c___clockevents_update_freq.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/time/extr_clockevents.c___clockevents_update_freq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clock_event_device = type { i32 }

@CLOCK_EVT_STATE_PERIODIC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @__clockevents_update_freq(%struct.clock_event_device* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.clock_event_device*, align 8
  %5 = alloca i32, align 4
  store %struct.clock_event_device* %0, %struct.clock_event_device** %4, align 8
  store i32 %1, i32* %5, align 4
  %6 = load %struct.clock_event_device*, %struct.clock_event_device** %4, align 8
  %7 = load i32, i32* %5, align 4
  %8 = call i32 @clockevents_config(%struct.clock_event_device* %6, i32 %7)
  %9 = load %struct.clock_event_device*, %struct.clock_event_device** %4, align 8
  %10 = call i64 @clockevent_state_oneshot(%struct.clock_event_device* %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %18

12:                                               ; preds = %2
  %13 = load %struct.clock_event_device*, %struct.clock_event_device** %4, align 8
  %14 = load %struct.clock_event_device*, %struct.clock_event_device** %4, align 8
  %15 = getelementptr inbounds %struct.clock_event_device, %struct.clock_event_device* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @clockevents_program_event(%struct.clock_event_device* %13, i32 %16, i32 0)
  store i32 %17, i32* %3, align 4
  br label %27

18:                                               ; preds = %2
  %19 = load %struct.clock_event_device*, %struct.clock_event_device** %4, align 8
  %20 = call i64 @clockevent_state_periodic(%struct.clock_event_device* %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %26

22:                                               ; preds = %18
  %23 = load %struct.clock_event_device*, %struct.clock_event_device** %4, align 8
  %24 = load i32, i32* @CLOCK_EVT_STATE_PERIODIC, align 4
  %25 = call i32 @__clockevents_switch_state(%struct.clock_event_device* %23, i32 %24)
  store i32 %25, i32* %3, align 4
  br label %27

26:                                               ; preds = %18
  store i32 0, i32* %3, align 4
  br label %27

27:                                               ; preds = %26, %22, %12
  %28 = load i32, i32* %3, align 4
  ret i32 %28
}

declare dso_local i32 @clockevents_config(%struct.clock_event_device*, i32) #1

declare dso_local i64 @clockevent_state_oneshot(%struct.clock_event_device*) #1

declare dso_local i32 @clockevents_program_event(%struct.clock_event_device*, i32, i32) #1

declare dso_local i64 @clockevent_state_periodic(%struct.clock_event_device*) #1

declare dso_local i32 @__clockevents_switch_state(%struct.clock_event_device*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
