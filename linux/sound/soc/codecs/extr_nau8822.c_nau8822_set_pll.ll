; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_nau8822.c_nau8822_set_pll.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_nau8822.c_nau8822_set_pll.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_dai = type { %struct.snd_soc_component* }
%struct.snd_soc_component = type { i32 }
%struct.nau8822 = type { %struct.nau8822_pll }
%struct.nau8822_pll = type { i32, i32, i32, i64 }

@.str = private unnamed_addr constant [28 x i8] c"Unsupported input clock %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [53 x i8] c"pll_int=%x pll_frac=%x mclk_scaler=%x pre_factor=%x\0A\00", align 1
@NAU8822_REG_PLL_N = common dso_local global i32 0, align 4
@NAU8822_PLLMCLK_DIV2 = common dso_local global i32 0, align 4
@NAU8822_PLLN_MASK = common dso_local global i32 0, align 4
@NAU8822_REG_PLL_K1 = common dso_local global i32 0, align 4
@NAU8822_PLLK1_SFT = common dso_local global i32 0, align 4
@NAU8822_PLLK1_MASK = common dso_local global i32 0, align 4
@NAU8822_REG_PLL_K2 = common dso_local global i32 0, align 4
@NAU8822_PLLK2_SFT = common dso_local global i32 0, align 4
@NAU8822_PLLK2_MASK = common dso_local global i32 0, align 4
@NAU8822_REG_PLL_K3 = common dso_local global i32 0, align 4
@NAU8822_PLLK3_MASK = common dso_local global i32 0, align 4
@NAU8822_REG_CLOCKING = common dso_local global i32 0, align 4
@NAU8822_MCLKSEL_MASK = common dso_local global i32 0, align 4
@NAU8822_MCLKSEL_SFT = common dso_local global i32 0, align 4
@NAU8822_CLKM_MASK = common dso_local global i32 0, align 4
@NAU8822_CLKM_PLL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_soc_dai*, i32, i32, i32, i32)* @nau8822_set_pll to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nau8822_set_pll(%struct.snd_soc_dai* %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.snd_soc_dai*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.snd_soc_component*, align 8
  %13 = alloca %struct.nau8822*, align 8
  %14 = alloca %struct.nau8822_pll*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.snd_soc_dai* %0, %struct.snd_soc_dai** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %17 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %7, align 8
  %18 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %17, i32 0, i32 0
  %19 = load %struct.snd_soc_component*, %struct.snd_soc_component** %18, align 8
  store %struct.snd_soc_component* %19, %struct.snd_soc_component** %12, align 8
  %20 = load %struct.snd_soc_component*, %struct.snd_soc_component** %12, align 8
  %21 = call %struct.nau8822* @snd_soc_component_get_drvdata(%struct.snd_soc_component* %20)
  store %struct.nau8822* %21, %struct.nau8822** %13, align 8
  %22 = load %struct.nau8822*, %struct.nau8822** %13, align 8
  %23 = getelementptr inbounds %struct.nau8822, %struct.nau8822* %22, i32 0, i32 0
  store %struct.nau8822_pll* %23, %struct.nau8822_pll** %14, align 8
  %24 = load i32, i32* %11, align 4
  %25 = udiv i32 %24, 256
  store i32 %25, i32* %16, align 4
  %26 = load i32, i32* %10, align 4
  %27 = load i32, i32* %16, align 4
  %28 = load %struct.nau8822_pll*, %struct.nau8822_pll** %14, align 8
  %29 = call i32 @nau8822_calc_pll(i32 %26, i32 %27, %struct.nau8822_pll* %28)
  store i32 %29, i32* %15, align 4
  %30 = load i32, i32* %15, align 4
  %31 = icmp slt i32 %30, 0
  br i1 %31, label %32, label %39

32:                                               ; preds = %5
  %33 = load %struct.snd_soc_component*, %struct.snd_soc_component** %12, align 8
  %34 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* %10, align 4
  %37 = call i32 @dev_err(i32 %35, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %36)
  %38 = load i32, i32* %15, align 4
  store i32 %38, i32* %6, align 4
  br label %117

39:                                               ; preds = %5
  %40 = load %struct.snd_soc_component*, %struct.snd_soc_component** %12, align 8
  %41 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.nau8822_pll*, %struct.nau8822_pll** %14, align 8
  %44 = getelementptr inbounds %struct.nau8822_pll, %struct.nau8822_pll* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = load %struct.nau8822_pll*, %struct.nau8822_pll** %14, align 8
  %47 = getelementptr inbounds %struct.nau8822_pll, %struct.nau8822_pll* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.nau8822_pll*, %struct.nau8822_pll** %14, align 8
  %50 = getelementptr inbounds %struct.nau8822_pll, %struct.nau8822_pll* %49, i32 0, i32 2
  %51 = load i32, i32* %50, align 8
  %52 = load %struct.nau8822_pll*, %struct.nau8822_pll** %14, align 8
  %53 = getelementptr inbounds %struct.nau8822_pll, %struct.nau8822_pll* %52, i32 0, i32 3
  %54 = load i64, i64* %53, align 8
  %55 = call i32 @dev_info(i32 %42, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.1, i64 0, i64 0), i32 %45, i32 %48, i32 %51, i64 %54)
  %56 = load %struct.snd_soc_component*, %struct.snd_soc_component** %12, align 8
  %57 = load i32, i32* @NAU8822_REG_PLL_N, align 4
  %58 = load i32, i32* @NAU8822_PLLMCLK_DIV2, align 4
  %59 = load i32, i32* @NAU8822_PLLN_MASK, align 4
  %60 = or i32 %58, %59
  %61 = load %struct.nau8822_pll*, %struct.nau8822_pll** %14, align 8
  %62 = getelementptr inbounds %struct.nau8822_pll, %struct.nau8822_pll* %61, i32 0, i32 3
  %63 = load i64, i64* %62, align 8
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %67

