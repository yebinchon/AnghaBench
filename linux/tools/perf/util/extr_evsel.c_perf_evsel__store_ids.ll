; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/util/extr_evsel.c_perf_evsel__store_ids.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/util/extr_evsel.c_perf_evsel__store_ids.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.evsel = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.perf_thread_map*, %struct.perf_cpu_map* }
%struct.perf_thread_map = type { i32 }
%struct.perf_cpu_map = type { i32 }
%struct.evlist = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @perf_evsel__store_ids(%struct.evsel* %0, %struct.evlist* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.evsel*, align 8
  %5 = alloca %struct.evlist*, align 8
  %6 = alloca %struct.perf_cpu_map*, align 8
  %7 = alloca %struct.perf_thread_map*, align 8
  store %struct.evsel* %0, %struct.evsel** %4, align 8
  store %struct.evlist* %1, %struct.evlist** %5, align 8
  %8 = load %struct.evsel*, %struct.evsel** %4, align 8
  %9 = getelementptr inbounds %struct.evsel, %struct.evsel* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 1
  %11 = load %struct.perf_cpu_map*, %struct.perf_cpu_map** %10, align 8
  store %struct.perf_cpu_map* %11, %struct.perf_cpu_map** %6, align 8
  %12 = load %struct.evsel*, %struct.evsel** %4, align 8
  %13 = getelementptr inbounds %struct.evsel, %struct.evsel* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load %struct.perf_thread_map*, %struct.perf_thread_map** %14, align 8
  store %struct.perf_thread_map* %15, %struct.perf_thread_map** %7, align 8
  %16 = load %struct.evsel*, %struct.evsel** %4, align 8
  %17 = getelementptr inbounds %struct.evsel, %struct.evsel* %16, i32 0, i32 0
  %18 = load %struct.perf_cpu_map*, %struct.perf_cpu_map** %6, align 8
  %19 = getelementptr inbounds %struct.perf_cpu_map, %struct.perf_cpu_map* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.perf_thread_map*, %struct.perf_thread_map** %7, align 8
  %22 = getelementptr inbounds %struct.perf_thread_map, %struct.perf_thread_map* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call i64 @perf_evsel__alloc_id(%struct.TYPE_2__* %17, i32 %20, i32 %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %2
  %27 = load i32, i32* @ENOMEM, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %3, align 4
  br label %33

29:                                               ; preds = %2
  %30 = load %struct.evsel*, %struct.evsel** %4, align 8
  %31 = load %struct.evlist*, %struct.evlist** %5, align 8
  %32 = call i32 @store_evsel_ids(%struct.evsel* %30, %struct.evlist* %31)
  store i32 %32, i32* %3, align 4
  br label %33

33:                                               ; preds = %29, %26
  %34 = load i32, i32* %3, align 4
  ret i32 %34
}

declare dso_local i64 @perf_evsel__alloc_id(%struct.TYPE_2__*, i32, i32) #1

declare dso_local i32 @store_evsel_ids(%struct.evsel*, %struct.evlist*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
