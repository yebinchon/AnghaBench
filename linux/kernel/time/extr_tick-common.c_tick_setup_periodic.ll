; ModuleID = '/home/carl/AnghaBench/linux/kernel/time/extr_tick-common.c_tick_setup_periodic.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/time/extr_tick-common.c_tick_setup_periodic.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clock_event_device = type { i32 }

@CLOCK_EVT_FEAT_PERIODIC = common dso_local global i32 0, align 4
@CLOCK_EVT_STATE_PERIODIC = common dso_local global i32 0, align 4
@jiffies_lock = common dso_local global i32 0, align 4
@tick_next_period = common dso_local global i32 0, align 4
@CLOCK_EVT_STATE_ONESHOT = common dso_local global i32 0, align 4
@tick_period = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @tick_setup_periodic(%struct.clock_event_device* %0, i32 %1) #0 {
  %3 = alloca %struct.clock_event_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.clock_event_device* %0, %struct.clock_event_device** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.clock_event_device*, %struct.clock_event_device** %3, align 8
  %8 = load i32, i32* %4, align 4
  %9 = call i32 @tick_set_periodic_handler(%struct.clock_event_device* %7, i32 %8)
  %10 = load %struct.clock_event_device*, %struct.clock_event_device** %3, align 8
  %11 = call i32 @tick_device_is_functional(%struct.clock_event_device* %10)
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %14, label %13

13:                                               ; preds = %2
  br label %50

14:                                               ; preds = %2
  %15 = load %struct.clock_event_device*, %struct.clock_event_device** %3, align 8
  %16 = getelementptr inbounds %struct.clock_event_device, %struct.clock_event_device* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* @CLOCK_EVT_FEAT_PERIODIC, align 4
  %19 = and i32 %17, %18
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %28

21:                                               ; preds = %14
  %22 = call i32 (...) @tick_broadcast_oneshot_active()
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %28, label %24

24:                                               ; preds = %21
  %25 = load %struct.clock_event_device*, %struct.clock_event_device** %3, align 8
  %26 = load i32, i32* @CLOCK_EVT_STATE_PERIODIC, align 4
  %27 = call i32 @clockevents_switch_state(%struct.clock_event_device* %25, i32 %26)
  br label %50

28:                                               ; preds = %21, %14
  br label %29

29:                                               ; preds = %32, %28
  %30 = call i32 @read_seqbegin(i32* @jiffies_lock)
  store i32 %30, i32* %5, align 4
  %31 = load i32, i32* @tick_next_period, align 4
  store i32 %31, i32* %6, align 4
  br label %32

32:                                               ; preds = %29
  %33 = load i32, i32* %5, align 4
  %34 = call i64 @read_seqretry(i32* @jiffies_lock, i32 %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %29, label %36

36:                                               ; preds = %32
  %37 = load %struct.clock_event_device*, %struct.clock_event_device** %3, align 8
  %38 = load i32, i32* @CLOCK_EVT_STATE_ONESHOT, align 4
  %39 = call i32 @clockevents_switch_state(%struct.clock_event_device* %37, i32 %38)
  br label %40

40:                                               ; preds = %46, %36
  %41 = load %struct.clock_event_device*, %struct.clock_event_device** %3, align 8
  %42 = load i32, i32* %6, align 4
  %43 = call i32 @clockevents_program_event(%struct.clock_event_device* %41, i32 %42, i32 0)
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %46, label %45

45:                                               ; preds = %40
  br label %50

46:                                               ; preds = %40
  %47 = load i32, i32* %6, align 4
  %48 = load i32, i32* @tick_period, align 4
  %49 = call i32 @ktime_add(i32 %47, i32 %48)
  store i32 %49, i32* %6, align 4
  br label %40

50:                                               ; preds = %13, %45, %24
  ret void
}

declare dso_local i32 @tick_set_periodic_handler(%struct.clock_event_device*, i32) #1

declare dso_local i32 @tick_device_is_functional(%struct.clock_event_device*) #1

declare dso_local i32 @tick_broadcast_oneshot_active(...) #1

declare dso_local i32 @clockevents_switch_state(%struct.clock_event_device*, i32) #1

declare dso_local i32 @read_seqbegin(i32*) #1

declare dso_local i64 @read_seqretry(i32*, i32) #1

declare dso_local i32 @clockevents_program_event(%struct.clock_event_device*, i32, i32) #1

declare dso_local i32 @ktime_add(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
