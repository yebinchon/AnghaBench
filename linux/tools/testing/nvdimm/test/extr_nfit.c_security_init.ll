; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/nvdimm/test/extr_nfit.c_security_init.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/nvdimm/test/extr_nfit.c_security_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfit_test_sec = type { i32 }
%struct.nfit_test = type { i32 }

@dimm_sec_info = common dso_local global %struct.nfit_test_sec* null, align 8
@ND_INTEL_SEC_ESTATE_ENABLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nfit_test*)* @security_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @security_init(%struct.nfit_test* %0) #0 {
  %2 = alloca %struct.nfit_test*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.nfit_test_sec*, align 8
  store %struct.nfit_test* %0, %struct.nfit_test** %2, align 8
  store i32 0, i32* %3, align 4
  br label %5

5:                                                ; preds = %19, %1
  %6 = load i32, i32* %3, align 4
  %7 = load %struct.nfit_test*, %struct.nfit_test** %2, align 8
  %8 = getelementptr inbounds %struct.nfit_test, %struct.nfit_test* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = icmp slt i32 %6, %9
  br i1 %10, label %11, label %22

11:                                               ; preds = %5
  %12 = load %struct.nfit_test_sec*, %struct.nfit_test_sec** @dimm_sec_info, align 8
  %13 = load i32, i32* %3, align 4
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds %struct.nfit_test_sec, %struct.nfit_test_sec* %12, i64 %14
  store %struct.nfit_test_sec* %15, %struct.nfit_test_sec** %4, align 8
  %16 = load i32, i32* @ND_INTEL_SEC_ESTATE_ENABLED, align 4
  %17 = load %struct.nfit_test_sec*, %struct.nfit_test_sec** %4, align 8
  %18 = getelementptr inbounds %struct.nfit_test_sec, %struct.nfit_test_sec* %17, i32 0, i32 0
  store i32 %16, i32* %18, align 4
  br label %19

19:                                               ; preds = %11
  %20 = load i32, i32* %3, align 4
  %21 = add nsw i32 %20, 1
  store i32 %21, i32* %3, align 4
  br label %5

22:                                               ; preds = %5
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
