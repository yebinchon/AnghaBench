; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/nvdimm/test/extr_nfit.c_nd_intel_test_cmd_security_status.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/nvdimm/test/extr_nfit.c_nd_intel_test_cmd_security_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfit_test_sec = type { i32, i32 }
%struct.nfit_test = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.device }
%struct.device = type { i32 }
%struct.nd_intel_get_security_state = type { i32, i32, i64 }

@dimm_sec_info = common dso_local global %struct.nfit_test_sec* null, align 8
@.str = private unnamed_addr constant [31 x i8] c"security state (%#x) returned\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nfit_test*, %struct.nd_intel_get_security_state*, i32, i32)* @nd_intel_test_cmd_security_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nd_intel_test_cmd_security_status(%struct.nfit_test* %0, %struct.nd_intel_get_security_state* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.nfit_test*, align 8
  %6 = alloca %struct.nd_intel_get_security_state*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.device*, align 8
  %10 = alloca %struct.nfit_test_sec*, align 8
  store %struct.nfit_test* %0, %struct.nfit_test** %5, align 8
  store %struct.nd_intel_get_security_state* %1, %struct.nd_intel_get_security_state** %6, align 8
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
  %18 = load %struct.nd_intel_get_security_state*, %struct.nd_intel_get_security_state** %6, align 8
  %19 = getelementptr inbounds %struct.nd_intel_get_security_state, %struct.nd_intel_get_security_state* %18, i32 0, i32 2
  store i64 0, i64* %19, align 8
  %20 = load %struct.nfit_test_sec*, %struct.nfit_test_sec** %10, align 8
  %21 = getelementptr inbounds %struct.nfit_test_sec, %struct.nfit_test_sec* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.nd_intel_get_security_state*, %struct.nd_intel_get_security_state** %6, align 8
  %24 = getelementptr inbounds %struct.nd_intel_get_security_state, %struct.nd_intel_get_security_state* %23, i32 0, i32 0
  store i32 %22, i32* %24, align 8
  %25 = load %struct.nfit_test_sec*, %struct.nfit_test_sec** %10, align 8
  %26 = getelementptr inbounds %struct.nfit_test_sec, %struct.nfit_test_sec* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.nd_intel_get_security_state*, %struct.nd_intel_get_security_state** %6, align 8
  %29 = getelementptr inbounds %struct.nd_intel_get_security_state, %struct.nd_intel_get_security_state* %28, i32 0, i32 1
  store i32 %27, i32* %29, align 4
  %30 = load %struct.device*, %struct.device** %9, align 8
  %31 = load %struct.nd_intel_get_security_state*, %struct.nd_intel_get_security_state** %6, align 8
  %32 = getelementptr inbounds %struct.nd_intel_get_security_state, %struct.nd_intel_get_security_state* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = call i32 @dev_dbg(%struct.device* %30, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %33)
  ret i32 0
}

declare dso_local i32 @dev_dbg(%struct.device*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
