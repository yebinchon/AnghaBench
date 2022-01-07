; ModuleID = '/home/carl/AnghaBench/linux/kernel/time/extr_tick-broadcast.c_tick_handle_periodic_broadcast.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/time/extr_tick-broadcast.c_tick_handle_periodic_broadcast.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }
%struct.clock_event_device = type { i32 }
%struct.tick_device = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 (%struct.TYPE_4__*)* }

@tick_cpu_device = common dso_local global i32 0, align 4
@tick_broadcast_lock = common dso_local global i32 0, align 4
@tick_broadcast_device = common dso_local global %struct.TYPE_3__ zeroinitializer, align 4
@tick_period = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.clock_event_device*)* @tick_handle_periodic_broadcast to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tick_handle_periodic_broadcast(%struct.clock_event_device* %0) #0 {
  %2 = alloca %struct.clock_event_device*, align 8
  %3 = alloca %struct.tick_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.clock_event_device* %0, %struct.clock_event_device** %2, align 8
  %6 = call %struct.tick_device* @this_cpu_ptr(i32* @tick_cpu_device)
  store %struct.tick_device* %6, %struct.tick_device** %3, align 8
  %7 = call i32 @raw_spin_lock(i32* @tick_broadcast_lock)
  %8 = load i32, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @tick_broadcast_device, i32 0, i32 0), align 4
  %9 = call i64 @clockevent_state_shutdown(i32 %8)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %13

11:                                               ; preds = %1
  %12 = call i32 @raw_spin_unlock(i32* @tick_broadcast_lock)
  br label %41

13:                                               ; preds = %1
  %14 = call i32 (...) @tick_do_periodic_broadcast()
  store i32 %14, i32* %4, align 4
  %15 = load %struct.clock_event_device*, %struct.clock_event_device** %2, align 8
  %16 = call i64 @clockevent_state_oneshot(%struct.clock_event_device* %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %27

18:                                               ; preds = %13
  %19 = load %struct.clock_event_device*, %struct.clock_event_device** %2, align 8
  %20 = getelementptr inbounds %struct.clock_event_device, %struct.clock_event_device* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* @tick_period, align 4
  %23 = call i32 @ktime_add(i32 %21, i32 %22)
  store i32 %23, i32* %5, align 4
  %24 = load %struct.clock_event_device*, %struct.clock_event_device** %2, align 8
  %25 = load i32, i32* %5, align 4
  %26 = call i32 @clockevents_program_event(%struct.clock_event_device* %24, i32 %25, i32 1)
  br label %27

27:                                               ; preds = %18, %13
  %28 = call i32 @raw_spin_unlock(i32* @tick_broadcast_lock)
  %29 = load i32, i32* %4, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %41

31:                                               ; preds = %27
  %32 = load %struct.tick_device*, %struct.tick_device** %3, align 8
  %33 = getelementptr inbounds %struct.tick_device, %struct.tick_device* %32, i32 0, i32 0
  %34 = load %struct.TYPE_4__*, %struct.TYPE_4__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 0
  %36 = load i32 (%struct.TYPE_4__*)*, i32 (%struct.TYPE_4__*)** %35, align 8
  %37 = load %struct.tick_device*, %struct.tick_device** %3, align 8
  %38 = getelementptr inbounds %struct.tick_device, %struct.tick_device* %37, i32 0, i32 0
  %39 = load %struct.TYPE_4__*, %struct.TYPE_4__** %38, align 8
  %40 = call i32 %36(%struct.TYPE_4__* %39)
  br label %41

41:                                               ; preds = %11, %31, %27
  ret void
}

declare dso_local %struct.tick_device* @this_cpu_ptr(i32*) #1

declare dso_local i32 @raw_spin_lock(i32*) #1

declare dso_local i64 @clockevent_state_shutdown(i32) #1

declare dso_local i32 @raw_spin_unlock(i32*) #1

declare dso_local i32 @tick_do_periodic_broadcast(...) #1

declare dso_local i64 @clockevent_state_oneshot(%struct.clock_event_device*) #1

declare dso_local i32 @ktime_add(i32, i32) #1

declare dso_local i32 @clockevents_program_event(%struct.clock_event_device*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
