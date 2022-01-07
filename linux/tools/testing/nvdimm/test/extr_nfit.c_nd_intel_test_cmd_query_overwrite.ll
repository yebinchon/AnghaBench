; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/nvdimm/test/extr_nfit.c_nd_intel_test_cmd_query_overwrite.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/nvdimm/test/extr_nfit.c_nd_intel_test_cmd_query_overwrite.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfit_test_sec = type { i32, i32, i32, i64 }
%struct.nfit_test = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.device }
%struct.device = type { i32 }
%struct.nd_intel_query_overwrite = type { i32 }

@dimm_sec_info = common dso_local global %struct.nfit_test_sec* null, align 8
@ND_INTEL_SEC_STATE_OVERWRITE = common dso_local global i32 0, align 4
@ND_INTEL_STATUS_OQUERY_SEQUENCE_ERR = common dso_local global i32 0, align 4
@ND_INTEL_SEC_ESTATE_ENABLED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"overwrite is complete\0A\00", align 1
@ND_INTEL_STATUS_OQUERY_INPROGRESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nfit_test*, %struct.nd_intel_query_overwrite*, i32, i32)* @nd_intel_test_cmd_query_overwrite to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nd_intel_test_cmd_query_overwrite(%struct.nfit_test* %0, %struct.nd_intel_query_overwrite* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.nfit_test*, align 8
  %7 = alloca %struct.nd_intel_query_overwrite*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.device*, align 8
  %11 = alloca %struct.nfit_test_sec*, align 8
  store %struct.nfit_test* %0, %struct.nfit_test** %6, align 8
  store %struct.nd_intel_query_overwrite* %1, %struct.nd_intel_query_overwrite** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %12 = load %struct.nfit_test*, %struct.nfit_test** %6, align 8
  %13 = getelementptr inbounds %struct.nfit_test, %struct.nfit_test* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  store %struct.device* %14, %struct.device** %10, align 8
  %15 = load %struct.nfit_test_sec*, %struct.nfit_test_sec** @dimm_sec_info, align 8
  %16 = load i32, i32* %9, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds %struct.nfit_test_sec, %struct.nfit_test_sec* %15, i64 %17
  store %struct.nfit_test_sec* %18, %struct.nfit_test_sec** %11, align 8
  %19 = load %struct.nfit_test_sec*, %struct.nfit_test_sec** %11, align 8
  %20 = getelementptr inbounds %struct.nfit_test_sec, %struct.nfit_test_sec* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = load i32, i32* @ND_INTEL_SEC_STATE_OVERWRITE, align 4
  %23 = and i32 %21, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %29, label %25

25:                                               ; preds = %4
  %26 = load i32, i32* @ND_INTEL_STATUS_OQUERY_SEQUENCE_ERR, align 4
  %27 = load %struct.nd_intel_query_overwrite*, %struct.nd_intel_query_overwrite** %7, align 8
  %28 = getelementptr inbounds %struct.nd_intel_query_overwrite, %struct.nd_intel_query_overwrite* %27, i32 0, i32 0
  store i32 %26, i32* %28, align 4
  store i32 0, i32* %5, align 4
  br label %55

29:                                               ; preds = %4
  %30 = load %struct.nfit_test_sec*, %struct.nfit_test_sec** %11, align 8
  %31 = getelementptr inbounds %struct.nfit_test_sec, %struct.nfit_test_sec* %30, i32 0, i32 3
  %32 = load i64, i64* %31, align 8
  %33 = call i64 @time_is_before_jiffies64(i64 %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %50

35:                                               ; preds = %29
  %36 = load %struct.nfit_test_sec*, %struct.nfit_test_sec** %11, align 8
  %37 = getelementptr inbounds %struct.nfit_test_sec, %struct.nfit_test_sec* %36, i32 0, i32 3
  store i64 0, i64* %37, align 8
  %38 = load %struct.nfit_test_sec*, %struct.nfit_test_sec** %11, align 8
  %39 = getelementptr inbounds %struct.nfit_test_sec, %struct.nfit_test_sec* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.nfit_test_sec*, %struct.nfit_test_sec** %11, align 8
  %42 = getelementptr inbounds %struct.nfit_test_sec, %struct.nfit_test_sec* %41, i32 0, i32 0
  store i32 %40, i32* %42, align 8
  %43 = load %struct.nfit_test_sec*, %struct.nfit_test_sec** %11, align 8
  %44 = getelementptr inbounds %struct.nfit_test_sec, %struct.nfit_test_sec* %43, i32 0, i32 1
  store i32 0, i32* %44, align 4
  %45 = load i32, i32* @ND_INTEL_SEC_ESTATE_ENABLED, align 4
  %46 = load %struct.nfit_test_sec*, %struct.nfit_test_sec** %11, align 8
  %47 = getelementptr inbounds %struct.nfit_test_sec, %struct.nfit_test_sec* %46, i32 0, i32 2
  store i32 %45, i32* %47, align 8
  %48 = load %struct.device*, %struct.device** %10, align 8
  %49 = call i32 @dev_dbg(%struct.device* %48, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  br label %54

50:                                               ; preds = %29
  %51 = load i32, i32* @ND_INTEL_STATUS_OQUERY_INPROGRESS, align 4
  %52 = load %struct.nd_intel_query_overwrite*, %struct.nd_intel_query_overwrite** %7, align 8
  %53 = getelementptr inbounds %struct.nd_intel_query_overwrite, %struct.nd_intel_query_overwrite* %52, i32 0, i32 0
  store i32 %51, i32* %53, align 4
  br label %54

54:                                               ; preds = %50, %35
  store i32 0, i32* %5, align 4
  br label %55

55:                                               ; preds = %54, %25
  %56 = load i32, i32* %5, align 4
  ret i32 %56
}

declare dso_local i64 @time_is_before_jiffies64(i64) #1

declare dso_local i32 @dev_dbg(%struct.device*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
