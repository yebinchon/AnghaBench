; ModuleID = '/home/carl/AnghaBench/linux/kernel/events/extr_core.c___perf_event_enable.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/events/extr_core.c___perf_event_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.perf_event = type { i64, %struct.perf_event* }
%struct.perf_cpu_context = type { %struct.perf_event_context* }
%struct.perf_event_context = type { i64, i64 }

@PERF_EVENT_STATE_INACTIVE = common dso_local global i64 0, align 8
@PERF_EVENT_STATE_ERROR = common dso_local global i64 0, align 8
@EVENT_TIME = common dso_local global i32 0, align 4
@current = common dso_local global i32 0, align 4
@PERF_EVENT_STATE_ACTIVE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.perf_event*, %struct.perf_cpu_context*, %struct.perf_event_context*, i8*)* @__perf_event_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__perf_event_enable(%struct.perf_event* %0, %struct.perf_cpu_context* %1, %struct.perf_event_context* %2, i8* %3) #0 {
  %5 = alloca %struct.perf_event*, align 8
  %6 = alloca %struct.perf_cpu_context*, align 8
  %7 = alloca %struct.perf_event_context*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.perf_event*, align 8
  %10 = alloca %struct.perf_event_context*, align 8
  store %struct.perf_event* %0, %struct.perf_event** %5, align 8
  store %struct.perf_cpu_context* %1, %struct.perf_cpu_context** %6, align 8
  store %struct.perf_event_context* %2, %struct.perf_event_context** %7, align 8
  store i8* %3, i8** %8, align 8
  %11 = load %struct.perf_event*, %struct.perf_event** %5, align 8
  %12 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %11, i32 0, i32 1
  %13 = load %struct.perf_event*, %struct.perf_event** %12, align 8
  store %struct.perf_event* %13, %struct.perf_event** %9, align 8
  %14 = load %struct.perf_event*, %struct.perf_event** %5, align 8
  %15 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @PERF_EVENT_STATE_INACTIVE, align 8
  %18 = icmp sge i64 %16, %17
  br i1 %18, label %25, label %19

19:                                               ; preds = %4
  %20 = load %struct.perf_event*, %struct.perf_event** %5, align 8
  %21 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @PERF_EVENT_STATE_ERROR, align 8
  %24 = icmp sle i64 %22, %23
  br i1 %24, label %25, label %26

25:                                               ; preds = %19, %4
  br label %91

26:                                               ; preds = %19
  %27 = load %struct.perf_event_context*, %struct.perf_event_context** %7, align 8
  %28 = getelementptr inbounds %struct.perf_event_context, %struct.perf_event_context* %27, i32 0, i32 1
  %29 = load i64, i64* %28, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %36

31:                                               ; preds = %26
  %32 = load %struct.perf_event_context*, %struct.perf_event_context** %7, align 8
  %33 = load %struct.perf_cpu_context*, %struct.perf_cpu_context** %6, align 8
  %34 = load i32, i32* @EVENT_TIME, align 4
  %35 = call i32 @ctx_sched_out(%struct.perf_event_context* %32, %struct.perf_cpu_context* %33, i32 %34)
  br label %36

36:                                               ; preds = %31, %26
  %37 = load %struct.perf_event*, %struct.perf_event** %5, align 8
  %38 = load i64, i64* @PERF_EVENT_STATE_INACTIVE, align 8
  %39 = call i32 @perf_event_set_state(%struct.perf_event* %37, i64 %38)
  %40 = load %struct.perf_event_context*, %struct.perf_event_context** %7, align 8
  %41 = getelementptr inbounds %struct.perf_event_context, %struct.perf_event_context* %40, i32 0, i32 1
  %42 = load i64, i64* %41, align 8
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %45, label %44

44:                                               ; preds = %36
  br label %91

45:                                               ; preds = %36
  %46 = load %struct.perf_event*, %struct.perf_event** %5, align 8
  %47 = call i32 @event_filter_match(%struct.perf_event* %46)
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %55, label %49

