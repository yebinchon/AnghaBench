; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_msm8916-wcd-analog.c_pm8916_wcd_setup_mbhc.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_msm8916-wcd-analog.c_pm8916_wcd_setup_mbhc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pm8916_wcd_analog_priv = type { i32, i32, i64, i64, i64, %struct.snd_soc_component* }
%struct.snd_soc_component = type { i32 }

@CDC_A_MBHC_DET_CTL_1 = common dso_local global i32 0, align 4
@CDC_A_MBHC_DET_CTL_L_DET_EN = common dso_local global i32 0, align 4
@CDC_A_MBHC_DET_CTL_MECH_DET_TYPE_INSERTION = common dso_local global i32 0, align 4
@CDC_A_MBHC_DET_CTL_MIC_CLAMP_CTL_AUTO = common dso_local global i32 0, align 4
@CDC_A_MBHC_DET_CTL_MBHC_BIAS_EN = common dso_local global i32 0, align 4
@CDC_A_HPHL_PLUG_TYPE_NO = common dso_local global i32 0, align 4
@CDC_A_GND_PLUG_TYPE_NO = common dso_local global i32 0, align 4
@CDC_A_MBHC_DET_CTL_2 = common dso_local global i32 0, align 4
@CDC_A_MBHC_DET_CTL_HS_L_DET_PULL_UP_CTRL_I_3P0 = common dso_local global i32 0, align 4
@CDC_A_MBHC_DET_CTL_HS_L_DET_COMPA_CTRL_V0P9_VDD = common dso_local global i32 0, align 4
@CDC_A_MBHC_DET_CTL_HPHL_100K_TO_GND_EN = common dso_local global i32 0, align 4
@CDC_A_MBHC_DBNC_TIMER = common dso_local global i32 0, align 4
@CDC_A_MBHC_DBNC_TIMER_INSREM_DBNC_T_256_MS = common dso_local global i32 0, align 4
@CDC_A_MBHC_DBNC_TIMER_BTN_DBNC_T_16MS = common dso_local global i32 0, align 4
@CDC_D_CDC_DIG_CLK_CTL = common dso_local global i32 0, align 4
@DIG_CLK_CTL_D_MBHC_CLK_EN_MASK = common dso_local global i32 0, align 4
@DIG_CLK_CTL_D_MBHC_CLK_EN = common dso_local global i32 0, align 4
@CDC_A_MICB_2_EN = common dso_local global i32 0, align 4
@CDC_A_MICB_2_EN_ENABLE = common dso_local global i32 0, align 4
@MBHC_SWITCH_INT = common dso_local global i32 0, align 4
@MBHC_BUTTON_PRESS_DET = common dso_local global i32 0, align 4
@MBHC_BUTTON_RELEASE_DET = common dso_local global i32 0, align 4
@CDC_D_INT_EN_CLR = common dso_local global i32 0, align 4
@CDC_D_INT_EN_SET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pm8916_wcd_analog_priv*)* @pm8916_wcd_setup_mbhc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pm8916_wcd_setup_mbhc(%struct.pm8916_wcd_analog_priv* %0) #0 {
  %2 = alloca %struct.pm8916_wcd_analog_priv*, align 8
  %3 = alloca %struct.snd_soc_component*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.pm8916_wcd_analog_priv* %0, %struct.pm8916_wcd_analog_priv** %2, align 8
  %7 = load %struct.pm8916_wcd_analog_priv*, %struct.pm8916_wcd_analog_priv** %2, align 8
  %8 = getelementptr inbounds %struct.pm8916_wcd_analog_priv, %struct.pm8916_wcd_analog_priv* %7, i32 0, i32 5
  %9 = load %struct.snd_soc_component*, %struct.snd_soc_component** %8, align 8
  store %struct.snd_soc_component* %9, %struct.snd_soc_component** %3, align 8
  store i32 0, i32* %4, align 4
  store i32 0, i32* %5, align 4
  %10 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %11 = load i32, i32* @CDC_A_MBHC_DET_CTL_1, align 4
  %12 = load i32, i32* @CDC_A_MBHC_DET_CTL_L_DET_EN, align 4
  %13 = load i32, i32* @CDC_A_MBHC_DET_CTL_MECH_DET_TYPE_INSERTION, align 4
  %14 = or i32 %12, %13
  %15 = load i32, i32* @CDC_A_MBHC_DET_CTL_MIC_CLAMP_CTL_AUTO, align 4
  %16 = or i32 %14, %15
  %17 = load i32, i32* @CDC_A_MBHC_DET_CTL_MBHC_BIAS_EN, align 4
  %18 = or i32 %16, %17
  %19 = call i32 @snd_soc_component_write(%struct.snd_soc_component* %10, i32 %11, i32 %18)
  %20 = load %struct.pm8916_wcd_analog_priv*, %struct.pm8916_wcd_analog_priv** %2, align 8
  %21 = getelementptr inbounds %struct.pm8916_wcd_analog_priv, %struct.pm8916_wcd_analog_priv* %20, i32 0, i32 4
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %28

24:                                               ; preds = %1
  %25 = load i32, i32* @CDC_A_HPHL_PLUG_TYPE_NO, align 4
  %26 = load i32, i32* %5, align 4
  %27 = or i32 %26, %25
  store i32 %27, i32* %5, align 4
  br label %28

28:                                               ; preds = %24, %1
  %29 = load %struct.pm8916_wcd_analog_priv*, %struct.pm8916_wcd_analog_priv** %2, align 8
  %30 = getelementptr inbounds %struct.pm8916_wcd_analog_priv, %struct.pm8916_wcd_analog_priv* %29, i32 0, i32 3
  %31 = load i64, i64* %30, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %37

