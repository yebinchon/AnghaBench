; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/util/extr_parse-events.c_perf_pmu__parse_cleanup.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/util/extr_parse-events.c_perf_pmu__parse_cleanup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.perf_pmu_event_symbol = type { %struct.perf_pmu_event_symbol* }

@perf_pmu_events_list_num = common dso_local global i32 0, align 4
@perf_pmu_events_list = common dso_local global %struct.perf_pmu_event_symbol* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @perf_pmu__parse_cleanup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @perf_pmu__parse_cleanup() #0 {
  %1 = alloca %struct.perf_pmu_event_symbol*, align 8
  %2 = alloca i32, align 4
  %3 = load i32, i32* @perf_pmu_events_list_num, align 4
  %4 = icmp sgt i32 %3, 0
  br i1 %4, label %5, label %23

5:                                                ; preds = %0
  store i32 0, i32* %2, align 4
  br label %6

6:                                                ; preds = %18, %5
  %7 = load i32, i32* %2, align 4
  %8 = load i32, i32* @perf_pmu_events_list_num, align 4
  %9 = icmp slt i32 %7, %8
  br i1 %9, label %10, label %21

10:                                               ; preds = %6
  %11 = load %struct.perf_pmu_event_symbol*, %struct.perf_pmu_event_symbol** @perf_pmu_events_list, align 8
  %12 = load i32, i32* %2, align 4
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds %struct.perf_pmu_event_symbol, %struct.perf_pmu_event_symbol* %11, i64 %13
  store %struct.perf_pmu_event_symbol* %14, %struct.perf_pmu_event_symbol** %1, align 8
  %15 = load %struct.perf_pmu_event_symbol*, %struct.perf_pmu_event_symbol** %1, align 8
  %16 = getelementptr inbounds %struct.perf_pmu_event_symbol, %struct.perf_pmu_event_symbol* %15, i32 0, i32 0
  %17 = call i32 @zfree(%struct.perf_pmu_event_symbol** %16)
  br label %18

18:                                               ; preds = %10
  %19 = load i32, i32* %2, align 4
  %20 = add nsw i32 %19, 1
  store i32 %20, i32* %2, align 4
  br label %6

21:                                               ; preds = %6
  %22 = call i32 @zfree(%struct.perf_pmu_event_symbol** @perf_pmu_events_list)
  store i32 0, i32* @perf_pmu_events_list_num, align 4
  br label %23

23:                                               ; preds = %21, %0
  ret void
}

declare dso_local i32 @zfree(%struct.perf_pmu_event_symbol**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
