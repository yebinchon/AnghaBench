; ModuleID = '/home/carl/AnghaBench/linux/kernel/time/extr_clockevents.c_clockevents_program_min_delta.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/time/extr_clockevents.c_clockevents_program_min_delta.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clock_event_device = type { i64, i64, i64 (i64, %struct.clock_event_device*)*, i32, i32, i64 }

@ETIME = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.clock_event_device*)* @clockevents_program_min_delta to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @clockevents_program_min_delta(%struct.clock_event_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.clock_event_device*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  store %struct.clock_event_device* %0, %struct.clock_event_device** %3, align 8
  store i64 0, i64* %5, align 8
  store i32 0, i32* %6, align 4
  br label %7

7:                                                ; preds = %48, %1
  %8 = load i32, i32* %6, align 4
  %9 = icmp slt i32 %8, 10
  br i1 %9, label %10, label %51

10:                                               ; preds = %7
  %11 = load %struct.clock_event_device*, %struct.clock_event_device** %3, align 8
  %12 = getelementptr inbounds %struct.clock_event_device, %struct.clock_event_device* %11, i32 0, i32 5
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* %5, align 8
  %15 = add nsw i64 %14, %13
  store i64 %15, i64* %5, align 8
  %16 = call i32 (...) @ktime_get()
  %17 = load i64, i64* %5, align 8
  %18 = call i32 @ktime_add_ns(i32 %16, i64 %17)
  %19 = load %struct.clock_event_device*, %struct.clock_event_device** %3, align 8
  %20 = getelementptr inbounds %struct.clock_event_device, %struct.clock_event_device* %19, i32 0, i32 4
  store i32 %18, i32* %20, align 4
  %21 = load %struct.clock_event_device*, %struct.clock_event_device** %3, align 8
  %22 = call i64 @clockevent_state_shutdown(%struct.clock_event_device* %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %10
  store i32 0, i32* %2, align 4
  br label %54

25:                                               ; preds = %10
  %26 = load %struct.clock_event_device*, %struct.clock_event_device** %3, align 8
  %27 = getelementptr inbounds %struct.clock_event_device, %struct.clock_event_device* %26, i32 0, i32 3
  %28 = load i32, i32* %27, align 8
  %29 = add nsw i32 %28, 1
  store i32 %29, i32* %27, align 8
  %30 = load i64, i64* %5, align 8
  %31 = load %struct.clock_event_device*, %struct.clock_event_device** %3, align 8
  %32 = getelementptr inbounds %struct.clock_event_device, %struct.clock_event_device* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = mul i64 %30, %33
  %35 = load %struct.clock_event_device*, %struct.clock_event_device** %3, align 8
  %36 = getelementptr inbounds %struct.clock_event_device, %struct.clock_event_device* %35, i32 0, i32 1
  %37 = load i64, i64* %36, align 8
  %38 = lshr i64 %34, %37
  store i64 %38, i64* %4, align 8
  %39 = load %struct.clock_event_device*, %struct.clock_event_device** %3, align 8
  %40 = getelementptr inbounds %struct.clock_event_device, %struct.clock_event_device* %39, i32 0, i32 2
  %41 = load i64 (i64, %struct.clock_event_device*)*, i64 (i64, %struct.clock_event_device*)** %40, align 8
  %42 = load i64, i64* %4, align 8
  %43 = load %struct.clock_event_device*, %struct.clock_event_device** %3, align 8
  %44 = call i64 %41(i64 %42, %struct.clock_event_device* %43)
  %45 = icmp eq i64 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %25
  store i32 0, i32* %2, align 4
  br label %54

47:                                               ; preds = %25
  br label %48

48:                                               ; preds = %47
  %49 = load i32, i32* %6, align 4
  %50 = add nsw i32 %49, 1
  store i32 %50, i32* %6, align 4
  br label %7

51:                                               ; preds = %7
  %52 = load i32, i32* @ETIME, align 4
  %53 = sub nsw i32 0, %52
  store i32 %53, i32* %2, align 4
  br label %54

54:                                               ; preds = %51, %46, %24
  %55 = load i32, i32* %2, align 4
  ret i32 %55
}

declare dso_local i32 @ktime_add_ns(i32, i64) #1

declare dso_local i32 @ktime_get(...) #1

declare dso_local i64 @clockevent_state_shutdown(%struct.clock_event_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
