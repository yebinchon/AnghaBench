; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_tlv320aic32x4-clk.c_clk_aic32x4_pll_get_muldiv.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_tlv320aic32x4-clk.c_clk_aic32x4_pll_get_muldiv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clk_aic32x4 = type { i32 }
%struct.clk_aic32x4_pll_muldiv = type { i32, i32, i32, i32 }

@AIC32X4_PLLPR = common dso_local global i32 0, align 4
@AIC32X4_PLL_R_MASK = common dso_local global i32 0, align 4
@AIC32X4_PLL_P_MASK = common dso_local global i32 0, align 4
@AIC32X4_PLL_P_SHIFT = common dso_local global i32 0, align 4
@AIC32X4_PLLJ = common dso_local global i32 0, align 4
@AIC32X4_PLLDMSB = common dso_local global i32 0, align 4
@AIC32X4_PLLDLSB = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.clk_aic32x4*, %struct.clk_aic32x4_pll_muldiv*)* @clk_aic32x4_pll_get_muldiv to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @clk_aic32x4_pll_get_muldiv(%struct.clk_aic32x4* %0, %struct.clk_aic32x4_pll_muldiv* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.clk_aic32x4*, align 8
  %5 = alloca %struct.clk_aic32x4_pll_muldiv*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.clk_aic32x4* %0, %struct.clk_aic32x4** %4, align 8
  store %struct.clk_aic32x4_pll_muldiv* %1, %struct.clk_aic32x4_pll_muldiv** %5, align 8
  %8 = load %struct.clk_aic32x4*, %struct.clk_aic32x4** %4, align 8
  %9 = getelementptr inbounds %struct.clk_aic32x4, %struct.clk_aic32x4* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = load i32, i32* @AIC32X4_PLLPR, align 4
  %12 = call i32 @regmap_read(i32 %10, i32 %11, i32* %6)
  store i32 %12, i32* %7, align 4
  %13 = load i32, i32* %7, align 4
  %14 = icmp slt i32 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %2
  %16 = load i32, i32* %7, align 4
  store i32 %16, i32* %3, align 4
  br label %72

17:                                               ; preds = %2
  %18 = load i32, i32* %6, align 4
  %19 = load i32, i32* @AIC32X4_PLL_R_MASK, align 4
  %20 = and i32 %18, %19
  %21 = load %struct.clk_aic32x4_pll_muldiv*, %struct.clk_aic32x4_pll_muldiv** %5, align 8
  %22 = getelementptr inbounds %struct.clk_aic32x4_pll_muldiv, %struct.clk_aic32x4_pll_muldiv* %21, i32 0, i32 0
  store i32 %20, i32* %22, align 4
  %23 = load i32, i32* %6, align 4
  %24 = load i32, i32* @AIC32X4_PLL_P_MASK, align 4
  %25 = and i32 %23, %24
  %26 = load i32, i32* @AIC32X4_PLL_P_SHIFT, align 4
  %27 = lshr i32 %25, %26
  %28 = load %struct.clk_aic32x4_pll_muldiv*, %struct.clk_aic32x4_pll_muldiv** %5, align 8
  %29 = getelementptr inbounds %struct.clk_aic32x4_pll_muldiv, %struct.clk_aic32x4_pll_muldiv* %28, i32 0, i32 1
  store i32 %27, i32* %29, align 4
  %30 = load %struct.clk_aic32x4*, %struct.clk_aic32x4** %4, align 8
  %31 = getelementptr inbounds %struct.clk_aic32x4, %struct.clk_aic32x4* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* @AIC32X4_PLLJ, align 4
  %34 = call i32 @regmap_read(i32 %32, i32 %33, i32* %6)
  store i32 %34, i32* %7, align 4
  %35 = load i32, i32* %7, align 4
  %36 = icmp slt i32 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %17
  %38 = load i32, i32* %7, align 4
  store i32 %38, i32* %3, align 4
  br label %72

39:                                               ; preds = %17
  %40 = load i32, i32* %6, align 4
  %41 = load %struct.clk_aic32x4_pll_muldiv*, %struct.clk_aic32x4_pll_muldiv** %5, align 8
  %42 = getelementptr inbounds %struct.clk_aic32x4_pll_muldiv, %struct.clk_aic32x4_pll_muldiv* %41, i32 0, i32 2
  store i32 %40, i32* %42, align 4
  %43 = load %struct.clk_aic32x4*, %struct.clk_aic32x4** %4, align 8
  %44 = getelementptr inbounds %struct.clk_aic32x4, %struct.clk_aic32x4* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load i32, i32* @AIC32X4_PLLDMSB, align 4
  %47 = call i32 @regmap_read(i32 %45, i32 %46, i32* %6)
  store i32 %47, i32* %7, align 4
  %48 = load i32, i32* %7, align 4
  %49 = icmp slt i32 %48, 0
  br i1 %49, label %50, label %52

50:                                               ; preds = %39
  %51 = load i32, i32* %7, align 4
  store i32 %51, i32* %3, align 4
  br label %72

52:                                               ; preds = %39
  %53 = load i32, i32* %6, align 4
  %54 = shl i32 %53, 8
  %55 = load %struct.clk_aic32x4_pll_muldiv*, %struct.clk_aic32x4_pll_muldiv** %5, align 8
  %56 = getelementptr inbounds %struct.clk_aic32x4_pll_muldiv, %struct.clk_aic32x4_pll_muldiv* %55, i32 0, i32 3
  store i32 %54, i32* %56, align 4
  %57 = load %struct.clk_aic32x4*, %struct.clk_aic32x4** %4, align 8
  %58 = getelementptr inbounds %struct.clk_aic32x4, %struct.clk_aic32x4* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = load i32, i32* @AIC32X4_PLLDLSB, align 4
  %61 = call i32 @regmap_read(i32 %59, i32 %60, i32* %6)
  store i32 %61, i32* %7, align 4
  %62 = load i32, i32* %7, align 4
  %63 = icmp slt i32 %62, 0
  br i1 %63, label %64, label %66

64:                                               ; preds = %52
  %65 = load i32, i32* %7, align 4
  store i32 %65, i32* %3, align 4
  br label %72

66:                                               ; preds = %52
  %67 = load i32, i32* %6, align 4
  %68 = load %struct.clk_aic32x4_pll_muldiv*, %struct.clk_aic32x4_pll_muldiv** %5, align 8
  %69 = getelementptr inbounds %struct.clk_aic32x4_pll_muldiv, %struct.clk_aic32x4_pll_muldiv* %68, i32 0, i32 3
  %70 = load i32, i32* %69, align 4
  %71 = or i32 %70, %67
  store i32 %71, i32* %69, align 4
  store i32 0, i32* %3, align 4
  br label %72

72:                                               ; preds = %66, %64, %50, %37, %15
  %73 = load i32, i32* %3, align 4
  ret i32 %73
}

declare dso_local i32 @regmap_read(i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
