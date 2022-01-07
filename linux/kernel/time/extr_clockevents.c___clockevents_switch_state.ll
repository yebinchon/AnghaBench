; ModuleID = '/home/carl/AnghaBench/linux/kernel/time/extr_clockevents.c___clockevents_switch_state.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/time/extr_clockevents.c___clockevents_switch_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clock_event_device = type { i32, i32 (%struct.clock_event_device*)*, i32 (%struct.clock_event_device*)*, i32 (%struct.clock_event_device*)*, i32 (%struct.clock_event_device*)* }

@CLOCK_EVT_FEAT_DUMMY = common dso_local global i32 0, align 4
@CLOCK_EVT_FEAT_PERIODIC = common dso_local global i32 0, align 4
@ENOSYS = common dso_local global i32 0, align 4
@CLOCK_EVT_FEAT_ONESHOT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"Current state: %d\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.clock_event_device*, i32)* @__clockevents_switch_state to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__clockevents_switch_state(%struct.clock_event_device* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.clock_event_device*, align 8
  %5 = alloca i32, align 4
  store %struct.clock_event_device* %0, %struct.clock_event_device** %4, align 8
  store i32 %1, i32* %5, align 4
  %6 = load %struct.clock_event_device*, %struct.clock_event_device** %4, align 8
  %7 = getelementptr inbounds %struct.clock_event_device, %struct.clock_event_device* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 8
  %9 = load i32, i32* @CLOCK_EVT_FEAT_DUMMY, align 4
  %10 = and i32 %8, %9
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %101

13:                                               ; preds = %2
  %14 = load i32, i32* %5, align 4
  switch i32 %14, label %98 [
    i32 132, label %15
    i32 128, label %15
    i32 129, label %27
    i32 131, label %49
    i32 130, label %71
  ]

15:                                               ; preds = %13, %13
  %16 = load %struct.clock_event_device*, %struct.clock_event_device** %4, align 8
  %17 = getelementptr inbounds %struct.clock_event_device, %struct.clock_event_device* %16, i32 0, i32 1
  %18 = load i32 (%struct.clock_event_device*)*, i32 (%struct.clock_event_device*)** %17, align 8
  %19 = icmp ne i32 (%struct.clock_event_device*)* %18, null
  br i1 %19, label %20, label %26

20:                                               ; preds = %15
  %21 = load %struct.clock_event_device*, %struct.clock_event_device** %4, align 8
  %22 = getelementptr inbounds %struct.clock_event_device, %struct.clock_event_device* %21, i32 0, i32 1
  %23 = load i32 (%struct.clock_event_device*)*, i32 (%struct.clock_event_device*)** %22, align 8
  %24 = load %struct.clock_event_device*, %struct.clock_event_device** %4, align 8
  %25 = call i32 %23(%struct.clock_event_device* %24)
  store i32 %25, i32* %3, align 4
  br label %101

26:                                               ; preds = %15
  store i32 0, i32* %3, align 4
  br label %101

27:                                               ; preds = %13
  %28 = load %struct.clock_event_device*, %struct.clock_event_device** %4, align 8
  %29 = getelementptr inbounds %struct.clock_event_device, %struct.clock_event_device* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = load i32, i32* @CLOCK_EVT_FEAT_PERIODIC, align 4
  %32 = and i32 %30, %31
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %37, label %34

34:                                               ; preds = %27
  %35 = load i32, i32* @ENOSYS, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %3, align 4
  br label %101

37:                                               ; preds = %27
  %38 = load %struct.clock_event_device*, %struct.clock_event_device** %4, align 8
  %39 = getelementptr inbounds %struct.clock_event_device, %struct.clock_event_device* %38, i32 0, i32 2
  %40 = load i32 (%struct.clock_event_device*)*, i32 (%struct.clock_event_device*)** %39, align 8
  %41 = icmp ne i32 (%struct.clock_event_device*)* %40, null
  br i1 %41, label %42, label %48

42:                                               ; preds = %37
  %43 = load %struct.clock_event_device*, %struct.clock_event_device** %4, align 8
  %44 = getelementptr inbounds %struct.clock_event_device, %struct.clock_event_device* %43, i32 0, i32 2
  %45 = load i32 (%struct.clock_event_device*)*, i32 (%struct.clock_event_device*)** %44, align 8
  %46 = load %struct.clock_event_device*, %struct.clock_event_device** %4, align 8
  %47 = call i32 %45(%struct.clock_event_device* %46)
  store i32 %47, i32* %3, align 4
  br label %101

