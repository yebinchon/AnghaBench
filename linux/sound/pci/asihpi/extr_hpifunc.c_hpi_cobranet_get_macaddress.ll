; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/asihpi/extr_hpifunc.c_hpi_cobranet_get_macaddress.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/asihpi/extr_hpifunc.c_hpi_cobranet_get_macaddress.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@HPI_COBRANET_HMI_cobra_if_phy_address = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @hpi_cobranet_get_macaddress(i32 %0, i32* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32* %1, i32** %5, align 8
  store i32* %2, i32** %6, align 8
  %10 = load i32, i32* %4, align 4
  %11 = load i64, i64* @HPI_COBRANET_HMI_cobra_if_phy_address, align 8
  %12 = call i64 @hpi_cobranet_hmi_read(i32 %10, i64 %11, i32 4, i32* %7, i32* %9)
  store i64 %12, i64* %8, align 8
  %13 = load i64, i64* %8, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %36, label %15

15:                                               ; preds = %3
  %16 = load i32, i32* %9, align 4
  %17 = and i32 %16, -16777216
  %18 = lshr i32 %17, 8
  %19 = load i32, i32* %9, align 4
  %20 = and i32 %19, 16711680
  %21 = shl i32 %20, 8
  %22 = or i32 %18, %21
  %23 = load i32, i32* %9, align 4
  %24 = and i32 %23, 65280
  %25 = ashr i32 %24, 8
  %26 = or i32 %22, %25
  %27 = load i32, i32* %9, align 4
  %28 = and i32 %27, 255
  %29 = shl i32 %28, 8
  %30 = or i32 %26, %29
  %31 = load i32*, i32** %5, align 8
  store i32 %30, i32* %31, align 4
  %32 = load i32, i32* %4, align 4
  %33 = load i64, i64* @HPI_COBRANET_HMI_cobra_if_phy_address, align 8
  %34 = add nsw i64 %33, 1
  %35 = call i64 @hpi_cobranet_hmi_read(i32 %32, i64 %34, i32 4, i32* %7, i32* %9)
  store i64 %35, i64* %8, align 8
  br label %36

36:                                               ; preds = %15, %3
  %37 = load i64, i64* %8, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %56, label %39

39:                                               ; preds = %36
  %40 = load i32, i32* %9, align 4
  %41 = and i32 %40, -16777216
  %42 = lshr i32 %41, 8
  %43 = load i32, i32* %9, align 4
  %44 = and i32 %43, 16711680
  %45 = shl i32 %44, 8
  %46 = or i32 %42, %45
  %47 = load i32, i32* %9, align 4
  %48 = and i32 %47, 65280
  %49 = ashr i32 %48, 8
  %50 = or i32 %46, %49
  %51 = load i32, i32* %9, align 4
  %52 = and i32 %51, 255
  %53 = shl i32 %52, 8
  %54 = or i32 %50, %53
  %55 = load i32*, i32** %6, align 8
  store i32 %54, i32* %55, align 4
  br label %59

56:                                               ; preds = %36
  %57 = load i32*, i32** %5, align 8
  store i32 0, i32* %57, align 4
  %58 = load i32*, i32** %6, align 8
  store i32 0, i32* %58, align 4
  br label %59

59:                                               ; preds = %56, %39
  %60 = load i64, i64* %8, align 8
  ret i64 %60
}

declare dso_local i64 @hpi_cobranet_hmi_read(i32, i64, i32, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
