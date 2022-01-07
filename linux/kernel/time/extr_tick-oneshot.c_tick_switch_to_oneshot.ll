; ModuleID = '/home/carl/AnghaBench/linux/kernel/time/extr_tick-oneshot.c_tick_switch_to_oneshot.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/time/extr_tick-oneshot.c_tick_switch_to_oneshot.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clock_event_device = type { i32, {}*, i32 }
%struct.tick_device = type { i32, %struct.clock_event_device* }

@tick_cpu_device = common dso_local global i32 0, align 4
@CLOCK_EVT_FEAT_ONESHOT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [48 x i8] c"Clockevents: could not switch to one-shot mode:\00", align 1
@.str.1 = private unnamed_addr constant [17 x i8] c" no tick device\0A\00", align 1
@.str.2 = private unnamed_addr constant [24 x i8] c" %s is not functional.\0A\00", align 1
@.str.3 = private unnamed_addr constant [37 x i8] c" %s does not support one-shot mode.\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@TICKDEV_MODE_ONESHOT = common dso_local global i32 0, align 4
@CLOCK_EVT_STATE_ONESHOT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @tick_switch_to_oneshot(void (%struct.clock_event_device*)* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca void (%struct.clock_event_device*)*, align 8
  %4 = alloca %struct.tick_device*, align 8
  %5 = alloca %struct.clock_event_device*, align 8
  store void (%struct.clock_event_device*)* %0, void (%struct.clock_event_device*)** %3, align 8
  %6 = call %struct.tick_device* @this_cpu_ptr(i32* @tick_cpu_device)
  store %struct.tick_device* %6, %struct.tick_device** %4, align 8
  %7 = load %struct.tick_device*, %struct.tick_device** %4, align 8
  %8 = getelementptr inbounds %struct.tick_device, %struct.tick_device* %7, i32 0, i32 1
  %9 = load %struct.clock_event_device*, %struct.clock_event_device** %8, align 8
  store %struct.clock_event_device* %9, %struct.clock_event_device** %5, align 8
  %10 = load %struct.clock_event_device*, %struct.clock_event_device** %5, align 8
  %11 = icmp ne %struct.clock_event_device* %10, null
  br i1 %11, label %12, label %23

12:                                               ; preds = %1
  %13 = load %struct.clock_event_device*, %struct.clock_event_device** %5, align 8
  %14 = getelementptr inbounds %struct.clock_event_device, %struct.clock_event_device* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = load i32, i32* @CLOCK_EVT_FEAT_ONESHOT, align 4
  %17 = and i32 %15, %16
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %23

19:                                               ; preds = %12
  %20 = load %struct.clock_event_device*, %struct.clock_event_device** %5, align 8
  %21 = call i32 @tick_device_is_functional(%struct.clock_event_device* %20)
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %47, label %23

23:                                               ; preds = %19, %12, %1
  %24 = call i32 @pr_info(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0))
  %25 = load %struct.clock_event_device*, %struct.clock_event_device** %5, align 8
  %26 = icmp ne %struct.clock_event_device* %25, null
  br i1 %26, label %29, label %27

27:                                               ; preds = %23
  %28 = call i32 (i8*, ...) @pr_cont(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0))
  br label %44

29:                                               ; preds = %23
  %30 = load %struct.clock_event_device*, %struct.clock_event_device** %5, align 8
  %31 = call i32 @tick_device_is_functional(%struct.clock_event_device* %30)
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %38, label %33

33:                                               ; preds = %29
  %34 = load %struct.clock_event_device*, %struct.clock_event_device** %5, align 8
  %35 = getelementptr inbounds %struct.clock_event_device, %struct.clock_event_device* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 8
  %37 = call i32 (i8*, ...) @pr_cont(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0), i32 %36)
  br label %43

38:                                               ; preds = %29
  %39 = load %struct.clock_event_device*, %struct.clock_event_device** %5, align 8
  %40 = getelementptr inbounds %struct.clock_event_device, %struct.clock_event_device* %39, i32 0, i32 2
  %41 = load i32, i32* %40, align 8
  %42 = call i32 (i8*, ...) @pr_cont(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.3, i64 0, i64 0), i32 %41)
  br label %43

43:                                               ; preds = %38, %33
  br label %44

44:                                               ; preds = %43, %27
  %45 = load i32, i32* @EINVAL, align 4
  %46 = sub nsw i32 0, %45
  store i32 %46, i32* %2, align 4
  br label %59

47:                                               ; preds = %19
  %48 = load i32, i32* @TICKDEV_MODE_ONESHOT, align 4
  %49 = load %struct.tick_device*, %struct.tick_device** %4, align 8
  %50 = getelementptr inbounds %struct.tick_device, %struct.tick_device* %49, i32 0, i32 0
  store i32 %48, i32* %50, align 8
  %51 = load void (%struct.clock_event_device*)*, void (%struct.clock_event_device*)** %3, align 8
  %52 = load %struct.clock_event_device*, %struct.clock_event_device** %5, align 8
  %53 = getelementptr inbounds %struct.clock_event_device, %struct.clock_event_device* %52, i32 0, i32 1
  %54 = bitcast {}** %53 to void (%struct.clock_event_device*)**
  store void (%struct.clock_event_device*)* %51, void (%struct.clock_event_device*)** %54, align 8
  %55 = load %struct.clock_event_device*, %struct.clock_event_device** %5, align 8
  %56 = load i32, i32* @CLOCK_EVT_STATE_ONESHOT, align 4
  %57 = call i32 @clockevents_switch_state(%struct.clock_event_device* %55, i32 %56)
  %58 = call i32 (...) @tick_broadcast_switch_to_oneshot()
  store i32 0, i32* %2, align 4
  br label %59

59:                                               ; preds = %47, %44
  %60 = load i32, i32* %2, align 4
  ret i32 %60
}

declare dso_local %struct.tick_device* @this_cpu_ptr(i32*) #1

declare dso_local i32 @tick_device_is_functional(%struct.clock_event_device*) #1

declare dso_local i32 @pr_info(i8*) #1

declare dso_local i32 @pr_cont(i8*, ...) #1

declare dso_local i32 @clockevents_switch_state(%struct.clock_event_device*, i32) #1

declare dso_local i32 @tick_broadcast_switch_to_oneshot(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
