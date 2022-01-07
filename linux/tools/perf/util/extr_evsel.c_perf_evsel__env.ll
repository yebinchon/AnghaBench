; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/util/extr_evsel.c_perf_evsel__env.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/util/extr_evsel.c_perf_evsel__env.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.perf_env = type { i32 }
%struct.evsel = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.perf_env* }

@perf_env = common dso_local global %struct.perf_env zeroinitializer, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.perf_env* @perf_evsel__env(%struct.evsel* %0) #0 {
  %2 = alloca %struct.perf_env*, align 8
  %3 = alloca %struct.evsel*, align 8
  store %struct.evsel* %0, %struct.evsel** %3, align 8
  %4 = load %struct.evsel*, %struct.evsel** %3, align 8
  %5 = icmp ne %struct.evsel* %4, null
  br i1 %5, label %6, label %17

6:                                                ; preds = %1
  %7 = load %struct.evsel*, %struct.evsel** %3, align 8
  %8 = getelementptr inbounds %struct.evsel, %struct.evsel* %7, i32 0, i32 0
  %9 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %10 = icmp ne %struct.TYPE_2__* %9, null
  br i1 %10, label %11, label %17

11:                                               ; preds = %6
  %12 = load %struct.evsel*, %struct.evsel** %3, align 8
  %13 = getelementptr inbounds %struct.evsel, %struct.evsel* %12, i32 0, i32 0
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load %struct.perf_env*, %struct.perf_env** %15, align 8
  store %struct.perf_env* %16, %struct.perf_env** %2, align 8
  br label %18

17:                                               ; preds = %6, %1
  store %struct.perf_env* @perf_env, %struct.perf_env** %2, align 8
  br label %18

18:                                               ; preds = %17, %11
  %19 = load %struct.perf_env*, %struct.perf_env** %2, align 8
  ret %struct.perf_env* %19
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
