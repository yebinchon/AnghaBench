; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_max98927.c_max98927_dac_event.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_max98927.c_max98927_dac_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_dapm_widget = type { i32 }
%struct.snd_kcontrol = type { i32 }
%struct.snd_soc_component = type { i32 }
%struct.max98927_priv = type { i32, i32 }

@MAX98927_R003A_AMP_EN = common dso_local global i32 0, align 4
@MAX98927_AMP_EN_MASK = common dso_local global i32 0, align 4
@MAX98927_R00FF_GLOBAL_SHDN = common dso_local global i32 0, align 4
@MAX98927_GLOBAL_EN_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_soc_dapm_widget*, %struct.snd_kcontrol*, i32)* @max98927_dac_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @max98927_dac_event(%struct.snd_soc_dapm_widget* %0, %struct.snd_kcontrol* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.snd_soc_dapm_widget*, align 8
  %6 = alloca %struct.snd_kcontrol*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.snd_soc_component*, align 8
  %9 = alloca %struct.max98927_priv*, align 8
  store %struct.snd_soc_dapm_widget* %0, %struct.snd_soc_dapm_widget** %5, align 8
  store %struct.snd_kcontrol* %1, %struct.snd_kcontrol** %6, align 8
  store i32 %2, i32* %7, align 4
  %10 = load %struct.snd_soc_dapm_widget*, %struct.snd_soc_dapm_widget** %5, align 8
  %11 = getelementptr inbounds %struct.snd_soc_dapm_widget, %struct.snd_soc_dapm_widget* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call %struct.snd_soc_component* @snd_soc_dapm_to_component(i32 %12)
  store %struct.snd_soc_component* %13, %struct.snd_soc_component** %8, align 8
  %14 = load %struct.snd_soc_component*, %struct.snd_soc_component** %8, align 8
  %15 = call %struct.max98927_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component* %14)
  store %struct.max98927_priv* %15, %struct.max98927_priv** %9, align 8
  %16 = load i32, i32* %7, align 4
  switch i32 %16, label %46 [
    i32 128, label %17
    i32 129, label %20
    i32 130, label %33
  ]

17:                                               ; preds = %3
  %18 = load %struct.max98927_priv*, %struct.max98927_priv** %9, align 8
  %19 = getelementptr inbounds %struct.max98927_priv, %struct.max98927_priv* %18, i32 0, i32 0
  store i32 0, i32* %19, align 4
  br label %47

20:                                               ; preds = %3
  %21 = load %struct.max98927_priv*, %struct.max98927_priv** %9, align 8
  %22 = getelementptr inbounds %struct.max98927_priv, %struct.max98927_priv* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* @MAX98927_R003A_AMP_EN, align 4
  %25 = load i32, i32* @MAX98927_AMP_EN_MASK, align 4
  %26 = call i32 @regmap_update_bits(i32 %23, i32 %24, i32 %25, i32 1)
  %27 = load %struct.max98927_priv*, %struct.max98927_priv** %9, align 8
  %28 = getelementptr inbounds %struct.max98927_priv, %struct.max98927_priv* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* @MAX98927_R00FF_GLOBAL_SHDN, align 4
  %31 = load i32, i32* @MAX98927_GLOBAL_EN_MASK, align 4
  %32 = call i32 @regmap_update_bits(i32 %29, i32 %30, i32 %31, i32 1)
  br label %47

33:                                               ; preds = %3
  %34 = load %struct.max98927_priv*, %struct.max98927_priv** %9, align 8
  %35 = getelementptr inbounds %struct.max98927_priv, %struct.max98927_priv* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* @MAX98927_R00FF_GLOBAL_SHDN, align 4
  %38 = load i32, i32* @MAX98927_GLOBAL_EN_MASK, align 4
  %39 = call i32 @regmap_update_bits(i32 %36, i32 %37, i32 %38, i32 0)
  %40 = load %struct.max98927_priv*, %struct.max98927_priv** %9, align 8
  %41 = getelementptr inbounds %struct.max98927_priv, %struct.max98927_priv* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* @MAX98927_R003A_AMP_EN, align 4
  %44 = load i32, i32* @MAX98927_AMP_EN_MASK, align 4
  %45 = call i32 @regmap_update_bits(i32 %42, i32 %43, i32 %44, i32 0)
  br label %47

46:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %48

47:                                               ; preds = %33, %20, %17
  store i32 0, i32* %4, align 4
  br label %48

48:                                               ; preds = %47, %46
  %49 = load i32, i32* %4, align 4
  ret i32 %49
}

declare dso_local %struct.snd_soc_component* @snd_soc_dapm_to_component(i32) #1

declare dso_local %struct.max98927_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component*) #1

declare dso_local i32 @regmap_update_bits(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
