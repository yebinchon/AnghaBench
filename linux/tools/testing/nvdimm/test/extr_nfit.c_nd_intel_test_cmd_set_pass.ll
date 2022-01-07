; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/nvdimm/test/extr_nfit.c_nd_intel_test_cmd_set_pass.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/nvdimm/test/extr_nfit.c_nd_intel_test_cmd_set_pass.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfit_test_sec = type { i32, i32 }
%struct.nfit_test = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.device }
%struct.device = type { i32 }
%struct.nd_intel_set_passphrase = type { i64, i32, i32 }

@dimm_sec_info = common dso_local global %struct.nfit_test_sec* null, align 8
@ND_INTEL_SEC_STATE_FROZEN = common dso_local global i32 0, align 4
@ND_INTEL_STATUS_INVALID_STATE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [38 x i8] c"set passphrase: wrong security state\0A\00", align 1
@ND_INTEL_PASSPHRASE_SIZE = common dso_local global i32 0, align 4
@ND_INTEL_STATUS_INVALID_PASS = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [34 x i8] c"set passphrase: wrong passphrase\0A\00", align 1
@ND_INTEL_SEC_STATE_ENABLED = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [20 x i8] c"passphrase updated\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nfit_test*, %struct.nd_intel_set_passphrase*, i32, i32)* @nd_intel_test_cmd_set_pass to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nd_intel_test_cmd_set_pass(%struct.nfit_test* %0, %struct.nd_intel_set_passphrase* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.nfit_test*, align 8
  %6 = alloca %struct.nd_intel_set_passphrase*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.device*, align 8
  %10 = alloca %struct.nfit_test_sec*, align 8
  store %struct.nfit_test* %0, %struct.nfit_test** %5, align 8
  store %struct.nd_intel_set_passphrase* %1, %struct.nd_intel_set_passphrase** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %11 = load %struct.nfit_test*, %struct.nfit_test** %5, align 8
  %12 = getelementptr inbounds %struct.nfit_test, %struct.nfit_test* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  store %struct.device* %13, %struct.device** %9, align 8
  %14 = load %struct.nfit_test_sec*, %struct.nfit_test_sec** @dimm_sec_info, align 8
  %15 = load i32, i32* %8, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds %struct.nfit_test_sec, %struct.nfit_test_sec* %14, i64 %16
  store %struct.nfit_test_sec* %17, %struct.nfit_test_sec** %10, align 8
  %18 = load %struct.nfit_test_sec*, %struct.nfit_test_sec** %10, align 8
  %19 = getelementptr inbounds %struct.nfit_test_sec, %struct.nfit_test_sec* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* @ND_INTEL_SEC_STATE_FROZEN, align 4
  %22 = and i32 %20, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %30

24:                                               ; preds = %4
  %25 = load i64, i64* @ND_INTEL_STATUS_INVALID_STATE, align 8
  %26 = load %struct.nd_intel_set_passphrase*, %struct.nd_intel_set_passphrase** %6, align 8
  %27 = getelementptr inbounds %struct.nd_intel_set_passphrase, %struct.nd_intel_set_passphrase* %26, i32 0, i32 0
  store i64 %25, i64* %27, align 8
  %28 = load %struct.device*, %struct.device** %9, align 8
  %29 = call i32 @dev_dbg(%struct.device* %28, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0))
  br label %65

30:                                               ; preds = %4
  %31 = load %struct.nd_intel_set_passphrase*, %struct.nd_intel_set_passphrase** %6, align 8
  %32 = getelementptr inbounds %struct.nd_intel_set_passphrase, %struct.nd_intel_set_passphrase* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.nfit_test_sec*, %struct.nfit_test_sec** %10, align 8
  %35 = getelementptr inbounds %struct.nfit_test_sec, %struct.nfit_test_sec* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* @ND_INTEL_PASSPHRASE_SIZE, align 4
  %38 = call i64 @memcmp(i32 %33, i32 %36, i32 %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %46

40:                                               ; preds = %30
  %41 = load i64, i64* @ND_INTEL_STATUS_INVALID_PASS, align 8
  %42 = load %struct.nd_intel_set_passphrase*, %struct.nd_intel_set_passphrase** %6, align 8
  %43 = getelementptr inbounds %struct.nd_intel_set_passphrase, %struct.nd_intel_set_passphrase* %42, i32 0, i32 0
  store i64 %41, i64* %43, align 8
  %44 = load %struct.device*, %struct.device** %9, align 8
  %45 = call i32 @dev_dbg(%struct.device* %44, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0))
  br label %64

46:                                               ; preds = %30
  %47 = load %struct.nfit_test_sec*, %struct.nfit_test_sec** %10, align 8
  %48 = getelementptr inbounds %struct.nfit_test_sec, %struct.nfit_test_sec* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.nd_intel_set_passphrase*, %struct.nd_intel_set_passphrase** %6, align 8
  %51 = getelementptr inbounds %struct.nd_intel_set_passphrase, %struct.nd_intel_set_passphrase* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 8
  %53 = load i32, i32* @ND_INTEL_PASSPHRASE_SIZE, align 4
  %54 = call i32 @memcpy(i32 %49, i32 %52, i32 %53)
  %55 = load i32, i32* @ND_INTEL_SEC_STATE_ENABLED, align 4
  %56 = load %struct.nfit_test_sec*, %struct.nfit_test_sec** %10, align 8
  %57 = getelementptr inbounds %struct.nfit_test_sec, %struct.nfit_test_sec* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = or i32 %58, %55
  store i32 %59, i32* %57, align 4
  %60 = load %struct.nd_intel_set_passphrase*, %struct.nd_intel_set_passphrase** %6, align 8
  %61 = getelementptr inbounds %struct.nd_intel_set_passphrase, %struct.nd_intel_set_passphrase* %60, i32 0, i32 0
  store i64 0, i64* %61, align 8
  %62 = load %struct.device*, %struct.device** %9, align 8
  %63 = call i32 @dev_dbg(%struct.device* %62, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0))
  br label %64

64:                                               ; preds = %46, %40
  br label %65

65:                                               ; preds = %64, %24
  ret i32 0
}

declare dso_local i32 @dev_dbg(%struct.device*, i8*) #1

declare dso_local i64 @memcmp(i32, i32, i32) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
