; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_nau8825.c_nau8825_fll_apply.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_nau8825.c_nau8825_fll_apply.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nau8825 = type { i32 }
%struct.nau8825_fll = type { i32, i32, i32, i32, i64 }

@NAU8825_REG_CLK_DIVIDER = common dso_local global i32 0, align 4
@NAU8825_CLK_SRC_MASK = common dso_local global i32 0, align 4
@NAU8825_CLK_MCLK_SRC_MASK = common dso_local global i32 0, align 4
@NAU8825_CLK_SRC_MCLK = common dso_local global i32 0, align 4
@NAU8825_REG_FLL1 = common dso_local global i32 0, align 4
@NAU8825_FLL_RATIO_MASK = common dso_local global i32 0, align 4
@NAU8825_ICTRL_LATCH_MASK = common dso_local global i32 0, align 4
@NAU8825_ICTRL_LATCH_SFT = common dso_local global i32 0, align 4
@NAU8825_REG_FLL2 = common dso_local global i32 0, align 4
@NAU8825_REG_FLL3 = common dso_local global i32 0, align 4
@NAU8825_FLL_INTEGER_MASK = common dso_local global i32 0, align 4
@NAU8825_REG_FLL4 = common dso_local global i32 0, align 4
@NAU8825_FLL_REF_DIV_MASK = common dso_local global i32 0, align 4
@NAU8825_FLL_REF_DIV_SFT = common dso_local global i32 0, align 4
@NAU8825_REG_FLL5 = common dso_local global i32 0, align 4
@NAU8825_FLL_CLK_SW_MASK = common dso_local global i32 0, align 4
@NAU8825_FLL_CLK_SW_REF = common dso_local global i32 0, align 4
@NAU8825_REG_FLL6 = common dso_local global i32 0, align 4
@NAU8825_DCO_EN = common dso_local global i32 0, align 4
@NAU8825_FLL_PDB_DAC_EN = common dso_local global i32 0, align 4
@NAU8825_FLL_LOOP_FTR_EN = common dso_local global i32 0, align 4
@NAU8825_FLL_FTR_SW_MASK = common dso_local global i32 0, align 4
@NAU8825_FLL_FTR_SW_FILTER = common dso_local global i32 0, align 4
@NAU8825_SDM_EN = common dso_local global i32 0, align 4
@NAU8825_CUTOFF500 = common dso_local global i32 0, align 4
@NAU8825_FLL_FTR_SW_ACCU = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nau8825*, %struct.nau8825_fll*)* @nau8825_fll_apply to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nau8825_fll_apply(%struct.nau8825* %0, %struct.nau8825_fll* %1) #0 {
  %3 = alloca %struct.nau8825*, align 8
  %4 = alloca %struct.nau8825_fll*, align 8
  store %struct.nau8825* %0, %struct.nau8825** %3, align 8
  store %struct.nau8825_fll* %1, %struct.nau8825_fll** %4, align 8
  %5 = load %struct.nau8825*, %struct.nau8825** %3, align 8
  %6 = getelementptr inbounds %struct.nau8825, %struct.nau8825* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  %8 = load i32, i32* @NAU8825_REG_CLK_DIVIDER, align 4
  %9 = load i32, i32* @NAU8825_CLK_SRC_MASK, align 4
  %10 = load i32, i32* @NAU8825_CLK_MCLK_SRC_MASK, align 4
  %11 = or i32 %9, %10
  %12 = load i32, i32* @NAU8825_CLK_SRC_MCLK, align 4
  %13 = load %struct.nau8825_fll*, %struct.nau8825_fll** %4, align 8
  %14 = getelementptr inbounds %struct.nau8825_fll, %struct.nau8825_fll* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = or i32 %12, %15
  %17 = call i32 @regmap_update_bits(i32 %7, i32 %8, i32 %11, i32 %16)
  %18 = load %struct.nau8825*, %struct.nau8825** %3, align 8
  %19 = getelementptr inbounds %struct.nau8825, %struct.nau8825* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* @NAU8825_REG_FLL1, align 4
  %22 = load i32, i32* @NAU8825_FLL_RATIO_MASK, align 4
  %23 = load i32, i32* @NAU8825_ICTRL_LATCH_MASK, align 4
  %24 = or i32 %22, %23
  %25 = load %struct.nau8825_fll*, %struct.nau8825_fll** %4, align 8
  %26 = getelementptr inbounds %struct.nau8825_fll, %struct.nau8825_fll* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* @NAU8825_ICTRL_LATCH_SFT, align 4
  %29 = shl i32 6, %28
  %30 = or i32 %27, %29
  %31 = call i32 @regmap_update_bits(i32 %20, i32 %21, i32 %24, i32 %30)
  %32 = load %struct.nau8825*, %struct.nau8825** %3, align 8
  %33 = getelementptr inbounds %struct.nau8825, %struct.nau8825* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* @NAU8825_REG_FLL2, align 4
  %36 = load %struct.nau8825_fll*, %struct.nau8825_fll** %4, align 8
  %37 = getelementptr inbounds %struct.nau8825_fll, %struct.nau8825_fll* %36, i32 0, i32 4
  %38 = load i64, i64* %37, align 8
  %39 = call i32 @regmap_write(i32 %34, i32 %35, i64 %38)
  %40 = load %struct.nau8825*, %struct.nau8825** %3, align 8
  %41 = getelementptr inbounds %struct.nau8825, %struct.nau8825* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* @NAU8825_REG_FLL3, align 4
  %44 = load i32, i32* @NAU8825_FLL_INTEGER_MASK, align 4
  %45 = load %struct.nau8825_fll*, %struct.nau8825_fll** %4, align 8
  %46 = getelementptr inbounds %struct.nau8825_fll, %struct.nau8825_fll* %45, i32 0, i32 2
  %47 = load i32, i32* %46, align 8
  %48 = call i32 @regmap_update_bits(i32 %42, i32 %43, i32 %44, i32 %47)
  %49 = load %struct.nau8825*, %struct.nau8825** %3, align 8
  %50 = getelementptr inbounds %struct.nau8825, %struct.nau8825* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = load i32, i32* @NAU8825_REG_FLL4, align 4
  %53 = load i32, i32* @NAU8825_FLL_REF_DIV_MASK, align 4
  %54 = load %struct.nau8825_fll*, %struct.nau8825_fll** %4, align 8
  %55 = getelementptr inbounds %struct.nau8825_fll, %struct.nau8825_fll* %54, i32 0, i32 3
  %56 = load i32, i32* %55, align 4
  %57 = load i32, i32* @NAU8825_FLL_REF_DIV_SFT, align 4
  %58 = shl i32 %56, %57
  %59 = call i32 @regmap_update_bits(i32 %51, i32 %52, i32 %53, i32 %58)
  %60 = load %struct.nau8825*, %struct.nau8825** %3, align 8
  %61 = getelementptr inbounds %struct.nau8825, %struct.nau8825* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = load i32, i32* @NAU8825_REG_FLL5, align 4
  %64 = load i32, i32* @NAU8825_FLL_CLK_SW_MASK, align 4
  %65 = load i32, i32* @NAU8825_FLL_CLK_SW_REF, align 4
  %66 = call i32 @regmap_update_bits(i32 %62, i32 %63, i32 %64, i32 %65)
  %67 = load %struct.nau8825*, %struct.nau8825** %3, align 8
  %68 = getelementptr inbounds %struct.nau8825, %struct.nau8825* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = load i32, i32* @NAU8825_REG_FLL6, align 4
  %71 = load i32, i32* @NAU8825_DCO_EN, align 4
  %72 = call i32 @regmap_update_bits(i32 %69, i32 %70, i32 %71, i32 0)
  %73 = load %struct.nau8825_fll*, %struct.nau8825_fll** %4, align 8
  %74 = getelementptr inbounds %struct.nau8825_fll, %struct.nau8825_fll* %73, i32 0, i32 4
  %75 = load i64, i64* %74, align 8
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %104

