; ModuleID = '/home/carl/AnghaBench/linux/kernel/events/extr_core.c___perf_event_stop.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/events/extr_core.c___perf_event_stop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stop_event_data = type { i64, %struct.perf_event* }
%struct.perf_event = type { %struct.TYPE_2__*, i32, i32 }
%struct.TYPE_2__ = type { i32 (%struct.perf_event*, i32)*, i32 (%struct.perf_event*, i32)* }

@PERF_EVENT_STATE_ACTIVE = common dso_local global i64 0, align 8
@EAGAIN = common dso_local global i32 0, align 4
@PERF_EF_UPDATE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @__perf_event_stop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__perf_event_stop(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca %struct.stop_event_data*, align 8
  %5 = alloca %struct.perf_event*, align 8
  store i8* %0, i8** %3, align 8
  %6 = load i8*, i8** %3, align 8
  %7 = bitcast i8* %6 to %struct.stop_event_data*
  store %struct.stop_event_data* %7, %struct.stop_event_data** %4, align 8
  %8 = load %struct.stop_event_data*, %struct.stop_event_data** %4, align 8
  %9 = getelementptr inbounds %struct.stop_event_data, %struct.stop_event_data* %8, i32 0, i32 1
  %10 = load %struct.perf_event*, %struct.perf_event** %9, align 8
  store %struct.perf_event* %10, %struct.perf_event** %5, align 8
  %11 = load %struct.perf_event*, %struct.perf_event** %5, align 8
  %12 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %11, i32 0, i32 2
  %13 = load i32, i32* %12, align 4
  %14 = call i64 @READ_ONCE(i32 %13)
  %15 = load i64, i64* @PERF_EVENT_STATE_ACTIVE, align 8
  %16 = icmp ne i64 %14, %15
  br i1 %16, label %17, label %18

17:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %51

18:                                               ; preds = %1
  %19 = call i32 (...) @smp_rmb()
  %20 = load %struct.perf_event*, %struct.perf_event** %5, align 8
  %21 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 8
  %23 = call i64 @READ_ONCE(i32 %22)
  %24 = call i64 (...) @smp_processor_id()
  %25 = icmp ne i64 %23, %24
  br i1 %25, label %26, label %29

26:                                               ; preds = %18
  %27 = load i32, i32* @EAGAIN, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %2, align 4
  br label %51

29:                                               ; preds = %18
  %30 = load %struct.perf_event*, %struct.perf_event** %5, align 8
  %31 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %30, i32 0, i32 0
  %32 = load %struct.TYPE_2__*, %struct.TYPE_2__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 1
  %34 = load i32 (%struct.perf_event*, i32)*, i32 (%struct.perf_event*, i32)** %33, align 8
  %35 = load %struct.perf_event*, %struct.perf_event** %5, align 8
  %36 = load i32, i32* @PERF_EF_UPDATE, align 4
  %37 = call i32 %34(%struct.perf_event* %35, i32 %36)
  %38 = load %struct.stop_event_data*, %struct.stop_event_data** %4, align 8
  %39 = getelementptr inbounds %struct.stop_event_data, %struct.stop_event_data* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %50

42:                                               ; preds = %29
  %43 = load %struct.perf_event*, %struct.perf_event** %5, align 8
  %44 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %43, i32 0, i32 0
  %45 = load %struct.TYPE_2__*, %struct.TYPE_2__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 0
  %47 = load i32 (%struct.perf_event*, i32)*, i32 (%struct.perf_event*, i32)** %46, align 8
  %48 = load %struct.perf_event*, %struct.perf_event** %5, align 8
  %49 = call i32 %47(%struct.perf_event* %48, i32 0)
  br label %50

50:                                               ; preds = %42, %29
  store i32 0, i32* %2, align 4
  br label %51

51:                                               ; preds = %50, %26, %17
  %52 = load i32, i32* %2, align 4
  ret i32 %52
}

declare dso_local i64 @READ_ONCE(i32) #1

declare dso_local i32 @smp_rmb(...) #1

declare dso_local i64 @smp_processor_id(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
