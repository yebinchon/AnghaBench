; ModuleID = '/home/carl/AnghaBench/linux/kernel/events/extr_core.c_task_clock_event_init.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/events/extr_core.c_task_clock_event_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.perf_event = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i64 }

@PERF_TYPE_SOFTWARE = common dso_local global i64 0, align 8
@ENOENT = common dso_local global i32 0, align 4
@PERF_COUNT_SW_TASK_CLOCK = common dso_local global i64 0, align 8
@EOPNOTSUPP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.perf_event*)* @task_clock_event_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @task_clock_event_init(%struct.perf_event* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.perf_event*, align 8
  store %struct.perf_event* %0, %struct.perf_event** %3, align 8
  %4 = load %struct.perf_event*, %struct.perf_event** %3, align 8
  %5 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %4, i32 0, i32 0
  %6 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = load i64, i64* @PERF_TYPE_SOFTWARE, align 8
  %9 = icmp ne i64 %7, %8
  br i1 %9, label %10, label %13

10:                                               ; preds = %1
  %11 = load i32, i32* @ENOENT, align 4
  %12 = sub nsw i32 0, %11
  store i32 %12, i32* %2, align 4
  br label %33

13:                                               ; preds = %1
  %14 = load %struct.perf_event*, %struct.perf_event** %3, align 8
  %15 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 1
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @PERF_COUNT_SW_TASK_CLOCK, align 8
  %19 = icmp ne i64 %17, %18
  br i1 %19, label %20, label %23

20:                                               ; preds = %13
  %21 = load i32, i32* @ENOENT, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %2, align 4
  br label %33

23:                                               ; preds = %13
  %24 = load %struct.perf_event*, %struct.perf_event** %3, align 8
  %25 = call i64 @has_branch_stack(%struct.perf_event* %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %23
  %28 = load i32, i32* @EOPNOTSUPP, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %2, align 4
  br label %33

30:                                               ; preds = %23
  %31 = load %struct.perf_event*, %struct.perf_event** %3, align 8
  %32 = call i32 @perf_swevent_init_hrtimer(%struct.perf_event* %31)
  store i32 0, i32* %2, align 4
  br label %33

33:                                               ; preds = %30, %27, %20, %10
  %34 = load i32, i32* %2, align 4
  ret i32 %34
}

declare dso_local i64 @has_branch_stack(%struct.perf_event*) #1

declare dso_local i32 @perf_swevent_init_hrtimer(%struct.perf_event*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
