; ModuleID = '/home/carl/AnghaBench/linux/kernel/events/extr_core.c_pinned_sched_in.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/events/extr_core.c_pinned_sched_in.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.perf_event = type { i64, i32 }
%struct.sched_in_data = type { %struct.TYPE_2__*, i32, i32 }
%struct.TYPE_2__ = type { i32 }

@PERF_EVENT_STATE_OFF = common dso_local global i64 0, align 8
@PERF_EVENT_STATE_INACTIVE = common dso_local global i64 0, align 8
@PERF_EVENT_STATE_ERROR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.perf_event*, i8*)* @pinned_sched_in to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pinned_sched_in(%struct.perf_event* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.perf_event*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.sched_in_data*, align 8
  store %struct.perf_event* %0, %struct.perf_event** %4, align 8
  store i8* %1, i8** %5, align 8
  %7 = load i8*, i8** %5, align 8
  %8 = bitcast i8* %7 to %struct.sched_in_data*
  store %struct.sched_in_data* %8, %struct.sched_in_data** %6, align 8
  %9 = load %struct.perf_event*, %struct.perf_event** %4, align 8
  %10 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* @PERF_EVENT_STATE_OFF, align 8
  %13 = icmp sle i64 %11, %12
  br i1 %13, label %14, label %15

14:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %60

15:                                               ; preds = %2
  %16 = load %struct.perf_event*, %struct.perf_event** %4, align 8
  %17 = call i32 @event_filter_match(%struct.perf_event* %16)
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %20, label %19

19:                                               ; preds = %15
  store i32 0, i32* %3, align 4
  br label %60

20:                                               ; preds = %15
  %21 = load %struct.perf_event*, %struct.perf_event** %4, align 8
  %22 = load %struct.sched_in_data*, %struct.sched_in_data** %6, align 8
  %23 = getelementptr inbounds %struct.sched_in_data, %struct.sched_in_data* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 8
  %25 = load %struct.sched_in_data*, %struct.sched_in_data** %6, align 8
  %26 = getelementptr inbounds %struct.sched_in_data, %struct.sched_in_data* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 4
  %28 = call i64 @group_can_go_on(%struct.perf_event* %21, i32 %24, i32 %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %49

30:                                               ; preds = %20
  %31 = load %struct.perf_event*, %struct.perf_event** %4, align 8
  %32 = load %struct.sched_in_data*, %struct.sched_in_data** %6, align 8
  %33 = getelementptr inbounds %struct.sched_in_data, %struct.sched_in_data* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 8
  %35 = load %struct.sched_in_data*, %struct.sched_in_data** %6, align 8
  %36 = getelementptr inbounds %struct.sched_in_data, %struct.sched_in_data* %35, i32 0, i32 0
  %37 = load %struct.TYPE_2__*, %struct.TYPE_2__** %36, align 8
  %38 = call i32 @group_sched_in(%struct.perf_event* %31, i32 %34, %struct.TYPE_2__* %37)
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %48, label %40

40:                                               ; preds = %30
  %41 = load %struct.perf_event*, %struct.perf_event** %4, align 8
  %42 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %41, i32 0, i32 1
  %43 = load %struct.sched_in_data*, %struct.sched_in_data** %6, align 8
  %44 = getelementptr inbounds %struct.sched_in_data, %struct.sched_in_data* %43, i32 0, i32 0
  %45 = load %struct.TYPE_2__*, %struct.TYPE_2__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 0
  %47 = call i32 @list_add_tail(i32* %42, i32* %46)
  br label %48

48:                                               ; preds = %40, %30
  br label %49

49:                                               ; preds = %48, %20
  %50 = load %struct.perf_event*, %struct.perf_event** %4, align 8
  %51 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = load i64, i64* @PERF_EVENT_STATE_INACTIVE, align 8
  %54 = icmp eq i64 %52, %53
  br i1 %54, label %55, label %59

55:                                               ; preds = %49
  %56 = load %struct.perf_event*, %struct.perf_event** %4, align 8
  %57 = load i32, i32* @PERF_EVENT_STATE_ERROR, align 4
  %58 = call i32 @perf_event_set_state(%struct.perf_event* %56, i32 %57)
  br label %59

59:                                               ; preds = %55, %49
  store i32 0, i32* %3, align 4
  br label %60

60:                                               ; preds = %59, %19, %14
  %61 = load i32, i32* %3, align 4
  ret i32 %61
}

declare dso_local i32 @event_filter_match(%struct.perf_event*) #1

declare dso_local i64 @group_can_go_on(%struct.perf_event*, i32, i32) #1

declare dso_local i32 @group_sched_in(%struct.perf_event*, i32, %struct.TYPE_2__*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @perf_event_set_state(%struct.perf_event*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
