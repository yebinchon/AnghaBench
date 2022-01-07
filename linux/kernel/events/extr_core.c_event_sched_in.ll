; ModuleID = '/home/carl/AnghaBench/linux/kernel/events/extr_core.c_event_sched_in.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/events/extr_core.c_event_sched_in.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.perf_event = type { i64, i32, %struct.TYPE_7__*, %struct.TYPE_6__, %struct.TYPE_5__ }
%struct.TYPE_7__ = type { i64 (%struct.perf_event*, i32)* }
%struct.TYPE_6__ = type { i64, i64, i64 }
%struct.TYPE_5__ = type { i64 }
%struct.perf_cpu_context = type { i32, i32 }
%struct.perf_event_context = type { i32, i32, i32 }

@PERF_EVENT_STATE_OFF = common dso_local global i64 0, align 8
@PERF_EVENT_STATE_ACTIVE = common dso_local global i32 0, align 4
@MAX_INTERRUPTS = common dso_local global i64 0, align 8
@PERF_EF_START = common dso_local global i32 0, align 4
@PERF_EVENT_STATE_INACTIVE = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.perf_event*, %struct.perf_cpu_context*, %struct.perf_event_context*)* @event_sched_in to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @event_sched_in(%struct.perf_event* %0, %struct.perf_cpu_context* %1, %struct.perf_event_context* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.perf_event*, align 8
  %6 = alloca %struct.perf_cpu_context*, align 8
  %7 = alloca %struct.perf_event_context*, align 8
  %8 = alloca i32, align 4
  store %struct.perf_event* %0, %struct.perf_event** %5, align 8
  store %struct.perf_cpu_context* %1, %struct.perf_cpu_context** %6, align 8
  store %struct.perf_event_context* %2, %struct.perf_event_context** %7, align 8
  store i32 0, i32* %8, align 4
  %9 = load %struct.perf_event_context*, %struct.perf_event_context** %7, align 8
  %10 = getelementptr inbounds %struct.perf_event_context, %struct.perf_event_context* %9, i32 0, i32 2
  %11 = call i32 @lockdep_assert_held(i32* %10)
  %12 = load %struct.perf_event*, %struct.perf_event** %5, align 8
  %13 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @PERF_EVENT_STATE_OFF, align 8
  %16 = icmp sle i64 %14, %15
  br i1 %16, label %17, label %18

17:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %121

18:                                               ; preds = %3
  %19 = load %struct.perf_event*, %struct.perf_event** %5, align 8
  %20 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 8
  %22 = call i32 (...) @smp_processor_id()
  %23 = call i32 @WRITE_ONCE(i32 %21, i32 %22)
  %24 = call i32 (...) @smp_wmb()
  %25 = load %struct.perf_event*, %struct.perf_event** %5, align 8
  %26 = load i32, i32* @PERF_EVENT_STATE_ACTIVE, align 4
  %27 = call i32 @perf_event_set_state(%struct.perf_event* %25, i32 %26)
  %28 = load %struct.perf_event*, %struct.perf_event** %5, align 8
  %29 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %28, i32 0, i32 4
  %30 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* @MAX_INTERRUPTS, align 8
  %33 = icmp eq i64 %31, %32
  %34 = zext i1 %33 to i32
  %35 = call i64 @unlikely(i32 %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %43

37:                                               ; preds = %18
  %38 = load %struct.perf_event*, %struct.perf_event** %5, align 8
  %39 = call i32 @perf_log_throttle(%struct.perf_event* %38, i32 1)
  %40 = load %struct.perf_event*, %struct.perf_event** %5, align 8
  %41 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %40, i32 0, i32 4
  %42 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %41, i32 0, i32 0
  store i64 0, i64* %42, align 8
  br label %43

43:                                               ; preds = %37, %18
  %44 = load %struct.perf_event*, %struct.perf_event** %5, align 8
  %45 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %44, i32 0, i32 2
  %46 = load %struct.TYPE_7__*, %struct.TYPE_7__** %45, align 8
  %47 = call i32 @perf_pmu_disable(%struct.TYPE_7__* %46)
  %48 = load %struct.perf_event*, %struct.perf_event** %5, align 8
  %49 = load %struct.perf_event_context*, %struct.perf_event_context** %7, align 8
  %50 = call i32 @perf_set_shadow_time(%struct.perf_event* %48, %struct.perf_event_context* %49)
  %51 = load %struct.perf_event*, %struct.perf_event** %5, align 8
  %52 = call i32 @perf_log_itrace_start(%struct.perf_event* %51)
  %53 = load %struct.perf_event*, %struct.perf_event** %5, align 8
  %54 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %53, i32 0, i32 2
  %55 = load %struct.TYPE_7__*, %struct.TYPE_7__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %55, i32 0, i32 0
  %57 = load i64 (%struct.perf_event*, i32)*, i64 (%struct.perf_event*, i32)** %56, align 8
  %58 = load %struct.perf_event*, %struct.perf_event** %5, align 8
  %59 = load i32, i32* @PERF_EF_START, align 4
  %60 = call i64 %57(%struct.perf_event* %58, i32 %59)
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %70

62:                                               ; preds = %43
  %63 = load %struct.perf_event*, %struct.perf_event** %5, align 8
  %64 = load i32, i32* @PERF_EVENT_STATE_INACTIVE, align 4
  %65 = call i32 @perf_event_set_state(%struct.perf_event* %63, i32 %64)
  %66 = load %struct.perf_event*, %struct.perf_event** %5, align 8
  %67 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %66, i32 0, i32 1
  store i32 -1, i32* %67, align 8
  %68 = load i32, i32* @EAGAIN, align 4
  %69 = sub nsw i32 0, %68
  store i32 %69, i32* %8, align 4
  br label %115

70:                                               ; preds = %43
  %71 = load %struct.perf_event*, %struct.perf_event** %5, align 8
  %72 = call i32 @is_software_event(%struct.perf_event* %71)
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %79, label %74

74:                                               ; preds = %70
  %75 = load %struct.perf_cpu_context*, %struct.perf_cpu_context** %6, align 8
  %76 = getelementptr inbounds %struct.perf_cpu_context, %struct.perf_cpu_context* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 4
  %78 = add nsw i32 %77, 1
  store i32 %78, i32* %76, align 4
  br label %79

79:                                               ; preds = %74, %70
  %80 = load %struct.perf_event_context*, %struct.perf_event_context** %7, align 8
  %81 = getelementptr inbounds %struct.perf_event_context, %struct.perf_event_context* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 4
  %83 = add nsw i32 %82, 1
  store i32 %83, i32* %81, align 4
  %84 = icmp ne i32 %82, 0
  br i1 %84, label %88, label %85

85:                                               ; preds = %79
  %86 = load %struct.perf_event_context*, %struct.perf_event_context** %7, align 8
  %87 = call i32 @perf_event_ctx_activate(%struct.perf_event_context* %86)
  br label %88

88:                                               ; preds = %85, %79
  %89 = load %struct.perf_event*, %struct.perf_event** %5, align 8
  %90 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %89, i32 0, i32 3
  %91 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %90, i32 0, i32 2
  %92 = load i64, i64* %91, align 8
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %94, label %105

94:                                               ; preds = %88
  %95 = load %struct.perf_event*, %struct.perf_event** %5, align 8
  %96 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %95, i32 0, i32 3
  %97 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %96, i32 0, i32 1
  %98 = load i64, i64* %97, align 8
  %99 = icmp ne i64 %98, 0
  br i1 %99, label %100, label %105

100:                                              ; preds = %94
  %101 = load %struct.perf_event_context*, %struct.perf_event_context** %7, align 8
  %102 = getelementptr inbounds %struct.perf_event_context, %struct.perf_event_context* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 4
  %104 = add nsw i32 %103, 1
  store i32 %104, i32* %102, align 4
  br label %105

105:                                              ; preds = %100, %94, %88
  %106 = load %struct.perf_event*, %struct.perf_event** %5, align 8
  %107 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %106, i32 0, i32 3
  %108 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %107, i32 0, i32 0
  %109 = load i64, i64* %108, align 8
  %110 = icmp ne i64 %109, 0
  br i1 %110, label %111, label %114

111:                                              ; preds = %105
  %112 = load %struct.perf_cpu_context*, %struct.perf_cpu_context** %6, align 8
  %113 = getelementptr inbounds %struct.perf_cpu_context, %struct.perf_cpu_context* %112, i32 0, i32 0
  store i32 1, i32* %113, align 4
  br label %114

114:                                              ; preds = %111, %105
  br label %115

115:                                              ; preds = %114, %62
  %116 = load %struct.perf_event*, %struct.perf_event** %5, align 8
  %117 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %116, i32 0, i32 2
  %118 = load %struct.TYPE_7__*, %struct.TYPE_7__** %117, align 8
  %119 = call i32 @perf_pmu_enable(%struct.TYPE_7__* %118)
  %120 = load i32, i32* %8, align 4
  store i32 %120, i32* %4, align 4
  br label %121

121:                                              ; preds = %115, %17
  %122 = load i32, i32* %4, align 4
  ret i32 %122
}

declare dso_local i32 @lockdep_assert_held(i32*) #1

declare dso_local i32 @WRITE_ONCE(i32, i32) #1

declare dso_local i32 @smp_processor_id(...) #1

declare dso_local i32 @smp_wmb(...) #1

declare dso_local i32 @perf_event_set_state(%struct.perf_event*, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @perf_log_throttle(%struct.perf_event*, i32) #1

declare dso_local i32 @perf_pmu_disable(%struct.TYPE_7__*) #1

declare dso_local i32 @perf_set_shadow_time(%struct.perf_event*, %struct.perf_event_context*) #1

declare dso_local i32 @perf_log_itrace_start(%struct.perf_event*) #1

declare dso_local i32 @is_software_event(%struct.perf_event*) #1

declare dso_local i32 @perf_event_ctx_activate(%struct.perf_event_context*) #1

declare dso_local i32 @perf_pmu_enable(%struct.TYPE_7__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
