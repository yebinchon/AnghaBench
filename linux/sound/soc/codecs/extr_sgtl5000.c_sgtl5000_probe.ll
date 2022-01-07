; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_sgtl5000.c_sgtl5000_probe.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_sgtl5000.c_sgtl5000_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_component = type { i32 }
%struct.sgtl5000_priv = type { i32, i32, i32, i32 }

@SGTL5000_HP_ZCD_EN = common dso_local global i32 0, align 4
@SGTL5000_ADC_ZCD_EN = common dso_local global i32 0, align 4
@SGTL5000_CHIP_REF_CTRL = common dso_local global i32 0, align 4
@SGTL5000_SMALL_POP = common dso_local global i32 0, align 4
@SGTL5000_CHIP_SHORT_CTRL = common dso_local global i32 0, align 4
@SGTL5000_CHIP_DIG_POWER = common dso_local global i32 0, align 4
@SGTL5000_ADC_EN = common dso_local global i32 0, align 4
@SGTL5000_DAC_EN = common dso_local global i32 0, align 4
@SGTL5000_CHIP_ADCDAC_CTRL = common dso_local global i32 0, align 4
@SGTL5000_DAC_VOL_RAMP_EN = common dso_local global i32 0, align 4
@SGTL5000_DAC_MUTE_RIGHT = common dso_local global i32 0, align 4
@SGTL5000_DAC_MUTE_LEFT = common dso_local global i32 0, align 4
@SGTL5000_PAD_I2S_LRCLK_SHIFT = common dso_local global i32 0, align 4
@SGTL5000_PAD_I2S_SCLK_SHIFT = common dso_local global i32 0, align 4
@SGTL5000_CHIP_PAD_STRENGTH = common dso_local global i32 0, align 4
@SGTL5000_CHIP_ANA_CTRL = common dso_local global i32 0, align 4
@SGTL5000_CHIP_MIC_CTRL = common dso_local global i32 0, align 4
@SGTL5000_BIAS_R_MASK = common dso_local global i32 0, align 4
@SGTL5000_BIAS_R_SHIFT = common dso_local global i32 0, align 4
@SGTL5000_BIAS_VOLT_MASK = common dso_local global i32 0, align 4
@SGTL5000_BIAS_VOLT_SHIFT = common dso_local global i32 0, align 4
@SGTL5000_DAP_AUDIO_EQ = common dso_local global i32 0, align 4
@SGTL5000_DAP_SEL_GEQ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_soc_component*)* @sgtl5000_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sgtl5000_probe(%struct.snd_soc_component* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.snd_soc_component*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.sgtl5000_priv*, align 8
  %7 = alloca i32, align 4
  store %struct.snd_soc_component* %0, %struct.snd_soc_component** %3, align 8
  %8 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %9 = call %struct.sgtl5000_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component* %8)
  store %struct.sgtl5000_priv* %9, %struct.sgtl5000_priv** %6, align 8
  %10 = load i32, i32* @SGTL5000_HP_ZCD_EN, align 4
  %11 = load i32, i32* @SGTL5000_ADC_ZCD_EN, align 4
  %12 = or i32 %10, %11
  store i32 %12, i32* %7, align 4
  %13 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %14 = call i32 @sgtl5000_set_power_regs(%struct.snd_soc_component* %13)
  store i32 %14, i32* %4, align 4
  %15 = load i32, i32* %4, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %1
  br label %90

