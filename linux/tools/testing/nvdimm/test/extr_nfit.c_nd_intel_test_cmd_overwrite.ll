; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/nvdimm/test/extr_nfit.c_nd_intel_test_cmd_overwrite.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/nvdimm/test/extr_nfit.c_nd_intel_test_cmd_overwrite.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfit_test_sec = type { i32, i32, i64, i32 }
%struct.nfit_test = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.device }
%struct.device = type { i32 }
%struct.nd_intel_overwrite = type { i32, i32 }

@dimm_sec_info = common dso_local global %struct.nfit_test_sec* null, align 8
@ND_INTEL_SEC_STATE_ENABLED = common dso_local global i32 0, align 4
@ND_INTEL_PASSPHRASE_SIZE = common dso_local global i32 0, align 4
@ND_INTEL_STATUS_INVALID_PASS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"overwrite: wrong passphrase\0A\00", align 1
@ND_INTEL_SEC_STATE_OVERWRITE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [24 x i8] c"overwrite progressing.\0A\00", align 1
@HZ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nfit_test*, %struct.nd_intel_overwrite*, i32, i32)* @nd_intel_test_cmd_overwrite to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nd_intel_test_cmd_overwrite(%struct.nfit_test* %0, %struct.nd_intel_overwrite* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.nfit_test*, align 8
  %7 = alloca %struct.nd_intel_overwrite*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.device*, align 8
  %11 = alloca %struct.nfit_test_sec*, align 8
  store %struct.nfit_test* %0, %struct.nfit_test** %6, align 8
  store %struct.nd_intel_overwrite* %1, %struct.nd_intel_overwrite** %7, align 8
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
  %22 = load i32, i32* @ND_INTEL_SEC_STATE_ENABLED, align 4
  %23 = and i32 %21, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %41

25:                                               ; preds = %4
  %26 = load %struct.nd_intel_overwrite*, %struct.nd_intel_overwrite** %7, align 8
  %27 = getelementptr inbounds %struct.nd_intel_overwrite, %struct.nd_intel_overwrite* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.nfit_test_sec*, %struct.nfit_test_sec** %11, align 8
  %30 = getelementptr inbounds %struct.nfit_test_sec, %struct.nfit_test_sec* %29, i32 0, i32 3
  %31 = load i32, i32* %30, align 8
  %32 = load i32, i32* @ND_INTEL_PASSPHRASE_SIZE, align 4
  %33 = call i64 @memcmp(i32 %28, i32 %31, i32 %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %41

35:                                               ; preds = %25
  %36 = load i32, i32* @ND_INTEL_STATUS_INVALID_PASS, align 4
  %37 = load %struct.nd_intel_overwrite*, %struct.nd_intel_overwrite** %7, align 8
  %38 = getelementptr inbounds %struct.nd_intel_overwrite, %struct.nd_intel_overwrite* %37, i32 0, i32 0
  store i32 %36, i32* %38, align 4
  %39 = load %struct.device*, %struct.device** %10, align 8
  %40 = call i32 @dev_dbg(%struct.device* %39, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %5, align 4
  br label %59

41:                                               ; preds = %25, %4
  %42 = load %struct.nfit_test_sec*, %struct.nfit_test_sec** %11, align 8
  %43 = getelementptr inbounds %struct.nfit_test_sec, %struct.nfit_test_sec* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = load %struct.nfit_test_sec*, %struct.nfit_test_sec** %11, align 8
  %46 = getelementptr inbounds %struct.nfit_test_sec, %struct.nfit_test_sec* %45, i32 0, i32 1
  store i32 %44, i32* %46, align 4
  %47 = load i32, i32* @ND_INTEL_SEC_STATE_OVERWRITE, align 4
  %48 = load %struct.nfit_test_sec*, %struct.nfit_test_sec** %11, align 8
  %49 = getelementptr inbounds %struct.nfit_test_sec, %struct.nfit_test_sec* %48, i32 0, i32 0
  store i32 %47, i32* %49, align 8
  %50 = load %struct.device*, %struct.device** %10, align 8
  %51 = call i32 @dev_dbg(%struct.device* %50, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0))
  %52 = call i64 (...) @get_jiffies_64()
  %53 = load i32, i32* @HZ, align 4
  %54 = mul nsw i32 5, %53
  %55 = sext i32 %54 to i64
  %56 = add nsw i64 %52, %55
  %57 = load %struct.nfit_test_sec*, %struct.nfit_test_sec** %11, align 8
  %58 = getelementptr inbounds %struct.nfit_test_sec, %struct.nfit_test_sec* %57, i32 0, i32 2
  store i64 %56, i64* %58, align 8
  store i32 0, i32* %5, align 4
  br label %59

59:                                               ; preds = %41, %35
  %60 = load i32, i32* %5, align 4
  ret i32 %60
}

declare dso_local i64 @memcmp(i32, i32, i32) #1

declare dso_local i32 @dev_dbg(%struct.device*, i8*) #1

declare dso_local i64 @get_jiffies_64(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
