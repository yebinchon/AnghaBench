; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_nau8810.c_nau8810_set_pll.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_nau8810.c_nau8810_set_pll.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_dai = type { %struct.snd_soc_component* }
%struct.snd_soc_component = type { i32 }
%struct.nau8810 = type { i32, %struct.nau8810_pll, %struct.regmap* }
%struct.nau8810_pll = type { i32, i32, i32, i64 }
%struct.regmap = type { i32 }

@.str = private unnamed_addr constant [28 x i8] c"Unsupported input clock %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [53 x i8] c"pll_int=%x pll_frac=%x mclk_scaler=%x pre_factor=%x\0A\00", align 1
@NAU8810_REG_PLLN = common dso_local global i32 0, align 4
@NAU8810_PLLMCLK_DIV2 = common dso_local global i32 0, align 4
@NAU8810_PLLN_MASK = common dso_local global i32 0, align 4
@NAU8810_REG_PLLK1 = common dso_local global i32 0, align 4
@NAU8810_PLLK1_SFT = common dso_local global i32 0, align 4
@NAU8810_PLLK1_MASK = common dso_local global i32 0, align 4
@NAU8810_REG_PLLK2 = common dso_local global i32 0, align 4
@NAU8810_PLLK2_SFT = common dso_local global i32 0, align 4
@NAU8810_PLLK2_MASK = common dso_local global i32 0, align 4
@NAU8810_REG_PLLK3 = common dso_local global i32 0, align 4
@NAU8810_PLLK3_MASK = common dso_local global i32 0, align 4
@NAU8810_REG_CLOCK = common dso_local global i32 0, align 4
@NAU8810_MCLKSEL_MASK = common dso_local global i32 0, align 4
@NAU8810_MCLKSEL_SFT = common dso_local global i32 0, align 4
@NAU8810_CLKM_MASK = common dso_local global i32 0, align 4
@NAU8810_CLKM_PLL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_soc_dai*, i32, i32, i32, i32)* @nau8810_set_pll to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nau8810_set_pll(%struct.snd_soc_dai* %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.snd_soc_dai*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.snd_soc_component*, align 8
  %13 = alloca %struct.nau8810*, align 8
  %14 = alloca %struct.regmap*, align 8
  %15 = alloca %struct.nau8810_pll*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.snd_soc_dai* %0, %struct.snd_soc_dai** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %18 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %7, align 8
  %19 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %18, i32 0, i32 0
  %20 = load %struct.snd_soc_component*, %struct.snd_soc_component** %19, align 8
  store %struct.snd_soc_component* %20, %struct.snd_soc_component** %12, align 8
  %21 = load %struct.snd_soc_component*, %struct.snd_soc_component** %12, align 8
  %22 = call %struct.nau8810* @snd_soc_component_get_drvdata(%struct.snd_soc_component* %21)
  store %struct.nau8810* %22, %struct.nau8810** %13, align 8
  %23 = load %struct.nau8810*, %struct.nau8810** %13, align 8
  %24 = getelementptr inbounds %struct.nau8810, %struct.nau8810* %23, i32 0, i32 2
  %25 = load %struct.regmap*, %struct.regmap** %24, align 8
  store %struct.regmap* %25, %struct.regmap** %14, align 8
  %26 = load %struct.nau8810*, %struct.nau8810** %13, align 8
  %27 = getelementptr inbounds %struct.nau8810, %struct.nau8810* %26, i32 0, i32 1
  store %struct.nau8810_pll* %27, %struct.nau8810_pll** %15, align 8
  %28 = load i32, i32* %11, align 4
  %29 = udiv i32 %28, 256
  store i32 %29, i32* %17, align 4
  %30 = load i32, i32* %10, align 4
  %31 = load i32, i32* %17, align 4
  %32 = load %struct.nau8810_pll*, %struct.nau8810_pll** %15, align 8
  %33 = call i32 @nau8810_calc_pll(i32 %30, i32 %31, %struct.nau8810_pll* %32)
  store i32 %33, i32* %16, align 4
  %34 = load i32, i32* %16, align 4
  %35 = icmp slt i32 %34, 0
  br i1 %35, label %36, label %43

36:                                               ; preds = %5
  %37 = load %struct.nau8810*, %struct.nau8810** %13, align 8
  %38 = getelementptr inbounds %struct.nau8810, %struct.nau8810* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = load i32, i32* %10, align 4
  %41 = call i32 @dev_err(i32 %39, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %40)
  %42 = load i32, i32* %16, align 4
  store i32 %42, i32* %6, align 4
  br label %121

43:                                               ; preds = %5
  %44 = load %struct.nau8810*, %struct.nau8810** %13, align 8
  %45 = getelementptr inbounds %struct.nau8810, %struct.nau8810* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = load %struct.nau8810_pll*, %struct.nau8810_pll** %15, align 8
  %48 = getelementptr inbounds %struct.nau8810_pll, %struct.nau8810_pll* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = load %struct.nau8810_pll*, %struct.nau8810_pll** %15, align 8
  %51 = getelementptr inbounds %struct.nau8810_pll, %struct.nau8810_pll* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.nau8810_pll*, %struct.nau8810_pll** %15, align 8
  %54 = getelementptr inbounds %struct.nau8810_pll, %struct.nau8810_pll* %53, i32 0, i32 2
  %55 = load i32, i32* %54, align 8
  %56 = load %struct.nau8810_pll*, %struct.nau8810_pll** %15, align 8
  %57 = getelementptr inbounds %struct.nau8810_pll, %struct.nau8810_pll* %56, i32 0, i32 3
  %58 = load i64, i64* %57, align 8
  %59 = call i32 @dev_info(i32 %46, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.1, i64 0, i64 0), i32 %49, i32 %52, i32 %55, i64 %58)
  %60 = load %struct.regmap*, %struct.regmap** %14, align 8
  %61 = load i32, i32* @NAU8810_REG_PLLN, align 4
  %62 = load i32, i32* @NAU8810_PLLMCLK_DIV2, align 4
  %63 = load i32, i32* @NAU8810_PLLN_MASK, align 4
  %64 = or i32 %62, %63
  %65 = load %struct.nau8810_pll*, %struct.nau8810_pll** %15, align 8
  %66 = getelementptr inbounds %struct.nau8810_pll, %struct.nau8810_pll* %65, i32 0, i32 3
  %67 = load i64, i64* %66, align 8
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %71

