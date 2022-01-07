; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/arch/x86/util/extr_intel-pt.c_intel_pt_recording_init.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/arch/x86/util/extr_intel-pt.c_intel_pt_recording_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.auxtrace_record = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.perf_pmu = type { i32 }
%struct.intel_pt_recording = type { %struct.auxtrace_record, %struct.perf_pmu* }

@INTEL_PT_PMU_NAME = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"JITDUMP_USE_ARCH_TIMESTAMP\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"1\00", align 1
@errno = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@intel_pt_recording_options = common dso_local global i32 0, align 4
@intel_pt_info_priv_size = common dso_local global i32 0, align 4
@intel_pt_info_fill = common dso_local global i32 0, align 4
@intel_pt_recording_free = common dso_local global i32 0, align 4
@intel_pt_snapshot_start = common dso_local global i32 0, align 4
@intel_pt_snapshot_finish = common dso_local global i32 0, align 4
@intel_pt_find_snapshot = common dso_local global i32 0, align 4
@intel_pt_parse_snapshot_options = common dso_local global i32 0, align 4
@intel_pt_reference = common dso_local global i32 0, align 4
@intel_pt_read_finish = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.auxtrace_record* @intel_pt_recording_init(i32* %0) #0 {
  %2 = alloca %struct.auxtrace_record*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca %struct.perf_pmu*, align 8
  %5 = alloca %struct.intel_pt_recording*, align 8
  store i32* %0, i32** %3, align 8
  %6 = load i32, i32* @INTEL_PT_PMU_NAME, align 4
  %7 = call %struct.perf_pmu* @perf_pmu__find(i32 %6)
  store %struct.perf_pmu* %7, %struct.perf_pmu** %4, align 8
  %8 = load %struct.perf_pmu*, %struct.perf_pmu** %4, align 8
  %9 = icmp ne %struct.perf_pmu* %8, null
  br i1 %9, label %11, label %10

10:                                               ; preds = %1
  store %struct.auxtrace_record* null, %struct.auxtrace_record** %2, align 8
  br label %72

11:                                               ; preds = %1
  %12 = call i64 @setenv(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i32 1)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %18

14:                                               ; preds = %11
  %15 = load i32, i32* @errno, align 4
  %16 = sub nsw i32 0, %15
  %17 = load i32*, i32** %3, align 8
  store i32 %16, i32* %17, align 4
  store %struct.auxtrace_record* null, %struct.auxtrace_record** %2, align 8
  br label %72

18:                                               ; preds = %11
  %19 = call %struct.intel_pt_recording* @zalloc(i32 48)
  store %struct.intel_pt_recording* %19, %struct.intel_pt_recording** %5, align 8
  %20 = load %struct.intel_pt_recording*, %struct.intel_pt_recording** %5, align 8
  %21 = icmp ne %struct.intel_pt_recording* %20, null
  br i1 %21, label %26, label %22

22:                                               ; preds = %18
  %23 = load i32, i32* @ENOMEM, align 4
  %24 = sub nsw i32 0, %23
  %25 = load i32*, i32** %3, align 8
  store i32 %24, i32* %25, align 4
  store %struct.auxtrace_record* null, %struct.auxtrace_record** %2, align 8
  br label %72

