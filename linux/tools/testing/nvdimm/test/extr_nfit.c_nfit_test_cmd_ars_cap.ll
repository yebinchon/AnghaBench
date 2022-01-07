; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/nvdimm/test/extr_nfit.c_nfit_test_cmd_ars_cap.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/nvdimm/test/extr_nfit.c_nfit_test_cmd_ars_cap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nd_cmd_ars_cap = type { i32, i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@SZ_4K = common dso_local global i32 0, align 4
@ND_ARS_PERSISTENT = common dso_local global i32 0, align 4
@ND_ARS_VOLATILE = common dso_local global i32 0, align 4
@NFIT_TEST_CLEAR_ERR_UNIT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nd_cmd_ars_cap*, i32)* @nfit_test_cmd_ars_cap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nfit_test_cmd_ars_cap(%struct.nd_cmd_ars_cap* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.nd_cmd_ars_cap*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.nd_cmd_ars_cap* %0, %struct.nd_cmd_ars_cap** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load i32, i32* %5, align 4
  %8 = zext i32 %7 to i64
  %9 = icmp ult i64 %8, 12
  br i1 %9, label %10, label %13

10:                                               ; preds = %2
  %11 = load i32, i32* @EINVAL, align 4
  %12 = sub nsw i32 0, %11
  store i32 %12, i32* %3, align 4
  br label %34

13:                                               ; preds = %2
  %14 = load i32, i32* @SZ_4K, align 4
  %15 = sext i32 %14 to i64
  %16 = udiv i64 %15, 4
  %17 = trunc i64 %16 to i32
  store i32 %17, i32* %6, align 4
  %18 = load i32, i32* %6, align 4
  %19 = sext i32 %18 to i64
  %20 = mul i64 %19, 4
  %21 = add i64 4, %20
  %22 = trunc i64 %21 to i32
  %23 = load %struct.nd_cmd_ars_cap*, %struct.nd_cmd_ars_cap** %4, align 8
  %24 = getelementptr inbounds %struct.nd_cmd_ars_cap, %struct.nd_cmd_ars_cap* %23, i32 0, i32 0
  store i32 %22, i32* %24, align 4
  %25 = load i32, i32* @ND_ARS_PERSISTENT, align 4
  %26 = load i32, i32* @ND_ARS_VOLATILE, align 4
  %27 = or i32 %25, %26
  %28 = shl i32 %27, 16
  %29 = load %struct.nd_cmd_ars_cap*, %struct.nd_cmd_ars_cap** %4, align 8
  %30 = getelementptr inbounds %struct.nd_cmd_ars_cap, %struct.nd_cmd_ars_cap* %29, i32 0, i32 1
  store i32 %28, i32* %30, align 4
  %31 = load i32, i32* @NFIT_TEST_CLEAR_ERR_UNIT, align 4
  %32 = load %struct.nd_cmd_ars_cap*, %struct.nd_cmd_ars_cap** %4, align 8
  %33 = getelementptr inbounds %struct.nd_cmd_ars_cap, %struct.nd_cmd_ars_cap* %32, i32 0, i32 2
  store i32 %31, i32* %33, align 4
  store i32 0, i32* %3, align 4
  br label %34

34:                                               ; preds = %13, %10
  %35 = load i32, i32* %3, align 4
  ret i32 %35
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
