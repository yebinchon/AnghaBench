; ModuleID = '/home/carl/AnghaBench/linux/kernel/time/extr_tick-broadcast.c_tick_device_setup_broadcast_func.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/time/extr_tick-broadcast.c_tick_device_setup_broadcast_func.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clock_event_device = type { i64, i32 }

@tick_broadcast = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [62 x i8] c"%s depends on broadcast, but no broadcast function available\0A\00", align 1
@err_broadcast = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.clock_event_device*)* @tick_device_setup_broadcast_func to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tick_device_setup_broadcast_func(%struct.clock_event_device* %0) #0 {
  %2 = alloca %struct.clock_event_device*, align 8
  store %struct.clock_event_device* %0, %struct.clock_event_device** %2, align 8
  %3 = load %struct.clock_event_device*, %struct.clock_event_device** %2, align 8
  %4 = getelementptr inbounds %struct.clock_event_device, %struct.clock_event_device* %3, i32 0, i32 0
  %5 = load i64, i64* %4, align 8
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %11, label %7

7:                                                ; preds = %1
  %8 = load i64, i64* @tick_broadcast, align 8
  %9 = load %struct.clock_event_device*, %struct.clock_event_device** %2, align 8
  %10 = getelementptr inbounds %struct.clock_event_device, %struct.clock_event_device* %9, i32 0, i32 0
  store i64 %8, i64* %10, align 8
  br label %11

11:                                               ; preds = %7, %1
  %12 = load %struct.clock_event_device*, %struct.clock_event_device** %2, align 8
  %13 = getelementptr inbounds %struct.clock_event_device, %struct.clock_event_device* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %24, label %16

16:                                               ; preds = %11
  %17 = load %struct.clock_event_device*, %struct.clock_event_device** %2, align 8
  %18 = getelementptr inbounds %struct.clock_event_device, %struct.clock_event_device* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 8
  %20 = call i32 @pr_warn_once(i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str, i64 0, i64 0), i32 %19)
  %21 = load i64, i64* @err_broadcast, align 8
  %22 = load %struct.clock_event_device*, %struct.clock_event_device** %2, align 8
  %23 = getelementptr inbounds %struct.clock_event_device, %struct.clock_event_device* %22, i32 0, i32 0
  store i64 %21, i64* %23, align 8
  br label %24

24:                                               ; preds = %16, %11
  ret void
}

declare dso_local i32 @pr_warn_once(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
