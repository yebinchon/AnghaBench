; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/util/extr_pmu.c_perf_pmu__find_map.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/util/extr_pmu.c_perf_pmu__find_map.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pmu_events_map = type { i32, i32 }
%struct.perf_pmu = type { i32 }

@pmu_events_map = common dso_local global %struct.pmu_events_map* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.pmu_events_map* @perf_pmu__find_map(%struct.perf_pmu* %0) #0 {
  %2 = alloca %struct.pmu_events_map*, align 8
  %3 = alloca %struct.perf_pmu*, align 8
  %4 = alloca %struct.pmu_events_map*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  store %struct.perf_pmu* %0, %struct.perf_pmu** %3, align 8
  %7 = load %struct.perf_pmu*, %struct.perf_pmu** %3, align 8
  %8 = call i8* @perf_pmu__getcpuid(%struct.perf_pmu* %7)
  store i8* %8, i8** %5, align 8
  %9 = load i8*, i8** %5, align 8
  %10 = icmp ne i8* %9, null
  br i1 %10, label %12, label %11

11:                                               ; preds = %1
  store %struct.pmu_events_map* null, %struct.pmu_events_map** %2, align 8
  br label %37

12:                                               ; preds = %1
  store i32 0, i32* %6, align 4
  br label %13

13:                                               ; preds = %32, %12
  %14 = load %struct.pmu_events_map*, %struct.pmu_events_map** @pmu_events_map, align 8
  %15 = load i32, i32* %6, align 4
  %16 = add nsw i32 %15, 1
  store i32 %16, i32* %6, align 4
  %17 = sext i32 %15 to i64
  %18 = getelementptr inbounds %struct.pmu_events_map, %struct.pmu_events_map* %14, i64 %17
  store %struct.pmu_events_map* %18, %struct.pmu_events_map** %4, align 8
  %19 = load %struct.pmu_events_map*, %struct.pmu_events_map** %4, align 8
  %20 = getelementptr inbounds %struct.pmu_events_map, %struct.pmu_events_map* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %24, label %23

23:                                               ; preds = %13
  store %struct.pmu_events_map* null, %struct.pmu_events_map** %4, align 8
  br label %33

24:                                               ; preds = %13
  %25 = load %struct.pmu_events_map*, %struct.pmu_events_map** %4, align 8
  %26 = getelementptr inbounds %struct.pmu_events_map, %struct.pmu_events_map* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load i8*, i8** %5, align 8
  %29 = call i32 @strcmp_cpuid_str(i32 %27, i8* %28)
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %32, label %31

31:                                               ; preds = %24
  br label %33

32:                                               ; preds = %24
  br label %13

33:                                               ; preds = %31, %23
  %34 = load i8*, i8** %5, align 8
  %35 = call i32 @free(i8* %34)
  %36 = load %struct.pmu_events_map*, %struct.pmu_events_map** %4, align 8
  store %struct.pmu_events_map* %36, %struct.pmu_events_map** %2, align 8
  br label %37

37:                                               ; preds = %33, %11
  %38 = load %struct.pmu_events_map*, %struct.pmu_events_map** %2, align 8
  ret %struct.pmu_events_map* %38
}

declare dso_local i8* @perf_pmu__getcpuid(%struct.perf_pmu*) #1

declare dso_local i32 @strcmp_cpuid_str(i32, i8*) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
