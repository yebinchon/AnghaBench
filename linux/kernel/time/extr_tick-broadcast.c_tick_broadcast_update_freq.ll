; ModuleID = '/home/carl/AnghaBench/linux/kernel/time/extr_tick-broadcast.c_tick_broadcast_update_freq.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/time/extr_tick-broadcast.c_tick_broadcast_update_freq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clock_event_device = type { i32 }

@ENODEV = common dso_local global i32 0, align 4
@tick_broadcast_lock = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @tick_broadcast_update_freq(%struct.clock_event_device* %0, i32 %1) #0 {
  %3 = alloca %struct.clock_event_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.clock_event_device* %0, %struct.clock_event_device** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load i32, i32* @ENODEV, align 4
  %7 = sub nsw i32 0, %6
  store i32 %7, i32* %5, align 4
  %8 = load %struct.clock_event_device*, %struct.clock_event_device** %3, align 8
  %9 = call i64 @tick_is_broadcast_device(%struct.clock_event_device* %8)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %17

11:                                               ; preds = %2
  %12 = call i32 @raw_spin_lock(i32* @tick_broadcast_lock)
  %13 = load %struct.clock_event_device*, %struct.clock_event_device** %3, align 8
  %14 = load i32, i32* %4, align 4
  %15 = call i32 @__clockevents_update_freq(%struct.clock_event_device* %13, i32 %14)
  store i32 %15, i32* %5, align 4
  %16 = call i32 @raw_spin_unlock(i32* @tick_broadcast_lock)
  br label %17

17:                                               ; preds = %11, %2
  %18 = load i32, i32* %5, align 4
  ret i32 %18
}

declare dso_local i64 @tick_is_broadcast_device(%struct.clock_event_device*) #1

declare dso_local i32 @raw_spin_lock(i32*) #1

declare dso_local i32 @__clockevents_update_freq(%struct.clock_event_device*, i32) #1

declare dso_local i32 @raw_spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