33:                                               ; preds = %28
  %34 = load i32, i32* @CDC_A_GND_PLUG_TYPE_NO, align 4
  %35 = load i32, i32* %5, align 4
  %36 = or i32 %35, %34
  store i32 %36, i32* %5, align 4
  br label %37

37:                                               ; preds = %33, %28
  %38 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %39 = load i32, i32* @CDC_A_MBHC_DET_CTL_2, align 4
  %40 = load i32, i32* @CDC_A_MBHC_DET_CTL_HS_L_DET_PULL_UP_CTRL_I_3P0, align 4
  %41 = load i32, i32* @CDC_A_MBHC_DET_CTL_HS_L_DET_COMPA_CTRL_V0P9_VDD, align 4
  %42 = or i32 %40, %41
  %43 = load i32, i32* %5, align 4
  %44 = or i32 %42, %43
  %45 = load i32, i32* @CDC_A_MBHC_DET_CTL_HPHL_100K_TO_GND_EN, align 4
  %46 = or i32 %44, %45
  %47 = call i32 @snd_soc_component_write(%struct.snd_soc_component* %38, i32 %39, i32 %46)
  %48 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %49 = load i32, i32* @CDC_A_MBHC_DBNC_TIMER, align 4
  %50 = load i32, i32* @CDC_A_MBHC_DBNC_TIMER_INSREM_DBNC_T_256_MS, align 4
  %51 = load i32, i32* @CDC_A_MBHC_DBNC_TIMER_BTN_DBNC_T_16MS, align 4
  %52 = or i32 %50, %51
  %53 = call i32 @snd_soc_component_write(%struct.snd_soc_component* %48, i32 %49, i32 %52)
  %54 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %55 = load i32, i32* @CDC_D_CDC_DIG_CLK_CTL, align 4
  %56 = load i32, i32* @DIG_CLK_CTL_D_MBHC_CLK_EN_MASK, align 4
  %57 = load i32, i32* @DIG_CLK_CTL_D_MBHC_CLK_EN, align 4
  %58 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %54, i32 %55, i32 %56, i32 %57)
  %59 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %60 = load i32, i32* @CDC_A_MICB_2_EN, align 4
  %61 = call i32 @snd_soc_component_read32(%struct.snd_soc_component* %59, i32 %60)
  %62 = load i32, i32* @CDC_A_MICB_2_EN_ENABLE, align 4
  %63 = and i32 %61, %62
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %66

65:                                               ; preds = %37
  store i32 1, i32* %4, align 4
  br label %66

66:                                               ; preds = %65, %37
  %67 = load %struct.pm8916_wcd_analog_priv*, %struct.pm8916_wcd_analog_priv** %2, align 8
  %68 = load i32, i32* %4, align 4
  %69 = call i32 @pm8916_mbhc_configure_bias(%struct.pm8916_wcd_analog_priv* %67, i32 %68)
  %70 = load i32, i32* @MBHC_SWITCH_INT, align 4
  store i32 %70, i32* %6, align 4
  %71 = load %struct.pm8916_wcd_analog_priv*, %struct.pm8916_wcd_analog_priv** %2, align 8
  %72 = getelementptr inbounds %struct.pm8916_wcd_analog_priv, %struct.pm8916_wcd_analog_priv* %71, i32 0, i32 2
  %73 = load i64, i64* %72, align 8
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %81

75:                                               ; preds = %66
  %76 = load i32, i32* @MBHC_BUTTON_PRESS_DET, align 4
  %77 = load i32, i32* @MBHC_BUTTON_RELEASE_DET, align 4
  %78 = or i32 %76, %77
  %79 = load i32, i32* %6, align 4
  %80 = or i32 %79, %78
  store i32 %80, i32* %6, align 4
  br label %81

81:                                               ; preds = %75, %66
  %82 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %83 = load i32, i32* @CDC_D_INT_EN_CLR, align 4
  %84 = load i32, i32* %6, align 4
  %85 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %82, i32 %83, i32 %84, i32 0)
  %86 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %87 = load i32, i32* @CDC_D_INT_EN_SET, align 4
  %88 = load i32, i32* %6, align 4
  %89 = load i32, i32* %6, align 4
  %90 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %86, i32 %87, i32 %88, i32 %89)
  %91 = load %struct.pm8916_wcd_analog_priv*, %struct.pm8916_wcd_analog_priv** %2, align 8
  %92 = getelementptr inbounds %struct.pm8916_wcd_analog_priv, %struct.pm8916_wcd_analog_priv* %91, i32 0, i32 0
  store i32 0, i32* %92, align 8
  %93 = load %struct.pm8916_wcd_analog_priv*, %struct.pm8916_wcd_analog_priv** %2, align 8
  %94 = getelementptr inbounds %struct.pm8916_wcd_analog_priv, %struct.pm8916_wcd_analog_priv* %93, i32 0, i32 1
  store i32 1, i32* %94, align 4
  ret void
}

declare dso_local i32 @snd_soc_component_write(%struct.snd_soc_component*, i32, i32) #1

declare dso_local i32 @snd_soc_component_update_bits(%struct.snd_soc_component*, i32, i32, i32) #1

declare dso_local i32 @snd_soc_component_read32(%struct.snd_soc_component*, i32) #1

declare dso_local i32 @pm8916_mbhc_configure_bias(%struct.pm8916_wcd_analog_priv*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
