; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/util/extr_evsel.c_perf_evsel__open_per_cpu.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/util/extr_evsel.c_perf_evsel__open_per_cpu.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.evsel = type { i32 }
%struct.perf_cpu_map = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @perf_evsel__open_per_cpu(%struct.evsel* %0, %struct.perf_cpu_map* %1) #0 {
  %3 = alloca %struct.evsel*, align 8
  %4 = alloca %struct.perf_cpu_map*, align 8
  store %struct.evsel* %0, %struct.evsel** %3, align 8
  store %struct.perf_cpu_map* %1, %struct.perf_cpu_map** %4, align 8
  %5 = load %struct.evsel*, %struct.evsel** %3, align 8
  %6 = load %struct.perf_cpu_map*, %struct.perf_cpu_map** %4, align 8
  %7 = call i32 @evsel__open(%struct.evsel* %5, %struct.perf_cpu_map* %6, i32* null)
  ret i32 %7
}

declare dso_local i32 @evsel__open(%struct.evsel*, %struct.perf_cpu_map*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
