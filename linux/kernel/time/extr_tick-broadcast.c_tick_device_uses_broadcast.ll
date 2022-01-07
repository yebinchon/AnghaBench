; ModuleID = '/home/carl/AnghaBench/linux/kernel/time/extr_tick-broadcast.c_tick_device_uses_broadcast.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/time/extr_tick-broadcast.c_tick_device_uses_broadcast.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, %struct.clock_event_device* }
%struct.clock_event_device = type { i32, i32 }

@tick_broadcast_device = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@tick_broadcast_lock = common dso_local global i32 0, align 4
@tick_handle_periodic = common dso_local global i32 0, align 4
@tick_broadcast_mask = common dso_local global i32 0, align 4
@CLOCK_EVT_FEAT_C3STOP = common dso_local global i32 0, align 4
@tick_broadcast_on = common dso_local global i32 0, align 4
@CLOCK_EVT_FEAT_HRTIMER = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @tick_device_uses_broadcast(%struct.clock_event_device* %0, i32 %1) #0 {
  %3 = alloca %struct.clock_event_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.clock_event_device*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store %struct.clock_event_device* %0, %struct.clock_event_device** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.clock_event_device*, %struct.clock_event_device** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @tick_broadcast_device, i32 0, i32 1), align 8
  store %struct.clock_event_device* %8, %struct.clock_event_device** %5, align 8
  store i32 0, i32* %7, align 4
  %9 = load i64, i64* %6, align 8
  %10 = call i32 @raw_spin_lock_irqsave(i32* @tick_broadcast_lock, i64 %9)
  %11 = load %struct.clock_event_device*, %struct.clock_event_device** %3, align 8
  %12 = call i32 @tick_device_is_functional(%struct.clock_event_device* %11)
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %32, label %14

14:                                               ; preds = %2
  %15 = load i32, i32* @tick_handle_periodic, align 4
  %16 = load %struct.clock_event_device*, %struct.clock_event_device** %3, align 8
  %17 = getelementptr inbounds %struct.clock_event_device, %struct.clock_event_device* %16, i32 0, i32 1
  store i32 %15, i32* %17, align 4
  %18 = load %struct.clock_event_device*, %struct.clock_event_device** %3, align 8
  %19 = call i32 @tick_device_setup_broadcast_func(%struct.clock_event_device* %18)
  %20 = load i32, i32* %4, align 4
  %21 = load i32, i32* @tick_broadcast_mask, align 4
  %22 = call i32 @cpumask_set_cpu(i32 %20, i32 %21)
  %23 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @tick_broadcast_device, i32 0, i32 0), align 8
  %24 = icmp eq i32 %23, 128
  br i1 %24, label %25, label %28

25:                                               ; preds = %14
  %26 = load %struct.clock_event_device*, %struct.clock_event_device** %5, align 8
  %27 = call i32 @tick_broadcast_start_periodic(%struct.clock_event_device* %26)
  br label %31

28:                                               ; preds = %14
  %29 = load %struct.clock_event_device*, %struct.clock_event_device** %5, align 8
  %30 = call i32 @tick_broadcast_setup_oneshot(%struct.clock_event_device* %29)
  br label %31

31:                                               ; preds = %28, %25
  store i32 1, i32* %7, align 4
  br label %87

32:                                               ; preds = %2
  %33 = load %struct.clock_event_device*, %struct.clock_event_device** %3, align 8
  %34 = getelementptr inbounds %struct.clock_event_device, %struct.clock_event_device* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* @CLOCK_EVT_FEAT_C3STOP, align 4
  %37 = and i32 %35, %36
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %43, label %39

39:                                               ; preds = %32
  %40 = load i32, i32* %4, align 4
  %41 = load i32, i32* @tick_broadcast_mask, align 4
  %42 = call i32 @cpumask_clear_cpu(i32 %40, i32 %41)
  br label %46

