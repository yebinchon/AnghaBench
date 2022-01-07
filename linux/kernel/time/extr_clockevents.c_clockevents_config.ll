; ModuleID = '/home/carl/AnghaBench/linux/kernel/time/extr_clockevents.c_clockevents_config.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/time/extr_clockevents.c_clockevents_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clock_event_device = type { i32, i32, i64, i8*, i8* }

@CLOCK_EVT_FEAT_ONESHOT = common dso_local global i32 0, align 4
@UINT_MAX = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.clock_event_device*, i32)* @clockevents_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @clockevents_config(%struct.clock_event_device* %0, i32 %1) #0 {
  %3 = alloca %struct.clock_event_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.clock_event_device* %0, %struct.clock_event_device** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.clock_event_device*, %struct.clock_event_device** %3, align 8
  %7 = getelementptr inbounds %struct.clock_event_device, %struct.clock_event_device* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 8
  %9 = load i32, i32* @CLOCK_EVT_FEAT_ONESHOT, align 4
  %10 = and i32 %8, %9
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %13, label %12

12:                                               ; preds = %2
  br label %55

13:                                               ; preds = %2
  %14 = load %struct.clock_event_device*, %struct.clock_event_device** %3, align 8
  %15 = getelementptr inbounds %struct.clock_event_device, %struct.clock_event_device* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  store i32 %16, i32* %5, align 4
  %17 = load i32, i32* %5, align 4
  %18 = load i32, i32* %4, align 4
  %19 = call i32 @do_div(i32 %17, i32 %18)
  %20 = load i32, i32* %5, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %23, label %22

22:                                               ; preds = %13
  store i32 1, i32* %5, align 4
  br label %35

23:                                               ; preds = %13
  %24 = load i32, i32* %5, align 4
  %25 = icmp sgt i32 %24, 600
  br i1 %25, label %26, label %34

26:                                               ; preds = %23
  %27 = load %struct.clock_event_device*, %struct.clock_event_device** %3, align 8
  %28 = getelementptr inbounds %struct.clock_event_device, %struct.clock_event_device* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = sext i32 %29 to i64
  %31 = load i64, i64* @UINT_MAX, align 8
  %32 = icmp sgt i64 %30, %31
  br i1 %32, label %33, label %34

33:                                               ; preds = %26
  store i32 600, i32* %5, align 4
  br label %34

34:                                               ; preds = %33, %26, %23
  br label %35

35:                                               ; preds = %34, %22
  %36 = load %struct.clock_event_device*, %struct.clock_event_device** %3, align 8
  %37 = load i32, i32* %4, align 4
  %38 = load i32, i32* %5, align 4
  %39 = call i32 @clockevents_calc_mult_shift(%struct.clock_event_device* %36, i32 %37, i32 %38)
  %40 = load %struct.clock_event_device*, %struct.clock_event_device** %3, align 8
  %41 = getelementptr inbounds %struct.clock_event_device, %struct.clock_event_device* %40, i32 0, i32 2
  %42 = load i64, i64* %41, align 8
  %43 = load %struct.clock_event_device*, %struct.clock_event_device** %3, align 8
  %44 = call i8* @cev_delta2ns(i64 %42, %struct.clock_event_device* %43, i32 0)
  %45 = load %struct.clock_event_device*, %struct.clock_event_device** %3, align 8
  %46 = getelementptr inbounds %struct.clock_event_device, %struct.clock_event_device* %45, i32 0, i32 4
  store i8* %44, i8** %46, align 8
  %47 = load %struct.clock_event_device*, %struct.clock_event_device** %3, align 8
  %48 = getelementptr inbounds %struct.clock_event_device, %struct.clock_event_device* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = sext i32 %49 to i64
  %51 = load %struct.clock_event_device*, %struct.clock_event_device** %3, align 8
  %52 = call i8* @cev_delta2ns(i64 %50, %struct.clock_event_device* %51, i32 1)
  %53 = load %struct.clock_event_device*, %struct.clock_event_device** %3, align 8
  %54 = getelementptr inbounds %struct.clock_event_device, %struct.clock_event_device* %53, i32 0, i32 3
  store i8* %52, i8** %54, align 8
  br label %55

55:                                               ; preds = %35, %12
  ret void
}

declare dso_local i32 @do_div(i32, i32) #1

declare dso_local i32 @clockevents_calc_mult_shift(%struct.clock_event_device*, i32, i32) #1

declare dso_local i8* @cev_delta2ns(i64, %struct.clock_event_device*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
