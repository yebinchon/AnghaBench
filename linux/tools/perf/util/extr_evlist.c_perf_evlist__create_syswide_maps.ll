; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/util/extr_evlist.c_perf_evlist__create_syswide_maps.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/util/extr_evlist.c_perf_evlist__create_syswide_maps.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.evlist = type { i32 }
%struct.perf_cpu_map = type { i32 }
%struct.perf_thread_map = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.evlist*)* @perf_evlist__create_syswide_maps to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @perf_evlist__create_syswide_maps(%struct.evlist* %0) #0 {
  %2 = alloca %struct.evlist*, align 8
  %3 = alloca %struct.perf_cpu_map*, align 8
  %4 = alloca %struct.perf_thread_map*, align 8
  %5 = alloca i32, align 4
  store %struct.evlist* %0, %struct.evlist** %2, align 8
  %6 = load i32, i32* @ENOMEM, align 4
  %7 = sub nsw i32 0, %6
  store i32 %7, i32* %5, align 4
  %8 = call %struct.perf_cpu_map* @perf_cpu_map__new(i32* null)
  store %struct.perf_cpu_map* %8, %struct.perf_cpu_map** %3, align 8
  %9 = load %struct.perf_cpu_map*, %struct.perf_cpu_map** %3, align 8
  %10 = icmp ne %struct.perf_cpu_map* %9, null
  br i1 %10, label %12, label %11

11:                                               ; preds = %1
  br label %23

12:                                               ; preds = %1
  %13 = call %struct.perf_thread_map* (...) @perf_thread_map__new_dummy()
  store %struct.perf_thread_map* %13, %struct.perf_thread_map** %4, align 8
  %14 = load %struct.perf_thread_map*, %struct.perf_thread_map** %4, align 8
  %15 = icmp ne %struct.perf_thread_map* %14, null
  br i1 %15, label %17, label %16

16:                                               ; preds = %12
  br label %25

17:                                               ; preds = %12
  %18 = load %struct.evlist*, %struct.evlist** %2, align 8
  %19 = getelementptr inbounds %struct.evlist, %struct.evlist* %18, i32 0, i32 0
  %20 = load %struct.perf_cpu_map*, %struct.perf_cpu_map** %3, align 8
  %21 = load %struct.perf_thread_map*, %struct.perf_thread_map** %4, align 8
  %22 = call i32 @perf_evlist__set_maps(i32* %19, %struct.perf_cpu_map* %20, %struct.perf_thread_map* %21)
  br label %23

23:                                               ; preds = %25, %17, %11
  %24 = load i32, i32* %5, align 4
  ret i32 %24

25:                                               ; preds = %16
  %26 = load %struct.perf_cpu_map*, %struct.perf_cpu_map** %3, align 8
  %27 = call i32 @perf_cpu_map__put(%struct.perf_cpu_map* %26)
  br label %23
}

declare dso_local %struct.perf_cpu_map* @perf_cpu_map__new(i32*) #1

declare dso_local %struct.perf_thread_map* @perf_thread_map__new_dummy(...) #1

declare dso_local i32 @perf_evlist__set_maps(i32*, %struct.perf_cpu_map*, %struct.perf_thread_map*) #1

declare dso_local i32 @perf_cpu_map__put(%struct.perf_cpu_map*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
