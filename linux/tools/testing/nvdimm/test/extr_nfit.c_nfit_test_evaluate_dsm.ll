; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/nvdimm/test/extr_nfit.c_nfit_test_evaluate_dsm.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/nvdimm/test/extr_nfit.c_nfit_test_evaluate_dsm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.acpi_object = type { i32 }

@nfit_ctl_handle = common dso_local global i32 0, align 4
@ENXIO = common dso_local global i32 0, align 4
@result = common dso_local global %union.acpi_object* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%union.acpi_object* (i32*, i32*, i32, i32, %union.acpi_object*)* @nfit_test_evaluate_dsm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %union.acpi_object* @nfit_test_evaluate_dsm(i32* %0, i32* %1, i32 %2, i32 %3, %union.acpi_object* %4) #0 {
  %6 = alloca %union.acpi_object*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %union.acpi_object*, align 8
  store i32* %0, i32** %7, align 8
  store i32* %1, i32** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store %union.acpi_object* %4, %union.acpi_object** %11, align 8
  %12 = load i32*, i32** %7, align 8
  %13 = icmp ne i32* %12, @nfit_ctl_handle
  br i1 %13, label %14, label %18

14:                                               ; preds = %5
  %15 = load i32, i32* @ENXIO, align 4
  %16 = sub nsw i32 0, %15
  %17 = call %union.acpi_object* @ERR_PTR(i32 %16)
  store %union.acpi_object* %17, %union.acpi_object** %6, align 8
  br label %20

18:                                               ; preds = %5
  %19 = load %union.acpi_object*, %union.acpi_object** @result, align 8
  store %union.acpi_object* %19, %union.acpi_object** %6, align 8
  br label %20

20:                                               ; preds = %18, %14
  %21 = load %union.acpi_object*, %union.acpi_object** %6, align 8
  ret %union.acpi_object* %21
}

declare dso_local %union.acpi_object* @ERR_PTR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
