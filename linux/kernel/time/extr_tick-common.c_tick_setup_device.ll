; ModuleID = '/home/carl/AnghaBench/linux/kernel/time/extr_tick-common.c_tick_setup_device.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/time/extr_tick-common.c_tick_setup_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tick_device = type { i64, %struct.clock_event_device* }
%struct.clock_event_device = type { void (%struct.clock_event_device*)*, i32, i32, i32 }
%struct.cpumask = type { i32 }

@tick_do_timer_cpu = common dso_local global i32 0, align 4
@TICK_DO_TIMER_BOOT = common dso_local global i32 0, align 4
@tick_next_period = common dso_local global i32 0, align 4
@NSEC_PER_SEC = common dso_local global i32 0, align 4
@HZ = common dso_local global i32 0, align 4
@tick_period = common dso_local global i32 0, align 4
@TICKDEV_MODE_PERIODIC = common dso_local global i64 0, align 8
@tick_do_timer_boot_cpu = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tick_device*, %struct.clock_event_device*, i32, %struct.cpumask*)* @tick_setup_device to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tick_setup_device(%struct.tick_device* %0, %struct.clock_event_device* %1, i32 %2, %struct.cpumask* %3) #0 {
  %5 = alloca %struct.tick_device*, align 8
  %6 = alloca %struct.clock_event_device*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.cpumask*, align 8
  %9 = alloca void (%struct.clock_event_device*)*, align 8
  %10 = alloca i32, align 4
  store %struct.tick_device* %0, %struct.tick_device** %5, align 8
  store %struct.clock_event_device* %1, %struct.clock_event_device** %6, align 8
  store i32 %2, i32* %7, align 4
  store %struct.cpumask* %3, %struct.cpumask** %8, align 8
  store void (%struct.clock_event_device*)* null, void (%struct.clock_event_device*)** %9, align 8
  store i32 0, i32* %10, align 4
  %11 = load %struct.tick_device*, %struct.tick_device** %5, align 8
  %12 = getelementptr inbounds %struct.tick_device, %struct.tick_device* %11, i32 0, i32 1
  %13 = load %struct.clock_event_device*, %struct.clock_event_device** %12, align 8
  %14 = icmp ne %struct.clock_event_device* %13, null
  br i1 %14, label %29, label %15

15:                                               ; preds = %4
  %16 = load i32, i32* @tick_do_timer_cpu, align 4
  %17 = load i32, i32* @TICK_DO_TIMER_BOOT, align 4
  %18 = icmp eq i32 %16, %17
  br i1 %18, label %19, label %25

19:                                               ; preds = %15
  %20 = load i32, i32* %7, align 4
  store i32 %20, i32* @tick_do_timer_cpu, align 4
  %21 = call i32 (...) @ktime_get()
  store i32 %21, i32* @tick_next_period, align 4
  %22 = load i32, i32* @NSEC_PER_SEC, align 4
  %23 = load i32, i32* @HZ, align 4
  %24 = sdiv i32 %22, %23
  store i32 %24, i32* @tick_period, align 4
  br label %25

25:                                               ; preds = %19, %15
  %26 = load i64, i64* @TICKDEV_MODE_PERIODIC, align 8
  %27 = load %struct.tick_device*, %struct.tick_device** %5, align 8
  %28 = getelementptr inbounds %struct.tick_device, %struct.tick_device* %27, i32 0, i32 0
  store i64 %26, i64* %28, align 8
  br label %44

