; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_nau8825.c_nau8825_xtalk_prepare_dac.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_nau8825.c_nau8825_xtalk_prepare_dac.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nau8825 = type { i32 }

@NAU8825_REG_ENA_CTRL = common dso_local global i32 0, align 4
@NAU8825_ENABLE_DACR = common dso_local global i32 0, align 4
@NAU8825_ENABLE_DACL = common dso_local global i32 0, align 4
@NAU8825_ENABLE_ADC = common dso_local global i32 0, align 4
@NAU8825_ENABLE_ADC_CLK = common dso_local global i32 0, align 4
@NAU8825_ENABLE_DAC_CLK = common dso_local global i32 0, align 4
@NAU8825_REG_CHARGE_PUMP = common dso_local global i32 0, align 4
@NAU8825_JAMNODCLOW = common dso_local global i32 0, align 4
@NAU8825_CHANRGE_PUMP_EN = common dso_local global i32 0, align 4
@NAU8825_REG_RDAC = common dso_local global i32 0, align 4
@NAU8825_RDAC_EN = common dso_local global i32 0, align 4
@NAU8825_RDAC_CLK_EN = common dso_local global i32 0, align 4
@NAU8825_RDAC_FS_BCLK_ENB = common dso_local global i32 0, align 4
@NAU8825_REG_POWER_UP_CONTROL = common dso_local global i32 0, align 4
@NAU8825_POWERUP_INTEGR_R = common dso_local global i32 0, align 4
@NAU8825_POWERUP_INTEGR_L = common dso_local global i32 0, align 4
@NAU8825_POWERUP_DRV_IN_R = common dso_local global i32 0, align 4
@NAU8825_POWERUP_DRV_IN_L = common dso_local global i32 0, align 4
@NAU8825_POWERUP_HP_DRV_R = common dso_local global i32 0, align 4
@NAU8825_POWERUP_HP_DRV_L = common dso_local global i32 0, align 4
@NAU8825_REG_HSD_CTRL = common dso_local global i32 0, align 4
@NAU8825_SPKR_DWN1R = common dso_local global i32 0, align 4
@NAU8825_SPKR_DWN1L = common dso_local global i32 0, align 4
@NAU8825_REG_BOOST = common dso_local global i32 0, align 4
@NAU8825_HP_BOOST_DIS = common dso_local global i32 0, align 4
@NAU8825_REG_CLASSG_CTRL = common dso_local global i32 0, align 4
@NAU8825_CLASSG_LDAC_EN = common dso_local global i32 0, align 4
@NAU8825_CLASSG_RDAC_EN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nau8825*)* @nau8825_xtalk_prepare_dac to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nau8825_xtalk_prepare_dac(%struct.nau8825* %0) #0 {
  %2 = alloca %struct.nau8825*, align 8
  store %struct.nau8825* %0, %struct.nau8825** %2, align 8
  %3 = load %struct.nau8825*, %struct.nau8825** %2, align 8
  %4 = getelementptr inbounds %struct.nau8825, %struct.nau8825* %3, i32 0, i32 0
  %5 = load i32, i32* %4, align 4
  %6 = load i32, i32* @NAU8825_REG_ENA_CTRL, align 4
  %7 = load i32, i32* @NAU8825_ENABLE_DACR, align 4
  %8 = load i32, i32* @NAU8825_ENABLE_DACL, align 4
  %9 = or i32 %7, %8
  %10 = load i32, i32* @NAU8825_ENABLE_ADC, align 4
  %11 = or i32 %9, %10
  %12 = load i32, i32* @NAU8825_ENABLE_ADC_CLK, align 4
  %13 = or i32 %11, %12
  %14 = load i32, i32* @NAU8825_ENABLE_DAC_CLK, align 4
  %15 = or i32 %13, %14
  %16 = load i32, i32* @NAU8825_ENABLE_DACR, align 4
  %17 = load i32, i32* @NAU8825_ENABLE_DACL, align 4
  %18 = or i32 %16, %17
  %19 = load i32, i32* @NAU8825_ENABLE_ADC, align 4
  %20 = or i32 %18, %19
  %21 = load i32, i32* @NAU8825_ENABLE_ADC_CLK, align 4
  %22 = or i32 %20, %21
  %23 = load i32, i32* @NAU8825_ENABLE_DAC_CLK, align 4
  %24 = or i32 %22, %23
  %25 = call i32 @regmap_update_bits(i32 %5, i32 %6, i32 %15, i32 %24)
  %26 = load %struct.nau8825*, %struct.nau8825** %2, align 8
  %27 = getelementptr inbounds %struct.nau8825, %struct.nau8825* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* @NAU8825_REG_CHARGE_PUMP, align 4
  %30 = load i32, i32* @NAU8825_JAMNODCLOW, align 4
  %31 = load i32, i32* @NAU8825_CHANRGE_PUMP_EN, align 4
  %32 = or i32 %30, %31
  %33 = load i32, i32* @NAU8825_JAMNODCLOW, align 4
  %34 = load i32, i32* @NAU8825_CHANRGE_PUMP_EN, align 4
  %35 = or i32 %33, %34
  %36 = call i32 @regmap_update_bits(i32 %28, i32 %29, i32 %32, i32 %35)
  %37 = load %struct.nau8825*, %struct.nau8825** %2, align 8
  %38 = getelementptr inbounds %struct.nau8825, %struct.nau8825* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* @NAU8825_REG_RDAC, align 4
  %41 = load i32, i32* @NAU8825_RDAC_EN, align 4
  %42 = load i32, i32* @NAU8825_RDAC_CLK_EN, align 4
  %43 = or i32 %41, %42
  %44 = load i32, i32* @NAU8825_RDAC_FS_BCLK_ENB, align 4
  %45 = or i32 %43, %44
  %46 = load i32, i32* @NAU8825_RDAC_EN, align 4
  %47 = load i32, i32* @NAU8825_RDAC_CLK_EN, align 4
  %48 = or i32 %46, %47
  %49 = call i32 @regmap_update_bits(i32 %39, i32 %40, i32 %45, i32 %48)
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
  %61 = load i32, i32* @NAU8825_POWERUP_INTEGR_R, align 4
  %62 = load i32, i32* @NAU8825_POWERUP_INTEGR_L, align 4
  %63 = or i32 %61, %62
  %64 = load i32, i32* @NAU8825_POWERUP_DRV_IN_R, align 4
  %65 = or i32 %63, %64
  %66 = load i32, i32* @NAU8825_POWERUP_DRV_IN_L, align 4
  %67 = or i32 %65, %66
  %68 = call i32 @regmap_update_bits(i32 %52, i32 %53, i32 %60, i32 %67)
  %69 = load %struct.nau8825*, %struct.nau8825** %2, align 8
  %70 = getelementptr inbounds %struct.nau8825, %struct.nau8825* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = load i32, i32* @NAU8825_REG_POWER_UP_CONTROL, align 4
  %73 = load i32, i32* @NAU8825_POWERUP_HP_DRV_R, align 4
  %74 = load i32, i32* @NAU8825_POWERUP_HP_DRV_L, align 4
  %75 = or i32 %73, %74
  %76 = load i32, i32* @NAU8825_POWERUP_HP_DRV_R, align 4
  %77 = load i32, i32* @NAU8825_POWERUP_HP_DRV_L, align 4
  %78 = or i32 %76, %77
  %79 = call i32 @regmap_update_bits(i32 %71, i32 %72, i32 %75, i32 %78)
  %80 = load %struct.nau8825*, %struct.nau8825** %2, align 8
  %81 = getelementptr inbounds %struct.nau8825, %struct.nau8825* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = load i32, i32* @NAU8825_REG_HSD_CTRL, align 4
  %84 = load i32, i32* @NAU8825_SPKR_DWN1R, align 4
  %85 = load i32, i32* @NAU8825_SPKR_DWN1L, align 4
  %86 = or i32 %84, %85
  %87 = call i32 @regmap_update_bits(i32 %82, i32 %83, i32 %86, i32 0)
  %88 = load %struct.nau8825*, %struct.nau8825** %2, align 8
  %89 = getelementptr inbounds %struct.nau8825, %struct.nau8825* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = load i32, i32* @NAU8825_REG_BOOST, align 4
  %92 = load i32, i32* @NAU8825_HP_BOOST_DIS, align 4
  %93 = load i32, i32* @NAU8825_HP_BOOST_DIS, align 4
  %94 = call i32 @regmap_update_bits(i32 %90, i32 %91, i32 %92, i32 %93)
  %95 = load %struct.nau8825*, %struct.nau8825** %2, align 8
  %96 = getelementptr inbounds %struct.nau8825, %struct.nau8825* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 4
  %98 = load i32, i32* @NAU8825_REG_CLASSG_CTRL, align 4
  %99 = load i32, i32* @NAU8825_CLASSG_LDAC_EN, align 4
  %100 = load i32, i32* @NAU8825_CLASSG_RDAC_EN, align 4
  %101 = or i32 %99, %100
  %102 = load i32, i32* @NAU8825_CLASSG_LDAC_EN, align 4
  %103 = load i32, i32* @NAU8825_CLASSG_RDAC_EN, align 4
  %104 = or i32 %102, %103
  %105 = call i32 @regmap_update_bits(i32 %97, i32 %98, i32 %101, i32 %104)
  ret void
}

declare dso_local i32 @regmap_update_bits(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
