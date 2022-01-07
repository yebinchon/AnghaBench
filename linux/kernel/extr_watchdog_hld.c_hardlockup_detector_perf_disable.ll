; ModuleID = '/home/carl/AnghaBench/linux/kernel/extr_watchdog_hld.c_hardlockup_detector_perf_disable.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/extr_watchdog_hld.c_hardlockup_detector_perf_disable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.perf_event = type { i32 }

@watchdog_ev = common dso_local global i32 0, align 4
@dead_event = common dso_local global i32 0, align 4
@dead_events_mask = common dso_local global i32 0, align 4
@watchdog_cpus = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @hardlockup_detector_perf_disable() #0 {
  %1 = alloca %struct.perf_event*, align 8
  %2 = load i32, i32* @watchdog_ev, align 4
  %3 = call %struct.perf_event* @this_cpu_read(i32 %2)
  store %struct.perf_event* %3, %struct.perf_event** %1, align 8
  %4 = load %struct.perf_event*, %struct.perf_event** %1, align 8
  %5 = icmp ne %struct.perf_event* %4, null
  br i1 %5, label %6, label %17

6:                                                ; preds = %0
  %7 = load %struct.perf_event*, %struct.perf_event** %1, align 8
  %8 = call i32 @perf_event_disable(%struct.perf_event* %7)
  %9 = load i32, i32* @watchdog_ev, align 4
  %10 = call i32 @this_cpu_write(i32 %9, %struct.perf_event* null)
  %11 = load i32, i32* @dead_event, align 4
  %12 = load %struct.perf_event*, %struct.perf_event** %1, align 8
  %13 = call i32 @this_cpu_write(i32 %11, %struct.perf_event* %12)
  %14 = call i32 (...) @smp_processor_id()
  %15 = call i32 @cpumask_set_cpu(i32 %14, i32* @dead_events_mask)
  %16 = call i32 @atomic_dec(i32* @watchdog_cpus)
  br label %17

17:                                               ; preds = %6, %0
  ret void
}

declare dso_local %struct.perf_event* @this_cpu_read(i32) #1

declare dso_local i32 @perf_event_disable(%struct.perf_event*) #1

declare dso_local i32 @this_cpu_write(i32, %struct.perf_event*) #1

declare dso_local i32 @cpumask_set_cpu(i32, i32*) #1

declare dso_local i32 @smp_processor_id(...) #1

declare dso_local i32 @atomic_dec(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
