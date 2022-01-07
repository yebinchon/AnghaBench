; ModuleID = '/home/carl/AnghaBench/linux/kernel/events/extr_core.c_perf_event_set_clock.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/events/extr_core.c_perf_event_set_clock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.perf_event = type { %struct.TYPE_2__*, i32* }
%struct.TYPE_2__ = type { i32 }

@ktime_get_mono_fast_ns = common dso_local global i32 0, align 4
@ktime_get_raw_fast_ns = common dso_local global i32 0, align 4
@ktime_get_real_ns = common dso_local global i32 0, align 4
@ktime_get_boottime_ns = common dso_local global i32 0, align 4
@ktime_get_clocktai_ns = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@PERF_PMU_CAP_NO_NMI = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.perf_event*, i32)* @perf_event_set_clock to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @perf_event_set_clock(%struct.perf_event* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.perf_event*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.perf_event* %0, %struct.perf_event** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 0, i32* %6, align 4
  %7 = load i32, i32* %5, align 4
  switch i32 %7, label %23 [
    i32 131, label %8
    i32 130, label %11
    i32 129, label %14
    i32 132, label %17
    i32 128, label %20
  ]

8:                                                ; preds = %2
  %9 = load %struct.perf_event*, %struct.perf_event** %4, align 8
  %10 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %9, i32 0, i32 1
  store i32* @ktime_get_mono_fast_ns, i32** %10, align 8
  store i32 1, i32* %6, align 4
  br label %26

11:                                               ; preds = %2
  %12 = load %struct.perf_event*, %struct.perf_event** %4, align 8
  %13 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %12, i32 0, i32 1
  store i32* @ktime_get_raw_fast_ns, i32** %13, align 8
  store i32 1, i32* %6, align 4
  br label %26

14:                                               ; preds = %2
  %15 = load %struct.perf_event*, %struct.perf_event** %4, align 8
  %16 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %15, i32 0, i32 1
  store i32* @ktime_get_real_ns, i32** %16, align 8
  br label %26

17:                                               ; preds = %2
  %18 = load %struct.perf_event*, %struct.perf_event** %4, align 8
  %19 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %18, i32 0, i32 1
  store i32* @ktime_get_boottime_ns, i32** %19, align 8
  br label %26

20:                                               ; preds = %2
  %21 = load %struct.perf_event*, %struct.perf_event** %4, align 8
  %22 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %21, i32 0, i32 1
  store i32* @ktime_get_clocktai_ns, i32** %22, align 8
  br label %26

23:                                               ; preds = %2
  %24 = load i32, i32* @EINVAL, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %3, align 4
  br label %42

26:                                               ; preds = %20, %17, %14, %11, %8
  %27 = load i32, i32* %6, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %41, label %29

29:                                               ; preds = %26
  %30 = load %struct.perf_event*, %struct.perf_event** %4, align 8
  %31 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %30, i32 0, i32 0
  %32 = load %struct.TYPE_2__*, %struct.TYPE_2__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* @PERF_PMU_CAP_NO_NMI, align 4
  %36 = and i32 %34, %35
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %41, label %38

38:                                               ; preds = %29
  %39 = load i32, i32* @EINVAL, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %3, align 4
  br label %42

41:                                               ; preds = %29, %26
  store i32 0, i32* %3, align 4
  br label %42

42:                                               ; preds = %41, %38, %23
  %43 = load i32, i32* %3, align 4
  ret i32 %43
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
