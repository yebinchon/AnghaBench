; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/lib/extr_evlist.c_perf_evlist__set_maps.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/lib/extr_evlist.c_perf_evlist__set_maps.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.perf_evlist = type { %struct.perf_thread_map*, %struct.perf_cpu_map* }
%struct.perf_cpu_map = type { i32 }
%struct.perf_thread_map = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @perf_evlist__set_maps(%struct.perf_evlist* %0, %struct.perf_cpu_map* %1, %struct.perf_thread_map* %2) #0 {
  %4 = alloca %struct.perf_evlist*, align 8
  %5 = alloca %struct.perf_cpu_map*, align 8
  %6 = alloca %struct.perf_thread_map*, align 8
  store %struct.perf_evlist* %0, %struct.perf_evlist** %4, align 8
  store %struct.perf_cpu_map* %1, %struct.perf_cpu_map** %5, align 8
  store %struct.perf_thread_map* %2, %struct.perf_thread_map** %6, align 8
  %7 = load %struct.perf_cpu_map*, %struct.perf_cpu_map** %5, align 8
  %8 = load %struct.perf_evlist*, %struct.perf_evlist** %4, align 8
  %9 = getelementptr inbounds %struct.perf_evlist, %struct.perf_evlist* %8, i32 0, i32 1
  %10 = load %struct.perf_cpu_map*, %struct.perf_cpu_map** %9, align 8
  %11 = icmp ne %struct.perf_cpu_map* %7, %10
  br i1 %11, label %12, label %21

12:                                               ; preds = %3
  %13 = load %struct.perf_evlist*, %struct.perf_evlist** %4, align 8
  %14 = getelementptr inbounds %struct.perf_evlist, %struct.perf_evlist* %13, i32 0, i32 1
  %15 = load %struct.perf_cpu_map*, %struct.perf_cpu_map** %14, align 8
  %16 = call i32 @perf_cpu_map__put(%struct.perf_cpu_map* %15)
  %17 = load %struct.perf_cpu_map*, %struct.perf_cpu_map** %5, align 8
  %18 = call %struct.perf_cpu_map* @perf_cpu_map__get(%struct.perf_cpu_map* %17)
  %19 = load %struct.perf_evlist*, %struct.perf_evlist** %4, align 8
  %20 = getelementptr inbounds %struct.perf_evlist, %struct.perf_evlist* %19, i32 0, i32 1
  store %struct.perf_cpu_map* %18, %struct.perf_cpu_map** %20, align 8
  br label %21

21:                                               ; preds = %12, %3
  %22 = load %struct.perf_thread_map*, %struct.perf_thread_map** %6, align 8
  %23 = load %struct.perf_evlist*, %struct.perf_evlist** %4, align 8
  %24 = getelementptr inbounds %struct.perf_evlist, %struct.perf_evlist* %23, i32 0, i32 0
  %25 = load %struct.perf_thread_map*, %struct.perf_thread_map** %24, align 8
  %26 = icmp ne %struct.perf_thread_map* %22, %25
  br i1 %26, label %27, label %36

27:                                               ; preds = %21
  %28 = load %struct.perf_evlist*, %struct.perf_evlist** %4, align 8
  %29 = getelementptr inbounds %struct.perf_evlist, %struct.perf_evlist* %28, i32 0, i32 0
  %30 = load %struct.perf_thread_map*, %struct.perf_thread_map** %29, align 8
  %31 = call i32 @perf_thread_map__put(%struct.perf_thread_map* %30)
  %32 = load %struct.perf_thread_map*, %struct.perf_thread_map** %6, align 8
  %33 = call %struct.perf_thread_map* @perf_thread_map__get(%struct.perf_thread_map* %32)
  %34 = load %struct.perf_evlist*, %struct.perf_evlist** %4, align 8
  %35 = getelementptr inbounds %struct.perf_evlist, %struct.perf_evlist* %34, i32 0, i32 0
  store %struct.perf_thread_map* %33, %struct.perf_thread_map** %35, align 8
  br label %36

36:                                               ; preds = %27, %21
  %37 = load %struct.perf_evlist*, %struct.perf_evlist** %4, align 8
  %38 = call i32 @perf_evlist__propagate_maps(%struct.perf_evlist* %37)
  ret void
}

declare dso_local i32 @perf_cpu_map__put(%struct.perf_cpu_map*) #1

declare dso_local %struct.perf_cpu_map* @perf_cpu_map__get(%struct.perf_cpu_map*) #1

declare dso_local i32 @perf_thread_map__put(%struct.perf_thread_map*) #1

declare dso_local %struct.perf_thread_map* @perf_thread_map__get(%struct.perf_thread_map*) #1

declare dso_local i32 @perf_evlist__propagate_maps(%struct.perf_evlist*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
