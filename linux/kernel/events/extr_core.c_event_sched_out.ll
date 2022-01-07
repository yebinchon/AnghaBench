; ModuleID = '/home/carl/AnghaBench/linux/kernel/events/extr_core.c_event_sched_out.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/events/extr_core.c_event_sched_out.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.perf_event = type { i64, i32, %struct.TYPE_5__*, %struct.TYPE_4__, i32, i32, %struct.perf_event_context* }
%struct.TYPE_5__ = type { i32 (%struct.perf_event*, i32)* }
%struct.TYPE_4__ = type { i64, i64, i64 }
%struct.perf_cpu_context = type { i64, i32 }
%struct.perf_event_context = type { i32, i32, i32 }

@PERF_EVENT_STATE_INACTIVE = common dso_local global i32 0, align 4
@PERF_EVENT_STATE_ACTIVE = common dso_local global i64 0, align 8
@PERF_EVENT_STATE_OFF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.perf_event*, %struct.perf_cpu_context*, %struct.perf_event_context*)* @event_sched_out to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @event_sched_out(%struct.perf_event* %0, %struct.perf_cpu_context* %1, %struct.perf_event_context* %2) #0 {
  %4 = alloca %struct.perf_event*, align 8
  %5 = alloca %struct.perf_cpu_context*, align 8
  %6 = alloca %struct.perf_event_context*, align 8
  %7 = alloca i32, align 4
  store %struct.perf_event* %0, %struct.perf_event** %4, align 8
  store %struct.perf_cpu_context* %1, %struct.perf_cpu_context** %5, align 8
  store %struct.perf_event_context* %2, %struct.perf_event_context** %6, align 8
  %8 = load i32, i32* @PERF_EVENT_STATE_INACTIVE, align 4
  store i32 %8, i32* %7, align 4
  %9 = load %struct.perf_event*, %struct.perf_event** %4, align 8
  %10 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %9, i32 0, i32 6
  %11 = load %struct.perf_event_context*, %struct.perf_event_context** %10, align 8
  %12 = load %struct.perf_event_context*, %struct.perf_event_context** %6, align 8
  %13 = icmp ne %struct.perf_event_context* %11, %12
  %14 = zext i1 %13 to i32
  %15 = call i32 @WARN_ON_ONCE(i32 %14)
  %16 = load %struct.perf_event_context*, %struct.perf_event_context** %6, align 8
  %17 = getelementptr inbounds %struct.perf_event_context, %struct.perf_event_context* %16, i32 0, i32 2
  %18 = call i32 @lockdep_assert_held(i32* %17)
  %19 = load %struct.perf_event*, %struct.perf_event** %4, align 8
  %20 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @PERF_EVENT_STATE_ACTIVE, align 8
  %23 = icmp ne i64 %21, %22
  br i1 %23, label %24, label %25

24:                                               ; preds = %3
  br label %110

25:                                               ; preds = %3
  %26 = load %struct.perf_event*, %struct.perf_event** %4, align 8
  %27 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %26, i32 0, i32 5
  %28 = call i32 @list_del_init(i32* %27)
  %29 = load %struct.perf_event*, %struct.perf_event** %4, align 8
  %30 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %29, i32 0, i32 2
  %31 = load %struct.TYPE_5__*, %struct.TYPE_5__** %30, align 8
  %32 = call i32 @perf_pmu_disable(%struct.TYPE_5__* %31)
  %33 = load %struct.perf_event*, %struct.perf_event** %4, align 8
  %34 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %33, i32 0, i32 2
  %35 = load %struct.TYPE_5__*, %struct.TYPE_5__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %35, i32 0, i32 0
  %37 = load i32 (%struct.perf_event*, i32)*, i32 (%struct.perf_event*, i32)** %36, align 8
  %38 = load %struct.perf_event*, %struct.perf_event** %4, align 8
  %39 = call i32 %37(%struct.perf_event* %38, i32 0)
  %40 = load %struct.perf_event*, %struct.perf_event** %4, align 8
  %41 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %40, i32 0, i32 1
  store i32 -1, i32* %41, align 8
  %42 = load %struct.perf_event*, %struct.perf_event** %4, align 8
  %43 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %42, i32 0, i32 4
  %44 = load i32, i32* %43, align 8
  %45 = call i64 @READ_ONCE(i32 %44)
  %46 = icmp sge i64 %45, 0
  br i1 %46, label %47, label %53