65:                                               ; preds = %39
  %66 = load i32, i32* @NAU8822_PLLMCLK_DIV2, align 4
  br label %68

67:                                               ; preds = %39
  br label %68

68:                                               ; preds = %67, %65
  %69 = phi i32 [ %66, %65 ], [ 0, %67 ]
  %70 = load %struct.nau8822_pll*, %struct.nau8822_pll** %14, align 8
  %71 = getelementptr inbounds %struct.nau8822_pll, %struct.nau8822_pll* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = or i32 %69, %72
  %74 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %56, i32 %57, i32 %60, i32 %73)
  %75 = load %struct.snd_soc_component*, %struct.snd_soc_component** %12, align 8
  %76 = load i32, i32* @NAU8822_REG_PLL_K1, align 4
  %77 = load %struct.nau8822_pll*, %struct.nau8822_pll** %14, align 8
  %78 = getelementptr inbounds %struct.nau8822_pll, %struct.nau8822_pll* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 4
  %80 = load i32, i32* @NAU8822_PLLK1_SFT, align 4
  %81 = ashr i32 %79, %80
  %82 = load i32, i32* @NAU8822_PLLK1_MASK, align 4
  %83 = and i32 %81, %82
  %84 = call i32 @snd_soc_component_write(%struct.snd_soc_component* %75, i32 %76, i32 %83)
  %85 = load %struct.snd_soc_component*, %struct.snd_soc_component** %12, align 8
  %86 = load i32, i32* @NAU8822_REG_PLL_K2, align 4
  %87 = load %struct.nau8822_pll*, %struct.nau8822_pll** %14, align 8
  %88 = getelementptr inbounds %struct.nau8822_pll, %struct.nau8822_pll* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 4
  %90 = load i32, i32* @NAU8822_PLLK2_SFT, align 4
  %91 = ashr i32 %89, %90
  %92 = load i32, i32* @NAU8822_PLLK2_MASK, align 4
  %93 = and i32 %91, %92
  %94 = call i32 @snd_soc_component_write(%struct.snd_soc_component* %85, i32 %86, i32 %93)
  %95 = load %struct.snd_soc_component*, %struct.snd_soc_component** %12, align 8
  %96 = load i32, i32* @NAU8822_REG_PLL_K3, align 4
  %97 = load %struct.nau8822_pll*, %struct.nau8822_pll** %14, align 8
  %98 = getelementptr inbounds %struct.nau8822_pll, %struct.nau8822_pll* %97, i32 0, i32 1
  %99 = load i32, i32* %98, align 4
  %100 = load i32, i32* @NAU8822_PLLK3_MASK, align 4
  %101 = and i32 %99, %100
  %102 = call i32 @snd_soc_component_write(%struct.snd_soc_component* %95, i32 %96, i32 %101)
  %103 = load %struct.snd_soc_component*, %struct.snd_soc_component** %12, align 8
  %104 = load i32, i32* @NAU8822_REG_CLOCKING, align 4
  %105 = load i32, i32* @NAU8822_MCLKSEL_MASK, align 4
  %106 = load %struct.nau8822_pll*, %struct.nau8822_pll** %14, align 8
  %107 = getelementptr inbounds %struct.nau8822_pll, %struct.nau8822_pll* %106, i32 0, i32 2
  %108 = load i32, i32* %107, align 8
  %109 = load i32, i32* @NAU8822_MCLKSEL_SFT, align 4
  %110 = shl i32 %108, %109
  %111 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %103, i32 %104, i32 %105, i32 %110)
  %112 = load %struct.snd_soc_component*, %struct.snd_soc_component** %12, align 8
  %113 = load i32, i32* @NAU8822_REG_CLOCKING, align 4
  %114 = load i32, i32* @NAU8822_CLKM_MASK, align 4
  %115 = load i32, i32* @NAU8822_CLKM_PLL, align 4
  %116 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %112, i32 %113, i32 %114, i32 %115)
  store i32 0, i32* %6, align 4
  br label %117

117:                                              ; preds = %68, %32
  %118 = load i32, i32* %6, align 4
  ret i32 %118
}

declare dso_local %struct.nau8822* @snd_soc_component_get_drvdata(%struct.snd_soc_component*) #1

declare dso_local i32 @nau8822_calc_pll(i32, i32, %struct.nau8822_pll*) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

declare dso_local i32 @dev_info(i32, i8*, i32, i32, i32, i64) #1

declare dso_local i32 @snd_soc_component_update_bits(%struct.snd_soc_component*, i32, i32, i32) #1

declare dso_local i32 @snd_soc_component_write(%struct.snd_soc_component*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
