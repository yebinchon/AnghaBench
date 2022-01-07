; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/tegra/extr_tegra20_das.c_tegra20_das_connect_dap_to_dap.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/tegra/extr_tegra20_das.c_tegra20_das_connect_dap_to_dap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@das = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@TEGRA20_DAS_DAP_CTRL_SEL = common dso_local global i32 0, align 4
@TEGRA20_DAS_DAP_CTRL_SEL_STRIDE = common dso_local global i32 0, align 4
@TEGRA20_DAS_DAP_CTRL_SEL_DAP_CTRL_SEL_P = common dso_local global i32 0, align 4
@TEGRA20_DAS_DAP_CTRL_SEL_DAP_SDATA2_TX_RX_P = common dso_local global i32 0, align 4
@TEGRA20_DAS_DAP_CTRL_SEL_DAP_SDATA1_TX_RX_P = common dso_local global i32 0, align 4
@TEGRA20_DAS_DAP_CTRL_SEL_DAP_MS_SEL_P = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @tegra20_das_connect_dap_to_dap(i32 %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store i32 %0, i32* %7, align 4
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %14 = load i32, i32* @das, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %19, label %16

16:                                               ; preds = %5
  %17 = load i32, i32* @ENODEV, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %6, align 4
  br label %55

19:                                               ; preds = %5
  %20 = load i32, i32* @TEGRA20_DAS_DAP_CTRL_SEL, align 4
  %21 = load i32, i32* %7, align 4
  %22 = load i32, i32* @TEGRA20_DAS_DAP_CTRL_SEL_STRIDE, align 4
  %23 = mul nsw i32 %21, %22
  %24 = add nsw i32 %20, %23
  store i32 %24, i32* %12, align 4
  %25 = load i32, i32* %8, align 4
  %26 = load i32, i32* @TEGRA20_DAS_DAP_CTRL_SEL_DAP_CTRL_SEL_P, align 4
  %27 = shl i32 %25, %26
  %28 = load i32, i32* %11, align 4
  %29 = icmp ne i32 %28, 0
  %30 = xor i1 %29, true
  %31 = xor i1 %30, true
  %32 = zext i1 %31 to i32
  %33 = load i32, i32* @TEGRA20_DAS_DAP_CTRL_SEL_DAP_SDATA2_TX_RX_P, align 4
  %34 = shl i32 %32, %33
  %35 = or i32 %27, %34
  %36 = load i32, i32* %10, align 4
  %37 = icmp ne i32 %36, 0
  %38 = xor i1 %37, true
  %39 = xor i1 %38, true
  %40 = zext i1 %39 to i32
  %41 = load i32, i32* @TEGRA20_DAS_DAP_CTRL_SEL_DAP_SDATA1_TX_RX_P, align 4
  %42 = shl i32 %40, %41
  %43 = or i32 %35, %42
  %44 = load i32, i32* %9, align 4
  %45 = icmp ne i32 %44, 0
  %46 = xor i1 %45, true
  %47 = xor i1 %46, true
  %48 = zext i1 %47 to i32
  %49 = load i32, i32* @TEGRA20_DAS_DAP_CTRL_SEL_DAP_MS_SEL_P, align 4
  %50 = shl i32 %48, %49
  %51 = or i32 %43, %50
  store i32 %51, i32* %13, align 4
  %52 = load i32, i32* %12, align 4
  %53 = load i32, i32* %13, align 4
  %54 = call i32 @tegra20_das_write(i32 %52, i32 %53)
  store i32 0, i32* %6, align 4
  br label %55

55:                                               ; preds = %19, %16
  %56 = load i32, i32* %6, align 4
  ret i32 %56
}

declare dso_local i32 @tegra20_das_write(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
