; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/util/extr_auxtrace.c_auxtrace__process_event.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/util/extr_auxtrace.c_auxtrace__process_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.perf_session = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { {}* }
%union.perf_event = type { i32 }
%struct.perf_sample = type { i32 }
%struct.perf_tool = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @auxtrace__process_event(%struct.perf_session* %0, %union.perf_event* %1, %struct.perf_sample* %2, %struct.perf_tool* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.perf_session*, align 8
  %7 = alloca %union.perf_event*, align 8
  %8 = alloca %struct.perf_sample*, align 8
  %9 = alloca %struct.perf_tool*, align 8
  store %struct.perf_session* %0, %struct.perf_session** %6, align 8
  store %union.perf_event* %1, %union.perf_event** %7, align 8
  store %struct.perf_sample* %2, %struct.perf_sample** %8, align 8
  store %struct.perf_tool* %3, %struct.perf_tool** %9, align 8
  %10 = load %struct.perf_session*, %struct.perf_session** %6, align 8
  %11 = getelementptr inbounds %struct.perf_session, %struct.perf_session* %10, i32 0, i32 0
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %13 = icmp ne %struct.TYPE_2__* %12, null
  br i1 %13, label %15, label %14

14:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  br label %27

15:                                               ; preds = %4
  %16 = load %struct.perf_session*, %struct.perf_session** %6, align 8
  %17 = getelementptr inbounds %struct.perf_session, %struct.perf_session* %16, i32 0, i32 0
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = bitcast {}** %19 to i32 (%struct.perf_session*, %union.perf_event*, %struct.perf_sample*, %struct.perf_tool*)**
  %21 = load i32 (%struct.perf_session*, %union.perf_event*, %struct.perf_sample*, %struct.perf_tool*)*, i32 (%struct.perf_session*, %union.perf_event*, %struct.perf_sample*, %struct.perf_tool*)** %20, align 8
  %22 = load %struct.perf_session*, %struct.perf_session** %6, align 8
  %23 = load %union.perf_event*, %union.perf_event** %7, align 8
  %24 = load %struct.perf_sample*, %struct.perf_sample** %8, align 8
  %25 = load %struct.perf_tool*, %struct.perf_tool** %9, align 8
  %26 = call i32 %21(%struct.perf_session* %22, %union.perf_event* %23, %struct.perf_sample* %24, %struct.perf_tool* %25)
  store i32 %26, i32* %5, align 4
  br label %27

27:                                               ; preds = %15, %14
  %28 = load i32, i32* %5, align 4
  ret i32 %28
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