47:                                               ; preds = %25
  %48 = load %struct.perf_event*, %struct.perf_event** %4, align 8
  %49 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %48, i32 0, i32 4
  %50 = load i32, i32* %49, align 8
  %51 = call i32 @WRITE_ONCE(i32 %50, i32 -1)
  %52 = load i32, i32* @PERF_EVENT_STATE_OFF, align 4
  store i32 %52, i32* %7, align 4
  br label %53

53:                                               ; preds = %47, %25
  %54 = load %struct.perf_event*, %struct.perf_event** %4, align 8
  %55 = load i32, i32* %7, align 4
  %56 = call i32 @perf_event_set_state(%struct.perf_event* %54, i32 %55)
  %57 = load %struct.perf_event*, %struct.perf_event** %4, align 8
  %58 = call i32 @is_software_event(%struct.perf_event* %57)
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %65, label %60

60:                                               ; preds = %53
  %61 = load %struct.perf_cpu_context*, %struct.perf_cpu_context** %5, align 8
  %62 = getelementptr inbounds %struct.perf_cpu_context, %struct.perf_cpu_context* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 8
  %64 = add nsw i32 %63, -1
  store i32 %64, i32* %62, align 8
  br label %65

65:                                               ; preds = %60, %53
  %66 = load %struct.perf_event_context*, %struct.perf_event_context** %6, align 8
  %67 = getelementptr inbounds %struct.perf_event_context, %struct.perf_event_context* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  %69 = add nsw i32 %68, -1
  store i32 %69, i32* %67, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %74, label %71

71:                                               ; preds = %65
  %72 = load %struct.perf_event_context*, %struct.perf_event_context** %6, align 8
  %73 = call i32 @perf_event_ctx_deactivate(%struct.perf_event_context* %72)
  br label %74

74:                                               ; preds = %71, %65
  %75 = load %struct.perf_event*, %struct.perf_event** %4, align 8
  %76 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %75, i32 0, i32 3
  %77 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %76, i32 0, i32 2
  %78 = load i64, i64* %77, align 8
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %91

80:                                               ; preds = %74
  %81 = load %struct.perf_event*, %struct.perf_event** %4, align 8
  %82 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %81, i32 0, i32 3
  %83 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %82, i32 0, i32 1
  %84 = load i64, i64* %83, align 8
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %91

86:                                               ; preds = %80
  %87 = load %struct.perf_event_context*, %struct.perf_event_context** %6, align 8
  %88 = getelementptr inbounds %struct.perf_event_context, %struct.perf_event_context* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 4
  %90 = add nsw i32 %89, -1
  store i32 %90, i32* %88, align 4
  br label %91

91:                                               ; preds = %86, %80, %74
  %92 = load %struct.perf_event*, %struct.perf_event** %4, align 8
  %93 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %92, i32 0, i32 3
  %94 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %93, i32 0, i32 0
  %95 = load i64, i64* %94, align 8
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %102, label %97

97:                                               ; preds = %91
  %98 = load %struct.perf_cpu_context*, %struct.perf_cpu_context** %5, align 8
  %99 = getelementptr inbounds %struct.perf_cpu_context, %struct.perf_cpu_context* %98, i32 0, i32 1
  %100 = load i32, i32* %99, align 8
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %105, label %102

102:                                              ; preds = %97, %91
  %103 = load %struct.perf_cpu_context*, %struct.perf_cpu_context** %5, align 8
  %104 = getelementptr inbounds %struct.perf_cpu_context, %struct.perf_cpu_context* %103, i32 0, i32 0
  store i64 0, i64* %104, align 8
  br label %105

105:                                              ; preds = %102, %97
  %106 = load %struct.perf_event*, %struct.perf_event** %4, align 8
  %107 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %106, i32 0, i32 2
  %108 = load %struct.TYPE_5__*, %struct.TYPE_5__** %107, align 8
  %109 = call i32 @perf_pmu_enable(%struct.TYPE_5__* %108)
  br label %110

110:                                              ; preds = %105, %24
  ret void
}

declare dso_local i32 @WARN_ON_ONCE(i32) #1

declare dso_local i32 @lockdep_assert_held(i32*) #1

declare dso_local i32 @list_del_init(i32*) #1

declare dso_local i32 @perf_pmu_disable(%struct.TYPE_5__*) #1

declare dso_local i64 @READ_ONCE(i32) #1

declare dso_local i32 @WRITE_ONCE(i32, i32) #1

declare dso_local i32 @perf_event_set_state(%struct.perf_event*, i32) #1

declare dso_local i32 @is_software_event(%struct.perf_event*) #1

declare dso_local i32 @perf_event_ctx_deactivate(%struct.perf_event_context*) #1

declare dso_local i32 @perf_pmu_enable(%struct.TYPE_5__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
