; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_nau8540.c_nau8540_fll_apply.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_nau8540.c_nau8540_fll_apply.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.regmap = type { i32 }
%struct.nau8540_fll = type { i32, i32, i32, i32, i64 }

@NAU8540_REG_CLOCK_SRC = common dso_local global i32 0, align 4
@NAU8540_CLK_SRC_MASK = common dso_local global i32 0, align 4
@NAU8540_CLK_MCLK_SRC_MASK = common dso_local global i32 0, align 4
@NAU8540_CLK_SRC_MCLK = common dso_local global i32 0, align 4
@NAU8540_REG_FLL1 = common dso_local global i32 0, align 4
@NAU8540_FLL_RATIO_MASK = common dso_local global i32 0, align 4
@NAU8540_ICTRL_LATCH_MASK = common dso_local global i32 0, align 4
@NAU8540_ICTRL_LATCH_SFT = common dso_local global i32 0, align 4
@NAU8540_REG_FLL2 = common dso_local global i32 0, align 4
@NAU8540_REG_FLL3 = common dso_local global i32 0, align 4
@NAU8540_FLL_INTEGER_MASK = common dso_local global i32 0, align 4
@NAU8540_REG_FLL4 = common dso_local global i32 0, align 4
@NAU8540_FLL_REF_DIV_MASK = common dso_local global i32 0, align 4
@NAU8540_FLL_REF_DIV_SFT = common dso_local global i32 0, align 4
@NAU8540_REG_FLL5 = common dso_local global i32 0, align 4
@NAU8540_FLL_CLK_SW_MASK = common dso_local global i32 0, align 4
@NAU8540_FLL_CLK_SW_REF = common dso_local global i32 0, align 4
@NAU8540_REG_FLL6 = common dso_local global i32 0, align 4
@NAU8540_DCO_EN = common dso_local global i32 0, align 4
@NAU8540_FLL_PDB_DAC_EN = common dso_local global i32 0, align 4
@NAU8540_FLL_LOOP_FTR_EN = common dso_local global i32 0, align 4
@NAU8540_FLL_FTR_SW_MASK = common dso_local global i32 0, align 4
@NAU8540_FLL_FTR_SW_FILTER = common dso_local global i32 0, align 4
@NAU8540_SDM_EN = common dso_local global i32 0, align 4
@NAU8540_CUTOFF500 = common dso_local global i32 0, align 4
@NAU8540_FLL_FTR_SW_ACCU = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.regmap*, %struct.nau8540_fll*)* @nau8540_fll_apply to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nau8540_fll_apply(%struct.regmap* %0, %struct.nau8540_fll* %1) #0 {
  %3 = alloca %struct.regmap*, align 8
  %4 = alloca %struct.nau8540_fll*, align 8
  store %struct.regmap* %0, %struct.regmap** %3, align 8
  store %struct.nau8540_fll* %1, %struct.nau8540_fll** %4, align 8
  %5 = load %struct.regmap*, %struct.regmap** %3, align 8
  %6 = load i32, i32* @NAU8540_REG_CLOCK_SRC, align 4
  %7 = load i32, i32* @NAU8540_CLK_SRC_MASK, align 4
  %8 = load i32, i32* @NAU8540_CLK_MCLK_SRC_MASK, align 4
  %9 = or i32 %7, %8
  %10 = load i32, i32* @NAU8540_CLK_SRC_MCLK, align 4
  %11 = load %struct.nau8540_fll*, %struct.nau8540_fll** %4, align 8
  %12 = getelementptr inbounds %struct.nau8540_fll, %struct.nau8540_fll* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = or i32 %10, %13
  %15 = call i32 @regmap_update_bits(%struct.regmap* %5, i32 %6, i32 %9, i32 %14)
  %16 = load %struct.regmap*, %struct.regmap** %3, align 8
  %17 = load i32, i32* @NAU8540_REG_FLL1, align 4
  %18 = load i32, i32* @NAU8540_FLL_RATIO_MASK, align 4
  %19 = load i32, i32* @NAU8540_ICTRL_LATCH_MASK, align 4
  %20 = or i32 %18, %19
  %21 = load %struct.nau8540_fll*, %struct.nau8540_fll** %4, align 8
  %22 = getelementptr inbounds %struct.nau8540_fll, %struct.nau8540_fll* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* @NAU8540_ICTRL_LATCH_SFT, align 4
  %25 = shl i32 6, %24
  %26 = or i32 %23, %25
  %27 = call i32 @regmap_update_bits(%struct.regmap* %16, i32 %17, i32 %20, i32 %26)
  %28 = load %struct.regmap*, %struct.regmap** %3, align 8
  %29 = load i32, i32* @NAU8540_REG_FLL2, align 4
  %30 = load %struct.nau8540_fll*, %struct.nau8540_fll** %4, align 8
  %31 = getelementptr inbounds %struct.nau8540_fll, %struct.nau8540_fll* %30, i32 0, i32 4
  %32 = load i64, i64* %31, align 8
  %33 = call i32 @regmap_write(%struct.regmap* %28, i32 %29, i64 %32)
  %34 = load %struct.regmap*, %struct.regmap** %3, align 8
  %35 = load i32, i32* @NAU8540_REG_FLL3, align 4
  %36 = load i32, i32* @NAU8540_FLL_INTEGER_MASK, align 4
  %37 = load %struct.nau8540_fll*, %struct.nau8540_fll** %4, align 8
  %38 = getelementptr inbounds %struct.nau8540_fll, %struct.nau8540_fll* %37, i32 0, i32 2
  %39 = load i32, i32* %38, align 8
  %40 = call i32 @regmap_update_bits(%struct.regmap* %34, i32 %35, i32 %36, i32 %39)
  %41 = load %struct.regmap*, %struct.regmap** %3, align 8
  %42 = load i32, i32* @NAU8540_REG_FLL4, align 4
  %43 = load i32, i32* @NAU8540_FLL_REF_DIV_MASK, align 4
  %44 = load %struct.nau8540_fll*, %struct.nau8540_fll** %4, align 8
  %45 = getelementptr inbounds %struct.nau8540_fll, %struct.nau8540_fll* %44, i32 0, i32 3
  %46 = load i32, i32* %45, align 4
  %47 = load i32, i32* @NAU8540_FLL_REF_DIV_SFT, align 4
  %48 = shl i32 %46, %47
  %49 = call i32 @regmap_update_bits(%struct.regmap* %41, i32 %42, i32 %43, i32 %48)
  %50 = load %struct.regmap*, %struct.regmap** %3, align 8
  %51 = load i32, i32* @NAU8540_REG_FLL5, align 4
  %52 = load i32, i32* @NAU8540_FLL_CLK_SW_MASK, align 4
  %53 = load i32, i32* @NAU8540_FLL_CLK_SW_REF, align 4
  %54 = call i32 @regmap_update_bits(%struct.regmap* %50, i32 %51, i32 %52, i32 %53)
  %55 = load %struct.regmap*, %struct.regmap** %3, align 8
  %56 = load i32, i32* @NAU8540_REG_FLL6, align 4
  %57 = load i32, i32* @NAU8540_DCO_EN, align 4
  %58 = call i32 @regmap_update_bits(%struct.regmap* %55, i32 %56, i32 %57, i32 0)
  %59 = load %struct.nau8540_fll*, %struct.nau8540_fll** %4, align 8
  %60 = getelementptr inbounds %struct.nau8540_fll, %struct.nau8540_fll* %59, i32 0, i32 4
  %61 = load i64, i64* %60, align 8
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %86

