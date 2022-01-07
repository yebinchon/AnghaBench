; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/extr_builtin-sched.c_perf_evsel__get_runtime.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/extr_builtin-sched.c_perf_evsel__get_runtime.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.evsel_runtime = type { i32 }
%struct.evsel = type { %struct.evsel_runtime* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.evsel_runtime* (%struct.evsel*)* @perf_evsel__get_runtime to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.evsel_runtime* @perf_evsel__get_runtime(%struct.evsel* %0) #0 {
  %2 = alloca %struct.evsel*, align 8
  %3 = alloca %struct.evsel_runtime*, align 8
  store %struct.evsel* %0, %struct.evsel** %2, align 8
  %4 = load %struct.evsel*, %struct.evsel** %2, align 8
  %5 = getelementptr inbounds %struct.evsel, %struct.evsel* %4, i32 0, i32 0
  %6 = load %struct.evsel_runtime*, %struct.evsel_runtime** %5, align 8
  store %struct.evsel_runtime* %6, %struct.evsel_runtime** %3, align 8
  %7 = load %struct.evsel_runtime*, %struct.evsel_runtime** %3, align 8
  %8 = icmp eq %struct.evsel_runtime* %7, null
  br i1 %8, label %9, label %14

9:                                                ; preds = %1
  %10 = call %struct.evsel_runtime* @zalloc(i32 4)
  store %struct.evsel_runtime* %10, %struct.evsel_runtime** %3, align 8
  %11 = load %struct.evsel_runtime*, %struct.evsel_runtime** %3, align 8
  %12 = load %struct.evsel*, %struct.evsel** %2, align 8
  %13 = getelementptr inbounds %struct.evsel, %struct.evsel* %12, i32 0, i32 0
  store %struct.evsel_runtime* %11, %struct.evsel_runtime** %13, align 8
  br label %14

14:                                               ; preds = %9, %1
  %15 = load %struct.evsel_runtime*, %struct.evsel_runtime** %3, align 8
  ret %struct.evsel_runtime* %15
}

declare dso_local %struct.evsel_runtime* @zalloc(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
