; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/nvdimm/extr_config_check.c_check.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/nvdimm/extr_config_check.c_check.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@CONFIG_LIBNVDIMM = common dso_local global i32 0, align 4
@CONFIG_BLK_DEV_PMEM = common dso_local global i32 0, align 4
@CONFIG_ND_BTT = common dso_local global i32 0, align 4
@CONFIG_ND_PFN = common dso_local global i32 0, align 4
@CONFIG_ND_BLK = common dso_local global i32 0, align 4
@CONFIG_ACPI_NFIT = common dso_local global i32 0, align 4
@CONFIG_DEV_DAX = common dso_local global i32 0, align 4
@CONFIG_DEV_DAX_PMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @check() #0 {
  %1 = load i32, i32* @CONFIG_LIBNVDIMM, align 4
  %2 = call i32 @IS_MODULE(i32 %1)
  %3 = icmp ne i32 %2, 0
  %4 = xor i1 %3, true
  %5 = zext i1 %4 to i32
  %6 = call i32 @BUILD_BUG_ON(i32 %5)
  %7 = load i32, i32* @CONFIG_BLK_DEV_PMEM, align 4
  %8 = call i32 @IS_MODULE(i32 %7)
  %9 = icmp ne i32 %8, 0
  %10 = xor i1 %9, true
  %11 = zext i1 %10 to i32
  %12 = call i32 @BUILD_BUG_ON(i32 %11)
  %13 = load i32, i32* @CONFIG_ND_BTT, align 4
  %14 = call i32 @IS_MODULE(i32 %13)
  %15 = icmp ne i32 %14, 0
  %16 = xor i1 %15, true
  %17 = zext i1 %16 to i32
  %18 = call i32 @BUILD_BUG_ON(i32 %17)
  %19 = load i32, i32* @CONFIG_ND_PFN, align 4
  %20 = call i32 @IS_MODULE(i32 %19)
  %21 = icmp ne i32 %20, 0
  %22 = xor i1 %21, true
  %23 = zext i1 %22 to i32
  %24 = call i32 @BUILD_BUG_ON(i32 %23)
  %25 = load i32, i32* @CONFIG_ND_BLK, align 4
  %26 = call i32 @IS_MODULE(i32 %25)
  %27 = icmp ne i32 %26, 0
  %28 = xor i1 %27, true
  %29 = zext i1 %28 to i32
  %30 = call i32 @BUILD_BUG_ON(i32 %29)
  %31 = load i32, i32* @CONFIG_ACPI_NFIT, align 4
  %32 = call i32 @IS_MODULE(i32 %31)
  %33 = icmp ne i32 %32, 0
  %34 = xor i1 %33, true
  %35 = zext i1 %34 to i32
  %36 = call i32 @BUILD_BUG_ON(i32 %35)
  %37 = load i32, i32* @CONFIG_DEV_DAX, align 4
  %38 = call i32 @IS_MODULE(i32 %37)
  %39 = icmp ne i32 %38, 0
  %40 = xor i1 %39, true
  %41 = zext i1 %40 to i32
  %42 = call i32 @BUILD_BUG_ON(i32 %41)
  %43 = load i32, i32* @CONFIG_DEV_DAX_PMEM, align 4
  %44 = call i32 @IS_MODULE(i32 %43)
  %45 = icmp ne i32 %44, 0
  %46 = xor i1 %45, true
  %47 = zext i1 %46 to i32
  %48 = call i32 @BUILD_BUG_ON(i32 %47)
  ret void
}

declare dso_local i32 @BUILD_BUG_ON(i32) #1

declare dso_local i32 @IS_MODULE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
