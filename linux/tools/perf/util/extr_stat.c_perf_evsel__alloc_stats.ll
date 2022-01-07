; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/util/extr_stat.c_perf_evsel__alloc_stats.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/util/extr_stat.c_perf_evsel__alloc_stats.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.evsel = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.evsel*, i32)* @perf_evsel__alloc_stats to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @perf_evsel__alloc_stats(%struct.evsel* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.evsel*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.evsel* %0, %struct.evsel** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.evsel*, %struct.evsel** %4, align 8
  %9 = call i32 @perf_evsel__nr_cpus(%struct.evsel* %8)
  store i32 %9, i32* %6, align 4
  %10 = load %struct.evsel*, %struct.evsel** %4, align 8
  %11 = getelementptr inbounds %struct.evsel, %struct.evsel* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @perf_thread_map__nr(i32 %13)
  store i32 %14, i32* %7, align 4
  %15 = load %struct.evsel*, %struct.evsel** %4, align 8
  %16 = call i64 @perf_evsel__alloc_stat_priv(%struct.evsel* %15)
  %17 = icmp slt i64 %16, 0
  br i1 %17, label %33, label %18

18:                                               ; preds = %2
  %19 = load %struct.evsel*, %struct.evsel** %4, align 8
  %20 = load i32, i32* %6, align 4
  %21 = load i32, i32* %7, align 4
  %22 = call i64 @perf_evsel__alloc_counts(%struct.evsel* %19, i32 %20, i32 %21)
  %23 = icmp slt i64 %22, 0
  br i1 %23, label %33, label %24

24:                                               ; preds = %18
  %25 = load i32, i32* %5, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %36

27:                                               ; preds = %24
  %28 = load %struct.evsel*, %struct.evsel** %4, align 8
  %29 = load i32, i32* %6, align 4
  %30 = load i32, i32* %7, align 4
  %31 = call i64 @perf_evsel__alloc_prev_raw_counts(%struct.evsel* %28, i32 %29, i32 %30)
  %32 = icmp slt i64 %31, 0
  br i1 %32, label %33, label %36

33:                                               ; preds = %27, %18, %2
  %34 = load i32, i32* @ENOMEM, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %3, align 4
  br label %37

36:                                               ; preds = %27, %24
  store i32 0, i32* %3, align 4
  br label %37

37:                                               ; preds = %36, %33
  %38 = load i32, i32* %3, align 4
  ret i32 %38
}

declare dso_local i32 @perf_evsel__nr_cpus(%struct.evsel*) #1

declare dso_local i32 @perf_thread_map__nr(i32) #1

declare dso_local i64 @perf_evsel__alloc_stat_priv(%struct.evsel*) #1

declare dso_local i64 @perf_evsel__alloc_counts(%struct.evsel*, i32, i32) #1

declare dso_local i64 @perf_evsel__alloc_prev_raw_counts(%struct.evsel*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