29:                                               ; preds = %4
  %30 = load %struct.tick_device*, %struct.tick_device** %5, align 8
  %31 = getelementptr inbounds %struct.tick_device, %struct.tick_device* %30, i32 0, i32 1
  %32 = load %struct.clock_event_device*, %struct.clock_event_device** %31, align 8
  %33 = getelementptr inbounds %struct.clock_event_device, %struct.clock_event_device* %32, i32 0, i32 0
  %34 = load void (%struct.clock_event_device*)*, void (%struct.clock_event_device*)** %33, align 8
  store void (%struct.clock_event_device*)* %34, void (%struct.clock_event_device*)** %9, align 8
  %35 = load %struct.tick_device*, %struct.tick_device** %5, align 8
  %36 = getelementptr inbounds %struct.tick_device, %struct.tick_device* %35, i32 0, i32 1
  %37 = load %struct.clock_event_device*, %struct.clock_event_device** %36, align 8
  %38 = getelementptr inbounds %struct.clock_event_device, %struct.clock_event_device* %37, i32 0, i32 3
  %39 = load i32, i32* %38, align 8
  store i32 %39, i32* %10, align 4
  %40 = load %struct.tick_device*, %struct.tick_device** %5, align 8
  %41 = getelementptr inbounds %struct.tick_device, %struct.tick_device* %40, i32 0, i32 1
  %42 = load %struct.clock_event_device*, %struct.clock_event_device** %41, align 8
  %43 = getelementptr inbounds %struct.clock_event_device, %struct.clock_event_device* %42, i32 0, i32 0
  store void (%struct.clock_event_device*)* @clockevents_handle_noop, void (%struct.clock_event_device*)** %43, align 8
  br label %44

44:                                               ; preds = %29, %25
  %45 = load %struct.clock_event_device*, %struct.clock_event_device** %6, align 8
  %46 = load %struct.tick_device*, %struct.tick_device** %5, align 8
  %47 = getelementptr inbounds %struct.tick_device, %struct.tick_device* %46, i32 0, i32 1
  store %struct.clock_event_device* %45, %struct.clock_event_device** %47, align 8
  %48 = load %struct.clock_event_device*, %struct.clock_event_device** %6, align 8
  %49 = getelementptr inbounds %struct.clock_event_device, %struct.clock_event_device* %48, i32 0, i32 2
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.cpumask*, %struct.cpumask** %8, align 8
  %52 = call i32 @cpumask_equal(i32 %50, %struct.cpumask* %51)
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %60, label %54

54:                                               ; preds = %44
  %55 = load %struct.clock_event_device*, %struct.clock_event_device** %6, align 8
  %56 = getelementptr inbounds %struct.clock_event_device, %struct.clock_event_device* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 8
  %58 = load %struct.cpumask*, %struct.cpumask** %8, align 8
  %59 = call i32 @irq_set_affinity(i32 %57, %struct.cpumask* %58)
  br label %60

60:                                               ; preds = %54, %44
  %61 = load %struct.clock_event_device*, %struct.clock_event_device** %6, align 8
  %62 = load i32, i32* %7, align 4
  %63 = call i64 @tick_device_uses_broadcast(%struct.clock_event_device* %61, i32 %62)
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %66

65:                                               ; preds = %60
  br label %80

66:                                               ; preds = %60
  %67 = load %struct.tick_device*, %struct.tick_device** %5, align 8
  %68 = getelementptr inbounds %struct.tick_device, %struct.tick_device* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = load i64, i64* @TICKDEV_MODE_PERIODIC, align 8
  %71 = icmp eq i64 %69, %70
  br i1 %71, label %72, label %75

72:                                               ; preds = %66
  %73 = load %struct.clock_event_device*, %struct.clock_event_device** %6, align 8
  %74 = call i32 @tick_setup_periodic(%struct.clock_event_device* %73, i32 0)
  br label %80

75:                                               ; preds = %66
  %76 = load %struct.clock_event_device*, %struct.clock_event_device** %6, align 8
  %77 = load void (%struct.clock_event_device*)*, void (%struct.clock_event_device*)** %9, align 8
  %78 = load i32, i32* %10, align 4
  %79 = call i32 @tick_setup_oneshot(%struct.clock_event_device* %76, void (%struct.clock_event_device*)* %77, i32 %78)
  br label %80

80:                                               ; preds = %65, %75, %72
  ret void
}

declare dso_local i32 @ktime_get(...) #1

declare dso_local void @clockevents_handle_noop(%struct.clock_event_device*) #1

declare dso_local i32 @cpumask_equal(i32, %struct.cpumask*) #1

declare dso_local i32 @irq_set_affinity(i32, %struct.cpumask*) #1

declare dso_local i64 @tick_device_uses_broadcast(%struct.clock_event_device*, i32) #1

declare dso_local i32 @tick_setup_periodic(%struct.clock_event_device*, i32) #1

declare dso_local i32 @tick_setup_oneshot(%struct.clock_event_device*, void (%struct.clock_event_device*)*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
