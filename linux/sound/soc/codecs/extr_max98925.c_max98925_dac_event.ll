; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_max98925.c_max98925_dac_event.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_max98925.c_max98925_dac_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_dapm_widget = type { i32 }
%struct.snd_kcontrol = type { i32 }
%struct.snd_soc_component = type { i32 }
%struct.max98925_priv = type { i32 }

@MAX98925_BLOCK_ENABLE = common dso_local global i32 0, align 4
@M98925_BST_EN_MASK = common dso_local global i32 0, align 4
@M98925_ADC_IMON_EN_MASK = common dso_local global i32 0, align 4
@M98925_ADC_VMON_EN_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_soc_dapm_widget*, %struct.snd_kcontrol*, i32)* @max98925_dac_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @max98925_dac_event(%struct.snd_soc_dapm_widget* %0, %struct.snd_kcontrol* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.snd_soc_dapm_widget*, align 8
  %6 = alloca %struct.snd_kcontrol*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.snd_soc_component*, align 8
  %9 = alloca %struct.max98925_priv*, align 8
  store %struct.snd_soc_dapm_widget* %0, %struct.snd_soc_dapm_widget** %5, align 8
  store %struct.snd_kcontrol* %1, %struct.snd_kcontrol** %6, align 8
  store i32 %2, i32* %7, align 4
  %10 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %6, align 8
  %11 = call %struct.snd_soc_component* @snd_soc_kcontrol_component(%struct.snd_kcontrol* %10)
  store %struct.snd_soc_component* %11, %struct.snd_soc_component** %8, align 8
  %12 = load %struct.snd_soc_component*, %struct.snd_soc_component** %8, align 8
  %13 = call %struct.max98925_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component* %12)
  store %struct.max98925_priv* %13, %struct.max98925_priv** %9, align 8
  %14 = load i32, i32* %7, align 4
  switch i32 %14, label %42 [
    i32 128, label %15
    i32 129, label %31
  ]

15:                                               ; preds = %3
  %16 = load %struct.max98925_priv*, %struct.max98925_priv** %9, align 8
  %17 = getelementptr inbounds %struct.max98925_priv, %struct.max98925_priv* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* @MAX98925_BLOCK_ENABLE, align 4
  %20 = load i32, i32* @M98925_BST_EN_MASK, align 4
  %21 = load i32, i32* @M98925_ADC_IMON_EN_MASK, align 4
  %22 = or i32 %20, %21
  %23 = load i32, i32* @M98925_ADC_VMON_EN_MASK, align 4
  %24 = or i32 %22, %23
  %25 = load i32, i32* @M98925_BST_EN_MASK, align 4
  %26 = load i32, i32* @M98925_ADC_IMON_EN_MASK, align 4
  %27 = or i32 %25, %26
  %28 = load i32, i32* @M98925_ADC_VMON_EN_MASK, align 4
  %29 = or i32 %27, %28
  %30 = call i32 @regmap_update_bits(i32 %18, i32 %19, i32 %24, i32 %29)
  br label %43

31:                                               ; preds = %3
  %32 = load %struct.max98925_priv*, %struct.max98925_priv** %9, align 8
  %33 = getelementptr inbounds %struct.max98925_priv, %struct.max98925_priv* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* @MAX98925_BLOCK_ENABLE, align 4
  %36 = load i32, i32* @M98925_BST_EN_MASK, align 4
  %37 = load i32, i32* @M98925_ADC_IMON_EN_MASK, align 4
  %38 = or i32 %36, %37
  %39 = load i32, i32* @M98925_ADC_VMON_EN_MASK, align 4
  %40 = or i32 %38, %39
  %41 = call i32 @regmap_update_bits(i32 %34, i32 %35, i32 %40, i32 0)
  br label %43

42:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %44

43:                                               ; preds = %31, %15
  store i32 0, i32* %4, align 4
  br label %44

44:                                               ; preds = %43, %42
  %45 = load i32, i32* %4, align 4
  ret i32 %45
}

declare dso_local %struct.snd_soc_component* @snd_soc_kcontrol_component(%struct.snd_kcontrol*) #1

declare dso_local %struct.max98925_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component*) #1

declare dso_local i32 @regmap_update_bits(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
