; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/nvdimm/test/extr_nfit.c_nd_intel_test_cmd_secure_erase.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/nvdimm/test/extr_nfit.c_nd_intel_test_cmd_secure_erase.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfit_test_sec = type { i32, i32, i32, i32 }
%struct.nfit_test = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.device }
%struct.device = type { i32 }
%struct.nd_intel_secure_erase = type { i32, i32 }

@dimm_sec_info = common dso_local global %struct.nfit_test_sec* null, align 8
@ND_INTEL_SEC_STATE_FROZEN = common dso_local global i32 0, align 4
@ND_INTEL_STATUS_INVALID_STATE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"secure erase: wrong security state\0A\00", align 1
@ND_INTEL_PASSPHRASE_SIZE = common dso_local global i32 0, align 4
@ND_INTEL_STATUS_INVALID_PASS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [32 x i8] c"secure erase: wrong passphrase\0A\00", align 1
@ND_INTEL_SEC_STATE_ENABLED = common dso_local global i32 0, align 4
@zero_key = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [18 x i8] c"invalid zero key\0A\00", align 1
@ND_INTEL_SEC_ESTATE_ENABLED = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [20 x i8] c"secure erase: done\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nfit_test*, %struct.nd_intel_secure_erase*, i32, i32)* @nd_intel_test_cmd_secure_erase to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nd_intel_test_cmd_secure_erase(%struct.nfit_test* %0, %struct.nd_intel_secure_erase* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.nfit_test*, align 8
  %7 = alloca %struct.nd_intel_secure_erase*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.device*, align 8
  %11 = alloca %struct.nfit_test_sec*, align 8
  store %struct.nfit_test* %0, %struct.nfit_test** %6, align 8
  store %struct.nd_intel_secure_erase* %1, %struct.nd_intel_secure_erase** %7, align 8
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
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* @ND_INTEL_SEC_STATE_FROZEN, align 4
  %23 = and i32 %21, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %31

25:                                               ; preds = %4
  %26 = load i32, i32* @ND_INTEL_STATUS_INVALID_STATE, align 4
  %27 = load %struct.nd_intel_secure_erase*, %struct.nd_intel_secure_erase** %7, align 8
  %28 = getelementptr inbounds %struct.nd_intel_secure_erase, %struct.nd_intel_secure_erase* %27, i32 0, i32 1
  store i32 %26, i32* %28, align 4
  %29 = load %struct.device*, %struct.device** %10, align 8
  %30 = call i32 @dev_dbg(%struct.device* %29, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0))
  br label %84

31:                                               ; preds = %4
  %32 = load %struct.nd_intel_secure_erase*, %struct.nd_intel_secure_erase** %7, align 8
  %33 = getelementptr inbounds %struct.nd_intel_secure_erase, %struct.nd_intel_secure_erase* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.nfit_test_sec*, %struct.nfit_test_sec** %11, align 8
  %36 = getelementptr inbounds %struct.nfit_test_sec, %struct.nfit_test_sec* %35, i32 0, i32 3
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* @ND_INTEL_PASSPHRASE_SIZE, align 4
  %39 = call i64 @memcmp(i32 %34, i32 %37, i32 %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %47

41:                                               ; preds = %31
  %42 = load i32, i32* @ND_INTEL_STATUS_INVALID_PASS, align 4
  %43 = load %struct.nd_intel_secure_erase*, %struct.nd_intel_secure_erase** %7, align 8
  %44 = getelementptr inbounds %struct.nd_intel_secure_erase, %struct.nd_intel_secure_erase* %43, i32 0, i32 1
  store i32 %42, i32* %44, align 4
  %45 = load %struct.device*, %struct.device** %10, align 8
  %46 = call i32 @dev_dbg(%struct.device* %45, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0))
  br label %83

47:                                               ; preds = %31
  %48 = load %struct.nfit_test_sec*, %struct.nfit_test_sec** %11, align 8
  %49 = getelementptr inbounds %struct.nfit_test_sec, %struct.nfit_test_sec* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = load i32, i32* @ND_INTEL_SEC_STATE_ENABLED, align 4
  %52 = and i32 %50, %51
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %65, label %54

54:                                               ; preds = %47
  %55 = load %struct.nd_intel_secure_erase*, %struct.nd_intel_secure_erase** %7, align 8
  %56 = getelementptr inbounds %struct.nd_intel_secure_erase, %struct.nd_intel_secure_erase* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = load i32, i32* @zero_key, align 4
  %59 = load i32, i32* @ND_INTEL_PASSPHRASE_SIZE, align 4
  %60 = call i64 @memcmp(i32 %57, i32 %58, i32 %59)
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %65

62:                                               ; preds = %54
  %63 = load %struct.device*, %struct.device** %10, align 8
  %64 = call i32 @dev_dbg(%struct.device* %63, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0))
  store i32 0, i32* %5, align 4
  br label %85

65:                                               ; preds = %54, %47
  %66 = load %struct.nfit_test_sec*, %struct.nfit_test_sec** %11, align 8
  %67 = getelementptr inbounds %struct.nfit_test_sec, %struct.nfit_test_sec* %66, i32 0, i32 3
  %68 = load i32, i32* %67, align 4
  %69 = load i32, i32* @ND_INTEL_PASSPHRASE_SIZE, align 4
  %70 = call i32 @memset(i32 %68, i32 0, i32 %69)
  %71 = load %struct.nfit_test_sec*, %struct.nfit_test_sec** %11, align 8
  %72 = getelementptr inbounds %struct.nfit_test_sec, %struct.nfit_test_sec* %71, i32 0, i32 2
  %73 = load i32, i32* %72, align 4
  %74 = load i32, i32* @ND_INTEL_PASSPHRASE_SIZE, align 4
  %75 = call i32 @memset(i32 %73, i32 0, i32 %74)
  %76 = load %struct.nfit_test_sec*, %struct.nfit_test_sec** %11, align 8
  %77 = getelementptr inbounds %struct.nfit_test_sec, %struct.nfit_test_sec* %76, i32 0, i32 0
  store i32 0, i32* %77, align 4
  %78 = load i32, i32* @ND_INTEL_SEC_ESTATE_ENABLED, align 4
  %79 = load %struct.nfit_test_sec*, %struct.nfit_test_sec** %11, align 8
  %80 = getelementptr inbounds %struct.nfit_test_sec, %struct.nfit_test_sec* %79, i32 0, i32 1
  store i32 %78, i32* %80, align 4
  %81 = load %struct.device*, %struct.device** %10, align 8
  %82 = call i32 @dev_dbg(%struct.device* %81, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i64 0, i64 0))
  br label %83

83:                                               ; preds = %65, %41
  br label %84

84:                                               ; preds = %83, %25
  store i32 0, i32* %5, align 4
  br label %85

85:                                               ; preds = %84, %62
  %86 = load i32, i32* %5, align 4
  ret i32 %86
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
