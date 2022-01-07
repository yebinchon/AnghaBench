; ModuleID = '/home/carl/AnghaBench/linux/kernel/extr_watchdog_hld.c_hardlockup_detector_event_create.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/extr_watchdog_hld.c_hardlockup_detector_event_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.perf_event_attr = type { i32 }
%struct.perf_event = type { i32 }

@wd_hw_attr = common dso_local global %struct.perf_event_attr zeroinitializer, align 4
@watchdog_thresh = common dso_local global i32 0, align 4
@watchdog_overflow_callback = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [45 x i8] c"Perf event create on CPU %d failed with %ld\0A\00", align 1
@watchdog_ev = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @hardlockup_detector_event_create to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hardlockup_detector_event_create() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca %struct.perf_event_attr*, align 8
  %4 = alloca %struct.perf_event*, align 8
  %5 = call i32 (...) @smp_processor_id()
  store i32 %5, i32* %2, align 4
  store %struct.perf_event_attr* @wd_hw_attr, %struct.perf_event_attr** %3, align 8
  %6 = load i32, i32* @watchdog_thresh, align 4
  %7 = call i32 @hw_nmi_get_sample_period(i32 %6)
  %8 = load %struct.perf_event_attr*, %struct.perf_event_attr** %3, align 8
  %9 = getelementptr inbounds %struct.perf_event_attr, %struct.perf_event_attr* %8, i32 0, i32 0
  store i32 %7, i32* %9, align 4
  %10 = load %struct.perf_event_attr*, %struct.perf_event_attr** %3, align 8
  %11 = load i32, i32* %2, align 4
  %12 = load i32, i32* @watchdog_overflow_callback, align 4
  %13 = call %struct.perf_event* @perf_event_create_kernel_counter(%struct.perf_event_attr* %10, i32 %11, i32* null, i32 %12, i32* null)
  store %struct.perf_event* %13, %struct.perf_event** %4, align 8
  %14 = load %struct.perf_event*, %struct.perf_event** %4, align 8
  %15 = call i64 @IS_ERR(%struct.perf_event* %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %24

17:                                               ; preds = %0
  %18 = load i32, i32* %2, align 4
  %19 = load %struct.perf_event*, %struct.perf_event** %4, align 8
  %20 = call i32 @PTR_ERR(%struct.perf_event* %19)
  %21 = call i32 @pr_debug(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0), i32 %18, i32 %20)
  %22 = load %struct.perf_event*, %struct.perf_event** %4, align 8
  %23 = call i32 @PTR_ERR(%struct.perf_event* %22)
  store i32 %23, i32* %1, align 4
  br label %28

24:                                               ; preds = %0
  %25 = load i32, i32* @watchdog_ev, align 4
  %26 = load %struct.perf_event*, %struct.perf_event** %4, align 8
  %27 = call i32 @this_cpu_write(i32 %25, %struct.perf_event* %26)
  store i32 0, i32* %1, align 4
  br label %28

28:                                               ; preds = %24, %17
  %29 = load i32, i32* %1, align 4
  ret i32 %29
}

declare dso_local i32 @smp_processor_id(...) #1

declare dso_local i32 @hw_nmi_get_sample_period(i32) #1

declare dso_local %struct.perf_event* @perf_event_create_kernel_counter(%struct.perf_event_attr*, i32, i32*, i32, i32*) #1

declare dso_local i64 @IS_ERR(%struct.perf_event*) #1

declare dso_local i32 @pr_debug(i8*, i32, i32) #1

declare dso_local i32 @PTR_ERR(%struct.perf_event*) #1

declare dso_local i32 @this_cpu_write(i32, %struct.perf_event*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
