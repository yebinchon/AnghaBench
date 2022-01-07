; ModuleID = '/home/carl/AnghaBench/linux/kernel/events/extr_core.c_flexible_sched_in.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/events/extr_core.c_flexible_sched_in.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.perf_event = type { i64, i32 }
%struct.sched_in_data = type { %struct.TYPE_2__*, i64, i32 }
%struct.TYPE_2__ = type { i32, i32 }

@PERF_EVENT_STATE_OFF = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.perf_event*, i8*)* @flexible_sched_in to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @flexible_sched_in(%struct.perf_event* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.perf_event*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.sched_in_data*, align 8
  %7 = alloca i32, align 4
  store %struct.perf_event* %0, %struct.perf_event** %4, align 8
  store i8* %1, i8** %5, align 8
  %8 = load i8*, i8** %5, align 8
  %9 = bitcast i8* %8 to %struct.sched_in_data*
  store %struct.sched_in_data* %9, %struct.sched_in_data** %6, align 8
  %10 = load %struct.perf_event*, %struct.perf_event** %4, align 8
  %11 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @PERF_EVENT_STATE_OFF, align 8
  %14 = icmp sle i64 %12, %13
  br i1 %14, label %15, label %16

15:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %58

16:                                               ; preds = %2
  %17 = load %struct.perf_event*, %struct.perf_event** %4, align 8
  %18 = call i32 @event_filter_match(%struct.perf_event* %17)
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %21, label %20

20:                                               ; preds = %16
  store i32 0, i32* %3, align 4
  br label %58

21:                                               ; preds = %16
  %22 = load %struct.perf_event*, %struct.perf_event** %4, align 8
  %23 = load %struct.sched_in_data*, %struct.sched_in_data** %6, align 8
  %24 = getelementptr inbounds %struct.sched_in_data, %struct.sched_in_data* %23, i32 0, i32 2
  %25 = load i32, i32* %24, align 8
  %26 = load %struct.sched_in_data*, %struct.sched_in_data** %6, align 8
  %27 = getelementptr inbounds %struct.sched_in_data, %struct.sched_in_data* %26, i32 0, i32 1
  %28 = load i64, i64* %27, align 8
  %29 = call i64 @group_can_go_on(%struct.perf_event* %22, i32 %25, i64 %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %57

31:                                               ; preds = %21
  %32 = load %struct.perf_event*, %struct.perf_event** %4, align 8
  %33 = load %struct.sched_in_data*, %struct.sched_in_data** %6, align 8
  %34 = getelementptr inbounds %struct.sched_in_data, %struct.sched_in_data* %33, i32 0, i32 2
  %35 = load i32, i32* %34, align 8
  %36 = load %struct.sched_in_data*, %struct.sched_in_data** %6, align 8
  %37 = getelementptr inbounds %struct.sched_in_data, %struct.sched_in_data* %36, i32 0, i32 0
  %38 = load %struct.TYPE_2__*, %struct.TYPE_2__** %37, align 8
  %39 = call i32 @group_sched_in(%struct.perf_event* %32, i32 %35, %struct.TYPE_2__* %38)
  store i32 %39, i32* %7, align 4
  %40 = load i32, i32* %7, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %49

42:                                               ; preds = %31
  %43 = load %struct.sched_in_data*, %struct.sched_in_data** %6, align 8
  %44 = getelementptr inbounds %struct.sched_in_data, %struct.sched_in_data* %43, i32 0, i32 1
  store i64 0, i64* %44, align 8
  %45 = load %struct.sched_in_data*, %struct.sched_in_data** %6, align 8
  %46 = getelementptr inbounds %struct.sched_in_data, %struct.sched_in_data* %45, i32 0, i32 0
  %47 = load %struct.TYPE_2__*, %struct.TYPE_2__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 0
  store i32 1, i32* %48, align 4
  store i32 0, i32* %3, align 4
  br label %58

49:                                               ; preds = %31
  %50 = load %struct.perf_event*, %struct.perf_event** %4, align 8
  %51 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %50, i32 0, i32 1
  %52 = load %struct.sched_in_data*, %struct.sched_in_data** %6, align 8
  %53 = getelementptr inbounds %struct.sched_in_data, %struct.sched_in_data* %52, i32 0, i32 0
  %54 = load %struct.TYPE_2__*, %struct.TYPE_2__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i32 0, i32 1
  %56 = call i32 @list_add_tail(i32* %51, i32* %55)
  br label %57

57:                                               ; preds = %49, %21
  store i32 0, i32* %3, align 4
  br label %58

58:                                               ; preds = %57, %42, %20, %15
  %59 = load i32, i32* %3, align 4
  ret i32 %59
}

declare dso_local i32 @event_filter_match(%struct.perf_event*) #1

declare dso_local i64 @group_can_go_on(%struct.perf_event*, i32, i64) #1

declare dso_local i32 @group_sched_in(%struct.perf_event*, i32, %struct.TYPE_2__*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
