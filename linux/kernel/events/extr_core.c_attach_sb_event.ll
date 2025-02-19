; ModuleID = '/home/carl/AnghaBench/linux/kernel/events/extr_core.c_attach_sb_event.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/events/extr_core.c_attach_sb_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.perf_event = type { i32, i32 }
%struct.pmu_event_list = type { i32, i32 }

@pmu_sb_events = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.perf_event*)* @attach_sb_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @attach_sb_event(%struct.perf_event* %0) #0 {
  %2 = alloca %struct.perf_event*, align 8
  %3 = alloca %struct.pmu_event_list*, align 8
  store %struct.perf_event* %0, %struct.perf_event** %2, align 8
  %4 = load %struct.perf_event*, %struct.perf_event** %2, align 8
  %5 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %4, i32 0, i32 1
  %6 = load i32, i32* %5, align 4
  %7 = call %struct.pmu_event_list* @per_cpu_ptr(i32* @pmu_sb_events, i32 %6)
  store %struct.pmu_event_list* %7, %struct.pmu_event_list** %3, align 8
  %8 = load %struct.pmu_event_list*, %struct.pmu_event_list** %3, align 8
  %9 = getelementptr inbounds %struct.pmu_event_list, %struct.pmu_event_list* %8, i32 0, i32 0
  %10 = call i32 @raw_spin_lock(i32* %9)
  %11 = load %struct.perf_event*, %struct.perf_event** %2, align 8
  %12 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %11, i32 0, i32 0
  %13 = load %struct.pmu_event_list*, %struct.pmu_event_list** %3, align 8
  %14 = getelementptr inbounds %struct.pmu_event_list, %struct.pmu_event_list* %13, i32 0, i32 1
  %15 = call i32 @list_add_rcu(i32* %12, i32* %14)
  %16 = load %struct.pmu_event_list*, %struct.pmu_event_list** %3, align 8
  %17 = getelementptr inbounds %struct.pmu_event_list, %struct.pmu_event_list* %16, i32 0, i32 0
  %18 = call i32 @raw_spin_unlock(i32* %17)
  ret void
}

declare dso_local %struct.pmu_event_list* @per_cpu_ptr(i32*, i32) #1

declare dso_local i32 @raw_spin_lock(i32*) #1

declare dso_local i32 @list_add_rcu(i32*, i32*) #1

declare dso_local i32 @raw_spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
