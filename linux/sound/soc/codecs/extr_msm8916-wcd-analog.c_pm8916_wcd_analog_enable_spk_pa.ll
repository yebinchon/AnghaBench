; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_msm8916-wcd-analog.c_pm8916_wcd_analog_enable_spk_pa.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_msm8916-wcd-analog.c_pm8916_wcd_analog_enable_spk_pa.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_dapm_widget = type { i32, i32 }
%struct.snd_kcontrol = type { i32 }
%struct.snd_soc_component = type { i32 }

@CDC_A_SPKR_PWRSTG_CTL = common dso_local global i32 0, align 4
@SPKR_PWRSTG_CTL_DAC_EN_MASK = common dso_local global i32 0, align 4
@SPKR_PWRSTG_CTL_BBM_MASK = common dso_local global i32 0, align 4
@SPKR_PWRSTG_CTL_HBRDGE_EN_MASK = common dso_local global i32 0, align 4
@SPKR_PWRSTG_CTL_CLAMP_EN_MASK = common dso_local global i32 0, align 4
@SPKR_PWRSTG_CTL_DAC_EN = common dso_local global i32 0, align 4
@SPKR_PWRSTG_CTL_BBM_EN = common dso_local global i32 0, align 4
@SPKR_PWRSTG_CTL_HBRDGE_EN = common dso_local global i32 0, align 4
@SPKR_PWRSTG_CTL_CLAMP_EN = common dso_local global i32 0, align 4
@CDC_A_RX_EAR_CTL = common dso_local global i32 0, align 4
@RX_EAR_CTL_SPK_VBAT_LDO_EN_MASK = common dso_local global i32 0, align 4
@RX_EAR_CTL_SPK_VBAT_LDO_EN_ENABLE = common dso_local global i32 0, align 4
@CDC_A_SPKR_DRV_CTL = common dso_local global i32 0, align 4
@SPKR_DRV_CTL_DEF_MASK = common dso_local global i32 0, align 4
@SPKR_DRV_CTL_DEF_VAL = common dso_local global i32 0, align 4
@SPKR_DRV_CLASSD_PA_EN_MASK = common dso_local global i32 0, align 4
@SPKR_DRV_CLASSD_PA_EN_ENABLE = common dso_local global i32 0, align 4
@CDC_A_SPKR_DAC_CTL = common dso_local global i32 0, align 4
@SPKR_DAC_CTL_DAC_RESET_MASK = common dso_local global i32 0, align 4
@SPKR_DAC_CTL_DAC_RESET_NORMAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_soc_dapm_widget*, %struct.snd_kcontrol*, i32)* @pm8916_wcd_analog_enable_spk_pa to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pm8916_wcd_analog_enable_spk_pa(%struct.snd_soc_dapm_widget* %0, %struct.snd_kcontrol* %1, i32 %2) #0 {
  %4 = alloca %struct.snd_soc_dapm_widget*, align 8
  %5 = alloca %struct.snd_kcontrol*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.snd_soc_component*, align 8
  store %struct.snd_soc_dapm_widget* %0, %struct.snd_soc_dapm_widget** %4, align 8
  store %struct.snd_kcontrol* %1, %struct.snd_kcontrol** %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = load %struct.snd_soc_dapm_widget*, %struct.snd_soc_dapm_widget** %4, align 8
  %9 = getelementptr inbounds %struct.snd_soc_dapm_widget, %struct.snd_soc_dapm_widget* %8, i32 0, i32 1
  %10 = load i32, i32* %9, align 4
  %11 = call %struct.snd_soc_component* @snd_soc_dapm_to_component(i32 %10)
  store %struct.snd_soc_component* %11, %struct.snd_soc_component** %7, align 8
  %12 = load i32, i32* %6, align 4
  switch i32 %12, label %69 [
    i32 128, label %13
    i32 129, label %36
    i32 130, label %49
  ]

