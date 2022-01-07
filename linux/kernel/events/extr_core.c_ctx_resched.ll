; ModuleID = '/home/carl/AnghaBench/linux/kernel/events/extr_core.c_ctx_resched.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/events/extr_core.c_ctx_resched.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.perf_cpu_context = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.perf_event_context = type { i32 }

@EVENT_CPU = common dso_local global i32 0, align 4
@EVENT_PINNED = common dso_local global i32 0, align 4
@EVENT_FLEXIBLE = common dso_local global i32 0, align 4
@EVENT_ALL = common dso_local global i32 0, align 4
@current = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.perf_cpu_context*, %struct.perf_event_context*, i32)* @ctx_resched to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ctx_resched(%struct.perf_cpu_context* %0, %struct.perf_event_context* %1, i32 %2) #0 {
  %4 = alloca %struct.perf_cpu_context*, align 8
  %5 = alloca %struct.perf_event_context*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.perf_cpu_context* %0, %struct.perf_cpu_context** %4, align 8
  store %struct.perf_event_context* %1, %struct.perf_event_context** %5, align 8
  store i32 %2, i32* %6, align 4
  %9 = load i32, i32* %6, align 4
  %10 = load i32, i32* @EVENT_CPU, align 4
  %11 = and i32 %9, %10
  %12 = icmp ne i32 %11, 0
  %13 = xor i1 %12, true
  %14 = xor i1 %13, true
  %15 = zext i1 %14 to i32
  store i32 %15, i32* %8, align 4
  %16 = load i32, i32* %6, align 4
  %17 = load i32, i32* @EVENT_PINNED, align 4
  %18 = and i32 %16, %17
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %24

20:                                               ; preds = %3
  %21 = load i32, i32* @EVENT_FLEXIBLE, align 4
  %22 = load i32, i32* %6, align 4
  %23 = or i32 %22, %21
  store i32 %23, i32* %6, align 4
  br label %24

24:                                               ; preds = %20, %3
  %25 = load i32, i32* %6, align 4
  %26 = load i32, i32* @EVENT_ALL, align 4
  %27 = and i32 %25, %26
  store i32 %27, i32* %7, align 4
  %28 = load %struct.perf_cpu_context*, %struct.perf_cpu_context** %4, align 8
  %29 = getelementptr inbounds %struct.perf_cpu_context, %struct.perf_cpu_context* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @perf_pmu_disable(i32 %31)
  %33 = load %struct.perf_event_context*, %struct.perf_event_context** %5, align 8
  %34 = icmp ne %struct.perf_event_context* %33, null
  br i1 %34, label %35, label %40

35:                                               ; preds = %24
  %36 = load %struct.perf_cpu_context*, %struct.perf_cpu_context** %4, align 8
  %37 = load %struct.perf_event_context*, %struct.perf_event_context** %5, align 8
  %38 = load i32, i32* %6, align 4
  %39 = call i32 @task_ctx_sched_out(%struct.perf_cpu_context* %36, %struct.perf_event_context* %37, i32 %38)
  br label %40

40:                                               ; preds = %35, %24
  %41 = load i32, i32* %8, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %47

43:                                               ; preds = %40
  %44 = load %struct.perf_cpu_context*, %struct.perf_cpu_context** %4, align 8
  %45 = load i32, i32* %7, align 4
  %46 = call i32 @cpu_ctx_sched_out(%struct.perf_cpu_context* %44, i32 %45)
  br label %57

47:                                               ; preds = %40
  %48 = load i32, i32* %7, align 4
  %49 = load i32, i32* @EVENT_PINNED, align 4
  %50 = and i32 %48, %49
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %56

52:                                               ; preds = %47
  %53 = load %struct.perf_cpu_context*, %struct.perf_cpu_context** %4, align 8
  %54 = load i32, i32* @EVENT_FLEXIBLE, align 4
  %55 = call i32 @cpu_ctx_sched_out(%struct.perf_cpu_context* %53, i32 %54)
  br label %56

56:                                               ; preds = %52, %47
  br label %57

57:                                               ; preds = %56, %43
  %58 = load %struct.perf_cpu_context*, %struct.perf_cpu_context** %4, align 8
  %59 = load %struct.perf_event_context*, %struct.perf_event_context** %5, align 8
  %60 = load i32, i32* @current, align 4
  %61 = call i32 @perf_event_sched_in(%struct.perf_cpu_context* %58, %struct.perf_event_context* %59, i32 %60)
  %62 = load %struct.perf_cpu_context*, %struct.perf_cpu_context** %4, align 8
  %63 = getelementptr inbounds %struct.perf_cpu_context, %struct.perf_cpu_context* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = call i32 @perf_pmu_enable(i32 %65)
  ret void
}

declare dso_local i32 @perf_pmu_disable(i32) #1

declare dso_local i32 @task_ctx_sched_out(%struct.perf_cpu_context*, %struct.perf_event_context*, i32) #1

declare dso_local i32 @cpu_ctx_sched_out(%struct.perf_cpu_context*, i32) #1

declare dso_local i32 @perf_event_sched_in(%struct.perf_cpu_context*, %struct.perf_event_context*, i32) #1

declare dso_local i32 @perf_pmu_enable(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
