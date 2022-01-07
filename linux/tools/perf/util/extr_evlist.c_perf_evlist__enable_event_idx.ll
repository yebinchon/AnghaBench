; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/util/extr_evlist.c_perf_evlist__enable_event_idx.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/util/extr_evlist.c_perf_evlist__enable_event_idx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.evlist = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.evsel = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @perf_evlist__enable_event_idx(%struct.evlist* %0, %struct.evsel* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.evlist*, align 8
  %6 = alloca %struct.evsel*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.evlist* %0, %struct.evlist** %5, align 8
  store %struct.evsel* %1, %struct.evsel** %6, align 8
  store i32 %2, i32* %7, align 4
  %9 = load %struct.evlist*, %struct.evlist** %5, align 8
  %10 = getelementptr inbounds %struct.evlist, %struct.evlist* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @perf_cpu_map__empty(i32 %12)
  %14 = icmp ne i32 %13, 0
  %15 = xor i1 %14, true
  %16 = zext i1 %15 to i32
  store i32 %16, i32* %8, align 4
  %17 = load i32, i32* %8, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %24

19:                                               ; preds = %3
  %20 = load %struct.evlist*, %struct.evlist** %5, align 8
  %21 = load %struct.evsel*, %struct.evsel** %6, align 8
  %22 = load i32, i32* %7, align 4
  %23 = call i32 @perf_evlist__enable_event_cpu(%struct.evlist* %20, %struct.evsel* %21, i32 %22)
  store i32 %23, i32* %4, align 4
  br label %29

24:                                               ; preds = %3
  %25 = load %struct.evlist*, %struct.evlist** %5, align 8
  %26 = load %struct.evsel*, %struct.evsel** %6, align 8
  %27 = load i32, i32* %7, align 4
  %28 = call i32 @perf_evlist__enable_event_thread(%struct.evlist* %25, %struct.evsel* %26, i32 %27)
  store i32 %28, i32* %4, align 4
  br label %29

29:                                               ; preds = %24, %19
  %30 = load i32, i32* %4, align 4
  ret i32 %30
}

declare dso_local i32 @perf_cpu_map__empty(i32) #1

declare dso_local i32 @perf_evlist__enable_event_cpu(%struct.evlist*, %struct.evsel*, i32) #1

declare dso_local i32 @perf_evlist__enable_event_thread(%struct.evlist*, %struct.evsel*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
