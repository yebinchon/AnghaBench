; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_nau8825.c_nau8825_xtalk_prepare.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_nau8825.c_nau8825_xtalk_prepare.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.nau8825 = type { i32 }

@NAU8825_REG_I2S_PCM_CTRL2 = common dso_local global i32 0, align 4
@NAU8825_I2S_MS_MASK = common dso_local global i32 0, align 4
@NAU8825_I2S_LRC_DIV_MASK = common dso_local global i32 0, align 4
@NAU8825_I2S_BLK_DIV_MASK = common dso_local global i32 0, align 4
@NAU8825_I2S_MS_MASTER = common dso_local global i32 0, align 4
@NAU8825_I2S_LRC_DIV_SFT = common dso_local global i32 0, align 4
@NAU8825_REG_HSVOL_CTRL = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@nau8825_xtalk_baktab = common dso_local global %struct.TYPE_2__* null, align 8
@NAU8825_HPR_VOL_MASK = common dso_local global i32 0, align 4
@NAU8825_REG_DACL_CTRL = common dso_local global i32 0, align 4
@NAU8825_DACL_CH_SEL_MASK = common dso_local global i32 0, align 4
@NAU8825_DACL_CH_VOL_MASK = common dso_local global i32 0, align 4
@NAU8825_DACL_CH_SEL_L = common dso_local global i32 0, align 4
@NAU8825_REG_DACR_CTRL = common dso_local global i32 0, align 4
@NAU8825_DACR_CH_SEL_MASK = common dso_local global i32 0, align 4
@NAU8825_DACR_CH_VOL_MASK = common dso_local global i32 0, align 4
@NAU8825_DACR_CH_SEL_R = common dso_local global i32 0, align 4
@NAU8825_REG_IMM_MODE_CTRL = common dso_local global i32 0, align 4
@NAU8825_IMM_THD_MASK = common dso_local global i32 0, align 4
@NAU8825_IMM_GEN_VOL_MASK = common dso_local global i32 0, align 4
@NAU8825_IMM_CYC_MASK = common dso_local global i32 0, align 4
@NAU8825_IMM_DAC_SRC_MASK = common dso_local global i32 0, align 4
@NAU8825_IMM_THD_SFT = common dso_local global i32 0, align 4
@NAU8825_IMM_GEN_VOL_1_16th = common dso_local global i32 0, align 4
@NAU8825_IMM_CYC_8192 = common dso_local global i32 0, align 4
@NAU8825_IMM_DAC_SRC_SIN = common dso_local global i32 0, align 4
@NAU8825_REG_INTERRUPT_MASK = common dso_local global i32 0, align 4
@NAU8825_IRQ_RMS_EN = common dso_local global i32 0, align 4
@NAU8825_REG_CHARGE_PUMP = common dso_local global i32 0, align 4
@NAU8825_POWER_DOWN_DACR = common dso_local global i32 0, align 4
@NAU8825_POWER_DOWN_DACL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nau8825*)* @nau8825_xtalk_prepare to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nau8825_xtalk_prepare(%struct.nau8825* %0) #0 {
  %2 = alloca %struct.nau8825*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.nau8825* %0, %struct.nau8825** %2, align 8
  %5 = load %struct.nau8825*, %struct.nau8825** %2, align 8
  %6 = call i32 @nau8825_xtalk_backup(%struct.nau8825* %5)
  %7 = load %struct.nau8825*, %struct.nau8825** %2, align 8
  %8 = getelementptr inbounds %struct.nau8825, %struct.nau8825* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = load i32, i32* @NAU8825_REG_I2S_PCM_CTRL2, align 4
  %11 = load i32, i32* @NAU8825_I2S_MS_MASK, align 4
  %12 = load i32, i32* @NAU8825_I2S_LRC_DIV_MASK, align 4
  %13 = or i32 %11, %12
  %14 = load i32, i32* @NAU8825_I2S_BLK_DIV_MASK, align 4
  %15 = or i32 %13, %14
  %16 = load i32, i32* @NAU8825_I2S_MS_MASTER, align 4
  %17 = load i32, i32* @NAU8825_I2S_LRC_DIV_SFT, align 4
  %18 = shl i32 2, %17
  %19 = or i32 %16, %18
  %20 = or i32 %19, 1
  %21 = call i32 @regmap_update_bits(i32 %9, i32 %10, i32 %15, i32 %20)
  %22 = load i32, i32* @NAU8825_REG_HSVOL_CTRL, align 4
  %23 = call i32 @nau8825_xtalk_baktab_index_by_reg(i32 %22)
  store i32 %23, i32* %4, align 4
  %24 = load i32, i32* %4, align 4
  %25 = load i32, i32* @EINVAL, align 4
  %26 = sub nsw i32 0, %25
  %27 = icmp ne i32 %24, %26
  br i1 %27, label %28, label %40

28:                                               ; preds = %1
  %29 = load %struct.TYPE_2__*, %struct.TYPE_2__** @nau8825_xtalk_baktab, align 8
  %30 = load i32, i32* %4, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i64 %31
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* @NAU8825_HPR_VOL_MASK, align 4
  %36 = and i32 %34, %35
  store i32 %36, i32* %3, align 4
  %37 = load %struct.nau8825*, %struct.nau8825** %2, align 8
  %38 = load i32, i32* %3, align 4
  %39 = call i32 @nau8825_hpvol_ramp(%struct.nau8825* %37, i32 %38, i32 0, i32 3)
  br label %40

