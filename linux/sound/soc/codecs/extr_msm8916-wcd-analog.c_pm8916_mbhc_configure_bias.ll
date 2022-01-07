; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_msm8916-wcd-analog.c_pm8916_mbhc_configure_bias.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_msm8916-wcd-analog.c_pm8916_mbhc_configure_bias.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pm8916_wcd_analog_priv = type { i32*, i32*, %struct.snd_soc_component* }
%struct.snd_soc_component = type { i32 }

@CDC_A_MICB_1_INT_RBIAS = common dso_local global i32 0, align 4
@MICB_1_INT_TX2_INT_RBIAS_EN_MASK = common dso_local global i32 0, align 4
@MICB_1_INT_TX2_INT_RBIAS_EN_ENABLE = common dso_local global i32 0, align 4
@CDC_A_MICB_2_EN = common dso_local global i32 0, align 4
@CDC_A_MICB_2_PULL_DOWN_EN_MASK = common dso_local global i32 0, align 4
@CDC_A_MBHC_FSM_CTL = common dso_local global i32 0, align 4
@CDC_A_MBHC_FSM_CTL_BTN_ISRC_CTRL_MASK = common dso_local global i32 0, align 4
@CDC_A_MBHC_FSM_CTL_BTN_ISRC_CTRL_I_100UA = common dso_local global i32 0, align 4
@CDC_A_MBHC_FSM_CTL_MBHC_FSM_EN_MASK = common dso_local global i32 0, align 4
@CDC_A_MBHC_FSM_CTL_MBHC_FSM_EN = common dso_local global i32 0, align 4
@CDC_A_MBHC_BTN0_ZDET_CTL_0 = common dso_local global i32 0, align 4
@MBHC_MAX_BUTTONS = common dso_local global i32 0, align 4
@CDC_A_MBHC_BTN_VREF_COARSE_SHIFT = common dso_local global i32 0, align 4
@CDC_A_MBHC_BTN_VREF_FINE_SHIFT = common dso_local global i32 0, align 4
@CDC_A_MBHC_BTN_VREF_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pm8916_wcd_analog_priv*, i32)* @pm8916_mbhc_configure_bias to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pm8916_mbhc_configure_bias(%struct.pm8916_wcd_analog_priv* %0, i32 %1) #0 {
  %3 = alloca %struct.pm8916_wcd_analog_priv*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.snd_soc_component*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  store %struct.pm8916_wcd_analog_priv* %0, %struct.pm8916_wcd_analog_priv** %3, align 8
  store i32 %1, i32* %4, align 4
  %12 = load %struct.pm8916_wcd_analog_priv*, %struct.pm8916_wcd_analog_priv** %3, align 8
  %13 = getelementptr inbounds %struct.pm8916_wcd_analog_priv, %struct.pm8916_wcd_analog_priv* %12, i32 0, i32 2
  %14 = load %struct.snd_soc_component*, %struct.snd_soc_component** %13, align 8
  store %struct.snd_soc_component* %14, %struct.snd_soc_component** %5, align 8
  %15 = load i32, i32* %4, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %32, label %17

17:                                               ; preds = %2
  %18 = load %struct.snd_soc_component*, %struct.snd_soc_component** %5, align 8
  %19 = load i32, i32* @CDC_A_MICB_1_INT_RBIAS, align 4
  %20 = load i32, i32* @MICB_1_INT_TX2_INT_RBIAS_EN_MASK, align 4
  %21 = load i32, i32* @MICB_1_INT_TX2_INT_RBIAS_EN_ENABLE, align 4
  %22 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %18, i32 %19, i32 %20, i32 %21)
  %23 = load %struct.snd_soc_component*, %struct.snd_soc_component** %5, align 8
  %24 = load i32, i32* @CDC_A_MICB_2_EN, align 4
  %25 = load i32, i32* @CDC_A_MICB_2_PULL_DOWN_EN_MASK, align 4
  %26 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %23, i32 %24, i32 %25, i32 0)
  %27 = load %struct.snd_soc_component*, %struct.snd_soc_component** %5, align 8
  %28 = load i32, i32* @CDC_A_MBHC_FSM_CTL, align 4
  %29 = load i32, i32* @CDC_A_MBHC_FSM_CTL_BTN_ISRC_CTRL_MASK, align 4
  %30 = load i32, i32* @CDC_A_MBHC_FSM_CTL_BTN_ISRC_CTRL_I_100UA, align 4
  %31 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %27, i32 %28, i32 %29, i32 %30)
  br label %32

