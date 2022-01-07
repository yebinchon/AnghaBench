; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/lib/extr_cpumap.c_perf_cpu_map__empty.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/lib/extr_cpumap.c_perf_cpu_map__empty.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.perf_cpu_map = type { i32* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @perf_cpu_map__empty(%struct.perf_cpu_map* %0) #0 {
  %2 = alloca %struct.perf_cpu_map*, align 8
  store %struct.perf_cpu_map* %0, %struct.perf_cpu_map** %2, align 8
  %3 = load %struct.perf_cpu_map*, %struct.perf_cpu_map** %2, align 8
  %4 = icmp ne %struct.perf_cpu_map* %3, null
  br i1 %4, label %5, label %13

5:                                                ; preds = %1
  %6 = load %struct.perf_cpu_map*, %struct.perf_cpu_map** %2, align 8
  %7 = getelementptr inbounds %struct.perf_cpu_map, %struct.perf_cpu_map* %6, i32 0, i32 0
  %8 = load i32*, i32** %7, align 8
  %9 = getelementptr inbounds i32, i32* %8, i64 0
  %10 = load i32, i32* %9, align 4
  %11 = icmp eq i32 %10, -1
  %12 = zext i1 %11 to i32
  br label %14

13:                                               ; preds = %1
  br label %14

14:                                               ; preds = %13, %5
  %15 = phi i32 [ %12, %5 ], [ 1, %13 ]
  ret i32 %15
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