77:                                               ; preds = %2
  %78 = load %struct.nau8825*, %struct.nau8825** %3, align 8
  %79 = getelementptr inbounds %struct.nau8825, %struct.nau8825* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = load i32, i32* @NAU8825_REG_FLL5, align 4
  %82 = load i32, i32* @NAU8825_FLL_PDB_DAC_EN, align 4
  %83 = load i32, i32* @NAU8825_FLL_LOOP_FTR_EN, align 4
  %84 = or i32 %82, %83
  %85 = load i32, i32* @NAU8825_FLL_FTR_SW_MASK, align 4
  %86 = or i32 %84, %85
  %87 = load i32, i32* @NAU8825_FLL_PDB_DAC_EN, align 4
  %88 = load i32, i32* @NAU8825_FLL_LOOP_FTR_EN, align 4
  %89 = or i32 %87, %88
  %90 = load i32, i32* @NAU8825_FLL_FTR_SW_FILTER, align 4
  %91 = or i32 %89, %90
  %92 = call i32 @regmap_update_bits(i32 %80, i32 %81, i32 %86, i32 %91)
  %93 = load %struct.nau8825*, %struct.nau8825** %3, align 8
  %94 = getelementptr inbounds %struct.nau8825, %struct.nau8825* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 4
  %96 = load i32, i32* @NAU8825_REG_FLL6, align 4
  %97 = load i32, i32* @NAU8825_SDM_EN, align 4
  %98 = load i32, i32* @NAU8825_CUTOFF500, align 4
  %99 = or i32 %97, %98
  %100 = load i32, i32* @NAU8825_SDM_EN, align 4
  %101 = load i32, i32* @NAU8825_CUTOFF500, align 4
  %102 = or i32 %100, %101
  %103 = call i32 @regmap_update_bits(i32 %95, i32 %96, i32 %99, i32 %102)
  br label %124

104:                                              ; preds = %2
  %105 = load %struct.nau8825*, %struct.nau8825** %3, align 8
  %106 = getelementptr inbounds %struct.nau8825, %struct.nau8825* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 4
  %108 = load i32, i32* @NAU8825_REG_FLL5, align 4
  %109 = load i32, i32* @NAU8825_FLL_PDB_DAC_EN, align 4
  %110 = load i32, i32* @NAU8825_FLL_LOOP_FTR_EN, align 4
  %111 = or i32 %109, %110
  %112 = load i32, i32* @NAU8825_FLL_FTR_SW_MASK, align 4
  %113 = or i32 %111, %112
  %114 = load i32, i32* @NAU8825_FLL_FTR_SW_ACCU, align 4
  %115 = call i32 @regmap_update_bits(i32 %107, i32 %108, i32 %113, i32 %114)
  %116 = load %struct.nau8825*, %struct.nau8825** %3, align 8
  %117 = getelementptr inbounds %struct.nau8825, %struct.nau8825* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 4
  %119 = load i32, i32* @NAU8825_REG_FLL6, align 4
  %120 = load i32, i32* @NAU8825_SDM_EN, align 4
  %121 = load i32, i32* @NAU8825_CUTOFF500, align 4
  %122 = or i32 %120, %121
  %123 = call i32 @regmap_update_bits(i32 %118, i32 %119, i32 %122, i32 0)
  br label %124

124:                                              ; preds = %104, %77
  ret void
}

declare dso_local i32 @regmap_update_bits(i32, i32, i32, i32) #1

declare dso_local i32 @regmap_write(i32, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
