; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/nvdimm/test/extr_nfit.c_nd_intel_test_cmd_master_secure_erase.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/nvdimm/test/extr_nfit.c_nd_intel_test_cmd_master_secure_erase.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfit_test_sec = type { i32, i64, i32, i32 }
%struct.nfit_test = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.device }
%struct.device = type { i32 }
%struct.nd_intel_master_secure_erase = type { i32, i32 }

@dimm_sec_info = common dso_local global %struct.nfit_test_sec* null, align 8
@ND_INTEL_SEC_ESTATE_ENABLED = common dso_local global i32 0, align 4
@ND_INTEL_STATUS_NOT_SUPPORTED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"master secure erase: in wrong state\0A\00", align 1
@ND_INTEL_SEC_ESTATE_PLIMIT = common dso_local global i32 0, align 4
@ND_INTEL_STATUS_INVALID_STATE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [46 x i8] c"master secure erase: in wrong security state\0A\00", align 1
@ND_INTEL_PASSPHRASE_SIZE = common dso_local global i32 0, align 4
@ND_INTEL_STATUS_INVALID_PASS = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [39 x i8] c"master secure erase: wrong passphrase\0A\00", align 1
@.str.3 = private unnamed_addr constant [27 x i8] c"master secure erase: done\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nfit_test*, %struct.nd_intel_master_secure_erase*, i32, i32)* @nd_intel_test_cmd_master_secure_erase to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nd_intel_test_cmd_master_secure_erase(%struct.nfit_test* %0, %struct.nd_intel_master_secure_erase* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.nfit_test*, align 8
  %6 = alloca %struct.nd_intel_master_secure_erase*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.device*, align 8
  %10 = alloca %struct.nfit_test_sec*, align 8
  store %struct.nfit_test* %0, %struct.nfit_test** %5, align 8
  store %struct.nd_intel_master_secure_erase* %1, %struct.nd_intel_master_secure_erase** %6, align 8
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
  %20 = load i32, i32* %19, align 8
  %21 = load i32, i32* @ND_INTEL_SEC_ESTATE_ENABLED, align 4
  %22 = and i32 %20, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %30, label %24

24:                                               ; preds = %4
  %25 = load i32, i32* @ND_INTEL_STATUS_NOT_SUPPORTED, align 4
  %26 = load %struct.nd_intel_master_secure_erase*, %struct.nd_intel_master_secure_erase** %6, align 8
  %27 = getelementptr inbounds %struct.nd_intel_master_secure_erase, %struct.nd_intel_master_secure_erase* %26, i32 0, i32 0
  store i32 %25, i32* %27, align 4
  %28 = load %struct.device*, %struct.device** %9, align 8
  %29 = call i32 @dev_dbg(%struct.device* %28, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0))
  br label %74

30:                                               ; preds = %4
  %31 = load %struct.nfit_test_sec*, %struct.nfit_test_sec** %10, align 8
  %32 = getelementptr inbounds %struct.nfit_test_sec, %struct.nfit_test_sec* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = load i32, i32* @ND_INTEL_SEC_ESTATE_PLIMIT, align 4
  %35 = and i32 %33, %34
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %43

37:                                               ; preds = %30
  %38 = load i32, i32* @ND_INTEL_STATUS_INVALID_STATE, align 4
  %39 = load %struct.nd_intel_master_secure_erase*, %struct.nd_intel_master_secure_erase** %6, align 8
  %40 = getelementptr inbounds %struct.nd_intel_master_secure_erase, %struct.nd_intel_master_secure_erase* %39, i32 0, i32 0
  store i32 %38, i32* %40, align 4
  %41 = load %struct.device*, %struct.device** %9, align 8
  %42 = call i32 @dev_dbg(%struct.device* %41, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.1, i64 0, i64 0))
  br label %73

43:                                               ; preds = %30
  %44 = load %struct.nd_intel_master_secure_erase*, %struct.nd_intel_master_secure_erase** %6, align 8
  %45 = getelementptr inbounds %struct.nd_intel_master_secure_erase, %struct.nd_intel_master_secure_erase* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.nfit_test_sec*, %struct.nfit_test_sec** %10, align 8
  %48 = getelementptr inbounds %struct.nfit_test_sec, %struct.nfit_test_sec* %47, i32 0, i32 3
  %49 = load i32, i32* %48, align 4
  %50 = load i32, i32* @ND_INTEL_PASSPHRASE_SIZE, align 4
  %51 = call i64 @memcmp(i32 %46, i32 %49, i32 %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %59

53:                                               ; preds = %43
  %54 = load i32, i32* @ND_INTEL_STATUS_INVALID_PASS, align 4
  %55 = load %struct.nd_intel_master_secure_erase*, %struct.nd_intel_master_secure_erase** %6, align 8
  %56 = getelementptr inbounds %struct.nd_intel_master_secure_erase, %struct.nd_intel_master_secure_erase* %55, i32 0, i32 0
  store i32 %54, i32* %56, align 4
  %57 = load %struct.device*, %struct.device** %9, align 8
  %58 = call i32 @dev_dbg(%struct.device* %57, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.2, i64 0, i64 0))
  br label %72

59:                                               ; preds = %43
  %60 = load i32, i32* @ND_INTEL_SEC_ESTATE_ENABLED, align 4
  %61 = load %struct.nfit_test_sec*, %struct.nfit_test_sec** %10, align 8
  %62 = getelementptr inbounds %struct.nfit_test_sec, %struct.nfit_test_sec* %61, i32 0, i32 0
  store i32 %60, i32* %62, align 8
  %63 = load %struct.nfit_test_sec*, %struct.nfit_test_sec** %10, align 8
  %64 = getelementptr inbounds %struct.nfit_test_sec, %struct.nfit_test_sec* %63, i32 0, i32 2
  %65 = load i32, i32* %64, align 8
  %66 = load i32, i32* @ND_INTEL_PASSPHRASE_SIZE, align 4
  %67 = call i32 @memset(i32 %65, i32 0, i32 %66)
  %68 = load %struct.nfit_test_sec*, %struct.nfit_test_sec** %10, align 8
  %69 = getelementptr inbounds %struct.nfit_test_sec, %struct.nfit_test_sec* %68, i32 0, i32 1
  store i64 0, i64* %69, align 8
  %70 = load %struct.device*, %struct.device** %9, align 8
  %71 = call i32 @dev_dbg(%struct.device* %70, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i64 0, i64 0))
  br label %72

72:                                               ; preds = %59, %53
  br label %73

73:                                               ; preds = %72, %37
  br label %74

74:                                               ; preds = %73, %24
  ret i32 0
}

declare dso_local i32 @dev_dbg(%struct.device*, i8*) #1

declare dso_local i64 @memcmp(i32, i32, i32) #1

declare dso_local i32 @memset(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
