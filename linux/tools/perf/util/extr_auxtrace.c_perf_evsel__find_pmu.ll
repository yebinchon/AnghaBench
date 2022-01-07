; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/util/extr_auxtrace.c_perf_evsel__find_pmu.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/util/extr_auxtrace.c_perf_evsel__find_pmu.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.perf_pmu = type { i64 }
%struct.evsel = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.perf_pmu* (%struct.evsel*)* @perf_evsel__find_pmu to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.perf_pmu* @perf_evsel__find_pmu(%struct.evsel* %0) #0 {
  %2 = alloca %struct.evsel*, align 8
  %3 = alloca %struct.perf_pmu*, align 8
  store %struct.evsel* %0, %struct.evsel** %2, align 8
  store %struct.perf_pmu* null, %struct.perf_pmu** %3, align 8
  br label %4

4:                                                ; preds = %19, %1
  %5 = load %struct.perf_pmu*, %struct.perf_pmu** %3, align 8
  %6 = call %struct.perf_pmu* @perf_pmu__scan(%struct.perf_pmu* %5)
  store %struct.perf_pmu* %6, %struct.perf_pmu** %3, align 8
  %7 = icmp ne %struct.perf_pmu* %6, null
  br i1 %7, label %8, label %20

8:                                                ; preds = %4
  %9 = load %struct.perf_pmu*, %struct.perf_pmu** %3, align 8
  %10 = getelementptr inbounds %struct.perf_pmu, %struct.perf_pmu* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load %struct.evsel*, %struct.evsel** %2, align 8
  %13 = getelementptr inbounds %struct.evsel, %struct.evsel* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = icmp eq i64 %11, %16
  br i1 %17, label %18, label %19

18:                                               ; preds = %8
  br label %20

19:                                               ; preds = %8
  br label %4

20:                                               ; preds = %18, %4
  %21 = load %struct.perf_pmu*, %struct.perf_pmu** %3, align 8
  ret %struct.perf_pmu* %21
}

declare dso_local %struct.perf_pmu* @perf_pmu__scan(%struct.perf_pmu*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
