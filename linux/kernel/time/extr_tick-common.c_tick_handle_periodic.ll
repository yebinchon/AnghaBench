; ModuleID = '/home/carl/AnghaBench/linux/kernel/time/extr_tick-common.c_tick_handle_periodic.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/time/extr_tick-common.c_tick_handle_periodic.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clock_event_device = type { i64, i32 }

@tick_period = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @tick_handle_periodic(%struct.clock_event_device* %0) #0 {
  %2 = alloca %struct.clock_event_device*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.clock_event_device* %0, %struct.clock_event_device** %2, align 8
  %5 = call i32 (...) @smp_processor_id()
  store i32 %5, i32* %3, align 4
  %6 = load %struct.clock_event_device*, %struct.clock_event_device** %2, align 8
  %7 = getelementptr inbounds %struct.clock_event_device, %struct.clock_event_device* %6, i32 0, i32 1
  %8 = load i32, i32* %7, align 8
  store i32 %8, i32* %4, align 4
  %9 = load i32, i32* %3, align 4
  %10 = call i32 @tick_periodic(i32 %9)
  %11 = load %struct.clock_event_device*, %struct.clock_event_device** %2, align 8
  %12 = call i32 @clockevent_state_oneshot(%struct.clock_event_device* %11)
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %15, label %14

14:                                               ; preds = %1
  br label %32

15:                                               ; preds = %1
  br label %16

16:                                               ; preds = %31, %15
  %17 = load i32, i32* %4, align 4
  %18 = load i32, i32* @tick_period, align 4
  %19 = call i32 @ktime_add(i32 %17, i32 %18)
  store i32 %19, i32* %4, align 4
  %20 = load %struct.clock_event_device*, %struct.clock_event_device** %2, align 8
  %21 = load i32, i32* %4, align 4
  %22 = call i32 @clockevents_program_event(%struct.clock_event_device* %20, i32 %21, i32 0)
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %25, label %24

24:                                               ; preds = %16
  br label %32

25:                                               ; preds = %16
  %26 = call i64 (...) @timekeeping_valid_for_hres()
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %31

28:                                               ; preds = %25
  %29 = load i32, i32* %3, align 4
  %30 = call i32 @tick_periodic(i32 %29)
  br label %31

31:                                               ; preds = %28, %25
  br label %16

32:                                               ; preds = %24, %14
  ret void
}

declare dso_local i32 @smp_processor_id(...) #1

declare dso_local i32 @tick_periodic(i32) #1

declare dso_local i32 @clockevent_state_oneshot(%struct.clock_event_device*) #1

declare dso_local i32 @ktime_add(i32, i32) #1

declare dso_local i32 @clockevents_program_event(%struct.clock_event_device*, i32, i32) #1

declare dso_local i64 @timekeeping_valid_for_hres(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
