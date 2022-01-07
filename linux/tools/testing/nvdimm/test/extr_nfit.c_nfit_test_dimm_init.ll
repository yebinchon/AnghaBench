; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/nvdimm/test/extr_nfit.c_nfit_test_dimm_init.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/nvdimm/test/extr_nfit.c_nfit_test_dimm_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfit_test = type { i32, i32*, i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@put_dimms = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@nfit_test_dimm = common dso_local global i32 0, align 4
@nfit_test_dimm_attribute_groups = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [12 x i8] c"test_dimm%d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nfit_test*)* @nfit_test_dimm_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nfit_test_dimm_init(%struct.nfit_test* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.nfit_test*, align 8
  %4 = alloca i32, align 4
  store %struct.nfit_test* %0, %struct.nfit_test** %3, align 8
  %5 = load %struct.nfit_test*, %struct.nfit_test** %3, align 8
  %6 = getelementptr inbounds %struct.nfit_test, %struct.nfit_test* %5, i32 0, i32 3
  %7 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i32 0, i32 0
  %8 = load i32, i32* @put_dimms, align 4
  %9 = load %struct.nfit_test*, %struct.nfit_test** %3, align 8
  %10 = call i64 @devm_add_action_or_reset(i32* %7, i32 %8, %struct.nfit_test* %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %15

12:                                               ; preds = %1
  %13 = load i32, i32* @ENOMEM, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %2, align 4
  br label %57

15:                                               ; preds = %1
  store i32 0, i32* %4, align 4
  br label %16

16:                                               ; preds = %53, %15
  %17 = load i32, i32* %4, align 4
  %18 = load %struct.nfit_test*, %struct.nfit_test** %3, align 8
  %19 = getelementptr inbounds %struct.nfit_test, %struct.nfit_test* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = icmp slt i32 %17, %20
  br i1 %21, label %22, label %56

22:                                               ; preds = %16
  %23 = load i32, i32* @nfit_test_dimm, align 4
  %24 = load %struct.nfit_test*, %struct.nfit_test** %3, align 8
  %25 = getelementptr inbounds %struct.nfit_test, %struct.nfit_test* %24, i32 0, i32 3
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load i32, i32* @nfit_test_dimm_attribute_groups, align 4
  %28 = load i32, i32* %4, align 4
  %29 = sext i32 %28 to i64
  %30 = load %struct.nfit_test*, %struct.nfit_test** %3, align 8
  %31 = getelementptr inbounds %struct.nfit_test, %struct.nfit_test* %30, i32 0, i32 2
  %32 = load i64, i64* %31, align 8
  %33 = add nsw i64 %29, %32
  %34 = call i32 @device_create_with_groups(i32 %23, i32* %26, i32 0, i32* null, i32 %27, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i64 %33)
  %35 = load %struct.nfit_test*, %struct.nfit_test** %3, align 8
  %36 = getelementptr inbounds %struct.nfit_test, %struct.nfit_test* %35, i32 0, i32 1
  %37 = load i32*, i32** %36, align 8
  %38 = load i32, i32* %4, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds i32, i32* %37, i64 %39
  store i32 %34, i32* %40, align 4
  %41 = load %struct.nfit_test*, %struct.nfit_test** %3, align 8
  %42 = getelementptr inbounds %struct.nfit_test, %struct.nfit_test* %41, i32 0, i32 1
  %43 = load i32*, i32** %42, align 8
  %44 = load i32, i32* %4, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds i32, i32* %43, i64 %45
  %47 = load i32, i32* %46, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %52, label %49

49:                                               ; preds = %22
  %50 = load i32, i32* @ENOMEM, align 4
  %51 = sub nsw i32 0, %50
  store i32 %51, i32* %2, align 4
  br label %57

52:                                               ; preds = %22
  br label %53

53:                                               ; preds = %52
  %54 = load i32, i32* %4, align 4
  %55 = add nsw i32 %54, 1
  store i32 %55, i32* %4, align 4
  br label %16

56:                                               ; preds = %16
  store i32 0, i32* %2, align 4
  br label %57

57:                                               ; preds = %56, %49, %12
  %58 = load i32, i32* %2, align 4
  ret i32 %58
}

declare dso_local i64 @devm_add_action_or_reset(i32*, i32, %struct.nfit_test*) #1

declare dso_local i32 @device_create_with_groups(i32, i32*, i32, i32*, i32, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
