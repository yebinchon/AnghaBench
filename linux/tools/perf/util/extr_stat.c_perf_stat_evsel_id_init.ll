; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/util/extr_stat.c_perf_stat_evsel_id_init.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/util/extr_stat.c_perf_stat_evsel_id_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.evsel = type { %struct.perf_stat_evsel* }
%struct.perf_stat_evsel = type { i32 }

@PERF_STAT_EVSEL_ID__MAX = common dso_local global i32 0, align 4
@id_str = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.evsel*)* @perf_stat_evsel_id_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @perf_stat_evsel_id_init(%struct.evsel* %0) #0 {
  %2 = alloca %struct.evsel*, align 8
  %3 = alloca %struct.perf_stat_evsel*, align 8
  %4 = alloca i32, align 4
  store %struct.evsel* %0, %struct.evsel** %2, align 8
  %5 = load %struct.evsel*, %struct.evsel** %2, align 8
  %6 = getelementptr inbounds %struct.evsel, %struct.evsel* %5, i32 0, i32 0
  %7 = load %struct.perf_stat_evsel*, %struct.perf_stat_evsel** %6, align 8
  store %struct.perf_stat_evsel* %7, %struct.perf_stat_evsel** %3, align 8
  store i32 0, i32* %4, align 4
  br label %8

8:                                                ; preds = %27, %1
  %9 = load i32, i32* %4, align 4
  %10 = load i32, i32* @PERF_STAT_EVSEL_ID__MAX, align 4
  %11 = icmp slt i32 %9, %10
  br i1 %11, label %12, label %30

12:                                               ; preds = %8
  %13 = load %struct.evsel*, %struct.evsel** %2, align 8
  %14 = call i32 @perf_evsel__name(%struct.evsel* %13)
  %15 = load i32*, i32** @id_str, align 8
  %16 = load i32, i32* %4, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds i32, i32* %15, i64 %17
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @strcmp(i32 %14, i32 %19)
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %26, label %22

22:                                               ; preds = %12
  %23 = load i32, i32* %4, align 4
  %24 = load %struct.perf_stat_evsel*, %struct.perf_stat_evsel** %3, align 8
  %25 = getelementptr inbounds %struct.perf_stat_evsel, %struct.perf_stat_evsel* %24, i32 0, i32 0
  store i32 %23, i32* %25, align 4
  br label %30

26:                                               ; preds = %12
  br label %27

27:                                               ; preds = %26
  %28 = load i32, i32* %4, align 4
  %29 = add nsw i32 %28, 1
  store i32 %29, i32* %4, align 4
  br label %8

30:                                               ; preds = %22, %8
  ret void
}

declare dso_local i32 @strcmp(i32, i32) #1

declare dso_local i32 @perf_evsel__name(%struct.evsel*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
