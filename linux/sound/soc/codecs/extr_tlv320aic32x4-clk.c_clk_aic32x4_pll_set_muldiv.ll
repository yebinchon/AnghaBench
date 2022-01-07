; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_tlv320aic32x4-clk.c_clk_aic32x4_pll_set_muldiv.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_tlv320aic32x4-clk.c_clk_aic32x4_pll_set_muldiv.c"
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
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.clk_aic32x4*, %struct.clk_aic32x4_pll_muldiv*)* @clk_aic32x4_pll_set_muldiv to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @clk_aic32x4_pll_set_muldiv(%struct.clk_aic32x4* %0, %struct.clk_aic32x4_pll_muldiv* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.clk_aic32x4*, align 8
  %5 = alloca %struct.clk_aic32x4_pll_muldiv*, align 8
  %6 = alloca i32, align 4
  store %struct.clk_aic32x4* %0, %struct.clk_aic32x4** %4, align 8
  store %struct.clk_aic32x4_pll_muldiv* %1, %struct.clk_aic32x4_pll_muldiv** %5, align 8
  %7 = load %struct.clk_aic32x4*, %struct.clk_aic32x4** %4, align 8
  %8 = getelementptr inbounds %struct.clk_aic32x4, %struct.clk_aic32x4* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = load i32, i32* @AIC32X4_PLLPR, align 4
  %11 = load i32, i32* @AIC32X4_PLL_R_MASK, align 4
  %12 = load %struct.clk_aic32x4_pll_muldiv*, %struct.clk_aic32x4_pll_muldiv** %5, align 8
  %13 = getelementptr inbounds %struct.clk_aic32x4_pll_muldiv, %struct.clk_aic32x4_pll_muldiv* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @regmap_update_bits(i32 %9, i32 %10, i32 %11, i32 %14)
  store i32 %15, i32* %6, align 4
  %16 = load i32, i32* %6, align 4
  %17 = icmp slt i32 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %2
  %19 = load i32, i32* %6, align 4
  store i32 %19, i32* %3, align 4
  br label %78

20:                                               ; preds = %2
  %21 = load %struct.clk_aic32x4*, %struct.clk_aic32x4** %4, align 8
  %22 = getelementptr inbounds %struct.clk_aic32x4, %struct.clk_aic32x4* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* @AIC32X4_PLLPR, align 4
  %25 = load i32, i32* @AIC32X4_PLL_P_MASK, align 4
  %26 = load %struct.clk_aic32x4_pll_muldiv*, %struct.clk_aic32x4_pll_muldiv** %5, align 8
  %27 = getelementptr inbounds %struct.clk_aic32x4_pll_muldiv, %struct.clk_aic32x4_pll_muldiv* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* @AIC32X4_PLL_P_SHIFT, align 4
  %30 = shl i32 %28, %29
  %31 = call i32 @regmap_update_bits(i32 %23, i32 %24, i32 %25, i32 %30)
  store i32 %31, i32* %6, align 4
  %32 = load i32, i32* %6, align 4
  %33 = icmp slt i32 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %20
  %35 = load i32, i32* %6, align 4
  store i32 %35, i32* %3, align 4
  br label %78

36:                                               ; preds = %20
  %37 = load %struct.clk_aic32x4*, %struct.clk_aic32x4** %4, align 8
  %38 = getelementptr inbounds %struct.clk_aic32x4, %struct.clk_aic32x4* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* @AIC32X4_PLLJ, align 4
  %41 = load %struct.clk_aic32x4_pll_muldiv*, %struct.clk_aic32x4_pll_muldiv** %5, align 8
  %42 = getelementptr inbounds %struct.clk_aic32x4_pll_muldiv, %struct.clk_aic32x4_pll_muldiv* %41, i32 0, i32 2
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @regmap_write(i32 %39, i32 %40, i32 %43)
  store i32 %44, i32* %6, align 4
  %45 = load i32, i32* %6, align 4
  %46 = icmp slt i32 %45, 0
  br i1 %46, label %47, label %49

47:                                               ; preds = %36
  %48 = load i32, i32* %6, align 4
  store i32 %48, i32* %3, align 4
  br label %78

49:                                               ; preds = %36
  %50 = load %struct.clk_aic32x4*, %struct.clk_aic32x4** %4, align 8
  %51 = getelementptr inbounds %struct.clk_aic32x4, %struct.clk_aic32x4* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = load i32, i32* @AIC32X4_PLLDMSB, align 4
  %54 = load %struct.clk_aic32x4_pll_muldiv*, %struct.clk_aic32x4_pll_muldiv** %5, align 8
  %55 = getelementptr inbounds %struct.clk_aic32x4_pll_muldiv, %struct.clk_aic32x4_pll_muldiv* %54, i32 0, i32 3
  %56 = load i32, i32* %55, align 4
  %57 = ashr i32 %56, 8
  %58 = call i32 @regmap_write(i32 %52, i32 %53, i32 %57)
  store i32 %58, i32* %6, align 4
  %59 = load i32, i32* %6, align 4
  %60 = icmp slt i32 %59, 0
  br i1 %60, label %61, label %63

61:                                               ; preds = %49
  %62 = load i32, i32* %6, align 4
  store i32 %62, i32* %3, align 4
  br label %78

63:                                               ; preds = %49
  %64 = load %struct.clk_aic32x4*, %struct.clk_aic32x4** %4, align 8
  %65 = getelementptr inbounds %struct.clk_aic32x4, %struct.clk_aic32x4* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = load i32, i32* @AIC32X4_PLLDLSB, align 4
  %68 = load %struct.clk_aic32x4_pll_muldiv*, %struct.clk_aic32x4_pll_muldiv** %5, align 8
  %69 = getelementptr inbounds %struct.clk_aic32x4_pll_muldiv, %struct.clk_aic32x4_pll_muldiv* %68, i32 0, i32 3
  %70 = load i32, i32* %69, align 4
  %71 = and i32 %70, 255
  %72 = call i32 @regmap_write(i32 %66, i32 %67, i32 %71)
  store i32 %72, i32* %6, align 4
  %73 = load i32, i32* %6, align 4
  %74 = icmp slt i32 %73, 0
  br i1 %74, label %75, label %77

75:                                               ; preds = %63
  %76 = load i32, i32* %6, align 4
  store i32 %76, i32* %3, align 4
  br label %78

77:                                               ; preds = %63
  store i32 0, i32* %3, align 4
  br label %78

78:                                               ; preds = %77, %75, %61, %47, %34, %18
  %79 = load i32, i32* %3, align 4
  ret i32 %79
}

declare dso_local i32 @regmap_update_bits(i32, i32, i32, i32) #1

declare dso_local i32 @regmap_write(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