13:                                               ; preds = %3
  %14 = load %struct.snd_soc_component*, %struct.snd_soc_component** %7, align 8
  %15 = load i32, i32* @CDC_A_SPKR_PWRSTG_CTL, align 4
  %16 = load i32, i32* @SPKR_PWRSTG_CTL_DAC_EN_MASK, align 4
  %17 = load i32, i32* @SPKR_PWRSTG_CTL_BBM_MASK, align 4
  %18 = or i32 %16, %17
  %19 = load i32, i32* @SPKR_PWRSTG_CTL_HBRDGE_EN_MASK, align 4
  %20 = or i32 %18, %19
  %21 = load i32, i32* @SPKR_PWRSTG_CTL_CLAMP_EN_MASK, align 4
  %22 = or i32 %20, %21
  %23 = load i32, i32* @SPKR_PWRSTG_CTL_DAC_EN, align 4
  %24 = load i32, i32* @SPKR_PWRSTG_CTL_BBM_EN, align 4
  %25 = or i32 %23, %24
  %26 = load i32, i32* @SPKR_PWRSTG_CTL_HBRDGE_EN, align 4
  %27 = or i32 %25, %26
  %28 = load i32, i32* @SPKR_PWRSTG_CTL_CLAMP_EN, align 4
  %29 = or i32 %27, %28
  %30 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %14, i32 %15, i32 %22, i32 %29)
  %31 = load %struct.snd_soc_component*, %struct.snd_soc_component** %7, align 8
  %32 = load i32, i32* @CDC_A_RX_EAR_CTL, align 4
  %33 = load i32, i32* @RX_EAR_CTL_SPK_VBAT_LDO_EN_MASK, align 4
  %34 = load i32, i32* @RX_EAR_CTL_SPK_VBAT_LDO_EN_ENABLE, align 4
  %35 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %31, i32 %32, i32 %33, i32 %34)
  br label %69

36:                                               ; preds = %3
  %37 = load %struct.snd_soc_component*, %struct.snd_soc_component** %7, align 8
  %38 = load i32, i32* @CDC_A_SPKR_DRV_CTL, align 4
  %39 = load i32, i32* @SPKR_DRV_CTL_DEF_MASK, align 4
  %40 = load i32, i32* @SPKR_DRV_CTL_DEF_VAL, align 4
  %41 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %37, i32 %38, i32 %39, i32 %40)
  %42 = load %struct.snd_soc_component*, %struct.snd_soc_component** %7, align 8
  %43 = load %struct.snd_soc_dapm_widget*, %struct.snd_soc_dapm_widget** %4, align 8
  %44 = getelementptr inbounds %struct.snd_soc_dapm_widget, %struct.snd_soc_dapm_widget* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load i32, i32* @SPKR_DRV_CLASSD_PA_EN_MASK, align 4
  %47 = load i32, i32* @SPKR_DRV_CLASSD_PA_EN_ENABLE, align 4
  %48 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %42, i32 %45, i32 %46, i32 %47)
  br label %69

49:                                               ; preds = %3
  %50 = load %struct.snd_soc_component*, %struct.snd_soc_component** %7, align 8
  %51 = load i32, i32* @CDC_A_SPKR_PWRSTG_CTL, align 4
  %52 = load i32, i32* @SPKR_PWRSTG_CTL_DAC_EN_MASK, align 4
  %53 = load i32, i32* @SPKR_PWRSTG_CTL_BBM_MASK, align 4
  %54 = or i32 %52, %53
  %55 = load i32, i32* @SPKR_PWRSTG_CTL_HBRDGE_EN_MASK, align 4
  %56 = or i32 %54, %55
  %57 = load i32, i32* @SPKR_PWRSTG_CTL_CLAMP_EN_MASK, align 4
  %58 = or i32 %56, %57
  %59 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %50, i32 %51, i32 %58, i32 0)
  %60 = load %struct.snd_soc_component*, %struct.snd_soc_component** %7, align 8
  %61 = load i32, i32* @CDC_A_SPKR_DAC_CTL, align 4
  %62 = load i32, i32* @SPKR_DAC_CTL_DAC_RESET_MASK, align 4
  %63 = load i32, i32* @SPKR_DAC_CTL_DAC_RESET_NORMAL, align 4
  %64 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %60, i32 %61, i32 %62, i32 %63)
  %65 = load %struct.snd_soc_component*, %struct.snd_soc_component** %7, align 8
  %66 = load i32, i32* @CDC_A_RX_EAR_CTL, align 4
  %67 = load i32, i32* @RX_EAR_CTL_SPK_VBAT_LDO_EN_MASK, align 4
  %68 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %65, i32 %66, i32 %67, i32 0)
  br label %69

69:                                               ; preds = %3, %49, %36, %13
  ret i32 0
}

declare dso_local %struct.snd_soc_component* @snd_soc_dapm_to_component(i32) #1

declare dso_local i32 @snd_soc_component_update_bits(%struct.snd_soc_component*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
