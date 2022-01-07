; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/util/extr_evsel.c_perf_evsel__exit.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/util/extr_evsel.c_perf_evsel__exit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 (%struct.evsel*)* }
%struct.evsel = type { i32, i32, %struct.TYPE_5__, i32, i32* }
%struct.TYPE_5__ = type { i32, i32, i32, i32 }

@perf_evsel__object = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @perf_evsel__exit(%struct.evsel* %0) #0 {
  %2 = alloca %struct.evsel*, align 8
  store %struct.evsel* %0, %struct.evsel** %2, align 8
  %3 = load %struct.evsel*, %struct.evsel** %2, align 8
  %4 = getelementptr inbounds %struct.evsel, %struct.evsel* %3, i32 0, i32 2
  %5 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %4, i32 0, i32 3
  %6 = call i32 @list_empty(i32* %5)
  %7 = call i32 @assert(i32 %6)
  %8 = load %struct.evsel*, %struct.evsel** %2, align 8
  %9 = getelementptr inbounds %struct.evsel, %struct.evsel* %8, i32 0, i32 4
  %10 = load i32*, i32** %9, align 8
  %11 = icmp eq i32* %10, null
  %12 = zext i1 %11 to i32
  %13 = call i32 @assert(i32 %12)
  %14 = load %struct.evsel*, %struct.evsel** %2, align 8
  %15 = call i32 @perf_evsel__free_counts(%struct.evsel* %14)
  %16 = load %struct.evsel*, %struct.evsel** %2, align 8
  %17 = getelementptr inbounds %struct.evsel, %struct.evsel* %16, i32 0, i32 2
  %18 = call i32 @perf_evsel__free_fd(%struct.TYPE_5__* %17)
  %19 = load %struct.evsel*, %struct.evsel** %2, align 8
  %20 = getelementptr inbounds %struct.evsel, %struct.evsel* %19, i32 0, i32 2
  %21 = call i32 @perf_evsel__free_id(%struct.TYPE_5__* %20)
  %22 = load %struct.evsel*, %struct.evsel** %2, align 8
  %23 = call i32 @perf_evsel__free_config_terms(%struct.evsel* %22)
  %24 = load %struct.evsel*, %struct.evsel** %2, align 8
  %25 = getelementptr inbounds %struct.evsel, %struct.evsel* %24, i32 0, i32 3
  %26 = load i32, i32* %25, align 8
  %27 = call i32 @cgroup__put(i32 %26)
  %28 = load %struct.evsel*, %struct.evsel** %2, align 8
  %29 = getelementptr inbounds %struct.evsel, %struct.evsel* %28, i32 0, i32 2
  %30 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 8
  %32 = call i32 @perf_cpu_map__put(i32 %31)
  %33 = load %struct.evsel*, %struct.evsel** %2, align 8
  %34 = getelementptr inbounds %struct.evsel, %struct.evsel* %33, i32 0, i32 2
  %35 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @perf_cpu_map__put(i32 %36)
  %38 = load %struct.evsel*, %struct.evsel** %2, align 8
  %39 = getelementptr inbounds %struct.evsel, %struct.evsel* %38, i32 0, i32 2
  %40 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = call i32 @perf_thread_map__put(i32 %41)
  %43 = load %struct.evsel*, %struct.evsel** %2, align 8
  %44 = getelementptr inbounds %struct.evsel, %struct.evsel* %43, i32 0, i32 1
  %45 = call i32 @zfree(i32* %44)
  %46 = load %struct.evsel*, %struct.evsel** %2, align 8
  %47 = getelementptr inbounds %struct.evsel, %struct.evsel* %46, i32 0, i32 0
  %48 = call i32 @zfree(i32* %47)
  %49 = load i32 (%struct.evsel*)*, i32 (%struct.evsel*)** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @perf_evsel__object, i32 0, i32 0), align 8
  %50 = load %struct.evsel*, %struct.evsel** %2, align 8
  %51 = call i32 %49(%struct.evsel* %50)
  ret void
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @list_empty(i32*) #1

declare dso_local i32 @perf_evsel__free_counts(%struct.evsel*) #1

declare dso_local i32 @perf_evsel__free_fd(%struct.TYPE_5__*) #1

declare dso_local i32 @perf_evsel__free_id(%struct.TYPE_5__*) #1

declare dso_local i32 @perf_evsel__free_config_terms(%struct.evsel*) #1

declare dso_local i32 @cgroup__put(i32) #1

declare dso_local i32 @perf_cpu_map__put(i32) #1

declare dso_local i32 @perf_thread_map__put(i32) #1

declare dso_local i32 @zfree(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
