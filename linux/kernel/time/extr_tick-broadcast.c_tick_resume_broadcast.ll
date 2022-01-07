; ModuleID = '/home/carl/AnghaBench/linux/kernel/time/extr_tick-broadcast.c_tick_resume_broadcast.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/time/extr_tick-broadcast.c_tick_resume_broadcast.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, %struct.clock_event_device* }
%struct.clock_event_device = type { i32 }

@tick_broadcast_lock = common dso_local global i32 0, align 4
@tick_broadcast_device = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@tick_broadcast_mask = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @tick_resume_broadcast() #0 {
  %1 = alloca %struct.clock_event_device*, align 8
  %2 = alloca i64, align 8
  %3 = load i64, i64* %2, align 8
  %4 = call i32 @raw_spin_lock_irqsave(i32* @tick_broadcast_lock, i64 %3)
  %5 = load %struct.clock_event_device*, %struct.clock_event_device** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @tick_broadcast_device, i32 0, i32 1), align 8
  store %struct.clock_event_device* %5, %struct.clock_event_device** %1, align 8
  %6 = load %struct.clock_event_device*, %struct.clock_event_device** %1, align 8
  %7 = icmp ne %struct.clock_event_device* %6, null
  br i1 %7, label %8, label %29

8:                                                ; preds = %0
  %9 = load %struct.clock_event_device*, %struct.clock_event_device** %1, align 8
  %10 = call i32 @clockevents_tick_resume(%struct.clock_event_device* %9)
  %11 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @tick_broadcast_device, i32 0, i32 0), align 8
  switch i32 %11, label %28 [
    i32 128, label %12
    i32 129, label %20
  ]

12:                                               ; preds = %8
  %13 = load i32, i32* @tick_broadcast_mask, align 4
  %14 = call i32 @cpumask_empty(i32 %13)
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %19, label %16

16:                                               ; preds = %12
  %17 = load %struct.clock_event_device*, %struct.clock_event_device** %1, align 8
  %18 = call i32 @tick_broadcast_start_periodic(%struct.clock_event_device* %17)
  br label %19

19:                                               ; preds = %16, %12
  br label %28

20:                                               ; preds = %8
  %21 = load i32, i32* @tick_broadcast_mask, align 4
  %22 = call i32 @cpumask_empty(i32 %21)
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %27, label %24

24:                                               ; preds = %20
  %25 = load %struct.clock_event_device*, %struct.clock_event_device** %1, align 8
  %26 = call i32 @tick_resume_broadcast_oneshot(%struct.clock_event_device* %25)
  br label %27

27:                                               ; preds = %24, %20
  br label %28

28:                                               ; preds = %8, %27, %19
  br label %29

29:                                               ; preds = %28, %0
  %30 = load i64, i64* %2, align 8
  %31 = call i32 @raw_spin_unlock_irqrestore(i32* @tick_broadcast_lock, i64 %30)
  ret void
}

declare dso_local i32 @raw_spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @clockevents_tick_resume(%struct.clock_event_device*) #1

declare dso_local i32 @cpumask_empty(i32) #1

declare dso_local i32 @tick_broadcast_start_periodic(%struct.clock_event_device*) #1

declare dso_local i32 @tick_resume_broadcast_oneshot(%struct.clock_event_device*) #1

declare dso_local i32 @raw_spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
