; ModuleID = '/home/carl/AnghaBench/linux/kernel/time/extr_tick-broadcast.c_tick_broadcast_control.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/time/extr_tick-broadcast.c_tick_broadcast_control.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64, %struct.clock_event_device* }
%struct.clock_event_device = type { i32 }
%struct.tick_device = type { %struct.clock_event_device* }

@tick_broadcast_lock = common dso_local global i32 0, align 4
@tick_cpu_device = common dso_local global i32 0, align 4
@CLOCK_EVT_FEAT_C3STOP = common dso_local global i32 0, align 4
@tick_broadcast_device = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@tick_broadcast_mask = common dso_local global i32 0, align 4
@tick_broadcast_forced = common dso_local global i32 0, align 4
@tick_broadcast_on = common dso_local global i32 0, align 4
@CLOCK_EVT_FEAT_HRTIMER = common dso_local global i32 0, align 4
@TICKDEV_MODE_PERIODIC = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @tick_broadcast_control(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.clock_event_device*, align 8
  %4 = alloca %struct.clock_event_device*, align 8
  %5 = alloca %struct.tick_device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  store i32 %0, i32* %2, align 4
  %9 = load i64, i64* %8, align 8
  %10 = call i32 @raw_spin_lock_irqsave(i32* @tick_broadcast_lock, i64 %9)
  %11 = call %struct.tick_device* @this_cpu_ptr(i32* @tick_cpu_device)
  store %struct.tick_device* %11, %struct.tick_device** %5, align 8
  %12 = load %struct.tick_device*, %struct.tick_device** %5, align 8
  %13 = getelementptr inbounds %struct.tick_device, %struct.tick_device* %12, i32 0, i32 0
  %14 = load %struct.clock_event_device*, %struct.clock_event_device** %13, align 8
  store %struct.clock_event_device* %14, %struct.clock_event_device** %4, align 8
  %15 = load %struct.clock_event_device*, %struct.clock_event_device** %4, align 8
  %16 = icmp ne %struct.clock_event_device* %15, null
  br i1 %16, label %17, label %24

17:                                               ; preds = %1
  %18 = load %struct.clock_event_device*, %struct.clock_event_device** %4, align 8
  %19 = getelementptr inbounds %struct.clock_event_device, %struct.clock_event_device* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* @CLOCK_EVT_FEAT_C3STOP, align 4
  %22 = and i32 %20, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %25, label %24

24:                                               ; preds = %17, %1
  br label %116

25:                                               ; preds = %17
  %26 = load %struct.clock_event_device*, %struct.clock_event_device** %4, align 8
  %27 = call i32 @tick_device_is_functional(%struct.clock_event_device* %26)
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %30, label %29

29:                                               ; preds = %25
  br label %116

30:                                               ; preds = %25
  %31 = call i32 (...) @smp_processor_id()
  store i32 %31, i32* %6, align 4
  %32 = load %struct.clock_event_device*, %struct.clock_event_device** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @tick_broadcast_device, i32 0, i32 1), align 8
  store %struct.clock_event_device* %32, %struct.clock_event_device** %3, align 8
  %33 = load i32, i32* @tick_broadcast_mask, align 4
  %34 = call i32 @cpumask_empty(i32 %33)
  store i32 %34, i32* %7, align 4
  %35 = load i32, i32* %2, align 4
  switch i32 %35, label %85 [
    i32 130, label %36
    i32 128, label %37
    i32 129, label %64
  ]

36:                                               ; preds = %30
  store i32 1, i32* @tick_broadcast_forced, align 4
  br label %37

37:                                               ; preds = %30, %36
  %38 = load i32, i32* %6, align 4
  %39 = load i32, i32* @tick_broadcast_on, align 4
  %40 = call i32 @cpumask_set_cpu(i32 %38, i32 %39)
  %41 = load i32, i32* %6, align 4
  %42 = load i32, i32* @tick_broadcast_mask, align 4
  %43 = call i32 @cpumask_test_and_set_cpu(i32 %41, i32 %42)
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %63, label %45

45:                                               ; preds = %37
  %46 = load %struct.clock_event_device*, %struct.clock_event_device** %3, align 8
  %47 = icmp ne %struct.clock_event_device* %46, null
  br i1 %47, label %48, label %62

48:                                               ; preds = %45
  %49 = load %struct.clock_event_device*, %struct.clock_event_device** %3, align 8
  %50 = getelementptr inbounds %struct.clock_event_device, %struct.clock_event_device* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = load i32, i32* @CLOCK_EVT_FEAT_HRTIMER, align 4
  %53 = and i32 %51, %52
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %62, label %55

55:                                               ; preds = %48
  %56 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @tick_broadcast_device, i32 0, i32 0), align 8
  %57 = load i64, i64* @TICKDEV_MODE_PERIODIC, align 8
  %58 = icmp eq i64 %56, %57
  br i1 %58, label %59, label %62

