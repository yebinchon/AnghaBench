; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/util/extr_env.c_perf_env__read_nr_cpus_avail.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/util/extr_env.c_perf_env__read_nr_cpus_avail.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.perf_env = type { i64 }

@ENOENT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.perf_env*)* @perf_env__read_nr_cpus_avail to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @perf_env__read_nr_cpus_avail(%struct.perf_env* %0) #0 {
  %2 = alloca %struct.perf_env*, align 8
  store %struct.perf_env* %0, %struct.perf_env** %2, align 8
  %3 = load %struct.perf_env*, %struct.perf_env** %2, align 8
  %4 = getelementptr inbounds %struct.perf_env, %struct.perf_env* %3, i32 0, i32 0
  %5 = load i64, i64* %4, align 8
  %6 = icmp eq i64 %5, 0
  br i1 %6, label %7, label %11

7:                                                ; preds = %1
  %8 = call i64 (...) @cpu__max_present_cpu()
  %9 = load %struct.perf_env*, %struct.perf_env** %2, align 8
  %10 = getelementptr inbounds %struct.perf_env, %struct.perf_env* %9, i32 0, i32 0
  store i64 %8, i64* %10, align 8
  br label %11

11:                                               ; preds = %7, %1
  %12 = load %struct.perf_env*, %struct.perf_env** %2, align 8
  %13 = getelementptr inbounds %struct.perf_env, %struct.perf_env* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %11
  br label %20

17:                                               ; preds = %11
  %18 = load i32, i32* @ENOENT, align 4
  %19 = sub nsw i32 0, %18
  br label %20

20:                                               ; preds = %17, %16
  %21 = phi i32 [ 0, %16 ], [ %19, %17 ]
  ret i32 %21
}

declare dso_local i64 @cpu__max_present_cpu(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
