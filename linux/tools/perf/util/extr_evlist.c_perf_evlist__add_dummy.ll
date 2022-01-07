; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/util/extr_evlist.c_perf_evlist__add_dummy.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/util/extr_evlist.c_perf_evlist__add_dummy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.evlist = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.perf_event_attr = type { i32, i32, i32 }
%struct.evsel = type { i32 }

@PERF_COUNT_SW_DUMMY = common dso_local global i32 0, align 4
@PERF_TYPE_SOFTWARE = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @perf_evlist__add_dummy(%struct.evlist* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.evlist*, align 8
  %4 = alloca %struct.perf_event_attr, align 4
  %5 = alloca %struct.evsel*, align 8
  store %struct.evlist* %0, %struct.evlist** %3, align 8
  %6 = getelementptr inbounds %struct.perf_event_attr, %struct.perf_event_attr* %4, i32 0, i32 0
  store i32 12, i32* %6, align 4
  %7 = getelementptr inbounds %struct.perf_event_attr, %struct.perf_event_attr* %4, i32 0, i32 1
  %8 = load i32, i32* @PERF_COUNT_SW_DUMMY, align 4
  store i32 %8, i32* %7, align 4
  %9 = getelementptr inbounds %struct.perf_event_attr, %struct.perf_event_attr* %4, i32 0, i32 2
  %10 = load i32, i32* @PERF_TYPE_SOFTWARE, align 4
  store i32 %10, i32* %9, align 4
  %11 = load %struct.evlist*, %struct.evlist** %3, align 8
  %12 = getelementptr inbounds %struct.evlist, %struct.evlist* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call %struct.evsel* @perf_evsel__new_idx(%struct.perf_event_attr* %4, i32 %14)
  store %struct.evsel* %15, %struct.evsel** %5, align 8
  %16 = load %struct.evsel*, %struct.evsel** %5, align 8
  %17 = icmp eq %struct.evsel* %16, null
  br i1 %17, label %18, label %21

18:                                               ; preds = %1
  %19 = load i32, i32* @ENOMEM, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %2, align 4
  br label %25

21:                                               ; preds = %1
  %22 = load %struct.evlist*, %struct.evlist** %3, align 8
  %23 = load %struct.evsel*, %struct.evsel** %5, align 8
  %24 = call i32 @evlist__add(%struct.evlist* %22, %struct.evsel* %23)
  store i32 0, i32* %2, align 4
  br label %25

25:                                               ; preds = %21, %18
  %26 = load i32, i32* %2, align 4
  ret i32 %26
}

declare dso_local %struct.evsel* @perf_evsel__new_idx(%struct.perf_event_attr*, i32) #1

declare dso_local i32 @evlist__add(%struct.evlist*, %struct.evsel*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