69:                                               ; preds = %43
  %70 = load i32, i32* @NAU8810_PLLMCLK_DIV2, align 4
  br label %72

71:                                               ; preds = %43
  br label %72

72:                                               ; preds = %71, %69
  %73 = phi i32 [ %70, %69 ], [ 0, %71 ]
  %74 = load %struct.nau8810_pll*, %struct.nau8810_pll** %15, align 8
  %75 = getelementptr inbounds %struct.nau8810_pll, %struct.nau8810_pll* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  %77 = or i32 %73, %76
  %78 = call i32 @regmap_update_bits(%struct.regmap* %60, i32 %61, i32 %64, i32 %77)
  %79 = load %struct.regmap*, %struct.regmap** %14, align 8
  %80 = load i32, i32* @NAU8810_REG_PLLK1, align 4
  %81 = load %struct.nau8810_pll*, %struct.nau8810_pll** %15, align 8
  %82 = getelementptr inbounds %struct.nau8810_pll, %struct.nau8810_pll* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 4
  %84 = load i32, i32* @NAU8810_PLLK1_SFT, align 4
  %85 = ashr i32 %83, %84
  %86 = load i32, i32* @NAU8810_PLLK1_MASK, align 4
  %87 = and i32 %85, %86
  %88 = call i32 @regmap_write(%struct.regmap* %79, i32 %80, i32 %87)
  %89 = load %struct.regmap*, %struct.regmap** %14, align 8
  %90 = load i32, i32* @NAU8810_REG_PLLK2, align 4
  %91 = load %struct.nau8810_pll*, %struct.nau8810_pll** %15, align 8
  %92 = getelementptr inbounds %struct.nau8810_pll, %struct.nau8810_pll* %91, i32 0, i32 1
  %93 = load i32, i32* %92, align 4
  %94 = load i32, i32* @NAU8810_PLLK2_SFT, align 4
  %95 = ashr i32 %93, %94
  %96 = load i32, i32* @NAU8810_PLLK2_MASK, align 4
  %97 = and i32 %95, %96
  %98 = call i32 @regmap_write(%struct.regmap* %89, i32 %90, i32 %97)
  %99 = load %struct.regmap*, %struct.regmap** %14, align 8
  %100 = load i32, i32* @NAU8810_REG_PLLK3, align 4
  %101 = load %struct.nau8810_pll*, %struct.nau8810_pll** %15, align 8
  %102 = getelementptr inbounds %struct.nau8810_pll, %struct.nau8810_pll* %101, i32 0, i32 1
  %103 = load i32, i32* %102, align 4
  %104 = load i32, i32* @NAU8810_PLLK3_MASK, align 4
  %105 = and i32 %103, %104
  %106 = call i32 @regmap_write(%struct.regmap* %99, i32 %100, i32 %105)
  %107 = load %struct.regmap*, %struct.regmap** %14, align 8
  %108 = load i32, i32* @NAU8810_REG_CLOCK, align 4
  %109 = load i32, i32* @NAU8810_MCLKSEL_MASK, align 4
  %110 = load %struct.nau8810_pll*, %struct.nau8810_pll** %15, align 8
  %111 = getelementptr inbounds %struct.nau8810_pll, %struct.nau8810_pll* %110, i32 0, i32 2
  %112 = load i32, i32* %111, align 8
  %113 = load i32, i32* @NAU8810_MCLKSEL_SFT, align 4
  %114 = shl i32 %112, %113
  %115 = call i32 @regmap_update_bits(%struct.regmap* %107, i32 %108, i32 %109, i32 %114)
  %116 = load %struct.regmap*, %struct.regmap** %14, align 8
  %117 = load i32, i32* @NAU8810_REG_CLOCK, align 4
  %118 = load i32, i32* @NAU8810_CLKM_MASK, align 4
  %119 = load i32, i32* @NAU8810_CLKM_PLL, align 4
  %120 = call i32 @regmap_update_bits(%struct.regmap* %116, i32 %117, i32 %118, i32 %119)
  store i32 0, i32* %6, align 4
  br label %121

121:                                              ; preds = %72, %36
  %122 = load i32, i32* %6, align 4
  ret i32 %122
}

declare dso_local %struct.nau8810* @snd_soc_component_get_drvdata(%struct.snd_soc_component*) #1

declare dso_local i32 @nau8810_calc_pll(i32, i32, %struct.nau8810_pll*) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

declare dso_local i32 @dev_info(i32, i8*, i32, i32, i32, i64) #1

declare dso_local i32 @regmap_update_bits(%struct.regmap*, i32, i32, i32) #1

declare dso_local i32 @regmap_write(%struct.regmap*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
