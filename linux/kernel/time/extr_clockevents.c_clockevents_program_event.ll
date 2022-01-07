; ModuleID = '/home/carl/AnghaBench/linux/kernel/time/extr_clockevents.c_clockevents_program_event.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/time/extr_clockevents.c_clockevents_program_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clock_event_device = type { i32, i32 (i64, %struct.clock_event_device*)*, i64, i64, i32 (i64, %struct.clock_event_device*)*, i64, i64, i64 }

@ETIME = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"Current state: %d\0A\00", align 1
@CLOCK_EVT_FEAT_KTIME = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @clockevents_program_event(%struct.clock_event_device* %0, i64 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.clock_event_device*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  store %struct.clock_event_device* %0, %struct.clock_event_device** %5, align 8
  store i64 %1, i64* %6, align 8
  store i32 %2, i32* %7, align 4
  %11 = load i64, i64* %6, align 8
  %12 = icmp slt i64 %11, 0
  %13 = zext i1 %12 to i32
  %14 = call i64 @WARN_ON_ONCE(i32 %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %19

16:                                               ; preds = %3
  %17 = load i32, i32* @ETIME, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %4, align 4
  br label %105

19:                                               ; preds = %3
  %20 = load i64, i64* %6, align 8
  %21 = load %struct.clock_event_device*, %struct.clock_event_device** %5, align 8
  %22 = getelementptr inbounds %struct.clock_event_device, %struct.clock_event_device* %21, i32 0, i32 7
  store i64 %20, i64* %22, align 8
  %23 = load %struct.clock_event_device*, %struct.clock_event_device** %5, align 8
  %24 = call i64 @clockevent_state_shutdown(%struct.clock_event_device* %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %19
  store i32 0, i32* %4, align 4
  br label %105

27:                                               ; preds = %19
  %28 = load %struct.clock_event_device*, %struct.clock_event_device** %5, align 8
  %29 = call i32 @clockevent_state_oneshot(%struct.clock_event_device* %28)
  %30 = icmp ne i32 %29, 0
  %31 = xor i1 %30, true
  %32 = zext i1 %31 to i32
  %33 = load %struct.clock_event_device*, %struct.clock_event_device** %5, align 8
  %34 = call i32 @clockevent_get_state(%struct.clock_event_device* %33)
  %35 = call i32 @WARN_ONCE(i32 %32, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 %34)
  %36 = load %struct.clock_event_device*, %struct.clock_event_device** %5, align 8
  %37 = getelementptr inbounds %struct.clock_event_device, %struct.clock_event_device* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = load i32, i32* @CLOCK_EVT_FEAT_KTIME, align 4
  %40 = and i32 %38, %39
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %49

42:                                               ; preds = %27
  %43 = load %struct.clock_event_device*, %struct.clock_event_device** %5, align 8
  %44 = getelementptr inbounds %struct.clock_event_device, %struct.clock_event_device* %43, i32 0, i32 1
  %45 = load i32 (i64, %struct.clock_event_device*)*, i32 (i64, %struct.clock_event_device*)** %44, align 8
  %46 = load i64, i64* %6, align 8
  %47 = load %struct.clock_event_device*, %struct.clock_event_device** %5, align 8
  %48 = call i32 %45(i64 %46, %struct.clock_event_device* %47)
  store i32 %48, i32* %4, align 4
  br label %105

49:                                               ; preds = %27
  %50 = load i64, i64* %6, align 8
  %51 = call i32 (...) @ktime_get()
  %52 = call i32 @ktime_sub(i64 %50, i32 %51)
  %53 = call i64 @ktime_to_ns(i32 %52)
  store i64 %53, i64* %9, align 8
  %54 = load i64, i64* %9, align 8
  %55 = icmp sle i64 %54, 0
  br i1 %55, label %56, label %67

56:                                               ; preds = %49
  %57 = load i32, i32* %7, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %62

59:                                               ; preds = %56
  %60 = load %struct.clock_event_device*, %struct.clock_event_device** %5, align 8
  %61 = call i32 @clockevents_program_min_delta(%struct.clock_event_device* %60)
  br label %65

62:                                               ; preds = %56
  %63 = load i32, i32* @ETIME, align 4
  %64 = sub nsw i32 0, %63
  br label %65

65:                                               ; preds = %62, %59
  %66 = phi i32 [ %61, %59 ], [ %64, %62 ]
  store i32 %66, i32* %4, align 4
  br label %105

67:                                               ; preds = %49
  %68 = load i64, i64* %9, align 8
  %69 = load %struct.clock_event_device*, %struct.clock_event_device** %5, align 8
  %70 = getelementptr inbounds %struct.clock_event_device, %struct.clock_event_device* %69, i32 0, i32 6
  %71 = load i64, i64* %70, align 8
  %72 = call i64 @min(i64 %68, i64 %71)
  store i64 %72, i64* %9, align 8
  %73 = load i64, i64* %9, align 8
  %74 = load %struct.clock_event_device*, %struct.clock_event_device** %5, align 8
  %75 = getelementptr inbounds %struct.clock_event_device, %struct.clock_event_device* %74, i32 0, i32 5
  %76 = load i64, i64* %75, align 8
  %77 = call i64 @max(i64 %73, i64 %76)
  store i64 %77, i64* %9, align 8
  %78 = load i64, i64* %9, align 8
  %79 = load %struct.clock_event_device*, %struct.clock_event_device** %5, align 8
  %80 = getelementptr inbounds %struct.clock_event_device, %struct.clock_event_device* %79, i32 0, i32 2
  %81 = load i64, i64* %80, align 8
  %82 = mul i64 %78, %81
  %83 = load %struct.clock_event_device*, %struct.clock_event_device** %5, align 8
  %84 = getelementptr inbounds %struct.clock_event_device, %struct.clock_event_device* %83, i32 0, i32 3
  %85 = load i64, i64* %84, align 8
  %86 = lshr i64 %82, %85
  store i64 %86, i64* %8, align 8
  %87 = load %struct.clock_event_device*, %struct.clock_event_device** %5, align 8
  %88 = getelementptr inbounds %struct.clock_event_device, %struct.clock_event_device* %87, i32 0, i32 4
  %89 = load i32 (i64, %struct.clock_event_device*)*, i32 (i64, %struct.clock_event_device*)** %88, align 8
  %90 = load i64, i64* %8, align 8
  %91 = load %struct.clock_event_device*, %struct.clock_event_device** %5, align 8
  %92 = call i32 %89(i64 %90, %struct.clock_event_device* %91)
  store i32 %92, i32* %10, align 4
  %93 = load i32, i32* %10, align 4
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %101

95:                                               ; preds = %67
  %96 = load i32, i32* %7, align 4
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %101

98:                                               ; preds = %95
  %99 = load %struct.clock_event_device*, %struct.clock_event_device** %5, align 8
  %100 = call i32 @clockevents_program_min_delta(%struct.clock_event_device* %99)
  br label %103

101:                                              ; preds = %95, %67
  %102 = load i32, i32* %10, align 4
  br label %103

103:                                              ; preds = %101, %98
  %104 = phi i32 [ %100, %98 ], [ %102, %101 ]
  store i32 %104, i32* %4, align 4
  br label %105

105:                                              ; preds = %103, %65, %42, %26, %16
  %106 = load i32, i32* %4, align 4
  ret i32 %106
}

declare dso_local i64 @WARN_ON_ONCE(i32) #1

declare dso_local i64 @clockevent_state_shutdown(%struct.clock_event_device*) #1

declare dso_local i32 @WARN_ONCE(i32, i8*, i32) #1

declare dso_local i32 @clockevent_state_oneshot(%struct.clock_event_device*) #1

declare dso_local i32 @clockevent_get_state(%struct.clock_event_device*) #1

declare dso_local i64 @ktime_to_ns(i32) #1

declare dso_local i32 @ktime_sub(i64, i32) #1

declare dso_local i32 @ktime_get(...) #1

declare dso_local i32 @clockevents_program_min_delta(%struct.clock_event_device*) #1

declare dso_local i64 @min(i64, i64) #1

declare dso_local i64 @max(i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
