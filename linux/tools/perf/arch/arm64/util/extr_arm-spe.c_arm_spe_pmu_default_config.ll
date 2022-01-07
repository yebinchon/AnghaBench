; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/arch/arm64/util/extr_arm-spe.c_arm_spe_pmu_default_config.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/arch/arm64/util/extr_arm-spe.c_arm_spe_pmu_default_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.perf_event_attr = type { i32 }
%struct.perf_pmu = type { i32, i32 }

@.str = private unnamed_addr constant [58 x i8] c"arm_spe default config cannot allocate a perf_event_attr\0A\00", align 1
@.str.1 = private unnamed_addr constant [18 x i8] c"caps/min_interval\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"%llu\00", align 1
@.str.3 = private unnamed_addr constant [62 x i8] c"arm_spe driver doesn't advertise a min. interval. Using 4096\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.perf_event_attr* @arm_spe_pmu_default_config(%struct.perf_pmu* %0) #0 {
  %2 = alloca %struct.perf_event_attr*, align 8
  %3 = alloca %struct.perf_pmu*, align 8
  %4 = alloca %struct.perf_event_attr*, align 8
  store %struct.perf_pmu* %0, %struct.perf_pmu** %3, align 8
  %5 = call %struct.perf_event_attr* @zalloc(i32 4)
  store %struct.perf_event_attr* %5, %struct.perf_event_attr** %4, align 8
  %6 = load %struct.perf_event_attr*, %struct.perf_event_attr** %4, align 8
  %7 = icmp ne %struct.perf_event_attr* %6, null
  br i1 %7, label %10, label %8

8:                                                ; preds = %1
  %9 = call i32 @pr_err(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str, i64 0, i64 0))
  store %struct.perf_event_attr* null, %struct.perf_event_attr** %2, align 8
  br label %26

10:                                               ; preds = %1
  %11 = load %struct.perf_pmu*, %struct.perf_pmu** %3, align 8
  %12 = load %struct.perf_event_attr*, %struct.perf_event_attr** %4, align 8
  %13 = getelementptr inbounds %struct.perf_event_attr, %struct.perf_event_attr* %12, i32 0, i32 0
  %14 = call i32 @perf_pmu__scan_file(%struct.perf_pmu* %11, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i32* %13)
  %15 = icmp ne i32 %14, 1
  br i1 %15, label %16, label %20

16:                                               ; preds = %10
  %17 = call i32 @pr_debug(i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.3, i64 0, i64 0))
  %18 = load %struct.perf_event_attr*, %struct.perf_event_attr** %4, align 8
  %19 = getelementptr inbounds %struct.perf_event_attr, %struct.perf_event_attr* %18, i32 0, i32 0
  store i32 4096, i32* %19, align 4
  br label %20

20:                                               ; preds = %16, %10
  %21 = load %struct.perf_pmu*, %struct.perf_pmu** %3, align 8
  %22 = getelementptr inbounds %struct.perf_pmu, %struct.perf_pmu* %21, i32 0, i32 0
  store i32 1, i32* %22, align 4
  %23 = load %struct.perf_pmu*, %struct.perf_pmu** %3, align 8
  %24 = getelementptr inbounds %struct.perf_pmu, %struct.perf_pmu* %23, i32 0, i32 1
  store i32 0, i32* %24, align 4
  %25 = load %struct.perf_event_attr*, %struct.perf_event_attr** %4, align 8
  store %struct.perf_event_attr* %25, %struct.perf_event_attr** %2, align 8
  br label %26

26:                                               ; preds = %20, %8
  %27 = load %struct.perf_event_attr*, %struct.perf_event_attr** %2, align 8
  ret %struct.perf_event_attr* %27
}

declare dso_local %struct.perf_event_attr* @zalloc(i32) #1

declare dso_local i32 @pr_err(i8*) #1

declare dso_local i32 @perf_pmu__scan_file(%struct.perf_pmu*, i8*, i8*, i32*) #1

declare dso_local i32 @pr_debug(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
