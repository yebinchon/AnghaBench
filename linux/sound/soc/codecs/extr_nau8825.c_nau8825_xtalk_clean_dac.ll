; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_nau8825.c_nau8825_xtalk_clean_dac.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_nau8825.c_nau8825_xtalk_clean_dac.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nau8825 = type { i32, i32 }

@NAU8825_REG_BOOST = common dso_local global i32 0, align 4
@NAU8825_HP_BOOST_DIS = common dso_local global i32 0, align 4
@NAU8825_REG_HSD_CTRL = common dso_local global i32 0, align 4
@NAU8825_SPKR_DWN1R = common dso_local global i32 0, align 4
@NAU8825_SPKR_DWN1L = common dso_local global i32 0, align 4
@NAU8825_REG_CHARGE_PUMP = common dso_local global i32 0, align 4
@NAU8825_POWER_DOWN_DACR = common dso_local global i32 0, align 4
@NAU8825_POWER_DOWN_DACL = common dso_local global i32 0, align 4
@NAU8825_REG_BIAS_ADJ = common dso_local global i32 0, align 4
@NAU8825_BIAS_HPR_IMP = common dso_local global i32 0, align 4
@NAU8825_BIAS_HPL_IMP = common dso_local global i32 0, align 4
@NAU8825_BIAS_TESTDAC_EN = common dso_local global i32 0, align 4
@NAU8825_REG_POWER_UP_CONTROL = common dso_local global i32 0, align 4
@NAU8825_POWERUP_HP_DRV_R = common dso_local global i32 0, align 4
@NAU8825_POWERUP_HP_DRV_L = common dso_local global i32 0, align 4
@NAU8825_POWERUP_INTEGR_R = common dso_local global i32 0, align 4
@NAU8825_POWERUP_INTEGR_L = common dso_local global i32 0, align 4
@NAU8825_POWERUP_DRV_IN_R = common dso_local global i32 0, align 4
@NAU8825_POWERUP_DRV_IN_L = common dso_local global i32 0, align 4
@NAU8825_REG_RDAC = common dso_local global i32 0, align 4
@NAU8825_RDAC_EN = common dso_local global i32 0, align 4
@NAU8825_RDAC_CLK_EN = common dso_local global i32 0, align 4
@NAU8825_JAMNODCLOW = common dso_local global i32 0, align 4
@NAU8825_CHANRGE_PUMP_EN = common dso_local global i32 0, align 4
@NAU8825_REG_ENA_CTRL = common dso_local global i32 0, align 4
@NAU8825_ENABLE_DACR = common dso_local global i32 0, align 4
@NAU8825_ENABLE_DACL = common dso_local global i32 0, align 4
@NAU8825_ENABLE_ADC_CLK = common dso_local global i32 0, align 4
@NAU8825_ENABLE_DAC_CLK = common dso_local global i32 0, align 4
@NAU8825_ENABLE_ADC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nau8825*)* @nau8825_xtalk_clean_dac to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nau8825_xtalk_clean_dac(%struct.nau8825* %0) #0 {
  %2 = alloca %struct.nau8825*, align 8
  store %struct.nau8825* %0, %struct.nau8825** %2, align 8
  %3 = load %struct.nau8825*, %struct.nau8825** %2, align 8
  %4 = getelementptr inbounds %struct.nau8825, %struct.nau8825* %3, i32 0, i32 0
  %5 = load i32, i32* %4, align 4
  %6 = load i32, i32* @NAU8825_REG_BOOST, align 4
  %7 = load i32, i32* @NAU8825_HP_BOOST_DIS, align 4
  %8 = call i32 @regmap_update_bits(i32 %5, i32 %6, i32 %7, i32 0)
  %9 = load %struct.nau8825*, %struct.nau8825** %2, align 8
  %10 = getelementptr inbounds %struct.nau8825, %struct.nau8825* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = load i32, i32* @NAU8825_REG_HSD_CTRL, align 4
  %13 = load i32, i32* @NAU8825_SPKR_DWN1R, align 4
  %14 = load i32, i32* @NAU8825_SPKR_DWN1L, align 4
  %15 = or i32 %13, %14
  %16 = load i32, i32* @NAU8825_SPKR_DWN1R, align 4
  %17 = load i32, i32* @NAU8825_SPKR_DWN1L, align 4
  %18 = or i32 %16, %17
  %19 = call i32 @regmap_update_bits(i32 %11, i32 %12, i32 %15, i32 %18)
  %20 = load %struct.nau8825*, %struct.nau8825** %2, align 8
  %21 = getelementptr inbounds %struct.nau8825, %struct.nau8825* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* @NAU8825_REG_CHARGE_PUMP, align 4
  %24 = load i32, i32* @NAU8825_POWER_DOWN_DACR, align 4
  %25 = load i32, i32* @NAU8825_POWER_DOWN_DACL, align 4
  %26 = or i32 %24, %25
  %27 = load i32, i32* @NAU8825_POWER_DOWN_DACR, align 4
  %28 = load i32, i32* @NAU8825_POWER_DOWN_DACL, align 4
  %29 = or i32 %27, %28
  %30 = call i32 @regmap_update_bits(i32 %22, i32 %23, i32 %26, i32 %29)
  %31 = load %struct.nau8825*, %struct.nau8825** %2, align 8
  %32 = getelementptr inbounds %struct.nau8825, %struct.nau8825* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* @NAU8825_REG_BIAS_ADJ, align 4
  %35 = load i32, i32* @NAU8825_BIAS_HPR_IMP, align 4
  %36 = load i32, i32* @NAU8825_BIAS_HPL_IMP, align 4
  %37 = or i32 %35, %36
  %38 = load i32, i32* @NAU8825_BIAS_TESTDAC_EN, align 4
  %39 = or i32 %37, %38
  %40 = load i32, i32* @NAU8825_BIAS_TESTDAC_EN, align 4
  %41 = call i32 @regmap_update_bits(i32 %33, i32 %34, i32 %39, i32 %40)
  %42 = load %struct.nau8825*, %struct.nau8825** %2, align 8
  %43 = getelementptr inbounds %struct.nau8825, %struct.nau8825* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* @NAU8825_REG_POWER_UP_CONTROL, align 4
  %46 = load i32, i32* @NAU8825_POWERUP_HP_DRV_R, align 4
  %47 = load i32, i32* @NAU8825_POWERUP_HP_DRV_L, align 4
  %48 = or i32 %46, %47
  %49 = call i32 @regmap_update_bits(i32 %44, i32 %45, i32 %48, i32 0)
  %50 = load %struct.nau8825*, %struct.nau8825** %2, align 8
  %51 = getelementptr inbounds %struct.nau8825, %struct.nau8825* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = load i32, i32* @NAU8825_REG_POWER_UP_CONTROL, align 4
  %54 = load i32, i32* @NAU8825_POWERUP_INTEGR_R, align 4
  %55 = load i32, i32* @NAU8825_POWERUP_INTEGR_L, align 4
  %56 = or i32 %54, %55
  %57 = load i32, i32* @NAU8825_POWERUP_DRV_IN_R, align 4
  %58 = or i32 %56, %57
  %59 = load i32, i32* @NAU8825_POWERUP_DRV_IN_L, align 4
  %60 = or i32 %58, %59
  %61 = call i32 @regmap_update_bits(i32 %52, i32 %53, i32 %60, i32 0)
  %62 = load %struct.nau8825*, %struct.nau8825** %2, align 8
  %63 = getelementptr inbounds %struct.nau8825, %struct.nau8825* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = load i32, i32* @NAU8825_REG_RDAC, align 4
  %66 = load i32, i32* @NAU8825_RDAC_EN, align 4
  %67 = load i32, i32* @NAU8825_RDAC_CLK_EN, align 4
  %68 = or i32 %66, %67
  %69 = call i32 @regmap_update_bits(i32 %64, i32 %65, i32 %68, i32 0)
  %70 = load %struct.nau8825*, %struct.nau8825** %2, align 8
  %71 = getelementptr inbounds %struct.nau8825, %struct.nau8825* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = load i32, i32* @NAU8825_REG_CHARGE_PUMP, align 4
  %74 = load i32, i32* @NAU8825_JAMNODCLOW, align 4
  %75 = load i32, i32* @NAU8825_CHANRGE_PUMP_EN, align 4
  %76 = or i32 %74, %75
  %77 = call i32 @regmap_update_bits(i32 %72, i32 %73, i32 %76, i32 0)
  %78 = load %struct.nau8825*, %struct.nau8825** %2, align 8
  %79 = getelementptr inbounds %struct.nau8825, %struct.nau8825* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = load i32, i32* @NAU8825_REG_ENA_CTRL, align 4
  %82 = load i32, i32* @NAU8825_ENABLE_DACR, align 4
  %83 = load i32, i32* @NAU8825_ENABLE_DACL, align 4
  %84 = or i32 %82, %83
  %85 = load i32, i32* @NAU8825_ENABLE_ADC_CLK, align 4
  %86 = or i32 %84, %85
  %87 = load i32, i32* @NAU8825_ENABLE_DAC_CLK, align 4
  %88 = or i32 %86, %87
  %89 = call i32 @regmap_update_bits(i32 %80, i32 %81, i32 %88, i32 0)
  %90 = load %struct.nau8825*, %struct.nau8825** %2, align 8
  %91 = getelementptr inbounds %struct.nau8825, %struct.nau8825* %90, i32 0, i32 1
  %92 = load i32, i32* %91, align 4
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %101, label %94

94:                                               ; preds = %1
  %95 = load %struct.nau8825*, %struct.nau8825** %2, align 8
  %96 = getelementptr inbounds %struct.nau8825, %struct.nau8825* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 4
  %98 = load i32, i32* @NAU8825_REG_ENA_CTRL, align 4
  %99 = load i32, i32* @NAU8825_ENABLE_ADC, align 4
  %100 = call i32 @regmap_update_bits(i32 %97, i32 %98, i32 %99, i32 0)
  br label %101

101:                                              ; preds = %94, %1
  ret void
}

declare dso_local i32 @regmap_update_bits(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
