; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/util/extr_session.c_perf_session__deliver_synth_event.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/util/extr_session.c_perf_session__deliver_synth_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.perf_session = type { i32, %struct.perf_tool*, %struct.evlist* }
%struct.perf_tool = type { i32 }
%struct.evlist = type { i32 }
%union.perf_event = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.perf_sample = type { i32 }

@PERF_RECORD_USER_TYPE_START = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @perf_session__deliver_synth_event(%struct.perf_session* %0, %union.perf_event* %1, %struct.perf_sample* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.perf_session*, align 8
  %6 = alloca %union.perf_event*, align 8
  %7 = alloca %struct.perf_sample*, align 8
  %8 = alloca %struct.evlist*, align 8
  %9 = alloca %struct.perf_tool*, align 8
  store %struct.perf_session* %0, %struct.perf_session** %5, align 8
  store %union.perf_event* %1, %union.perf_event** %6, align 8
  store %struct.perf_sample* %2, %struct.perf_sample** %7, align 8
  %10 = load %struct.perf_session*, %struct.perf_session** %5, align 8
  %11 = getelementptr inbounds %struct.perf_session, %struct.perf_session* %10, i32 0, i32 2
  %12 = load %struct.evlist*, %struct.evlist** %11, align 8
  store %struct.evlist* %12, %struct.evlist** %8, align 8
  %13 = load %struct.perf_session*, %struct.perf_session** %5, align 8
  %14 = getelementptr inbounds %struct.perf_session, %struct.perf_session* %13, i32 0, i32 1
  %15 = load %struct.perf_tool*, %struct.perf_tool** %14, align 8
  store %struct.perf_tool* %15, %struct.perf_tool** %9, align 8
  %16 = load %struct.evlist*, %struct.evlist** %8, align 8
  %17 = getelementptr inbounds %struct.evlist, %struct.evlist* %16, i32 0, i32 0
  %18 = load %union.perf_event*, %union.perf_event** %6, align 8
  %19 = bitcast %union.perf_event* %18 to %struct.TYPE_2__*
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @events_stats__inc(i32* %17, i32 %21)
  %23 = load %union.perf_event*, %union.perf_event** %6, align 8
  %24 = bitcast %union.perf_event* %23 to %struct.TYPE_2__*
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* @PERF_RECORD_USER_TYPE_START, align 4
  %28 = icmp sge i32 %26, %27
  br i1 %28, label %29, label %33

29:                                               ; preds = %3
  %30 = load %struct.perf_session*, %struct.perf_session** %5, align 8
  %31 = load %union.perf_event*, %union.perf_event** %6, align 8
  %32 = call i32 @perf_session__process_user_event(%struct.perf_session* %30, %union.perf_event* %31, i32 0)
  store i32 %32, i32* %4, align 4
  br label %41

33:                                               ; preds = %3
  %34 = load %struct.perf_session*, %struct.perf_session** %5, align 8
  %35 = getelementptr inbounds %struct.perf_session, %struct.perf_session* %34, i32 0, i32 0
  %36 = load %struct.evlist*, %struct.evlist** %8, align 8
  %37 = load %union.perf_event*, %union.perf_event** %6, align 8
  %38 = load %struct.perf_sample*, %struct.perf_sample** %7, align 8
  %39 = load %struct.perf_tool*, %struct.perf_tool** %9, align 8
  %40 = call i32 @machines__deliver_event(i32* %35, %struct.evlist* %36, %union.perf_event* %37, %struct.perf_sample* %38, %struct.perf_tool* %39, i32 0)
  store i32 %40, i32* %4, align 4
  br label %41

41:                                               ; preds = %33, %29
  %42 = load i32, i32* %4, align 4
  ret i32 %42
}

declare dso_local i32 @events_stats__inc(i32*, i32) #1

declare dso_local i32 @perf_session__process_user_event(%struct.perf_session*, %union.perf_event*, i32) #1

declare dso_local i32 @machines__deliver_event(i32*, %struct.evlist*, %union.perf_event*, %struct.perf_sample*, %struct.perf_tool*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
