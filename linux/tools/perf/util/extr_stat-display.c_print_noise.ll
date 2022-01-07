; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/util/extr_stat-display.c_print_noise.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/util/extr_stat-display.c_print_noise.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.perf_stat_config = type { i32 }
%struct.evsel = type { %struct.perf_stat_evsel* }
%struct.perf_stat_evsel = type { i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.perf_stat_config*, %struct.evsel*, double)* @print_noise to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @print_noise(%struct.perf_stat_config* %0, %struct.evsel* %1, double %2) #0 {
  %4 = alloca %struct.perf_stat_config*, align 8
  %5 = alloca %struct.evsel*, align 8
  %6 = alloca double, align 8
  %7 = alloca %struct.perf_stat_evsel*, align 8
  store %struct.perf_stat_config* %0, %struct.perf_stat_config** %4, align 8
  store %struct.evsel* %1, %struct.evsel** %5, align 8
  store double %2, double* %6, align 8
  %8 = load %struct.perf_stat_config*, %struct.perf_stat_config** %4, align 8
  %9 = getelementptr inbounds %struct.perf_stat_config, %struct.perf_stat_config* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = icmp eq i32 %10, 1
  br i1 %11, label %12, label %13

12:                                               ; preds = %3
  br label %25

13:                                               ; preds = %3
  %14 = load %struct.evsel*, %struct.evsel** %5, align 8
  %15 = getelementptr inbounds %struct.evsel, %struct.evsel* %14, i32 0, i32 0
  %16 = load %struct.perf_stat_evsel*, %struct.perf_stat_evsel** %15, align 8
  store %struct.perf_stat_evsel* %16, %struct.perf_stat_evsel** %7, align 8
  %17 = load %struct.perf_stat_config*, %struct.perf_stat_config** %4, align 8
  %18 = load %struct.perf_stat_evsel*, %struct.perf_stat_evsel** %7, align 8
  %19 = getelementptr inbounds %struct.perf_stat_evsel, %struct.perf_stat_evsel* %18, i32 0, i32 0
  %20 = load i32*, i32** %19, align 8
  %21 = getelementptr inbounds i32, i32* %20, i64 0
  %22 = call i32 @stddev_stats(i32* %21)
  %23 = load double, double* %6, align 8
  %24 = call i32 @print_noise_pct(%struct.perf_stat_config* %17, i32 %22, double %23)
  br label %25

25:                                               ; preds = %13, %12
  ret void
}

declare dso_local i32 @print_noise_pct(%struct.perf_stat_config*, i32, double) #1

declare dso_local i32 @stddev_stats(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
