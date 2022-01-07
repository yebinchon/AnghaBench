; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/arch/arm/util/extr_cs-etm.c_cs_etm_record_init.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/arch/arm/util/extr_cs-etm.c_cs_etm_record_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.auxtrace_record = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.perf_pmu = type { i32 }
%struct.cs_etm_recording = type { %struct.auxtrace_record, %struct.perf_pmu* }

@CORESIGHT_ETM_PMU_NAME = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@cs_etm_parse_snapshot_options = common dso_local global i32 0, align 4
@cs_etm_recording_options = common dso_local global i32 0, align 4
@cs_etm_info_priv_size = common dso_local global i32 0, align 4
@cs_etm_info_fill = common dso_local global i32 0, align 4
@cs_etm_find_snapshot = common dso_local global i32 0, align 4
@cs_etm_snapshot_start = common dso_local global i32 0, align 4
@cs_etm_snapshot_finish = common dso_local global i32 0, align 4
@cs_etm_reference = common dso_local global i32 0, align 4
@cs_etm_recording_free = common dso_local global i32 0, align 4
@cs_etm_read_finish = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.auxtrace_record* @cs_etm_record_init(i32* %0) #0 {
  %2 = alloca %struct.auxtrace_record*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca %struct.perf_pmu*, align 8
  %5 = alloca %struct.cs_etm_recording*, align 8
  store i32* %0, i32** %3, align 8
  %6 = load i32, i32* @CORESIGHT_ETM_PMU_NAME, align 4
  %7 = call %struct.perf_pmu* @perf_pmu__find(i32 %6)
  store %struct.perf_pmu* %7, %struct.perf_pmu** %4, align 8
  %8 = load %struct.perf_pmu*, %struct.perf_pmu** %4, align 8
  %9 = icmp ne %struct.perf_pmu* %8, null
  br i1 %9, label %14, label %10

10:                                               ; preds = %1
  %11 = load i32, i32* @EINVAL, align 4
  %12 = sub nsw i32 0, %11
  %13 = load i32*, i32** %3, align 8
  store i32 %12, i32* %13, align 4
  br label %69

14:                                               ; preds = %1
  %15 = call %struct.cs_etm_recording* @zalloc(i32 48)
  store %struct.cs_etm_recording* %15, %struct.cs_etm_recording** %5, align 8
  %16 = load %struct.cs_etm_recording*, %struct.cs_etm_recording** %5, align 8
  %17 = icmp ne %struct.cs_etm_recording* %16, null
  br i1 %17, label %22, label %18

18:                                               ; preds = %14
  %19 = load i32, i32* @ENOMEM, align 4
  %20 = sub nsw i32 0, %19
  %21 = load i32*, i32** %3, align 8
  store i32 %20, i32* %21, align 4
  br label %69

