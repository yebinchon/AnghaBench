; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_msm8916-wcd-analog.c_pm8916_wcd_analog_enable_micbias_ext.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_msm8916-wcd-analog.c_pm8916_wcd_analog_enable_micbias_ext.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_component = type { i32 }

@CDC_A_MICB_1_EN = common dso_local global i32 0, align 4
@MICB_1_EN_BYP_CAP_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_soc_component*, i32, i32, i32)* @pm8916_wcd_analog_enable_micbias_ext to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pm8916_wcd_analog_enable_micbias_ext(%struct.snd_soc_component* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.snd_soc_component*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.snd_soc_component* %0, %struct.snd_soc_component** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %9 = load i32, i32* %6, align 4
  switch i32 %9, label %18 [
    i32 128, label %10
  ]

10:                                               ; preds = %4
  %11 = load %struct.snd_soc_component*, %struct.snd_soc_component** %5, align 8
  %12 = call i32 @pm8916_wcd_analog_micbias_enable(%struct.snd_soc_component* %11)
  %13 = load %struct.snd_soc_component*, %struct.snd_soc_component** %5, align 8
  %14 = load i32, i32* @CDC_A_MICB_1_EN, align 4
  %15 = load i32, i32* @MICB_1_EN_BYP_CAP_MASK, align 4
  %16 = load i32, i32* %8, align 4
  %17 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %13, i32 %14, i32 %15, i32 %16)
  br label %18

18:                                               ; preds = %4, %10
  ret i32 0
}

declare dso_local i32 @pm8916_wcd_analog_micbias_enable(%struct.snd_soc_component*) #1

declare dso_local i32 @snd_soc_component_update_bits(%struct.snd_soc_component*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
