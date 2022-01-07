; ModuleID = '/home/carl/AnghaBench/linux/kernel/events/extr_core.c_perf_set_shadow_time.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/events/extr_core.c_perf_set_shadow_time.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.perf_event = type { i64, i64 }
%struct.perf_event_context = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.perf_event*, %struct.perf_event_context*)* @perf_set_shadow_time to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @perf_set_shadow_time(%struct.perf_event* %0, %struct.perf_event_context* %1) #0 {
  %3 = alloca %struct.perf_event*, align 8
  %4 = alloca %struct.perf_event_context*, align 8
  store %struct.perf_event* %0, %struct.perf_event** %3, align 8
  store %struct.perf_event_context* %1, %struct.perf_event_context** %4, align 8
  %5 = load %struct.perf_event*, %struct.perf_event** %3, align 8
  %6 = call i64 @is_cgroup_event(%struct.perf_event* %5)
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %14

8:                                                ; preds = %2
  %9 = load %struct.perf_event*, %struct.perf_event** %3, align 8
  %10 = load %struct.perf_event*, %struct.perf_event** %3, align 8
  %11 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = call i32 @perf_cgroup_set_shadow_time(%struct.perf_event* %9, i64 %12)
  br label %24

14:                                               ; preds = %2
  %15 = load %struct.perf_event*, %struct.perf_event** %3, align 8
  %16 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load %struct.perf_event_context*, %struct.perf_event_context** %4, align 8
  %19 = getelementptr inbounds %struct.perf_event_context, %struct.perf_event_context* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = sub nsw i64 %17, %20
  %22 = load %struct.perf_event*, %struct.perf_event** %3, align 8
  %23 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %22, i32 0, i32 1
  store i64 %21, i64* %23, align 8
  br label %24

24:                                               ; preds = %14, %8
  ret void
}

declare dso_local i64 @is_cgroup_event(%struct.perf_event*) #1

declare dso_local i32 @perf_cgroup_set_shadow_time(%struct.perf_event*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