49:                                               ; preds = %45
  %50 = load %struct.perf_event_context*, %struct.perf_event_context** %7, align 8
  %51 = load %struct.perf_cpu_context*, %struct.perf_cpu_context** %6, align 8
  %52 = load i32, i32* @EVENT_TIME, align 4
  %53 = load i32, i32* @current, align 4
  %54 = call i32 @ctx_sched_in(%struct.perf_event_context* %50, %struct.perf_cpu_context* %51, i32 %52, i32 %53)
  br label %91

55:                                               ; preds = %45
  %56 = load %struct.perf_event*, %struct.perf_event** %9, align 8
  %57 = load %struct.perf_event*, %struct.perf_event** %5, align 8
  %58 = icmp ne %struct.perf_event* %56, %57
  br i1 %58, label %59, label %71

59:                                               ; preds = %55
  %60 = load %struct.perf_event*, %struct.perf_event** %9, align 8
  %61 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = load i64, i64* @PERF_EVENT_STATE_ACTIVE, align 8
  %64 = icmp ne i64 %62, %63
  br i1 %64, label %65, label %71

65:                                               ; preds = %59
  %66 = load %struct.perf_event_context*, %struct.perf_event_context** %7, align 8
  %67 = load %struct.perf_cpu_context*, %struct.perf_cpu_context** %6, align 8
  %68 = load i32, i32* @EVENT_TIME, align 4
  %69 = load i32, i32* @current, align 4
  %70 = call i32 @ctx_sched_in(%struct.perf_event_context* %66, %struct.perf_cpu_context* %67, i32 %68, i32 %69)
  br label %91

71:                                               ; preds = %59, %55
  %72 = load %struct.perf_cpu_context*, %struct.perf_cpu_context** %6, align 8
  %73 = getelementptr inbounds %struct.perf_cpu_context, %struct.perf_cpu_context* %72, i32 0, i32 0
  %74 = load %struct.perf_event_context*, %struct.perf_event_context** %73, align 8
  store %struct.perf_event_context* %74, %struct.perf_event_context** %10, align 8
  %75 = load %struct.perf_event_context*, %struct.perf_event_context** %7, align 8
  %76 = getelementptr inbounds %struct.perf_event_context, %struct.perf_event_context* %75, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %85

79:                                               ; preds = %71
  %80 = load %struct.perf_event_context*, %struct.perf_event_context** %10, align 8
  %81 = load %struct.perf_event_context*, %struct.perf_event_context** %7, align 8
  %82 = icmp ne %struct.perf_event_context* %80, %81
  %83 = zext i1 %82 to i32
  %84 = call i32 @WARN_ON_ONCE(i32 %83)
  br label %85

85:                                               ; preds = %79, %71
  %86 = load %struct.perf_cpu_context*, %struct.perf_cpu_context** %6, align 8
  %87 = load %struct.perf_event_context*, %struct.perf_event_context** %10, align 8
  %88 = load %struct.perf_event*, %struct.perf_event** %5, align 8
  %89 = call i32 @get_event_type(%struct.perf_event* %88)
  %90 = call i32 @ctx_resched(%struct.perf_cpu_context* %86, %struct.perf_event_context* %87, i32 %89)
  br label %91

91:                                               ; preds = %85, %65, %49, %44, %25
  ret void
}

declare dso_local i32 @ctx_sched_out(%struct.perf_event_context*, %struct.perf_cpu_context*, i32) #1

declare dso_local i32 @perf_event_set_state(%struct.perf_event*, i64) #1

declare dso_local i32 @event_filter_match(%struct.perf_event*) #1

declare dso_local i32 @ctx_sched_in(%struct.perf_event_context*, %struct.perf_cpu_context*, i32, i32) #1

declare dso_local i32 @WARN_ON_ONCE(i32) #1

declare dso_local i32 @ctx_resched(%struct.perf_cpu_context*, %struct.perf_event_context*, i32) #1

declare dso_local i32 @get_event_type(%struct.perf_event*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
