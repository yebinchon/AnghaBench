; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_nau8824.c_nau8824_fll_apply.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_nau8824.c_nau8824_fll_apply.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.regmap = type { i32 }
%struct.nau8824_fll = type { i32, i32, i32, i32, i64 }

@NAU8824_REG_CLK_DIVIDER = common dso_local global i32 0, align 4
@NAU8824_CLK_SRC_MASK = common dso_local global i32 0, align 4
@NAU8824_CLK_MCLK_SRC_MASK = common dso_local global i32 0, align 4
@NAU8824_CLK_SRC_MCLK = common dso_local global i32 0, align 4
@NAU8824_REG_FLL1 = common dso_local global i32 0, align 4
@NAU8824_FLL_RATIO_MASK = common dso_local global i32 0, align 4
@NAU8824_REG_FLL2 = common dso_local global i32 0, align 4
@NAU8824_REG_FLL3 = common dso_local global i32 0, align 4
@NAU8824_FLL_INTEGER_MASK = common dso_local global i32 0, align 4
@NAU8824_REG_FLL4 = common dso_local global i32 0, align 4
@NAU8824_FLL_REF_DIV_MASK = common dso_local global i32 0, align 4
@NAU8824_FLL_REF_DIV_SFT = common dso_local global i32 0, align 4
@NAU8824_REG_FLL5 = common dso_local global i32 0, align 4
@NAU8824_FLL_CLK_SW_MASK = common dso_local global i32 0, align 4
@NAU8824_FLL_CLK_SW_REF = common dso_local global i32 0, align 4
@NAU8824_REG_FLL6 = common dso_local global i32 0, align 4
@NAU8824_DCO_EN = common dso_local global i32 0, align 4
@NAU8824_FLL_PDB_DAC_EN = common dso_local global i32 0, align 4
@NAU8824_FLL_LOOP_FTR_EN = common dso_local global i32 0, align 4
@NAU8824_FLL_FTR_SW_MASK = common dso_local global i32 0, align 4
@NAU8824_FLL_FTR_SW_FILTER = common dso_local global i32 0, align 4
@NAU8824_SDM_EN = common dso_local global i32 0, align 4
@NAU8824_FLL_FTR_SW_ACCU = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.regmap*, %struct.nau8824_fll*)* @nau8824_fll_apply to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nau8824_fll_apply(%struct.regmap* %0, %struct.nau8824_fll* %1) #0 {
  %3 = alloca %struct.regmap*, align 8
  %4 = alloca %struct.nau8824_fll*, align 8
  store %struct.regmap* %0, %struct.regmap** %3, align 8
  store %struct.nau8824_fll* %1, %struct.nau8824_fll** %4, align 8
  %5 = load %struct.regmap*, %struct.regmap** %3, align 8
  %6 = load i32, i32* @NAU8824_REG_CLK_DIVIDER, align 4
  %7 = load i32, i32* @NAU8824_CLK_SRC_MASK, align 4
  %8 = load i32, i32* @NAU8824_CLK_MCLK_SRC_MASK, align 4
  %9 = or i32 %7, %8
  %10 = load i32, i32* @NAU8824_CLK_SRC_MCLK, align 4
  %11 = load %struct.nau8824_fll*, %struct.nau8824_fll** %4, align 8
  %12 = getelementptr inbounds %struct.nau8824_fll, %struct.nau8824_fll* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = or i32 %10, %13
  %15 = call i32 @regmap_update_bits(%struct.regmap* %5, i32 %6, i32 %9, i32 %14)
  %16 = load %struct.regmap*, %struct.regmap** %3, align 8
  %17 = load i32, i32* @NAU8824_REG_FLL1, align 4
  %18 = load i32, i32* @NAU8824_FLL_RATIO_MASK, align 4
  %19 = load %struct.nau8824_fll*, %struct.nau8824_fll** %4, align 8
  %20 = getelementptr inbounds %struct.nau8824_fll, %struct.nau8824_fll* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @regmap_update_bits(%struct.regmap* %16, i32 %17, i32 %18, i32 %21)
  %23 = load %struct.regmap*, %struct.regmap** %3, align 8
  %24 = load i32, i32* @NAU8824_REG_FLL2, align 4
  %25 = load %struct.nau8824_fll*, %struct.nau8824_fll** %4, align 8
  %26 = getelementptr inbounds %struct.nau8824_fll, %struct.nau8824_fll* %25, i32 0, i32 4
  %27 = load i64, i64* %26, align 8
  %28 = call i32 @regmap_write(%struct.regmap* %23, i32 %24, i64 %27)
  %29 = load %struct.regmap*, %struct.regmap** %3, align 8
  %30 = load i32, i32* @NAU8824_REG_FLL3, align 4
  %31 = load i32, i32* @NAU8824_FLL_INTEGER_MASK, align 4
  %32 = load %struct.nau8824_fll*, %struct.nau8824_fll** %4, align 8
  %33 = getelementptr inbounds %struct.nau8824_fll, %struct.nau8824_fll* %32, i32 0, i32 2
  %34 = load i32, i32* %33, align 8
  %35 = call i32 @regmap_update_bits(%struct.regmap* %29, i32 %30, i32 %31, i32 %34)
  %36 = load %struct.regmap*, %struct.regmap** %3, align 8
  %37 = load i32, i32* @NAU8824_REG_FLL4, align 4
  %38 = load i32, i32* @NAU8824_FLL_REF_DIV_MASK, align 4
  %39 = load %struct.nau8824_fll*, %struct.nau8824_fll** %4, align 8
  %40 = getelementptr inbounds %struct.nau8824_fll, %struct.nau8824_fll* %39, i32 0, i32 3
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* @NAU8824_FLL_REF_DIV_SFT, align 4
  %43 = shl i32 %41, %42
  %44 = call i32 @regmap_update_bits(%struct.regmap* %36, i32 %37, i32 %38, i32 %43)
  %45 = load %struct.regmap*, %struct.regmap** %3, align 8
  %46 = load i32, i32* @NAU8824_REG_FLL5, align 4
  %47 = load i32, i32* @NAU8824_FLL_CLK_SW_MASK, align 4
  %48 = load i32, i32* @NAU8824_FLL_CLK_SW_REF, align 4
  %49 = call i32 @regmap_update_bits(%struct.regmap* %45, i32 %46, i32 %47, i32 %48)
  %50 = load %struct.regmap*, %struct.regmap** %3, align 8
  %51 = load i32, i32* @NAU8824_REG_FLL6, align 4
  %52 = load i32, i32* @NAU8824_DCO_EN, align 4
  %53 = call i32 @regmap_update_bits(%struct.regmap* %50, i32 %51, i32 %52, i32 0)
  %54 = load %struct.nau8824_fll*, %struct.nau8824_fll** %4, align 8
  %55 = getelementptr inbounds %struct.nau8824_fll, %struct.nau8824_fll* %54, i32 0, i32 4
  %56 = load i64, i64* %55, align 8
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %77

