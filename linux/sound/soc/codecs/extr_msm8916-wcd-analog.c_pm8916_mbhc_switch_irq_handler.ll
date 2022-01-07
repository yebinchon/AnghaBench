; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_msm8916-wcd-analog.c_pm8916_mbhc_switch_irq_handler.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_msm8916-wcd-analog.c_pm8916_mbhc_switch_irq_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pm8916_wcd_analog_priv = type { i32, i32, i32, %struct.snd_soc_component* }
%struct.snd_soc_component = type { i32 }

@CDC_A_MBHC_DET_CTL_1 = common dso_local global i32 0, align 4
@CDC_A_MBHC_DET_CTL_MECH_DET_TYPE_MASK = common dso_local global i32 0, align 4
@CDC_A_MBHC_DET_CTL_MECH_DET_TYPE_SHIFT = common dso_local global i32 0, align 4
@CDC_A_MICB_2_EN = common dso_local global i32 0, align 4
@CDC_A_MICB_2_EN_ENABLE = common dso_local global i32 0, align 4
@SND_JACK_HEADSET = common dso_local global i32 0, align 4
@hs_jack_mask = common dso_local global i32 0, align 4
@SND_JACK_HEADPHONE = common dso_local global i32 0, align 4
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @pm8916_mbhc_switch_irq_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pm8916_mbhc_switch_irq_handler(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.pm8916_wcd_analog_priv*, align 8
  %6 = alloca %struct.snd_soc_component*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %9 = load i8*, i8** %4, align 8
  %10 = bitcast i8* %9 to %struct.pm8916_wcd_analog_priv*
  store %struct.pm8916_wcd_analog_priv* %10, %struct.pm8916_wcd_analog_priv** %5, align 8
  %11 = load %struct.pm8916_wcd_analog_priv*, %struct.pm8916_wcd_analog_priv** %5, align 8
  %12 = getelementptr inbounds %struct.pm8916_wcd_analog_priv, %struct.pm8916_wcd_analog_priv* %11, i32 0, i32 3
  %13 = load %struct.snd_soc_component*, %struct.snd_soc_component** %12, align 8
  store %struct.snd_soc_component* %13, %struct.snd_soc_component** %6, align 8
  store i32 0, i32* %7, align 4
  %14 = load %struct.snd_soc_component*, %struct.snd_soc_component** %6, align 8
  %15 = load i32, i32* @CDC_A_MBHC_DET_CTL_1, align 4
  %16 = call i32 @snd_soc_component_read32(%struct.snd_soc_component* %14, i32 %15)
  %17 = load i32, i32* @CDC_A_MBHC_DET_CTL_MECH_DET_TYPE_MASK, align 4
  %18 = and i32 %16, %17
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %2
  store i32 1, i32* %7, align 4
  br label %21

21:                                               ; preds = %20, %2
  %22 = load %struct.snd_soc_component*, %struct.snd_soc_component** %6, align 8
  %23 = load i32, i32* @CDC_A_MBHC_DET_CTL_1, align 4
  %24 = load i32, i32* @CDC_A_MBHC_DET_CTL_MECH_DET_TYPE_MASK, align 4
  %25 = load i32, i32* %7, align 4
  %26 = icmp ne i32 %25, 0
  %27 = xor i1 %26, true
  %28 = zext i1 %27 to i32
  %29 = load i32, i32* @CDC_A_MBHC_DET_CTL_MECH_DET_TYPE_SHIFT, align 4
  %30 = shl i32 %28, %29
  %31 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %22, i32 %23, i32 %24, i32 %30)
  %32 = load i32, i32* %7, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %67

34:                                               ; preds = %21
  store i32 0, i32* %8, align 4
  %35 = load %struct.snd_soc_component*, %struct.snd_soc_component** %6, align 8
  %36 = load i32, i32* @CDC_A_MICB_2_EN, align 4
  %37 = call i32 @snd_soc_component_read32(%struct.snd_soc_component* %35, i32 %36)
  %38 = load i32, i32* @CDC_A_MICB_2_EN_ENABLE, align 4
  %39 = and i32 %37, %38
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %34
  store i32 1, i32* %8, align 4
  br label %42

