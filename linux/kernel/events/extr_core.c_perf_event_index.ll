; ModuleID = '/home/carl/AnghaBench/linux/kernel/events/extr_core.c_perf_event_index.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/events/extr_core.c_perf_event_index.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.perf_event = type { i64, %struct.TYPE_4__*, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { {}* }
%struct.TYPE_3__ = type { i32 }

@PERF_HES_STOPPED = common dso_local global i32 0, align 4
@PERF_EVENT_STATE_ACTIVE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.perf_event*)* @perf_event_index to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @perf_event_index(%struct.perf_event* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.perf_event*, align 8
  store %struct.perf_event* %0, %struct.perf_event** %3, align 8
  %4 = load %struct.perf_event*, %struct.perf_event** %3, align 8
  %5 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %4, i32 0, i32 2
  %6 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 8
  %8 = load i32, i32* @PERF_HES_STOPPED, align 4
  %9 = and i32 %7, %8
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %12

11:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %28

12:                                               ; preds = %1
  %13 = load %struct.perf_event*, %struct.perf_event** %3, align 8
  %14 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @PERF_EVENT_STATE_ACTIVE, align 8
  %17 = icmp ne i64 %15, %16
  br i1 %17, label %18, label %19

18:                                               ; preds = %12
  store i32 0, i32* %2, align 4
  br label %28

19:                                               ; preds = %12
  %20 = load %struct.perf_event*, %struct.perf_event** %3, align 8
  %21 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %20, i32 0, i32 1
  %22 = load %struct.TYPE_4__*, %struct.TYPE_4__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 0
  %24 = bitcast {}** %23 to i32 (%struct.perf_event*)**
  %25 = load i32 (%struct.perf_event*)*, i32 (%struct.perf_event*)** %24, align 8
  %26 = load %struct.perf_event*, %struct.perf_event** %3, align 8
  %27 = call i32 %25(%struct.perf_event* %26)
  store i32 %27, i32* %2, align 4
  br label %28

28:                                               ; preds = %19, %18, %11
  %29 = load i32, i32* %2, align 4
  ret i32 %29
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
