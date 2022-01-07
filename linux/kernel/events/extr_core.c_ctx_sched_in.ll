; ModuleID = '/home/carl/AnghaBench/linux/kernel/events/extr_core.c_ctx_sched_in.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/events/extr_core.c_ctx_sched_in.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.perf_event_context = type { i32, i32, i64, i32, i32 }
%struct.perf_cpu_context = type { %struct.perf_event_context* }
%struct.task_struct = type { i32 }

@EVENT_TIME = common dso_local global i32 0, align 4
@EVENT_PINNED = common dso_local global i32 0, align 4
@EVENT_FLEXIBLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.perf_event_context*, %struct.perf_cpu_context*, i32, %struct.task_struct*)* @ctx_sched_in to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ctx_sched_in(%struct.perf_event_context* %0, %struct.perf_cpu_context* %1, i32 %2, %struct.task_struct* %3) #0 {
  %5 = alloca %struct.perf_event_context*, align 8
  %6 = alloca %struct.perf_cpu_context*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.task_struct*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.perf_event_context* %0, %struct.perf_event_context** %5, align 8
  store %struct.perf_cpu_context* %1, %struct.perf_cpu_context** %6, align 8
  store i32 %2, i32* %7, align 4
  store %struct.task_struct* %3, %struct.task_struct** %8, align 8
  %11 = load %struct.perf_event_context*, %struct.perf_event_context** %5, align 8
  %12 = getelementptr inbounds %struct.perf_event_context, %struct.perf_event_context* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  store i32 %13, i32* %9, align 4
  %14 = load %struct.perf_event_context*, %struct.perf_event_context** %5, align 8
  %15 = getelementptr inbounds %struct.perf_event_context, %struct.perf_event_context* %14, i32 0, i32 4
  %16 = call i32 @lockdep_assert_held(i32* %15)
  %17 = load %struct.perf_event_context*, %struct.perf_event_context** %5, align 8
  %18 = getelementptr inbounds %struct.perf_event_context, %struct.perf_event_context* %17, i32 0, i32 3
  %19 = load i32, i32* %18, align 8
  %20 = icmp ne i32 %19, 0
  %21 = xor i1 %20, true
  %22 = zext i1 %21 to i32
  %23 = call i64 @likely(i32 %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %4
  br label %90

26:                                               ; preds = %4
  %27 = load i32, i32* %7, align 4
  %28 = load i32, i32* @EVENT_TIME, align 4
  %29 = or i32 %27, %28
  %30 = load %struct.perf_event_context*, %struct.perf_event_context** %5, align 8
  %31 = getelementptr inbounds %struct.perf_event_context, %struct.perf_event_context* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = or i32 %32, %29
  store i32 %33, i32* %31, align 8
  %34 = load %struct.perf_event_context*, %struct.perf_event_context** %5, align 8
  %35 = getelementptr inbounds %struct.perf_event_context, %struct.perf_event_context* %34, i32 0, i32 2
  %36 = load i64, i64* %35, align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %54

38:                                               ; preds = %26
  %39 = load i32, i32* %9, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %45, label %41

41:                                               ; preds = %38
  %42 = load %struct.perf_event_context*, %struct.perf_event_context** %5, align 8
  %43 = load %struct.perf_cpu_context*, %struct.perf_cpu_context** %6, align 8
  %44 = getelementptr inbounds %struct.perf_cpu_context, %struct.perf_cpu_context* %43, i32 0, i32 0
  store %struct.perf_event_context* %42, %struct.perf_event_context** %44, align 8
  br label %53

45:                                               ; preds = %38
  %46 = load %struct.perf_cpu_context*, %struct.perf_cpu_context** %6, align 8
  %47 = getelementptr inbounds %struct.perf_cpu_context, %struct.perf_cpu_context* %46, i32 0, i32 0
  %48 = load %struct.perf_event_context*, %struct.perf_event_context** %47, align 8
  %49 = load %struct.perf_event_context*, %struct.perf_event_context** %5, align 8
  %50 = icmp ne %struct.perf_event_context* %48, %49
  %51 = zext i1 %50 to i32
  %52 = call i32 @WARN_ON_ONCE(i32 %51)
  br label %53

53:                                               ; preds = %45, %41
  br label %54

54:                                               ; preds = %53, %26
  %55 = load %struct.perf_event_context*, %struct.perf_event_context** %5, align 8
  %56 = getelementptr inbounds %struct.perf_event_context, %struct.perf_event_context* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = load i32, i32* %9, align 4
  %59 = xor i32 %58, %57
  store i32 %59, i32* %9, align 4
  %60 = load i32, i32* %9, align 4
  %61 = load i32, i32* @EVENT_TIME, align 4
  %62 = and i32 %60, %61
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %72

64:                                               ; preds = %54
  %65 = call i32 (...) @perf_clock()
  store i32 %65, i32* %10, align 4
  %66 = load i32, i32* %10, align 4
  %67 = load %struct.perf_event_context*, %struct.perf_event_context** %5, align 8
  %68 = getelementptr inbounds %struct.perf_event_context, %struct.perf_event_context* %67, i32 0, i32 1
  store i32 %66, i32* %68, align 4
  %69 = load %struct.task_struct*, %struct.task_struct** %8, align 8
  %70 = load %struct.perf_event_context*, %struct.perf_event_context** %5, align 8
  %71 = call i32 @perf_cgroup_set_timestamp(%struct.task_struct* %69, %struct.perf_event_context* %70)
  br label %72

72:                                               ; preds = %64, %54
  %73 = load i32, i32* %9, align 4
  %74 = load i32, i32* @EVENT_PINNED, align 4
  %75 = and i32 %73, %74
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %81

77:                                               ; preds = %72
  %78 = load %struct.perf_event_context*, %struct.perf_event_context** %5, align 8
  %79 = load %struct.perf_cpu_context*, %struct.perf_cpu_context** %6, align 8
  %80 = call i32 @ctx_pinned_sched_in(%struct.perf_event_context* %78, %struct.perf_cpu_context* %79)
  br label %81

81:                                               ; preds = %77, %72
  %82 = load i32, i32* %9, align 4
  %83 = load i32, i32* @EVENT_FLEXIBLE, align 4
  %84 = and i32 %82, %83
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %90

86:                                               ; preds = %81
  %87 = load %struct.perf_event_context*, %struct.perf_event_context** %5, align 8
  %88 = load %struct.perf_cpu_context*, %struct.perf_cpu_context** %6, align 8
  %89 = call i32 @ctx_flexible_sched_in(%struct.perf_event_context* %87, %struct.perf_cpu_context* %88)
  br label %90

90:                                               ; preds = %25, %86, %81
  ret void
}

declare dso_local i32 @lockdep_assert_held(i32*) #1

declare dso_local i64 @likely(i32) #1

declare dso_local i32 @WARN_ON_ONCE(i32) #1

declare dso_local i32 @perf_clock(...) #1

declare dso_local i32 @perf_cgroup_set_timestamp(%struct.task_struct*, %struct.perf_event_context*) #1

declare dso_local i32 @ctx_pinned_sched_in(%struct.perf_event_context*, %struct.perf_cpu_context*) #1

declare dso_local i32 @ctx_flexible_sched_in(%struct.perf_event_context*, %struct.perf_cpu_context*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