32:                                               ; preds = %17, %2
  %33 = load %struct.snd_soc_component*, %struct.snd_soc_component** %5, align 8
  %34 = load i32, i32* @CDC_A_MBHC_FSM_CTL, align 4
  %35 = load i32, i32* @CDC_A_MBHC_FSM_CTL_MBHC_FSM_EN_MASK, align 4
  %36 = load i32, i32* @CDC_A_MBHC_FSM_CTL_MBHC_FSM_EN, align 4
  %37 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %33, i32 %34, i32 %35, i32 %36)
  %38 = load i32, i32* %4, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %45

40:                                               ; preds = %32
  %41 = load %struct.pm8916_wcd_analog_priv*, %struct.pm8916_wcd_analog_priv** %3, align 8
  %42 = getelementptr inbounds %struct.pm8916_wcd_analog_priv, %struct.pm8916_wcd_analog_priv* %41, i32 0, i32 0
  %43 = load i32*, i32** %42, align 8
  %44 = getelementptr inbounds i32, i32* %43, i64 0
  store i32* %44, i32** %10, align 8
  br label %50

45:                                               ; preds = %32
  %46 = load %struct.pm8916_wcd_analog_priv*, %struct.pm8916_wcd_analog_priv** %3, align 8
  %47 = getelementptr inbounds %struct.pm8916_wcd_analog_priv, %struct.pm8916_wcd_analog_priv* %46, i32 0, i32 1
  %48 = load i32*, i32** %47, align 8
  %49 = getelementptr inbounds i32, i32* %48, i64 0
  store i32* %49, i32** %10, align 8
  br label %50

50:                                               ; preds = %45, %40
  %51 = load i32, i32* @CDC_A_MBHC_BTN0_ZDET_CTL_0, align 4
  store i32 %51, i32* %9, align 4
  store i32 0, i32* %11, align 4
  br label %52

52:                                               ; preds = %84, %50
  %53 = load i32, i32* %11, align 4
  %54 = load i32, i32* @MBHC_MAX_BUTTONS, align 4
  %55 = icmp slt i32 %53, %54
  br i1 %55, label %56, label %87

56:                                               ; preds = %52
  %57 = load i32*, i32** %10, align 8
  %58 = load i32, i32* %11, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds i32, i32* %57, i64 %59
  %61 = load i32, i32* %60, align 4
  %62 = sdiv i32 %61, 100
  store i32 %62, i32* %6, align 4
  %63 = load i32*, i32** %10, align 8
  %64 = load i32, i32* %11, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds i32, i32* %63, i64 %65
  %67 = load i32, i32* %66, align 4
  %68 = srem i32 %67, 100
  %69 = sdiv i32 %68, 12
  store i32 %69, i32* %7, align 4
  %70 = load i32, i32* %6, align 4
  %71 = load i32, i32* @CDC_A_MBHC_BTN_VREF_COARSE_SHIFT, align 4
  %72 = shl i32 %70, %71
  %73 = load i32, i32* %7, align 4
  %74 = load i32, i32* @CDC_A_MBHC_BTN_VREF_FINE_SHIFT, align 4
  %75 = shl i32 %73, %74
  %76 = or i32 %72, %75
  store i32 %76, i32* %8, align 4
  %77 = load %struct.snd_soc_component*, %struct.snd_soc_component** %5, align 8
  %78 = load i32, i32* %9, align 4
  %79 = load i32, i32* @CDC_A_MBHC_BTN_VREF_MASK, align 4
  %80 = load i32, i32* %8, align 4
  %81 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %77, i32 %78, i32 %79, i32 %80)
  %82 = load i32, i32* %9, align 4
  %83 = add nsw i32 %82, 1
  store i32 %83, i32* %9, align 4
  br label %84

84:                                               ; preds = %56
  %85 = load i32, i32* %11, align 4
  %86 = add nsw i32 %85, 1
  store i32 %86, i32* %11, align 4
  br label %52

87:                                               ; preds = %52
  ret i32 0
}

declare dso_local i32 @snd_soc_component_update_bits(%struct.snd_soc_component*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
