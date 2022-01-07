; ModuleID = '/home/carl/AnghaBench/linux/kernel/time/extr_tick-broadcast.c_tick_check_broadcast_device.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/time/extr_tick-broadcast.c_tick_check_broadcast_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64 }
%struct.clock_event_device = type { i32, i64 }

@CLOCK_EVT_FEAT_DUMMY = common dso_local global i32 0, align 4
@CLOCK_EVT_FEAT_PERCPU = common dso_local global i32 0, align 4
@CLOCK_EVT_FEAT_C3STOP = common dso_local global i32 0, align 4
@tick_broadcast_device = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@TICKDEV_MODE_ONESHOT = common dso_local global i64 0, align 8
@CLOCK_EVT_FEAT_ONESHOT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.clock_event_device*, %struct.clock_event_device*)* @tick_check_broadcast_device to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tick_check_broadcast_device(%struct.clock_event_device* %0, %struct.clock_event_device* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.clock_event_device*, align 8
  %5 = alloca %struct.clock_event_device*, align 8
  store %struct.clock_event_device* %0, %struct.clock_event_device** %4, align 8
  store %struct.clock_event_device* %1, %struct.clock_event_device** %5, align 8
  %6 = load %struct.clock_event_device*, %struct.clock_event_device** %5, align 8
  %7 = getelementptr inbounds %struct.clock_event_device, %struct.clock_event_device* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 8
  %9 = load i32, i32* @CLOCK_EVT_FEAT_DUMMY, align 4
  %10 = and i32 %8, %9
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %26, label %12

12:                                               ; preds = %2
  %13 = load %struct.clock_event_device*, %struct.clock_event_device** %5, align 8
  %14 = getelementptr inbounds %struct.clock_event_device, %struct.clock_event_device* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = load i32, i32* @CLOCK_EVT_FEAT_PERCPU, align 4
  %17 = and i32 %15, %16
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %26, label %19

19:                                               ; preds = %12
  %20 = load %struct.clock_event_device*, %struct.clock_event_device** %5, align 8
  %21 = getelementptr inbounds %struct.clock_event_device, %struct.clock_event_device* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = load i32, i32* @CLOCK_EVT_FEAT_C3STOP, align 4
  %24 = and i32 %22, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %19, %12, %2
  store i32 0, i32* %3, align 4
  br label %53

27:                                               ; preds = %19
  %28 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @tick_broadcast_device, i32 0, i32 0), align 8
  %29 = load i64, i64* @TICKDEV_MODE_ONESHOT, align 8
  %30 = icmp eq i64 %28, %29
  br i1 %30, label %31, label %39

31:                                               ; preds = %27
  %32 = load %struct.clock_event_device*, %struct.clock_event_device** %5, align 8
  %33 = getelementptr inbounds %struct.clock_event_device, %struct.clock_event_device* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = load i32, i32* @CLOCK_EVT_FEAT_ONESHOT, align 4
  %36 = and i32 %34, %35
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %39, label %38

38:                                               ; preds = %31
  store i32 0, i32* %3, align 4
  br label %53

39:                                               ; preds = %31, %27
  %40 = load %struct.clock_event_device*, %struct.clock_event_device** %4, align 8
  %41 = icmp ne %struct.clock_event_device* %40, null
  br i1 %41, label %42, label %50

42:                                               ; preds = %39
  %43 = load %struct.clock_event_device*, %struct.clock_event_device** %5, align 8
  %44 = getelementptr inbounds %struct.clock_event_device, %struct.clock_event_device* %43, i32 0, i32 1
  %45 = load i64, i64* %44, align 8
  %46 = load %struct.clock_event_device*, %struct.clock_event_device** %4, align 8
  %47 = getelementptr inbounds %struct.clock_event_device, %struct.clock_event_device* %46, i32 0, i32 1
  %48 = load i64, i64* %47, align 8
  %49 = icmp sgt i64 %45, %48
  br label %50

50:                                               ; preds = %42, %39
  %51 = phi i1 [ true, %39 ], [ %49, %42 ]
  %52 = zext i1 %51 to i32
  store i32 %52, i32* %3, align 4
  br label %53

53:                                               ; preds = %50, %38, %26
  %54 = load i32, i32* %3, align 4
  ret i32 %54
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