42:                                               ; preds = %41, %34
  %43 = load %struct.pm8916_wcd_analog_priv*, %struct.pm8916_wcd_analog_priv** %5, align 8
  %44 = load i32, i32* %8, align 4
  %45 = call i32 @pm8916_mbhc_configure_bias(%struct.pm8916_wcd_analog_priv* %43, i32 %44)
  %46 = load %struct.pm8916_wcd_analog_priv*, %struct.pm8916_wcd_analog_priv** %5, align 8
  %47 = getelementptr inbounds %struct.pm8916_wcd_analog_priv, %struct.pm8916_wcd_analog_priv* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %57

50:                                               ; preds = %42
  %51 = load %struct.pm8916_wcd_analog_priv*, %struct.pm8916_wcd_analog_priv** %5, align 8
  %52 = getelementptr inbounds %struct.pm8916_wcd_analog_priv, %struct.pm8916_wcd_analog_priv* %51, i32 0, i32 2
  %53 = load i32, i32* %52, align 8
  %54 = load i32, i32* @SND_JACK_HEADSET, align 4
  %55 = load i32, i32* @hs_jack_mask, align 4
  %56 = call i32 @snd_soc_jack_report(i32 %53, i32 %54, i32 %55)
  br label %64

57:                                               ; preds = %42
  %58 = load %struct.pm8916_wcd_analog_priv*, %struct.pm8916_wcd_analog_priv** %5, align 8
  %59 = getelementptr inbounds %struct.pm8916_wcd_analog_priv, %struct.pm8916_wcd_analog_priv* %58, i32 0, i32 2
  %60 = load i32, i32* %59, align 8
  %61 = load i32, i32* @SND_JACK_HEADPHONE, align 4
  %62 = load i32, i32* @hs_jack_mask, align 4
  %63 = call i32 @snd_soc_jack_report(i32 %60, i32 %61, i32 %62)
  br label %64

64:                                               ; preds = %57, %50
  %65 = load %struct.pm8916_wcd_analog_priv*, %struct.pm8916_wcd_analog_priv** %5, align 8
  %66 = getelementptr inbounds %struct.pm8916_wcd_analog_priv, %struct.pm8916_wcd_analog_priv* %65, i32 0, i32 1
  store i32 0, i32* %66, align 4
  br label %77

67:                                               ; preds = %21
  %68 = load %struct.pm8916_wcd_analog_priv*, %struct.pm8916_wcd_analog_priv** %5, align 8
  %69 = getelementptr inbounds %struct.pm8916_wcd_analog_priv, %struct.pm8916_wcd_analog_priv* %68, i32 0, i32 2
  %70 = load i32, i32* %69, align 8
  %71 = load i32, i32* @hs_jack_mask, align 4
  %72 = call i32 @snd_soc_jack_report(i32 %70, i32 0, i32 %71)
  %73 = load %struct.pm8916_wcd_analog_priv*, %struct.pm8916_wcd_analog_priv** %5, align 8
  %74 = getelementptr inbounds %struct.pm8916_wcd_analog_priv, %struct.pm8916_wcd_analog_priv* %73, i32 0, i32 1
  store i32 1, i32* %74, align 4
  %75 = load %struct.pm8916_wcd_analog_priv*, %struct.pm8916_wcd_analog_priv** %5, align 8
  %76 = getelementptr inbounds %struct.pm8916_wcd_analog_priv, %struct.pm8916_wcd_analog_priv* %75, i32 0, i32 0
  store i32 0, i32* %76, align 8
  br label %77

77:                                               ; preds = %67, %64
  %78 = load i32, i32* @IRQ_HANDLED, align 4
  ret i32 %78
}

declare dso_local i32 @snd_soc_component_read32(%struct.snd_soc_component*, i32) #1

declare dso_local i32 @snd_soc_component_update_bits(%struct.snd_soc_component*, i32, i32, i32) #1

declare dso_local i32 @pm8916_mbhc_configure_bias(%struct.pm8916_wcd_analog_priv*, i32) #1

declare dso_local i32 @snd_soc_jack_report(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
