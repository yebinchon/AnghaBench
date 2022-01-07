; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/arch/arm64/util/extr_arm-spe.c_arm_spe_recording_init.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/arch/arm64/util/extr_arm-spe.c_arm_spe_recording_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.auxtrace_record = type { i64, i32, i32, i32, i32, i32, i32 }
%struct.perf_pmu = type { i32 }
%struct.arm_spe_recording = type { %struct.auxtrace_record, %struct.perf_pmu* }

@ENODEV = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@arm_spe_recording_options = common dso_local global i32 0, align 4
@arm_spe_info_priv_size = common dso_local global i32 0, align 4
@arm_spe_info_fill = common dso_local global i32 0, align 4
@arm_spe_recording_free = common dso_local global i32 0, align 4
@arm_spe_reference = common dso_local global i32 0, align 4
@arm_spe_read_finish = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.auxtrace_record* @arm_spe_recording_init(i32* %0, %struct.perf_pmu* %1) #0 {
  %3 = alloca %struct.auxtrace_record*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.perf_pmu*, align 8
  %6 = alloca %struct.arm_spe_recording*, align 8
  store i32* %0, i32** %4, align 8
  store %struct.perf_pmu* %1, %struct.perf_pmu** %5, align 8
  %7 = load %struct.perf_pmu*, %struct.perf_pmu** %5, align 8
  %8 = icmp ne %struct.perf_pmu* %7, null
  br i1 %8, label %13, label %9

9:                                                ; preds = %2
  %10 = load i32, i32* @ENODEV, align 4
  %11 = sub nsw i32 0, %10
  %12 = load i32*, i32** %4, align 8
  store i32 %11, i32* %12, align 4
  store %struct.auxtrace_record* null, %struct.auxtrace_record** %3, align 8
  br label %55

13:                                               ; preds = %2
  %14 = call %struct.arm_spe_recording* @zalloc(i32 40)
  store %struct.arm_spe_recording* %14, %struct.arm_spe_recording** %6, align 8
  %15 = load %struct.arm_spe_recording*, %struct.arm_spe_recording** %6, align 8
  %16 = icmp ne %struct.arm_spe_recording* %15, null
  br i1 %16, label %21, label %17

17:                                               ; preds = %13
  %18 = load i32, i32* @ENOMEM, align 4
  %19 = sub nsw i32 0, %18
  %20 = load i32*, i32** %4, align 8
  store i32 %19, i32* %20, align 4
  store %struct.auxtrace_record* null, %struct.auxtrace_record** %3, align 8
  br label %55

21:                                               ; preds = %13
  %22 = load %struct.perf_pmu*, %struct.perf_pmu** %5, align 8
  %23 = load %struct.arm_spe_recording*, %struct.arm_spe_recording** %6, align 8
  %24 = getelementptr inbounds %struct.arm_spe_recording, %struct.arm_spe_recording* %23, i32 0, i32 1
  store %struct.perf_pmu* %22, %struct.perf_pmu** %24, align 8
  %25 = load i32, i32* @arm_spe_recording_options, align 4
  %26 = load %struct.arm_spe_recording*, %struct.arm_spe_recording** %6, align 8
  %27 = getelementptr inbounds %struct.arm_spe_recording, %struct.arm_spe_recording* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.auxtrace_record, %struct.auxtrace_record* %27, i32 0, i32 6
  store i32 %25, i32* %28, align 4
  %29 = load i32, i32* @arm_spe_info_priv_size, align 4
  %30 = load %struct.arm_spe_recording*, %struct.arm_spe_recording** %6, align 8
  %31 = getelementptr inbounds %struct.arm_spe_recording, %struct.arm_spe_recording* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.auxtrace_record, %struct.auxtrace_record* %31, i32 0, i32 5
  store i32 %29, i32* %32, align 8
  %33 = load i32, i32* @arm_spe_info_fill, align 4
  %34 = load %struct.arm_spe_recording*, %struct.arm_spe_recording** %6, align 8
  %35 = getelementptr inbounds %struct.arm_spe_recording, %struct.arm_spe_recording* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.auxtrace_record, %struct.auxtrace_record* %35, i32 0, i32 4
  store i32 %33, i32* %36, align 4
  %37 = load i32, i32* @arm_spe_recording_free, align 4
  %38 = load %struct.arm_spe_recording*, %struct.arm_spe_recording** %6, align 8
  %39 = getelementptr inbounds %struct.arm_spe_recording, %struct.arm_spe_recording* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.auxtrace_record, %struct.auxtrace_record* %39, i32 0, i32 3
  store i32 %37, i32* %40, align 8
  %41 = load i32, i32* @arm_spe_reference, align 4
  %42 = load %struct.arm_spe_recording*, %struct.arm_spe_recording** %6, align 8
  %43 = getelementptr inbounds %struct.arm_spe_recording, %struct.arm_spe_recording* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.auxtrace_record, %struct.auxtrace_record* %43, i32 0, i32 2
  store i32 %41, i32* %44, align 4
  %45 = load i32, i32* @arm_spe_read_finish, align 4
  %46 = load %struct.arm_spe_recording*, %struct.arm_spe_recording** %6, align 8
  %47 = getelementptr inbounds %struct.arm_spe_recording, %struct.arm_spe_recording* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.auxtrace_record, %struct.auxtrace_record* %47, i32 0, i32 1
  store i32 %45, i32* %48, align 8
  %49 = load %struct.arm_spe_recording*, %struct.arm_spe_recording** %6, align 8
  %50 = getelementptr inbounds %struct.arm_spe_recording, %struct.arm_spe_recording* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.auxtrace_record, %struct.auxtrace_record* %50, i32 0, i32 0
  store i64 0, i64* %51, align 8
  %52 = load i32*, i32** %4, align 8
  store i32 0, i32* %52, align 4
  %53 = load %struct.arm_spe_recording*, %struct.arm_spe_recording** %6, align 8
  %54 = getelementptr inbounds %struct.arm_spe_recording, %struct.arm_spe_recording* %53, i32 0, i32 0
  store %struct.auxtrace_record* %54, %struct.auxtrace_record** %3, align 8
  br label %55

55:                                               ; preds = %21, %17, %9
  %56 = load %struct.auxtrace_record*, %struct.auxtrace_record** %3, align 8
  ret %struct.auxtrace_record* %56
}

declare dso_local %struct.arm_spe_recording* @zalloc(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