58:                                               ; preds = %2
  %59 = load %struct.regmap*, %struct.regmap** %3, align 8
  %60 = load i32, i32* @NAU8824_REG_FLL5, align 4
  %61 = load i32, i32* @NAU8824_FLL_PDB_DAC_EN, align 4
  %62 = load i32, i32* @NAU8824_FLL_LOOP_FTR_EN, align 4
  %63 = or i32 %61, %62
  %64 = load i32, i32* @NAU8824_FLL_FTR_SW_MASK, align 4
  %65 = or i32 %63, %64
  %66 = load i32, i32* @NAU8824_FLL_PDB_DAC_EN, align 4
  %67 = load i32, i32* @NAU8824_FLL_LOOP_FTR_EN, align 4
  %68 = or i32 %66, %67
  %69 = load i32, i32* @NAU8824_FLL_FTR_SW_FILTER, align 4
  %70 = or i32 %68, %69
  %71 = call i32 @regmap_update_bits(%struct.regmap* %59, i32 %60, i32 %65, i32 %70)
  %72 = load %struct.regmap*, %struct.regmap** %3, align 8
  %73 = load i32, i32* @NAU8824_REG_FLL6, align 4
  %74 = load i32, i32* @NAU8824_SDM_EN, align 4
  %75 = load i32, i32* @NAU8824_SDM_EN, align 4
  %76 = call i32 @regmap_update_bits(%struct.regmap* %72, i32 %73, i32 %74, i32 %75)
  br label %91

77:                                               ; preds = %2
  %78 = load %struct.regmap*, %struct.regmap** %3, align 8
  %79 = load i32, i32* @NAU8824_REG_FLL5, align 4
  %80 = load i32, i32* @NAU8824_FLL_PDB_DAC_EN, align 4
  %81 = load i32, i32* @NAU8824_FLL_LOOP_FTR_EN, align 4
  %82 = or i32 %80, %81
  %83 = load i32, i32* @NAU8824_FLL_FTR_SW_MASK, align 4
  %84 = or i32 %82, %83
  %85 = load i32, i32* @NAU8824_FLL_FTR_SW_ACCU, align 4
  %86 = call i32 @regmap_update_bits(%struct.regmap* %78, i32 %79, i32 %84, i32 %85)
  %87 = load %struct.regmap*, %struct.regmap** %3, align 8
  %88 = load i32, i32* @NAU8824_REG_FLL6, align 4
  %89 = load i32, i32* @NAU8824_SDM_EN, align 4
  %90 = call i32 @regmap_update_bits(%struct.regmap* %87, i32 %88, i32 %89, i32 0)
  br label %91

91:                                               ; preds = %77, %58
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