63:                                               ; preds = %2
  %64 = load %struct.regmap*, %struct.regmap** %3, align 8
  %65 = load i32, i32* @NAU8540_REG_FLL5, align 4
  %66 = load i32, i32* @NAU8540_FLL_PDB_DAC_EN, align 4
  %67 = load i32, i32* @NAU8540_FLL_LOOP_FTR_EN, align 4
  %68 = or i32 %66, %67
  %69 = load i32, i32* @NAU8540_FLL_FTR_SW_MASK, align 4
  %70 = or i32 %68, %69
  %71 = load i32, i32* @NAU8540_FLL_PDB_DAC_EN, align 4
  %72 = load i32, i32* @NAU8540_FLL_LOOP_FTR_EN, align 4
  %73 = or i32 %71, %72
  %74 = load i32, i32* @NAU8540_FLL_FTR_SW_FILTER, align 4
  %75 = or i32 %73, %74
  %76 = call i32 @regmap_update_bits(%struct.regmap* %64, i32 %65, i32 %70, i32 %75)
  %77 = load %struct.regmap*, %struct.regmap** %3, align 8
  %78 = load i32, i32* @NAU8540_REG_FLL6, align 4
  %79 = load i32, i32* @NAU8540_SDM_EN, align 4
  %80 = load i32, i32* @NAU8540_CUTOFF500, align 4
  %81 = or i32 %79, %80
  %82 = load i32, i32* @NAU8540_SDM_EN, align 4
  %83 = load i32, i32* @NAU8540_CUTOFF500, align 4
  %84 = or i32 %82, %83
  %85 = call i32 @regmap_update_bits(%struct.regmap* %77, i32 %78, i32 %81, i32 %84)
  br label %102

86:                                               ; preds = %2
  %87 = load %struct.regmap*, %struct.regmap** %3, align 8
  %88 = load i32, i32* @NAU8540_REG_FLL5, align 4
  %89 = load i32, i32* @NAU8540_FLL_PDB_DAC_EN, align 4
  %90 = load i32, i32* @NAU8540_FLL_LOOP_FTR_EN, align 4
  %91 = or i32 %89, %90
  %92 = load i32, i32* @NAU8540_FLL_FTR_SW_MASK, align 4
  %93 = or i32 %91, %92
  %94 = load i32, i32* @NAU8540_FLL_FTR_SW_ACCU, align 4
  %95 = call i32 @regmap_update_bits(%struct.regmap* %87, i32 %88, i32 %93, i32 %94)
  %96 = load %struct.regmap*, %struct.regmap** %3, align 8
  %97 = load i32, i32* @NAU8540_REG_FLL6, align 4
  %98 = load i32, i32* @NAU8540_SDM_EN, align 4
  %99 = load i32, i32* @NAU8540_CUTOFF500, align 4
  %100 = or i32 %98, %99
  %101 = call i32 @regmap_update_bits(%struct.regmap* %96, i32 %97, i32 %100, i32 0)
  br label %102

102:                                              ; preds = %86, %63
  ret void
}

declare dso_local i32 @regmap_update_bits(%struct.regmap*, i32, i32, i32) #1

declare dso_local i32 @regmap_write(%struct.regmap*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