43:                                               ; preds = %32
  %44 = load %struct.clock_event_device*, %struct.clock_event_device** %3, align 8
  %45 = call i32 @tick_device_setup_broadcast_func(%struct.clock_event_device* %44)
  br label %46

46:                                               ; preds = %43, %39
  %47 = load i32, i32* %4, align 4
  %48 = load i32, i32* @tick_broadcast_on, align 4
  %49 = call i32 @cpumask_test_cpu(i32 %47, i32 %48)
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %55, label %51

51:                                               ; preds = %46
  %52 = load i32, i32* %4, align 4
  %53 = load i32, i32* @tick_broadcast_mask, align 4
  %54 = call i32 @cpumask_clear_cpu(i32 %52, i32 %53)
  br label %55

55:                                               ; preds = %51, %46
  %56 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @tick_broadcast_device, i32 0, i32 0), align 8
  switch i32 %56, label %85 [
    i32 129, label %57
    i32 128, label %60
  ]

57:                                               ; preds = %55
  %58 = load i32, i32* %4, align 4
  %59 = call i32 @tick_broadcast_clear_oneshot(i32 %58)
  store i32 0, i32* %7, align 4
  br label %86

60:                                               ; preds = %55
  %61 = load i32, i32* @tick_broadcast_mask, align 4
  %62 = call i32 @cpumask_empty(i32 %61)
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %70

64:                                               ; preds = %60
  %65 = load %struct.clock_event_device*, %struct.clock_event_device** %5, align 8
  %66 = icmp ne %struct.clock_event_device* %65, null
  br i1 %66, label %67, label %70

67:                                               ; preds = %64
  %68 = load %struct.clock_event_device*, %struct.clock_event_device** %5, align 8
  %69 = call i32 @clockevents_shutdown(%struct.clock_event_device* %68)
  br label %70

70:                                               ; preds = %67, %64, %60
  %71 = load %struct.clock_event_device*, %struct.clock_event_device** %5, align 8
  %72 = icmp ne %struct.clock_event_device* %71, null
  br i1 %72, label %73, label %84

73:                                               ; preds = %70
  %74 = load %struct.clock_event_device*, %struct.clock_event_device** %5, align 8
  %75 = getelementptr inbounds %struct.clock_event_device, %struct.clock_event_device* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = load i32, i32* @CLOCK_EVT_FEAT_HRTIMER, align 4
  %78 = and i32 %76, %77
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %84, label %80

80:                                               ; preds = %73
  %81 = load i32, i32* %4, align 4
  %82 = load i32, i32* @tick_broadcast_mask, align 4
  %83 = call i32 @cpumask_test_cpu(i32 %81, i32 %82)
  store i32 %83, i32* %7, align 4
  br label %84

84:                                               ; preds = %80, %73, %70
  br label %86

85:                                               ; preds = %55
  br label %86

86:                                               ; preds = %85, %84, %57
  br label %87

87:                                               ; preds = %86, %31
  %88 = load i64, i64* %6, align 8
  %89 = call i32 @raw_spin_unlock_irqrestore(i32* @tick_broadcast_lock, i64 %88)
  %90 = load i32, i32* %7, align 4
  ret i32 %90
}

declare dso_local i32 @raw_spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @tick_device_is_functional(%struct.clock_event_device*) #1

declare dso_local i32 @tick_device_setup_broadcast_func(%struct.clock_event_device*) #1

declare dso_local i32 @cpumask_set_cpu(i32, i32) #1

declare dso_local i32 @tick_broadcast_start_periodic(%struct.clock_event_device*) #1

declare dso_local i32 @tick_broadcast_setup_oneshot(%struct.clock_event_device*) #1

declare dso_local i32 @cpumask_clear_cpu(i32, i32) #1

declare dso_local i32 @cpumask_test_cpu(i32, i32) #1

declare dso_local i32 @tick_broadcast_clear_oneshot(i32) #1

declare dso_local i32 @cpumask_empty(i32) #1

declare dso_local i32 @clockevents_shutdown(%struct.clock_event_device*) #1

declare dso_local i32 @raw_spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
