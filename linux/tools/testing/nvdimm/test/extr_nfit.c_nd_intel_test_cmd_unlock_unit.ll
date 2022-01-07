; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/nvdimm/test/extr_nfit.c_nd_intel_test_cmd_unlock_unit.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/nvdimm/test/extr_nfit.c_nd_intel_test_cmd_unlock_unit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfit_test_sec = type { i32, i32 }
%struct.nfit_test = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.device }
%struct.device = type { i32 }
%struct.nd_intel_unlock_unit = type { i32, i32 }

@dimm_sec_info = common dso_local global %struct.nfit_test_sec* null, align 8
@ND_INTEL_SEC_STATE_LOCKED = common dso_local global i32 0, align 4
@ND_INTEL_SEC_STATE_FROZEN = common dso_local global i32 0, align 4
@ND_INTEL_STATUS_INVALID_STATE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"unlock unit: invalid state: %#x\0A\00", align 1
@ND_INTEL_PASSPHRASE_SIZE = common dso_local global i32 0, align 4
@ND_INTEL_STATUS_INVALID_PASS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [33 x i8] c"unlock unit: invalid passphrase\0A\00", align 1
@ND_INTEL_SEC_STATE_ENABLED = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [15 x i8] c"Unit unlocked\0A\00", align 1
@.str.3 = private unnamed_addr constant [32 x i8] c"unlocking status returned: %#x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nfit_test*, %struct.nd_intel_unlock_unit*, i32, i32)* @nd_intel_test_cmd_unlock_unit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nd_intel_test_cmd_unlock_unit(%struct.nfit_test* %0, %struct.nd_intel_unlock_unit* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.nfit_test*, align 8
  %6 = alloca %struct.nd_intel_unlock_unit*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.device*, align 8
  %10 = alloca %struct.nfit_test_sec*, align 8
  store %struct.nfit_test* %0, %struct.nfit_test** %5, align 8
  store %struct.nd_intel_unlock_unit* %1, %struct.nd_intel_unlock_unit** %6, align 8
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
  %21 = load i32, i32* @ND_INTEL_SEC_STATE_LOCKED, align 4
  %22 = and i32 %20, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %31

24:                                               ; preds = %4
  %25 = load %struct.nfit_test_sec*, %struct.nfit_test_sec** %10, align 8
  %26 = getelementptr inbounds %struct.nfit_test_sec, %struct.nfit_test_sec* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* @ND_INTEL_SEC_STATE_FROZEN, align 4
  %29 = and i32 %27, %28
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %40

31:                                               ; preds = %24, %4
  %32 = load i32, i32* @ND_INTEL_STATUS_INVALID_STATE, align 4
  %33 = load %struct.nd_intel_unlock_unit*, %struct.nd_intel_unlock_unit** %6, align 8
  %34 = getelementptr inbounds %struct.nd_intel_unlock_unit, %struct.nd_intel_unlock_unit* %33, i32 0, i32 0
  store i32 %32, i32* %34, align 4
  %35 = load %struct.device*, %struct.device** %9, align 8
  %36 = load %struct.nfit_test_sec*, %struct.nfit_test_sec** %10, align 8
  %37 = getelementptr inbounds %struct.nfit_test_sec, %struct.nfit_test_sec* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = call i32 (%struct.device*, i8*, ...) @dev_dbg(%struct.device* %35, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %38)
  br label %65

40:                                               ; preds = %24
  %41 = load %struct.nd_intel_unlock_unit*, %struct.nd_intel_unlock_unit** %6, align 8
  %42 = getelementptr inbounds %struct.nd_intel_unlock_unit, %struct.nd_intel_unlock_unit* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.nfit_test_sec*, %struct.nfit_test_sec** %10, align 8
  %45 = getelementptr inbounds %struct.nfit_test_sec, %struct.nfit_test_sec* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = load i32, i32* @ND_INTEL_PASSPHRASE_SIZE, align 4
  %48 = call i64 @memcmp(i32 %43, i32 %46, i32 %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %56

50:                                               ; preds = %40
  %51 = load i32, i32* @ND_INTEL_STATUS_INVALID_PASS, align 4
  %52 = load %struct.nd_intel_unlock_unit*, %struct.nd_intel_unlock_unit** %6, align 8
  %53 = getelementptr inbounds %struct.nd_intel_unlock_unit, %struct.nd_intel_unlock_unit* %52, i32 0, i32 0
  store i32 %51, i32* %53, align 4
  %54 = load %struct.device*, %struct.device** %9, align 8
  %55 = call i32 (%struct.device*, i8*, ...) @dev_dbg(%struct.device* %54, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0))
  br label %64

56:                                               ; preds = %40
  %57 = load %struct.nd_intel_unlock_unit*, %struct.nd_intel_unlock_unit** %6, align 8
  %58 = getelementptr inbounds %struct.nd_intel_unlock_unit, %struct.nd_intel_unlock_unit* %57, i32 0, i32 0
  store i32 0, i32* %58, align 4
  %59 = load i32, i32* @ND_INTEL_SEC_STATE_ENABLED, align 4
  %60 = load %struct.nfit_test_sec*, %struct.nfit_test_sec** %10, align 8
  %61 = getelementptr inbounds %struct.nfit_test_sec, %struct.nfit_test_sec* %60, i32 0, i32 0
  store i32 %59, i32* %61, align 4
  %62 = load %struct.device*, %struct.device** %9, align 8
  %63 = call i32 (%struct.device*, i8*, ...) @dev_dbg(%struct.device* %62, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0))
  br label %64

64:                                               ; preds = %56, %50
  br label %65

65:                                               ; preds = %64, %31
  %66 = load %struct.device*, %struct.device** %9, align 8
  %67 = load %struct.nd_intel_unlock_unit*, %struct.nd_intel_unlock_unit** %6, align 8
  %68 = getelementptr inbounds %struct.nd_intel_unlock_unit, %struct.nd_intel_unlock_unit* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = call i32 (%struct.device*, i8*, ...) @dev_dbg(%struct.device* %66, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.3, i64 0, i64 0), i32 %69)
  ret i32 0
}

declare dso_local i32 @dev_dbg(%struct.device*, i8*, ...) #1

declare dso_local i64 @memcmp(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
