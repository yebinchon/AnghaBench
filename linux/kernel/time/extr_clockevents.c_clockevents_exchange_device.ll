; ModuleID = '/home/carl/AnghaBench/linux/kernel/time/extr_clockevents.c_clockevents_exchange_device.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/time/extr_clockevents.c_clockevents_exchange_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clock_event_device = type { i32, i32 }

@CLOCK_EVT_STATE_DETACHED = common dso_local global i32 0, align 4
@clockevents_released = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @clockevents_exchange_device(%struct.clock_event_device* %0, %struct.clock_event_device* %1) #0 {
  %3 = alloca %struct.clock_event_device*, align 8
  %4 = alloca %struct.clock_event_device*, align 8
  store %struct.clock_event_device* %0, %struct.clock_event_device** %3, align 8
  store %struct.clock_event_device* %1, %struct.clock_event_device** %4, align 8
  %5 = load %struct.clock_event_device*, %struct.clock_event_device** %3, align 8
  %6 = icmp ne %struct.clock_event_device* %5, null
  br i1 %6, label %7, label %21

7:                                                ; preds = %2
  %8 = load %struct.clock_event_device*, %struct.clock_event_device** %3, align 8
  %9 = getelementptr inbounds %struct.clock_event_device, %struct.clock_event_device* %8, i32 0, i32 1
  %10 = load i32, i32* %9, align 4
  %11 = call i32 @module_put(i32 %10)
  %12 = load %struct.clock_event_device*, %struct.clock_event_device** %3, align 8
  %13 = load i32, i32* @CLOCK_EVT_STATE_DETACHED, align 4
  %14 = call i32 @clockevents_switch_state(%struct.clock_event_device* %12, i32 %13)
  %15 = load %struct.clock_event_device*, %struct.clock_event_device** %3, align 8
  %16 = getelementptr inbounds %struct.clock_event_device, %struct.clock_event_device* %15, i32 0, i32 0
  %17 = call i32 @list_del(i32* %16)
  %18 = load %struct.clock_event_device*, %struct.clock_event_device** %3, align 8
  %19 = getelementptr inbounds %struct.clock_event_device, %struct.clock_event_device* %18, i32 0, i32 0
  %20 = call i32 @list_add(i32* %19, i32* @clockevents_released)
  br label %21

21:                                               ; preds = %7, %2
  %22 = load %struct.clock_event_device*, %struct.clock_event_device** %4, align 8
  %23 = icmp ne %struct.clock_event_device* %22, null
  br i1 %23, label %24, label %33

24:                                               ; preds = %21
  %25 = load %struct.clock_event_device*, %struct.clock_event_device** %4, align 8
  %26 = call i32 @clockevent_state_detached(%struct.clock_event_device* %25)
  %27 = icmp ne i32 %26, 0
  %28 = xor i1 %27, true
  %29 = zext i1 %28 to i32
  %30 = call i32 @BUG_ON(i32 %29)
  %31 = load %struct.clock_event_device*, %struct.clock_event_device** %4, align 8
  %32 = call i32 @clockevents_shutdown(%struct.clock_event_device* %31)
  br label %33

33:                                               ; preds = %24, %21
  ret void
}

declare dso_local i32 @module_put(i32) #1

declare dso_local i32 @clockevents_switch_state(%struct.clock_event_device*, i32) #1

declare dso_local i32 @list_del(i32*) #1

declare dso_local i32 @list_add(i32*, i32*) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @clockevent_state_detached(%struct.clock_event_device*) #1

declare dso_local i32 @clockevents_shutdown(%struct.clock_event_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
