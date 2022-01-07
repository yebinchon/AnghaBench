; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/nvdimm/test/extr_nfit.c_nfit_test_cmd_ars_error_inject.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/nvdimm/test/extr_nfit.c_nfit_test_cmd_ars_error_inject.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfit_test = type { i32, i32 }
%struct.nd_cmd_ars_err_inj = type { i64, i32, i64, i32 }

@EINVAL = common dso_local global i32 0, align 4
@ND_ARS_ERR_INJ_OPT_NOTIFY = common dso_local global i32 0, align 4
@nfit_wq = common dso_local global i32 0, align 4
@NFIT_ARS_INJECT_INVALID = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nfit_test*, %struct.nd_cmd_ars_err_inj*, i32)* @nfit_test_cmd_ars_error_inject to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nfit_test_cmd_ars_error_inject(%struct.nfit_test* %0, %struct.nd_cmd_ars_err_inj* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.nfit_test*, align 8
  %6 = alloca %struct.nd_cmd_ars_err_inj*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.nfit_test* %0, %struct.nfit_test** %5, align 8
  store %struct.nd_cmd_ars_err_inj* %1, %struct.nd_cmd_ars_err_inj** %6, align 8
  store i32 %2, i32* %7, align 4
  %9 = load i32, i32* %7, align 4
  %10 = zext i32 %9 to i64
  %11 = icmp ne i64 %10, 32
  br i1 %11, label %12, label %15

12:                                               ; preds = %3
  %13 = load i32, i32* @EINVAL, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %8, align 4
  br label %52

15:                                               ; preds = %3
  %16 = load %struct.nd_cmd_ars_err_inj*, %struct.nd_cmd_ars_err_inj** %6, align 8
  %17 = getelementptr inbounds %struct.nd_cmd_ars_err_inj, %struct.nd_cmd_ars_err_inj* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = icmp sle i64 %18, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %15
  %21 = load i32, i32* @EINVAL, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %8, align 4
  br label %52

23:                                               ; preds = %15
  %24 = load %struct.nfit_test*, %struct.nfit_test** %5, align 8
  %25 = getelementptr inbounds %struct.nfit_test, %struct.nfit_test* %24, i32 0, i32 1
  %26 = load %struct.nd_cmd_ars_err_inj*, %struct.nd_cmd_ars_err_inj** %6, align 8
  %27 = getelementptr inbounds %struct.nd_cmd_ars_err_inj, %struct.nd_cmd_ars_err_inj* %26, i32 0, i32 3
  %28 = load i32, i32* %27, align 8
  %29 = load %struct.nd_cmd_ars_err_inj*, %struct.nd_cmd_ars_err_inj** %6, align 8
  %30 = getelementptr inbounds %struct.nd_cmd_ars_err_inj, %struct.nd_cmd_ars_err_inj* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = call i32 @badrange_add(i32* %25, i32 %28, i64 %31)
  store i32 %32, i32* %8, align 4
  %33 = load i32, i32* %8, align 4
  %34 = icmp slt i32 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %23
  br label %52

36:                                               ; preds = %23
  %37 = load %struct.nd_cmd_ars_err_inj*, %struct.nd_cmd_ars_err_inj** %6, align 8
  %38 = getelementptr inbounds %struct.nd_cmd_ars_err_inj, %struct.nd_cmd_ars_err_inj* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 8
  %40 = load i32, i32* @ND_ARS_ERR_INJ_OPT_NOTIFY, align 4
  %41 = shl i32 1, %40
  %42 = and i32 %39, %41
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %49

44:                                               ; preds = %36
  %45 = load i32, i32* @nfit_wq, align 4
  %46 = load %struct.nfit_test*, %struct.nfit_test** %5, align 8
  %47 = getelementptr inbounds %struct.nfit_test, %struct.nfit_test* %46, i32 0, i32 0
  %48 = call i32 @queue_work(i32 %45, i32* %47)
  br label %49

49:                                               ; preds = %44, %36
  %50 = load %struct.nd_cmd_ars_err_inj*, %struct.nd_cmd_ars_err_inj** %6, align 8
  %51 = getelementptr inbounds %struct.nd_cmd_ars_err_inj, %struct.nd_cmd_ars_err_inj* %50, i32 0, i32 2
  store i64 0, i64* %51, align 8
  store i32 0, i32* %4, align 4
  br label %57

52:                                               ; preds = %35, %20, %12
  %53 = load i64, i64* @NFIT_ARS_INJECT_INVALID, align 8
  %54 = load %struct.nd_cmd_ars_err_inj*, %struct.nd_cmd_ars_err_inj** %6, align 8
  %55 = getelementptr inbounds %struct.nd_cmd_ars_err_inj, %struct.nd_cmd_ars_err_inj* %54, i32 0, i32 2
  store i64 %53, i64* %55, align 8
  %56 = load i32, i32* %8, align 4
  store i32 %56, i32* %4, align 4
  br label %57

57:                                               ; preds = %52, %49
  %58 = load i32, i32* %4, align 4
  ret i32 %58
}

declare dso_local i32 @badrange_add(i32*, i32, i64) #1

declare dso_local i32 @queue_work(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