40:                                               ; preds = %28, %1
  %41 = load %struct.nau8825*, %struct.nau8825** %2, align 8
  %42 = call i32 @nau8825_xtalk_clock(%struct.nau8825* %41)
  %43 = load %struct.nau8825*, %struct.nau8825** %2, align 8
  %44 = call i32 @nau8825_xtalk_prepare_dac(%struct.nau8825* %43)
  %45 = load %struct.nau8825*, %struct.nau8825** %2, align 8
  %46 = call i32 @nau8825_xtalk_prepare_adc(%struct.nau8825* %45)
  %47 = load %struct.nau8825*, %struct.nau8825** %2, align 8
  %48 = getelementptr inbounds %struct.nau8825, %struct.nau8825* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = load i32, i32* @NAU8825_REG_DACL_CTRL, align 4
  %51 = load i32, i32* @NAU8825_DACL_CH_SEL_MASK, align 4
  %52 = load i32, i32* @NAU8825_DACL_CH_VOL_MASK, align 4
  %53 = or i32 %51, %52
  %54 = load i32, i32* @NAU8825_DACL_CH_SEL_L, align 4
  %55 = or i32 %54, 171
  %56 = call i32 @regmap_update_bits(i32 %49, i32 %50, i32 %53, i32 %55)
  %57 = load %struct.nau8825*, %struct.nau8825** %2, align 8
  %58 = getelementptr inbounds %struct.nau8825, %struct.nau8825* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = load i32, i32* @NAU8825_REG_DACR_CTRL, align 4
  %61 = load i32, i32* @NAU8825_DACR_CH_SEL_MASK, align 4
  %62 = load i32, i32* @NAU8825_DACR_CH_VOL_MASK, align 4
  %63 = or i32 %61, %62
  %64 = load i32, i32* @NAU8825_DACR_CH_SEL_R, align 4
  %65 = or i32 %64, 171
  %66 = call i32 @regmap_update_bits(i32 %59, i32 %60, i32 %63, i32 %65)
  %67 = load %struct.nau8825*, %struct.nau8825** %2, align 8
  %68 = getelementptr inbounds %struct.nau8825, %struct.nau8825* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = load i32, i32* @NAU8825_REG_IMM_MODE_CTRL, align 4
  %71 = load i32, i32* @NAU8825_IMM_THD_MASK, align 4
  %72 = load i32, i32* @NAU8825_IMM_GEN_VOL_MASK, align 4
  %73 = or i32 %71, %72
  %74 = load i32, i32* @NAU8825_IMM_CYC_MASK, align 4
  %75 = or i32 %73, %74
  %76 = load i32, i32* @NAU8825_IMM_DAC_SRC_MASK, align 4
  %77 = or i32 %75, %76
  %78 = load i32, i32* @NAU8825_IMM_THD_SFT, align 4
  %79 = shl i32 9, %78
  %80 = load i32, i32* @NAU8825_IMM_GEN_VOL_1_16th, align 4
  %81 = or i32 %79, %80
  %82 = load i32, i32* @NAU8825_IMM_CYC_8192, align 4
  %83 = or i32 %81, %82
  %84 = load i32, i32* @NAU8825_IMM_DAC_SRC_SIN, align 4
  %85 = or i32 %83, %84
  %86 = call i32 @regmap_update_bits(i32 %69, i32 %70, i32 %77, i32 %85)
  %87 = load %struct.nau8825*, %struct.nau8825** %2, align 8
  %88 = getelementptr inbounds %struct.nau8825, %struct.nau8825* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 4
  %90 = load i32, i32* @NAU8825_REG_INTERRUPT_MASK, align 4
  %91 = load i32, i32* @NAU8825_IRQ_RMS_EN, align 4
  %92 = call i32 @regmap_update_bits(i32 %89, i32 %90, i32 %91, i32 0)
  %93 = load %struct.nau8825*, %struct.nau8825** %2, align 8
  %94 = getelementptr inbounds %struct.nau8825, %struct.nau8825* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 4
  %96 = load i32, i32* @NAU8825_REG_CHARGE_PUMP, align 4
  %97 = load i32, i32* @NAU8825_POWER_DOWN_DACR, align 4
  %98 = load i32, i32* @NAU8825_POWER_DOWN_DACL, align 4
  %99 = or i32 %97, %98
  %100 = call i32 @regmap_update_bits(i32 %95, i32 %96, i32 %99, i32 0)
  ret void
}

declare dso_local i32 @nau8825_xtalk_backup(%struct.nau8825*) #1

declare dso_local i32 @regmap_update_bits(i32, i32, i32, i32) #1

declare dso_local i32 @nau8825_xtalk_baktab_index_by_reg(i32) #1

declare dso_local i32 @nau8825_hpvol_ramp(%struct.nau8825*, i32, i32, i32) #1

declare dso_local i32 @nau8825_xtalk_clock(%struct.nau8825*) #1

declare dso_local i32 @nau8825_xtalk_prepare_dac(%struct.nau8825*) #1

declare dso_local i32 @nau8825_xtalk_prepare_adc(%struct.nau8825*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
