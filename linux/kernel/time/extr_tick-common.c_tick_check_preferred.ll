; ModuleID = '/home/carl/AnghaBench/linux/kernel/time/extr_tick-common.c_tick_check_preferred.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/time/extr_tick-common.c_tick_check_preferred.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clock_event_device = type { i32, i64, i32 }

@CLOCK_EVT_FEAT_ONESHOT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.clock_event_device*, %struct.clock_event_device*)* @tick_check_preferred to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tick_check_preferred(%struct.clock_event_device* %0, %struct.clock_event_device* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.clock_event_device*, align 8
  %5 = alloca %struct.clock_event_device*, align 8
  store %struct.clock_event_device* %0, %struct.clock_event_device** %4, align 8
  store %struct.clock_event_device* %1, %struct.clock_event_device** %5, align 8
  %6 = load %struct.clock_event_device*, %struct.clock_event_device** %5, align 8
  %7 = getelementptr inbounds %struct.clock_event_device, %struct.clock_event_device* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 8
  %9 = load i32, i32* @CLOCK_EVT_FEAT_ONESHOT, align 4
  %10 = and i32 %8, %9
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %28, label %12

12:                                               ; preds = %2
  %13 = load %struct.clock_event_device*, %struct.clock_event_device** %4, align 8
  %14 = icmp ne %struct.clock_event_device* %13, null
  br i1 %14, label %15, label %23

15:                                               ; preds = %12
  %16 = load %struct.clock_event_device*, %struct.clock_event_device** %4, align 8
  %17 = getelementptr inbounds %struct.clock_event_device, %struct.clock_event_device* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = load i32, i32* @CLOCK_EVT_FEAT_ONESHOT, align 4
  %20 = and i32 %18, %19
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %15
  store i32 0, i32* %3, align 4
  br label %52

23:                                               ; preds = %15, %12
  %24 = call i64 (...) @tick_oneshot_mode_active()
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %23
  store i32 0, i32* %3, align 4
  br label %52

27:                                               ; preds = %23
  br label %28

28:                                               ; preds = %27, %2
  %29 = load %struct.clock_event_device*, %struct.clock_event_device** %4, align 8
  %30 = icmp ne %struct.clock_event_device* %29, null
  br i1 %30, label %31, label %49

31:                                               ; preds = %28
  %32 = load %struct.clock_event_device*, %struct.clock_event_device** %5, align 8
  %33 = getelementptr inbounds %struct.clock_event_device, %struct.clock_event_device* %32, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  %35 = load %struct.clock_event_device*, %struct.clock_event_device** %4, align 8
  %36 = getelementptr inbounds %struct.clock_event_device, %struct.clock_event_device* %35, i32 0, i32 1
  %37 = load i64, i64* %36, align 8
  %38 = icmp sgt i64 %34, %37
  br i1 %38, label %49, label %39

39:                                               ; preds = %31
  %40 = load %struct.clock_event_device*, %struct.clock_event_device** %4, align 8
  %41 = getelementptr inbounds %struct.clock_event_device, %struct.clock_event_device* %40, i32 0, i32 2
  %42 = load i32, i32* %41, align 8
  %43 = load %struct.clock_event_device*, %struct.clock_event_device** %5, align 8
  %44 = getelementptr inbounds %struct.clock_event_device, %struct.clock_event_device* %43, i32 0, i32 2
  %45 = load i32, i32* %44, align 8
  %46 = call i32 @cpumask_equal(i32 %42, i32 %45)
  %47 = icmp ne i32 %46, 0
  %48 = xor i1 %47, true
  br label %49

49:                                               ; preds = %39, %31, %28
  %50 = phi i1 [ true, %31 ], [ true, %28 ], [ %48, %39 ]
  %51 = zext i1 %50 to i32
  store i32 %51, i32* %3, align 4
  br label %52

52:                                               ; preds = %49, %26, %22
  %53 = load i32, i32* %3, align 4
  ret i32 %53
}

declare dso_local i64 @tick_oneshot_mode_active(...) #1

declare dso_local i32 @cpumask_equal(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
