; ModuleID = '/home/carl/AnghaBench/linux/kernel/events/extr_core.c___perf_remove_from_context.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/events/extr_core.c___perf_remove_from_context.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.perf_event = type { i32 }
%struct.perf_cpu_context = type { %struct.perf_event_context* }
%struct.perf_event_context = type { i32, i64, i32 }

@EVENT_TIME = common dso_local global i32 0, align 4
@DETACH_GROUP = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.perf_event*, %struct.perf_cpu_context*, %struct.perf_event_context*, i8*)* @__perf_remove_from_context to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__perf_remove_from_context(%struct.perf_event* %0, %struct.perf_cpu_context* %1, %struct.perf_event_context* %2, i8* %3) #0 {
  %5 = alloca %struct.perf_event*, align 8
  %6 = alloca %struct.perf_cpu_context*, align 8
  %7 = alloca %struct.perf_event_context*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  store %struct.perf_event* %0, %struct.perf_event** %5, align 8
  store %struct.perf_cpu_context* %1, %struct.perf_cpu_context** %6, align 8
  store %struct.perf_event_context* %2, %struct.perf_event_context** %7, align 8
  store i8* %3, i8** %8, align 8
  %10 = load i8*, i8** %8, align 8
  %11 = ptrtoint i8* %10 to i64
  store i64 %11, i64* %9, align 8
  %12 = load %struct.perf_event_context*, %struct.perf_event_context** %7, align 8
  %13 = getelementptr inbounds %struct.perf_event_context, %struct.perf_event_context* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = load i32, i32* @EVENT_TIME, align 4
  %16 = and i32 %14, %15
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %23

18:                                               ; preds = %4
  %19 = load %struct.perf_event_context*, %struct.perf_event_context** %7, align 8
  %20 = call i32 @update_context_time(%struct.perf_event_context* %19)
  %21 = load %struct.perf_cpu_context*, %struct.perf_cpu_context** %6, align 8
  %22 = call i32 @update_cgrp_time_from_cpuctx(%struct.perf_cpu_context* %21)
  br label %23

23:                                               ; preds = %18, %4
  %24 = load %struct.perf_event*, %struct.perf_event** %5, align 8
  %25 = load %struct.perf_cpu_context*, %struct.perf_cpu_context** %6, align 8
  %26 = load %struct.perf_event_context*, %struct.perf_event_context** %7, align 8
  %27 = call i32 @event_sched_out(%struct.perf_event* %24, %struct.perf_cpu_context* %25, %struct.perf_event_context* %26)
  %28 = load i64, i64* %9, align 8
  %29 = load i64, i64* @DETACH_GROUP, align 8
  %30 = and i64 %28, %29
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %35

32:                                               ; preds = %23
  %33 = load %struct.perf_event*, %struct.perf_event** %5, align 8
  %34 = call i32 @perf_group_detach(%struct.perf_event* %33)
  br label %35

35:                                               ; preds = %32, %23
  %36 = load %struct.perf_event*, %struct.perf_event** %5, align 8
  %37 = load %struct.perf_event_context*, %struct.perf_event_context** %7, align 8
  %38 = call i32 @list_del_event(%struct.perf_event* %36, %struct.perf_event_context* %37)
  %39 = load %struct.perf_event_context*, %struct.perf_event_context** %7, align 8
  %40 = getelementptr inbounds %struct.perf_event_context, %struct.perf_event_context* %39, i32 0, i32 2
  %41 = load i32, i32* %40, align 8
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %66, label %43

43:                                               ; preds = %35
  %44 = load %struct.perf_event_context*, %struct.perf_event_context** %7, align 8
  %45 = getelementptr inbounds %struct.perf_event_context, %struct.perf_event_context* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %66

48:                                               ; preds = %43
  %49 = load %struct.perf_event_context*, %struct.perf_event_context** %7, align 8
  %50 = getelementptr inbounds %struct.perf_event_context, %struct.perf_event_context* %49, i32 0, i32 0
  store i32 0, i32* %50, align 8
  %51 = load %struct.perf_event_context*, %struct.perf_event_context** %7, align 8
  %52 = getelementptr inbounds %struct.perf_event_context, %struct.perf_event_context* %51, i32 0, i32 1
  %53 = load i64, i64* %52, align 8
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %65

55:                                               ; preds = %48
  %56 = load %struct.perf_cpu_context*, %struct.perf_cpu_context** %6, align 8
  %57 = getelementptr inbounds %struct.perf_cpu_context, %struct.perf_cpu_context* %56, i32 0, i32 0
  %58 = load %struct.perf_event_context*, %struct.perf_event_context** %57, align 8
  %59 = load %struct.perf_event_context*, %struct.perf_event_context** %7, align 8
  %60 = icmp ne %struct.perf_event_context* %58, %59
  %61 = zext i1 %60 to i32
  %62 = call i32 @WARN_ON_ONCE(i32 %61)
  %63 = load %struct.perf_cpu_context*, %struct.perf_cpu_context** %6, align 8
  %64 = getelementptr inbounds %struct.perf_cpu_context, %struct.perf_cpu_context* %63, i32 0, i32 0
  store %struct.perf_event_context* null, %struct.perf_event_context** %64, align 8
  br label %65

65:                                               ; preds = %55, %48
  br label %66

66:                                               ; preds = %65, %43, %35
  ret void
}

declare dso_local i32 @update_context_time(%struct.perf_event_context*) #1

declare dso_local i32 @update_cgrp_time_from_cpuctx(%struct.perf_cpu_context*) #1

declare dso_local i32 @event_sched_out(%struct.perf_event*, %struct.perf_cpu_context*, %struct.perf_event_context*) #1

declare dso_local i32 @perf_group_detach(%struct.perf_event*) #1

declare dso_local i32 @list_del_event(%struct.perf_event*, %struct.perf_event_context*) #1

declare dso_local i32 @WARN_ON_ONCE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
