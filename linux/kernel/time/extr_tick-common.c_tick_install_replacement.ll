; ModuleID = '/home/carl/AnghaBench/linux/kernel/time/extr_tick-common.c_tick_install_replacement.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/time/extr_tick-common.c_tick_install_replacement.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clock_event_device = type { i32 }
%struct.tick_device = type { i32 }

@tick_cpu_device = common dso_local global i32 0, align 4
@CLOCK_EVT_FEAT_ONESHOT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @tick_install_replacement(%struct.clock_event_device* %0) #0 {
  %2 = alloca %struct.clock_event_device*, align 8
  %3 = alloca %struct.tick_device*, align 8
  %4 = alloca i32, align 4
  store %struct.clock_event_device* %0, %struct.clock_event_device** %2, align 8
  %5 = call %struct.tick_device* @this_cpu_ptr(i32* @tick_cpu_device)
  store %struct.tick_device* %5, %struct.tick_device** %3, align 8
  %6 = call i32 (...) @smp_processor_id()
  store i32 %6, i32* %4, align 4
  %7 = load %struct.tick_device*, %struct.tick_device** %3, align 8
  %8 = getelementptr inbounds %struct.tick_device, %struct.tick_device* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = load %struct.clock_event_device*, %struct.clock_event_device** %2, align 8
  %11 = call i32 @clockevents_exchange_device(i32 %9, %struct.clock_event_device* %10)
  %12 = load %struct.tick_device*, %struct.tick_device** %3, align 8
  %13 = load %struct.clock_event_device*, %struct.clock_event_device** %2, align 8
  %14 = load i32, i32* %4, align 4
  %15 = load i32, i32* %4, align 4
  %16 = call i32 @cpumask_of(i32 %15)
  %17 = call i32 @tick_setup_device(%struct.tick_device* %12, %struct.clock_event_device* %13, i32 %14, i32 %16)
  %18 = load %struct.clock_event_device*, %struct.clock_event_device** %2, align 8
  %19 = getelementptr inbounds %struct.clock_event_device, %struct.clock_event_device* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* @CLOCK_EVT_FEAT_ONESHOT, align 4
  %22 = and i32 %20, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %1
  %25 = call i32 (...) @tick_oneshot_notify()
  br label %26

26:                                               ; preds = %24, %1
  ret void
}

declare dso_local %struct.tick_device* @this_cpu_ptr(i32*) #1

declare dso_local i32 @smp_processor_id(...) #1

declare dso_local i32 @clockevents_exchange_device(i32, %struct.clock_event_device*) #1

declare dso_local i32 @tick_setup_device(%struct.tick_device*, %struct.clock_event_device*, i32, i32) #1

declare dso_local i32 @cpumask_of(i32) #1

declare dso_local i32 @tick_oneshot_notify(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
