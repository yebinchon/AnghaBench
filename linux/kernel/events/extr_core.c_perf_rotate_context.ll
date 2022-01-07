; ModuleID = '/home/carl/AnghaBench/linux/kernel/events/extr_core.c_perf_rotate_context.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/events/extr_core.c_perf_rotate_context.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.perf_cpu_context = type { %struct.perf_event_context*, %struct.perf_event_context }
%struct.perf_event_context = type { i32, i32 }
%struct.perf_event = type { i32 }

@EVENT_FLEXIBLE = common dso_local global i32 0, align 4
@current = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.perf_cpu_context*)* @perf_rotate_context to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @perf_rotate_context(%struct.perf_cpu_context* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.perf_cpu_context*, align 8
  %4 = alloca %struct.perf_event*, align 8
  %5 = alloca %struct.perf_event*, align 8
  %6 = alloca %struct.perf_event_context*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.perf_cpu_context* %0, %struct.perf_cpu_context** %3, align 8
  store %struct.perf_event* null, %struct.perf_event** %4, align 8
  store %struct.perf_event* null, %struct.perf_event** %5, align 8
  store %struct.perf_event_context* null, %struct.perf_event_context** %6, align 8
  %9 = load %struct.perf_cpu_context*, %struct.perf_cpu_context** %3, align 8
  %10 = getelementptr inbounds %struct.perf_cpu_context, %struct.perf_cpu_context* %9, i32 0, i32 1
  %11 = getelementptr inbounds %struct.perf_event_context, %struct.perf_event_context* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  store i32 %12, i32* %7, align 4
  %13 = load %struct.perf_cpu_context*, %struct.perf_cpu_context** %3, align 8
  %14 = getelementptr inbounds %struct.perf_cpu_context, %struct.perf_cpu_context* %13, i32 0, i32 0
  %15 = load %struct.perf_event_context*, %struct.perf_event_context** %14, align 8
  store %struct.perf_event_context* %15, %struct.perf_event_context** %6, align 8
  %16 = load %struct.perf_event_context*, %struct.perf_event_context** %6, align 8
  %17 = icmp ne %struct.perf_event_context* %16, null
  br i1 %17, label %18, label %22

18:                                               ; preds = %1
  %19 = load %struct.perf_event_context*, %struct.perf_event_context** %6, align 8
  %20 = getelementptr inbounds %struct.perf_event_context, %struct.perf_event_context* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  br label %23

22:                                               ; preds = %1
  br label %23

23:                                               ; preds = %22, %18
  %24 = phi i32 [ %21, %18 ], [ 0, %22 ]
  store i32 %24, i32* %8, align 4
  %25 = load i32, i32* %7, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %31, label %27

27:                                               ; preds = %23
  %28 = load i32, i32* %8, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %31, label %30

30:                                               ; preds = %27
  store i32 0, i32* %2, align 4
  br label %105

31:                                               ; preds = %27, %23
  %32 = load %struct.perf_cpu_context*, %struct.perf_cpu_context** %3, align 8
  %33 = load %struct.perf_cpu_context*, %struct.perf_cpu_context** %3, align 8
  %34 = getelementptr inbounds %struct.perf_cpu_context, %struct.perf_cpu_context* %33, i32 0, i32 0
  %35 = load %struct.perf_event_context*, %struct.perf_event_context** %34, align 8
  %36 = call i32 @perf_ctx_lock(%struct.perf_cpu_context* %32, %struct.perf_event_context* %35)
  %37 = load %struct.perf_cpu_context*, %struct.perf_cpu_context** %3, align 8
  %38 = getelementptr inbounds %struct.perf_cpu_context, %struct.perf_cpu_context* %37, i32 0, i32 1
  %39 = getelementptr inbounds %struct.perf_event_context, %struct.perf_event_context* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @perf_pmu_disable(i32 %40)
  %42 = load i32, i32* %8, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %47

44:                                               ; preds = %31
  %45 = load %struct.perf_event_context*, %struct.perf_event_context** %6, align 8
  %46 = call %struct.perf_event* @ctx_event_to_rotate(%struct.perf_event_context* %45)
  store %struct.perf_event* %46, %struct.perf_event** %5, align 8
  br label %47

47:                                               ; preds = %44, %31
  %48 = load i32, i32* %7, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %54

50:                                               ; preds = %47
  %51 = load %struct.perf_cpu_context*, %struct.perf_cpu_context** %3, align 8
  %52 = getelementptr inbounds %struct.perf_cpu_context, %struct.perf_cpu_context* %51, i32 0, i32 1
  %53 = call %struct.perf_event* @ctx_event_to_rotate(%struct.perf_event_context* %52)
  store %struct.perf_event* %53, %struct.perf_event** %4, align 8
  br label %54

54:                                               ; preds = %50, %47
  %55 = load %struct.perf_event*, %struct.perf_event** %5, align 8
  %56 = icmp ne %struct.perf_event* %55, null
  br i1 %56, label %63, label %57

57:                                               ; preds = %54
  %58 = load %struct.perf_event_context*, %struct.perf_event_context** %6, align 8
  %59 = icmp ne %struct.perf_event_context* %58, null
  br i1 %59, label %60, label %68

60:                                               ; preds = %57
  %61 = load %struct.perf_event*, %struct.perf_event** %4, align 8
  %62 = icmp ne %struct.perf_event* %61, null
  br i1 %62, label %63, label %68

63:                                               ; preds = %60, %54
  %64 = load %struct.perf_event_context*, %struct.perf_event_context** %6, align 8
  %65 = load %struct.perf_cpu_context*, %struct.perf_cpu_context** %3, align 8
  %66 = load i32, i32* @EVENT_FLEXIBLE, align 4
  %67 = call i32 @ctx_sched_out(%struct.perf_event_context* %64, %struct.perf_cpu_context* %65, i32 %66)
  br label %68

68:                                               ; preds = %63, %60, %57
  %69 = load %struct.perf_event*, %struct.perf_event** %4, align 8
  %70 = icmp ne %struct.perf_event* %69, null
  br i1 %70, label %71, label %75

71:                                               ; preds = %68
  %72 = load %struct.perf_cpu_context*, %struct.perf_cpu_context** %3, align 8
  %73 = load i32, i32* @EVENT_FLEXIBLE, align 4
  %74 = call i32 @cpu_ctx_sched_out(%struct.perf_cpu_context* %72, i32 %73)
  br label %75

75:                                               ; preds = %71, %68
  %76 = load %struct.perf_event*, %struct.perf_event** %5, align 8
  %77 = icmp ne %struct.perf_event* %76, null
  br i1 %77, label %78, label %82

78:                                               ; preds = %75
  %79 = load %struct.perf_event_context*, %struct.perf_event_context** %6, align 8
  %80 = load %struct.perf_event*, %struct.perf_event** %5, align 8
  %81 = call i32 @rotate_ctx(%struct.perf_event_context* %79, %struct.perf_event* %80)
  br label %82

82:                                               ; preds = %78, %75
  %83 = load %struct.perf_event*, %struct.perf_event** %4, align 8
  %84 = icmp ne %struct.perf_event* %83, null
  br i1 %84, label %85, label %90

85:                                               ; preds = %82
  %86 = load %struct.perf_cpu_context*, %struct.perf_cpu_context** %3, align 8
  %87 = getelementptr inbounds %struct.perf_cpu_context, %struct.perf_cpu_context* %86, i32 0, i32 1
  %88 = load %struct.perf_event*, %struct.perf_event** %4, align 8
  %89 = call i32 @rotate_ctx(%struct.perf_event_context* %87, %struct.perf_event* %88)
  br label %90

90:                                               ; preds = %85, %82
  %91 = load %struct.perf_cpu_context*, %struct.perf_cpu_context** %3, align 8
  %92 = load %struct.perf_event_context*, %struct.perf_event_context** %6, align 8
  %93 = load i32, i32* @current, align 4
  %94 = call i32 @perf_event_sched_in(%struct.perf_cpu_context* %91, %struct.perf_event_context* %92, i32 %93)
  %95 = load %struct.perf_cpu_context*, %struct.perf_cpu_context** %3, align 8
  %96 = getelementptr inbounds %struct.perf_cpu_context, %struct.perf_cpu_context* %95, i32 0, i32 1
  %97 = getelementptr inbounds %struct.perf_event_context, %struct.perf_event_context* %96, i32 0, i32 1
  %98 = load i32, i32* %97, align 4
  %99 = call i32 @perf_pmu_enable(i32 %98)
  %100 = load %struct.perf_cpu_context*, %struct.perf_cpu_context** %3, align 8
  %101 = load %struct.perf_cpu_context*, %struct.perf_cpu_context** %3, align 8
  %102 = getelementptr inbounds %struct.perf_cpu_context, %struct.perf_cpu_context* %101, i32 0, i32 0
  %103 = load %struct.perf_event_context*, %struct.perf_event_context** %102, align 8
  %104 = call i32 @perf_ctx_unlock(%struct.perf_cpu_context* %100, %struct.perf_event_context* %103)
  store i32 1, i32* %2, align 4
  br label %105

105:                                              ; preds = %90, %30
  %106 = load i32, i32* %2, align 4
  ret i32 %106
}

declare dso_local i32 @perf_ctx_lock(%struct.perf_cpu_context*, %struct.perf_event_context*) #1

declare dso_local i32 @perf_pmu_disable(i32) #1

declare dso_local %struct.perf_event* @ctx_event_to_rotate(%struct.perf_event_context*) #1

declare dso_local i32 @ctx_sched_out(%struct.perf_event_context*, %struct.perf_cpu_context*, i32) #1

declare dso_local i32 @cpu_ctx_sched_out(%struct.perf_cpu_context*, i32) #1

declare dso_local i32 @rotate_ctx(%struct.perf_event_context*, %struct.perf_event*) #1

declare dso_local i32 @perf_event_sched_in(%struct.perf_cpu_context*, %struct.perf_event_context*, i32) #1

declare dso_local i32 @perf_pmu_enable(i32) #1

declare dso_local i32 @perf_ctx_unlock(%struct.perf_cpu_context*, %struct.perf_event_context*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