59:                                               ; preds = %55
  %60 = load %struct.clock_event_device*, %struct.clock_event_device** %4, align 8
  %61 = call i32 @clockevents_shutdown(%struct.clock_event_device* %60)
  br label %62

62:                                               ; preds = %59, %55, %48, %45
  br label %63

63:                                               ; preds = %62, %37
  br label %85

64:                                               ; preds = %30
  %65 = load i32, i32* @tick_broadcast_forced, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %68

67:                                               ; preds = %64
  br label %85

68:                                               ; preds = %64
  %69 = load i32, i32* %6, align 4
  %70 = load i32, i32* @tick_broadcast_on, align 4
  %71 = call i32 @cpumask_clear_cpu(i32 %69, i32 %70)
  %72 = load i32, i32* %6, align 4
  %73 = load i32, i32* @tick_broadcast_mask, align 4
  %74 = call i32 @cpumask_test_and_clear_cpu(i32 %72, i32 %73)
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %84

76:                                               ; preds = %68
  %77 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @tick_broadcast_device, i32 0, i32 0), align 8
  %78 = load i64, i64* @TICKDEV_MODE_PERIODIC, align 8
  %79 = icmp eq i64 %77, %78
  br i1 %79, label %80, label %83

80:                                               ; preds = %76
  %81 = load %struct.clock_event_device*, %struct.clock_event_device** %4, align 8
  %82 = call i32 @tick_setup_periodic(%struct.clock_event_device* %81, i32 0)
  br label %83

83:                                               ; preds = %80, %76
  br label %84

84:                                               ; preds = %83, %68
  br label %85

85:                                               ; preds = %30, %84, %67, %63
  %86 = load %struct.clock_event_device*, %struct.clock_event_device** %3, align 8
  %87 = icmp ne %struct.clock_event_device* %86, null
  br i1 %87, label %88, label %115

88:                                               ; preds = %85
  %89 = load i32, i32* @tick_broadcast_mask, align 4
  %90 = call i32 @cpumask_empty(i32 %89)
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %99

92:                                               ; preds = %88
  %93 = load i32, i32* %7, align 4
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %98, label %95

95:                                               ; preds = %92
  %96 = load %struct.clock_event_device*, %struct.clock_event_device** %3, align 8
  %97 = call i32 @clockevents_shutdown(%struct.clock_event_device* %96)
  br label %98

98:                                               ; preds = %95, %92
  br label %114

99:                                               ; preds = %88
  %100 = load i32, i32* %7, align 4
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %113

102:                                              ; preds = %99
  %103 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @tick_broadcast_device, i32 0, i32 0), align 8
  %104 = load i64, i64* @TICKDEV_MODE_PERIODIC, align 8
  %105 = icmp eq i64 %103, %104
  br i1 %105, label %106, label %109

106:                                              ; preds = %102
  %107 = load %struct.clock_event_device*, %struct.clock_event_device** %3, align 8
  %108 = call i32 @tick_broadcast_start_periodic(%struct.clock_event_device* %107)
  br label %112

109:                                              ; preds = %102
  %110 = load %struct.clock_event_device*, %struct.clock_event_device** %3, align 8
  %111 = call i32 @tick_broadcast_setup_oneshot(%struct.clock_event_device* %110)
  br label %112

112:                                              ; preds = %109, %106
  br label %113

113:                                              ; preds = %112, %99
  br label %114

114:                                              ; preds = %113, %98
  br label %115

115:                                              ; preds = %114, %85
  br label %116

116:                                              ; preds = %115, %29, %24
  %117 = load i64, i64* %8, align 8
  %118 = call i32 @raw_spin_unlock_irqrestore(i32* @tick_broadcast_lock, i64 %117)
  ret void
}

declare dso_local i32 @raw_spin_lock_irqsave(i32*, i64) #1

declare dso_local %struct.tick_device* @this_cpu_ptr(i32*) #1

declare dso_local i32 @tick_device_is_functional(%struct.clock_event_device*) #1

declare dso_local i32 @smp_processor_id(...) #1

declare dso_local i32 @cpumask_empty(i32) #1

declare dso_local i32 @cpumask_set_cpu(i32, i32) #1

declare dso_local i32 @cpumask_test_and_set_cpu(i32, i32) #1

declare dso_local i32 @clockevents_shutdown(%struct.clock_event_device*) #1

declare dso_local i32 @cpumask_clear_cpu(i32, i32) #1

declare dso_local i32 @cpumask_test_and_clear_cpu(i32, i32) #1

declare dso_local i32 @tick_setup_periodic(%struct.clock_event_device*, i32) #1

declare dso_local i32 @tick_broadcast_start_periodic(%struct.clock_event_device*) #1

declare dso_local i32 @tick_broadcast_setup_oneshot(%struct.clock_event_device*) #1

declare dso_local i32 @raw_spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
