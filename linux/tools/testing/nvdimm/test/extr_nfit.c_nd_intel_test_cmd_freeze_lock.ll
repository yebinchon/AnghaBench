; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/nvdimm/test/extr_nfit.c_nd_intel_test_cmd_freeze_lock.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/nvdimm/test/extr_nfit.c_nd_intel_test_cmd_freeze_lock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfit_test_sec = type { i32 }
%struct.nfit_test = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.device }
%struct.device = type { i32 }
%struct.nd_intel_freeze_lock = type { i64 }

@dimm_sec_info = common dso_local global %struct.nfit_test_sec* null, align 8
@ND_INTEL_SEC_STATE_ENABLED = common dso_local global i32 0, align 4
@ND_INTEL_STATUS_INVALID_STATE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [35 x i8] c"freeze lock: wrong security state\0A\00", align 1
@ND_INTEL_SEC_STATE_FROZEN = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [17 x i8] c"security frozen\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nfit_test*, %struct.nd_intel_freeze_lock*, i32, i32)* @nd_intel_test_cmd_freeze_lock to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nd_intel_test_cmd_freeze_lock(%struct.nfit_test* %0, %struct.nd_intel_freeze_lock* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.nfit_test*, align 8
  %6 = alloca %struct.nd_intel_freeze_lock*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.device*, align 8
  %10 = alloca %struct.nfit_test_sec*, align 8
  store %struct.nfit_test* %0, %struct.nfit_test** %5, align 8
  store %struct.nd_intel_freeze_lock* %1, %struct.nd_intel_freeze_lock** %6, align 8
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
  %21 = load i32, i32* @ND_INTEL_SEC_STATE_ENABLED, align 4
  %22 = and i32 %20, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %30, label %24

24:                                               ; preds = %4
  %25 = load i64, i64* @ND_INTEL_STATUS_INVALID_STATE, align 8
  %26 = load %struct.nd_intel_freeze_lock*, %struct.nd_intel_freeze_lock** %6, align 8
  %27 = getelementptr inbounds %struct.nd_intel_freeze_lock, %struct.nd_intel_freeze_lock* %26, i32 0, i32 0
  store i64 %25, i64* %27, align 8
  %28 = load %struct.device*, %struct.device** %9, align 8
  %29 = call i32 @dev_dbg(%struct.device* %28, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0))
  br label %40

30:                                               ; preds = %4
  %31 = load i32, i32* @ND_INTEL_SEC_STATE_FROZEN, align 4
  %32 = load %struct.nfit_test_sec*, %struct.nfit_test_sec** %10, align 8
  %33 = getelementptr inbounds %struct.nfit_test_sec, %struct.nfit_test_sec* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = or i32 %34, %31
  store i32 %35, i32* %33, align 4
  %36 = load %struct.nd_intel_freeze_lock*, %struct.nd_intel_freeze_lock** %6, align 8
  %37 = getelementptr inbounds %struct.nd_intel_freeze_lock, %struct.nd_intel_freeze_lock* %36, i32 0, i32 0
  store i64 0, i64* %37, align 8
  %38 = load %struct.device*, %struct.device** %9, align 8
  %39 = call i32 @dev_dbg(%struct.device* %38, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0))
  br label %40

40:                                               ; preds = %30, %24
  ret i32 0
}

declare dso_local i32 @dev_dbg(%struct.device*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
