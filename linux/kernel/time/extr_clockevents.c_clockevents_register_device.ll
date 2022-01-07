; ModuleID = '/home/carl/AnghaBench/linux/kernel/time/extr_clockevents.c_clockevents_register_device.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/time/extr_clockevents.c_clockevents_register_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clock_event_device = type { i64, i32, i32 }

@CLOCK_EVT_STATE_DETACHED = common dso_local global i32 0, align 4
@cpu_all_mask = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [61 x i8] c"%s cpumask == cpu_all_mask, using cpu_possible_mask instead\0A\00", align 1
@cpu_possible_mask = common dso_local global i64 0, align 8
@clockevents_lock = common dso_local global i32 0, align 4
@clockevent_devices = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @clockevents_register_device(%struct.clock_event_device* %0) #0 {
  %2 = alloca %struct.clock_event_device*, align 8
  %3 = alloca i64, align 8
  store %struct.clock_event_device* %0, %struct.clock_event_device** %2, align 8
  %4 = load %struct.clock_event_device*, %struct.clock_event_device** %2, align 8
  %5 = load i32, i32* @CLOCK_EVT_STATE_DETACHED, align 4
  %6 = call i32 @clockevent_set_state(%struct.clock_event_device* %4, i32 %5)
  %7 = load %struct.clock_event_device*, %struct.clock_event_device** %2, align 8
  %8 = getelementptr inbounds %struct.clock_event_device, %struct.clock_event_device* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %20, label %11

11:                                               ; preds = %1
  %12 = call i32 (...) @num_possible_cpus()
  %13 = icmp sgt i32 %12, 1
  %14 = zext i1 %13 to i32
  %15 = call i32 @WARN_ON(i32 %14)
  %16 = call i32 (...) @smp_processor_id()
  %17 = call i64 @cpumask_of(i32 %16)
  %18 = load %struct.clock_event_device*, %struct.clock_event_device** %2, align 8
  %19 = getelementptr inbounds %struct.clock_event_device, %struct.clock_event_device* %18, i32 0, i32 0
  store i64 %17, i64* %19, align 8
  br label %20

20:                                               ; preds = %11, %1
  %21 = load %struct.clock_event_device*, %struct.clock_event_device** %2, align 8
  %22 = getelementptr inbounds %struct.clock_event_device, %struct.clock_event_device* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @cpu_all_mask, align 8
  %25 = icmp eq i64 %23, %24
  br i1 %25, label %26, label %34

26:                                               ; preds = %20
  %27 = load %struct.clock_event_device*, %struct.clock_event_device** %2, align 8
  %28 = getelementptr inbounds %struct.clock_event_device, %struct.clock_event_device* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @WARN(i32 1, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str, i64 0, i64 0), i32 %29)
  %31 = load i64, i64* @cpu_possible_mask, align 8
  %32 = load %struct.clock_event_device*, %struct.clock_event_device** %2, align 8
  %33 = getelementptr inbounds %struct.clock_event_device, %struct.clock_event_device* %32, i32 0, i32 0
  store i64 %31, i64* %33, align 8
  br label %34

34:                                               ; preds = %26, %20
  %35 = load i64, i64* %3, align 8
  %36 = call i32 @raw_spin_lock_irqsave(i32* @clockevents_lock, i64 %35)
  %37 = load %struct.clock_event_device*, %struct.clock_event_device** %2, align 8
  %38 = getelementptr inbounds %struct.clock_event_device, %struct.clock_event_device* %37, i32 0, i32 1
  %39 = call i32 @list_add(i32* %38, i32* @clockevent_devices)
  %40 = load %struct.clock_event_device*, %struct.clock_event_device** %2, align 8
  %41 = call i32 @tick_check_new_device(%struct.clock_event_device* %40)
  %42 = call i32 (...) @clockevents_notify_released()
  %43 = load i64, i64* %3, align 8
  %44 = call i32 @raw_spin_unlock_irqrestore(i32* @clockevents_lock, i64 %43)
  ret void
}

declare dso_local i32 @clockevent_set_state(%struct.clock_event_device*, i32) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @num_possible_cpus(...) #1

declare dso_local i64 @cpumask_of(i32) #1

declare dso_local i32 @smp_processor_id(...) #1

declare dso_local i32 @WARN(i32, i8*, i32) #1

declare dso_local i32 @raw_spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @list_add(i32*, i32*) #1

declare dso_local i32 @tick_check_new_device(%struct.clock_event_device*) #1

declare dso_local i32 @clockevents_notify_released(...) #1

declare dso_local i32 @raw_spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