48:                                               ; preds = %37
  store i32 0, i32* %3, align 4
  br label %101

49:                                               ; preds = %13
  %50 = load %struct.clock_event_device*, %struct.clock_event_device** %4, align 8
  %51 = getelementptr inbounds %struct.clock_event_device, %struct.clock_event_device* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = load i32, i32* @CLOCK_EVT_FEAT_ONESHOT, align 4
  %54 = and i32 %52, %53
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %59, label %56

56:                                               ; preds = %49
  %57 = load i32, i32* @ENOSYS, align 4
  %58 = sub nsw i32 0, %57
  store i32 %58, i32* %3, align 4
  br label %101

59:                                               ; preds = %49
  %60 = load %struct.clock_event_device*, %struct.clock_event_device** %4, align 8
  %61 = getelementptr inbounds %struct.clock_event_device, %struct.clock_event_device* %60, i32 0, i32 3
  %62 = load i32 (%struct.clock_event_device*)*, i32 (%struct.clock_event_device*)** %61, align 8
  %63 = icmp ne i32 (%struct.clock_event_device*)* %62, null
  br i1 %63, label %64, label %70

64:                                               ; preds = %59
  %65 = load %struct.clock_event_device*, %struct.clock_event_device** %4, align 8
  %66 = getelementptr inbounds %struct.clock_event_device, %struct.clock_event_device* %65, i32 0, i32 3
  %67 = load i32 (%struct.clock_event_device*)*, i32 (%struct.clock_event_device*)** %66, align 8
  %68 = load %struct.clock_event_device*, %struct.clock_event_device** %4, align 8
  %69 = call i32 %67(%struct.clock_event_device* %68)
  store i32 %69, i32* %3, align 4
  br label %101

70:                                               ; preds = %59
  store i32 0, i32* %3, align 4
  br label %101

71:                                               ; preds = %13
  %72 = load %struct.clock_event_device*, %struct.clock_event_device** %4, align 8
  %73 = call i32 @clockevent_state_oneshot(%struct.clock_event_device* %72)
  %74 = icmp ne i32 %73, 0
  %75 = xor i1 %74, true
  %76 = zext i1 %75 to i32
  %77 = load %struct.clock_event_device*, %struct.clock_event_device** %4, align 8
  %78 = call i32 @clockevent_get_state(%struct.clock_event_device* %77)
  %79 = call i32 @WARN_ONCE(i32 %76, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 %78)
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %84

81:                                               ; preds = %71
  %82 = load i32, i32* @EINVAL, align 4
  %83 = sub nsw i32 0, %82
  store i32 %83, i32* %3, align 4
  br label %101

84:                                               ; preds = %71
  %85 = load %struct.clock_event_device*, %struct.clock_event_device** %4, align 8
  %86 = getelementptr inbounds %struct.clock_event_device, %struct.clock_event_device* %85, i32 0, i32 4
  %87 = load i32 (%struct.clock_event_device*)*, i32 (%struct.clock_event_device*)** %86, align 8
  %88 = icmp ne i32 (%struct.clock_event_device*)* %87, null
  br i1 %88, label %89, label %95

89:                                               ; preds = %84
  %90 = load %struct.clock_event_device*, %struct.clock_event_device** %4, align 8
  %91 = getelementptr inbounds %struct.clock_event_device, %struct.clock_event_device* %90, i32 0, i32 4
  %92 = load i32 (%struct.clock_event_device*)*, i32 (%struct.clock_event_device*)** %91, align 8
  %93 = load %struct.clock_event_device*, %struct.clock_event_device** %4, align 8
  %94 = call i32 %92(%struct.clock_event_device* %93)
  store i32 %94, i32* %3, align 4
  br label %101

95:                                               ; preds = %84
  %96 = load i32, i32* @ENOSYS, align 4
  %97 = sub nsw i32 0, %96
  store i32 %97, i32* %3, align 4
  br label %101

98:                                               ; preds = %13
  %99 = load i32, i32* @ENOSYS, align 4
  %100 = sub nsw i32 0, %99
  store i32 %100, i32* %3, align 4
  br label %101

101:                                              ; preds = %98, %95, %89, %81, %70, %64, %56, %48, %42, %34, %26, %20, %12
  %102 = load i32, i32* %3, align 4
  ret i32 %102
}

declare dso_local i32 @WARN_ONCE(i32, i8*, i32) #1

declare dso_local i32 @clockevent_state_oneshot(%struct.clock_event_device*) #1

declare dso_local i32 @clockevent_get_state(%struct.clock_event_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