22:                                               ; preds = %14
  %23 = load %struct.perf_pmu*, %struct.perf_pmu** %4, align 8
  %24 = load %struct.cs_etm_recording*, %struct.cs_etm_recording** %5, align 8
  %25 = getelementptr inbounds %struct.cs_etm_recording, %struct.cs_etm_recording* %24, i32 0, i32 1
  store %struct.perf_pmu* %23, %struct.perf_pmu** %25, align 8
  %26 = load i32, i32* @cs_etm_parse_snapshot_options, align 4
  %27 = load %struct.cs_etm_recording*, %struct.cs_etm_recording** %5, align 8
  %28 = getelementptr inbounds %struct.cs_etm_recording, %struct.cs_etm_recording* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.auxtrace_record, %struct.auxtrace_record* %28, i32 0, i32 9
  store i32 %26, i32* %29, align 4
  %30 = load i32, i32* @cs_etm_recording_options, align 4
  %31 = load %struct.cs_etm_recording*, %struct.cs_etm_recording** %5, align 8
  %32 = getelementptr inbounds %struct.cs_etm_recording, %struct.cs_etm_recording* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.auxtrace_record, %struct.auxtrace_record* %32, i32 0, i32 8
  store i32 %30, i32* %33, align 8
  %34 = load i32, i32* @cs_etm_info_priv_size, align 4
  %35 = load %struct.cs_etm_recording*, %struct.cs_etm_recording** %5, align 8
  %36 = getelementptr inbounds %struct.cs_etm_recording, %struct.cs_etm_recording* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.auxtrace_record, %struct.auxtrace_record* %36, i32 0, i32 7
  store i32 %34, i32* %37, align 4
  %38 = load i32, i32* @cs_etm_info_fill, align 4
  %39 = load %struct.cs_etm_recording*, %struct.cs_etm_recording** %5, align 8
  %40 = getelementptr inbounds %struct.cs_etm_recording, %struct.cs_etm_recording* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.auxtrace_record, %struct.auxtrace_record* %40, i32 0, i32 6
  store i32 %38, i32* %41, align 8
  %42 = load i32, i32* @cs_etm_find_snapshot, align 4
  %43 = load %struct.cs_etm_recording*, %struct.cs_etm_recording** %5, align 8
  %44 = getelementptr inbounds %struct.cs_etm_recording, %struct.cs_etm_recording* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.auxtrace_record, %struct.auxtrace_record* %44, i32 0, i32 5
  store i32 %42, i32* %45, align 4
  %46 = load i32, i32* @cs_etm_snapshot_start, align 4
  %47 = load %struct.cs_etm_recording*, %struct.cs_etm_recording** %5, align 8
  %48 = getelementptr inbounds %struct.cs_etm_recording, %struct.cs_etm_recording* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.auxtrace_record, %struct.auxtrace_record* %48, i32 0, i32 4
  store i32 %46, i32* %49, align 8
  %50 = load i32, i32* @cs_etm_snapshot_finish, align 4
  %51 = load %struct.cs_etm_recording*, %struct.cs_etm_recording** %5, align 8
  %52 = getelementptr inbounds %struct.cs_etm_recording, %struct.cs_etm_recording* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.auxtrace_record, %struct.auxtrace_record* %52, i32 0, i32 3
  store i32 %50, i32* %53, align 4
  %54 = load i32, i32* @cs_etm_reference, align 4
  %55 = load %struct.cs_etm_recording*, %struct.cs_etm_recording** %5, align 8
  %56 = getelementptr inbounds %struct.cs_etm_recording, %struct.cs_etm_recording* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.auxtrace_record, %struct.auxtrace_record* %56, i32 0, i32 2
  store i32 %54, i32* %57, align 8
  %58 = load i32, i32* @cs_etm_recording_free, align 4
  %59 = load %struct.cs_etm_recording*, %struct.cs_etm_recording** %5, align 8
  %60 = getelementptr inbounds %struct.cs_etm_recording, %struct.cs_etm_recording* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.auxtrace_record, %struct.auxtrace_record* %60, i32 0, i32 1
  store i32 %58, i32* %61, align 4
  %62 = load i32, i32* @cs_etm_read_finish, align 4
  %63 = load %struct.cs_etm_recording*, %struct.cs_etm_recording** %5, align 8
  %64 = getelementptr inbounds %struct.cs_etm_recording, %struct.cs_etm_recording* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.auxtrace_record, %struct.auxtrace_record* %64, i32 0, i32 0
  store i32 %62, i32* %65, align 8
  %66 = load i32*, i32** %3, align 8
  store i32 0, i32* %66, align 4
  %67 = load %struct.cs_etm_recording*, %struct.cs_etm_recording** %5, align 8
  %68 = getelementptr inbounds %struct.cs_etm_recording, %struct.cs_etm_recording* %67, i32 0, i32 0
  store %struct.auxtrace_record* %68, %struct.auxtrace_record** %2, align 8
  br label %70

69:                                               ; preds = %18, %10
  store %struct.auxtrace_record* null, %struct.auxtrace_record** %2, align 8
  br label %70

70:                                               ; preds = %69, %22
  %71 = load %struct.auxtrace_record*, %struct.auxtrace_record** %2, align 8
  ret %struct.auxtrace_record* %71
}

declare dso_local %struct.perf_pmu* @perf_pmu__find(i32) #1

declare dso_local %struct.cs_etm_recording* @zalloc(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
