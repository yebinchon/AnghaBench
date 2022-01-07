; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_msm8916-wcd-analog.c_pm8916_wcd_analog_micbias_enable.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_msm8916-wcd-analog.c_pm8916_wcd_analog_micbias_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_component = type { i32 }
%struct.pm8916_wcd_analog_priv = type { i32 }

@CDC_A_MICB_1_CTL = common dso_local global i32 0, align 4
@MICB_1_CTL_EXT_PRECHARG_EN_MASK = common dso_local global i32 0, align 4
@MICB_1_CTL_INT_PRECHARG_BYP_MASK = common dso_local global i32 0, align 4
@MICB_1_CTL_INT_PRECHARG_BYP_EXT_PRECHRG_SEL = common dso_local global i32 0, align 4
@MICB_1_CTL_EXT_PRECHARG_EN_ENABLE = common dso_local global i32 0, align 4
@CDC_A_MICB_1_VAL = common dso_local global i32 0, align 4
@MICB_1_VAL_MICB_OUT_VAL_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.snd_soc_component*)* @pm8916_wcd_analog_micbias_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pm8916_wcd_analog_micbias_enable(%struct.snd_soc_component* %0) #0 {
  %2 = alloca %struct.snd_soc_component*, align 8
  %3 = alloca %struct.pm8916_wcd_analog_priv*, align 8
  store %struct.snd_soc_component* %0, %struct.snd_soc_component** %2, align 8
  %4 = load %struct.snd_soc_component*, %struct.snd_soc_component** %2, align 8
  %5 = call %struct.pm8916_wcd_analog_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component* %4)
  store %struct.pm8916_wcd_analog_priv* %5, %struct.pm8916_wcd_analog_priv** %3, align 8
  %6 = load %struct.snd_soc_component*, %struct.snd_soc_component** %2, align 8
  %7 = load i32, i32* @CDC_A_MICB_1_CTL, align 4
  %8 = load i32, i32* @MICB_1_CTL_EXT_PRECHARG_EN_MASK, align 4
  %9 = load i32, i32* @MICB_1_CTL_INT_PRECHARG_BYP_MASK, align 4
  %10 = or i32 %8, %9
  %11 = load i32, i32* @MICB_1_CTL_INT_PRECHARG_BYP_EXT_PRECHRG_SEL, align 4
  %12 = load i32, i32* @MICB_1_CTL_EXT_PRECHARG_EN_ENABLE, align 4
  %13 = or i32 %11, %12
  %14 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %6, i32 %7, i32 %10, i32 %13)
  %15 = load %struct.pm8916_wcd_analog_priv*, %struct.pm8916_wcd_analog_priv** %3, align 8
  %16 = getelementptr inbounds %struct.pm8916_wcd_analog_priv, %struct.pm8916_wcd_analog_priv* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %35

19:                                               ; preds = %1
  %20 = load %struct.snd_soc_component*, %struct.snd_soc_component** %2, align 8
  %21 = load i32, i32* @CDC_A_MICB_1_VAL, align 4
  %22 = load i32, i32* @MICB_1_VAL_MICB_OUT_VAL_MASK, align 4
  %23 = load %struct.pm8916_wcd_analog_priv*, %struct.pm8916_wcd_analog_priv** %3, align 8
  %24 = getelementptr inbounds %struct.pm8916_wcd_analog_priv, %struct.pm8916_wcd_analog_priv* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @MICB_VOLTAGE_REGVAL(i32 %25)
  %27 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %20, i32 %21, i32 %22, i32 %26)
  %28 = load %struct.pm8916_wcd_analog_priv*, %struct.pm8916_wcd_analog_priv** %3, align 8
  %29 = getelementptr inbounds %struct.pm8916_wcd_analog_priv, %struct.pm8916_wcd_analog_priv* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = icmp sge i32 %30, 2700
  br i1 %31, label %32, label %34

32:                                               ; preds = %19
  %33 = call i32 @msleep(i32 50)
  br label %34

34:                                               ; preds = %32, %19
  br label %35

35:                                               ; preds = %34, %1
  %36 = load %struct.snd_soc_component*, %struct.snd_soc_component** %2, align 8
  %37 = load i32, i32* @CDC_A_MICB_1_CTL, align 4
  %38 = load i32, i32* @MICB_1_CTL_EXT_PRECHARG_EN_MASK, align 4
  %39 = load i32, i32* @MICB_1_CTL_INT_PRECHARG_BYP_MASK, align 4
  %40 = or i32 %38, %39
  %41 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %36, i32 %37, i32 %40, i32 0)
  ret void
}

declare dso_local %struct.pm8916_wcd_analog_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component*) #1

declare dso_local i32 @snd_soc_component_update_bits(%struct.snd_soc_component*, i32, i32, i32) #1

declare dso_local i32 @MICB_VOLTAGE_REGVAL(i32) #1

declare dso_local i32 @msleep(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
