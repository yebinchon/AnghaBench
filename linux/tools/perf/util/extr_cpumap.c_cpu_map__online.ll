; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/util/extr_cpumap.c_cpu_map__online.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/util/extr_cpumap.c_cpu_map__online.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.perf_cpu_map = type { i32 }

@cpu_map__online.online = internal global %struct.perf_cpu_map* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.perf_cpu_map* @cpu_map__online() #0 {
  %1 = load %struct.perf_cpu_map*, %struct.perf_cpu_map** @cpu_map__online.online, align 8
  %2 = icmp ne %struct.perf_cpu_map* %1, null
  br i1 %2, label %5, label %3

3:                                                ; preds = %0
  %4 = call %struct.perf_cpu_map* @perf_cpu_map__new(i32* null)
  store %struct.perf_cpu_map* %4, %struct.perf_cpu_map** @cpu_map__online.online, align 8
  br label %5

5:                                                ; preds = %3, %0
  %6 = load %struct.perf_cpu_map*, %struct.perf_cpu_map** @cpu_map__online.online, align 8
  ret %struct.perf_cpu_map* %6
}

declare dso_local %struct.perf_cpu_map* @perf_cpu_map__new(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