26:                                               ; preds = %18
  %27 = load %struct.perf_pmu*, %struct.perf_pmu** %4, align 8
  %28 = load %struct.intel_pt_recording*, %struct.intel_pt_recording** %5, align 8
  %29 = getelementptr inbounds %struct.intel_pt_recording, %struct.intel_pt_recording* %28, i32 0, i32 1
  store %struct.perf_pmu* %27, %struct.perf_pmu** %29, align 8
  %30 = load i32, i32* @intel_pt_recording_options, align 4
  %31 = load %struct.intel_pt_recording*, %struct.intel_pt_recording** %5, align 8
  %32 = getelementptr inbounds %struct.intel_pt_recording, %struct.intel_pt_recording* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.auxtrace_record, %struct.auxtrace_record* %32, i32 0, i32 9
  store i32 %30, i32* %33, align 4
  %34 = load i32, i32* @intel_pt_info_priv_size, align 4
  %35 = load %struct.intel_pt_recording*, %struct.intel_pt_recording** %5, align 8
  %36 = getelementptr inbounds %struct.intel_pt_recording, %struct.intel_pt_recording* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.auxtrace_record, %struct.auxtrace_record* %36, i32 0, i32 8
  store i32 %34, i32* %37, align 8
  %38 = load i32, i32* @intel_pt_info_fill, align 4
  %39 = load %struct.intel_pt_recording*, %struct.intel_pt_recording** %5, align 8
  %40 = getelementptr inbounds %struct.intel_pt_recording, %struct.intel_pt_recording* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.auxtrace_record, %struct.auxtrace_record* %40, i32 0, i32 7
  store i32 %38, i32* %41, align 4
  %42 = load i32, i32* @intel_pt_recording_free, align 4
  %43 = load %struct.intel_pt_recording*, %struct.intel_pt_recording** %5, align 8
  %44 = getelementptr inbounds %struct.intel_pt_recording, %struct.intel_pt_recording* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.auxtrace_record, %struct.auxtrace_record* %44, i32 0, i32 6
  store i32 %42, i32* %45, align 8
  %46 = load i32, i32* @intel_pt_snapshot_start, align 4
  %47 = load %struct.intel_pt_recording*, %struct.intel_pt_recording** %5, align 8
  %48 = getelementptr inbounds %struct.intel_pt_recording, %struct.intel_pt_recording* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.auxtrace_record, %struct.auxtrace_record* %48, i32 0, i32 5
  store i32 %46, i32* %49, align 4
  %50 = load i32, i32* @intel_pt_snapshot_finish, align 4
  %51 = load %struct.intel_pt_recording*, %struct.intel_pt_recording** %5, align 8
  %52 = getelementptr inbounds %struct.intel_pt_recording, %struct.intel_pt_recording* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.auxtrace_record, %struct.auxtrace_record* %52, i32 0, i32 4
  store i32 %50, i32* %53, align 8
  %54 = load i32, i32* @intel_pt_find_snapshot, align 4
  %55 = load %struct.intel_pt_recording*, %struct.intel_pt_recording** %5, align 8
  %56 = getelementptr inbounds %struct.intel_pt_recording, %struct.intel_pt_recording* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.auxtrace_record, %struct.auxtrace_record* %56, i32 0, i32 3
  store i32 %54, i32* %57, align 4
  %58 = load i32, i32* @intel_pt_parse_snapshot_options, align 4
  %59 = load %struct.intel_pt_recording*, %struct.intel_pt_recording** %5, align 8
  %60 = getelementptr inbounds %struct.intel_pt_recording, %struct.intel_pt_recording* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.auxtrace_record, %struct.auxtrace_record* %60, i32 0, i32 2
  store i32 %58, i32* %61, align 8
  %62 = load i32, i32* @intel_pt_reference, align 4
  %63 = load %struct.intel_pt_recording*, %struct.intel_pt_recording** %5, align 8
  %64 = getelementptr inbounds %struct.intel_pt_recording, %struct.intel_pt_recording* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.auxtrace_record, %struct.auxtrace_record* %64, i32 0, i32 1
  store i32 %62, i32* %65, align 4
  %66 = load i32, i32* @intel_pt_read_finish, align 4
  %67 = load %struct.intel_pt_recording*, %struct.intel_pt_recording** %5, align 8
  %68 = getelementptr inbounds %struct.intel_pt_recording, %struct.intel_pt_recording* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.auxtrace_record, %struct.auxtrace_record* %68, i32 0, i32 0
  store i32 %66, i32* %69, align 8
  %70 = load %struct.intel_pt_recording*, %struct.intel_pt_recording** %5, align 8
  %71 = getelementptr inbounds %struct.intel_pt_recording, %struct.intel_pt_recording* %70, i32 0, i32 0
  store %struct.auxtrace_record* %71, %struct.auxtrace_record** %2, align 8
  br label %72

72:                                               ; preds = %26, %22, %14, %10
  %73 = load %struct.auxtrace_record*, %struct.auxtrace_record** %2, align 8
  ret %struct.auxtrace_record* %73
}

declare dso_local %struct.perf_pmu* @perf_pmu__find(i32) #1

declare dso_local i64 @setenv(i8*, i8*, i32) #1

declare dso_local %struct.intel_pt_recording* @zalloc(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