18:                                               ; preds = %1
  %19 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %20 = load i32, i32* @SGTL5000_CHIP_REF_CTRL, align 4
  %21 = load i32, i32* @SGTL5000_SMALL_POP, align 4
  %22 = load i32, i32* @SGTL5000_SMALL_POP, align 4
  %23 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %19, i32 %20, i32 %21, i32 %22)
  %24 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %25 = load i32, i32* @SGTL5000_CHIP_SHORT_CTRL, align 4
  %26 = call i32 @snd_soc_component_write(%struct.snd_soc_component* %24, i32 %25, i32 0)
  %27 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %28 = load i32, i32* @SGTL5000_CHIP_DIG_POWER, align 4
  %29 = load i32, i32* @SGTL5000_ADC_EN, align 4
  %30 = load i32, i32* @SGTL5000_DAC_EN, align 4
  %31 = or i32 %29, %30
  %32 = call i32 @snd_soc_component_write(%struct.snd_soc_component* %27, i32 %28, i32 %31)
  %33 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %34 = load i32, i32* @SGTL5000_CHIP_ADCDAC_CTRL, align 4
  %35 = load i32, i32* @SGTL5000_DAC_VOL_RAMP_EN, align 4
  %36 = load i32, i32* @SGTL5000_DAC_MUTE_RIGHT, align 4
  %37 = or i32 %35, %36
  %38 = load i32, i32* @SGTL5000_DAC_MUTE_LEFT, align 4
  %39 = or i32 %37, %38
  %40 = call i32 @snd_soc_component_write(%struct.snd_soc_component* %33, i32 %34, i32 %39)
  %41 = load %struct.sgtl5000_priv*, %struct.sgtl5000_priv** %6, align 8
  %42 = getelementptr inbounds %struct.sgtl5000_priv, %struct.sgtl5000_priv* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* @SGTL5000_PAD_I2S_LRCLK_SHIFT, align 4
  %45 = shl i32 %43, %44
  %46 = load %struct.sgtl5000_priv*, %struct.sgtl5000_priv** %6, align 8
  %47 = getelementptr inbounds %struct.sgtl5000_priv, %struct.sgtl5000_priv* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = load i32, i32* @SGTL5000_PAD_I2S_SCLK_SHIFT, align 4
  %50 = shl i32 %48, %49
  %51 = or i32 %45, %50
  %52 = or i32 %51, 31
  store i32 %52, i32* %5, align 4
  %53 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %54 = load i32, i32* @SGTL5000_CHIP_PAD_STRENGTH, align 4
  %55 = load i32, i32* %5, align 4
  %56 = call i32 @snd_soc_component_write(%struct.snd_soc_component* %53, i32 %54, i32 %55)
  %57 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %58 = load i32, i32* @SGTL5000_CHIP_ANA_CTRL, align 4
  %59 = load i32, i32* %7, align 4
  %60 = load i32, i32* %7, align 4
  %61 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %57, i32 %58, i32 %59, i32 %60)
  %62 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %63 = load i32, i32* @SGTL5000_CHIP_MIC_CTRL, align 4
  %64 = load i32, i32* @SGTL5000_BIAS_R_MASK, align 4
  %65 = load %struct.sgtl5000_priv*, %struct.sgtl5000_priv** %6, align 8
  %66 = getelementptr inbounds %struct.sgtl5000_priv, %struct.sgtl5000_priv* %65, i32 0, i32 2
  %67 = load i32, i32* %66, align 4
  %68 = load i32, i32* @SGTL5000_BIAS_R_SHIFT, align 4
  %69 = shl i32 %67, %68
  %70 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %62, i32 %63, i32 %64, i32 %69)
  %71 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %72 = load i32, i32* @SGTL5000_CHIP_MIC_CTRL, align 4
  %73 = load i32, i32* @SGTL5000_BIAS_VOLT_MASK, align 4
  %74 = load %struct.sgtl5000_priv*, %struct.sgtl5000_priv** %6, align 8
  %75 = getelementptr inbounds %struct.sgtl5000_priv, %struct.sgtl5000_priv* %74, i32 0, i32 3
  %76 = load i32, i32* %75, align 4
  %77 = load i32, i32* @SGTL5000_BIAS_VOLT_SHIFT, align 4
  %78 = shl i32 %76, %77
  %79 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %71, i32 %72, i32 %73, i32 %78)
  %80 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %81 = load i32, i32* @SGTL5000_DAP_AUDIO_EQ, align 4
  %82 = load i32, i32* @SGTL5000_DAP_SEL_GEQ, align 4
  %83 = call i32 @snd_soc_component_write(%struct.snd_soc_component* %80, i32 %81, i32 %82)
  %84 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %85 = load i32, i32* @SGTL5000_CHIP_ADCDAC_CTRL, align 4
  %86 = load i32, i32* @SGTL5000_DAC_MUTE_LEFT, align 4
  %87 = load i32, i32* @SGTL5000_DAC_MUTE_RIGHT, align 4
  %88 = or i32 %86, %87
  %89 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %84, i32 %85, i32 %88, i32 0)
  store i32 0, i32* %2, align 4
  br label %92

90:                                               ; preds = %17
  %91 = load i32, i32* %4, align 4
  store i32 %91, i32* %2, align 4
  br label %92

92:                                               ; preds = %90, %18
  %93 = load i32, i32* %2, align 4
  ret i32 %93
}

declare dso_local %struct.sgtl5000_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component*) #1

declare dso_local i32 @sgtl5000_set_power_regs(%struct.snd_soc_component*) #1

declare dso_local i32 @snd_soc_component_update_bits(%struct.snd_soc_component*, i32, i32, i32) #1

declare dso_local i32 @snd_soc_component_write(%struct.snd_soc_component*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
