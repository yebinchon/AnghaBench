; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/util/extr_env.c_perf_env__nr_cpus_avail.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/util/extr_env.c_perf_env__nr_cpus_avail.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.perf_env = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @perf_env__nr_cpus_avail(%struct.perf_env* %0) #0 {
  %2 = alloca %struct.perf_env*, align 8
  store %struct.perf_env* %0, %struct.perf_env** %2, align 8
  %3 = load %struct.perf_env*, %struct.perf_env** %2, align 8
  %4 = icmp ne %struct.perf_env* %3, null
  br i1 %4, label %5, label %13

5:                                                ; preds = %1
  %6 = load %struct.perf_env*, %struct.perf_env** %2, align 8
  %7 = call i32 @perf_env__read_nr_cpus_avail(%struct.perf_env* %6)
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %13, label %9

9:                                                ; preds = %5
  %10 = load %struct.perf_env*, %struct.perf_env** %2, align 8
  %11 = getelementptr inbounds %struct.perf_env, %struct.perf_env* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  br label %14

13:                                               ; preds = %5, %1
  br label %14

14:                                               ; preds = %13, %9
  %15 = phi i32 [ %12, %9 ], [ 0, %13 ]
  ret i32 %15
}

declare dso_local i32 @perf_env__read_nr_cpus_avail(%struct.perf_env*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
