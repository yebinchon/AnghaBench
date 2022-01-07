; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/util/extr_header.c_perf_event__process_build_id.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/util/extr_header.c_perf_event__process_build_id.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.perf_session = type { i32 }
%union.perf_event = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @perf_event__process_build_id(%struct.perf_session* %0, %union.perf_event* %1) #0 {
  %3 = alloca %struct.perf_session*, align 8
  %4 = alloca %union.perf_event*, align 8
  store %struct.perf_session* %0, %struct.perf_session** %3, align 8
  store %union.perf_event* %1, %union.perf_event** %4, align 8
  %5 = load %union.perf_event*, %union.perf_event** %4, align 8
  %6 = bitcast %union.perf_event* %5 to %struct.TYPE_2__*
  %7 = load %union.perf_event*, %union.perf_event** %4, align 8
  %8 = bitcast %union.perf_event* %7 to %struct.TYPE_2__*
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = load %struct.perf_session*, %struct.perf_session** %3, align 8
  %12 = call i32 @__event_process_build_id(%struct.TYPE_2__* %6, i32 %10, %struct.perf_session* %11)
  ret i32 0
}

declare dso_local i32 @__event_process_build_id(%struct.TYPE_2__*, i32, %struct.perf_session*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
