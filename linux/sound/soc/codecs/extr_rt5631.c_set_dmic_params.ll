; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_rt5631.c_set_dmic_params.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_rt5631.c_set_dmic_params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_dapm_widget = type { i32 }
%struct.snd_kcontrol = type { i32 }
%struct.snd_soc_component = type { i32 }
%struct.rt5631_priv = type { i32 }

@RT5631_DIG_MIC_CTRL = common dso_local global i32 0, align 4
@RT5631_DMIC_CLK_CTRL_MASK = common dso_local global i32 0, align 4
@RT5631_DMIC_CLK_CTRL_TO_32FS = common dso_local global i32 0, align 4
@RT5631_DMIC_CLK_CTRL_TO_64FS = common dso_local global i32 0, align 4
@RT5631_DMIC_CLK_CTRL_TO_128FS = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_soc_dapm_widget*, %struct.snd_kcontrol*, i32)* @set_dmic_params to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @set_dmic_params(%struct.snd_soc_dapm_widget* %0, %struct.snd_kcontrol* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.snd_soc_dapm_widget*, align 8
  %6 = alloca %struct.snd_kcontrol*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.snd_soc_component*, align 8
  %9 = alloca %struct.rt5631_priv*, align 8
  store %struct.snd_soc_dapm_widget* %0, %struct.snd_soc_dapm_widget** %5, align 8
  store %struct.snd_kcontrol* %1, %struct.snd_kcontrol** %6, align 8
  store i32 %2, i32* %7, align 4
  %10 = load %struct.snd_soc_dapm_widget*, %struct.snd_soc_dapm_widget** %5, align 8
  %11 = getelementptr inbounds %struct.snd_soc_dapm_widget, %struct.snd_soc_dapm_widget* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call %struct.snd_soc_component* @snd_soc_dapm_to_component(i32 %12)
  store %struct.snd_soc_component* %13, %struct.snd_soc_component** %8, align 8
  %14 = load %struct.snd_soc_component*, %struct.snd_soc_component** %8, align 8
  %15 = call %struct.rt5631_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component* %14)
  store %struct.rt5631_priv* %15, %struct.rt5631_priv** %9, align 8
  %16 = load %struct.rt5631_priv*, %struct.rt5631_priv** %9, align 8
  %17 = getelementptr inbounds %struct.rt5631_priv, %struct.rt5631_priv* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  switch i32 %18, label %37 [
    i32 44100, label %19
    i32 48000, label %19
    i32 32000, label %25
    i32 22050, label %25
    i32 16000, label %31
    i32 11025, label %31
    i32 8000, label %31
  ]

19:                                               ; preds = %3, %3
  %20 = load %struct.snd_soc_component*, %struct.snd_soc_component** %8, align 8
  %21 = load i32, i32* @RT5631_DIG_MIC_CTRL, align 4
  %22 = load i32, i32* @RT5631_DMIC_CLK_CTRL_MASK, align 4
  %23 = load i32, i32* @RT5631_DMIC_CLK_CTRL_TO_32FS, align 4
  %24 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %20, i32 %21, i32 %22, i32 %23)
  br label %40

25:                                               ; preds = %3, %3
  %26 = load %struct.snd_soc_component*, %struct.snd_soc_component** %8, align 8
  %27 = load i32, i32* @RT5631_DIG_MIC_CTRL, align 4
  %28 = load i32, i32* @RT5631_DMIC_CLK_CTRL_MASK, align 4
  %29 = load i32, i32* @RT5631_DMIC_CLK_CTRL_TO_64FS, align 4
  %30 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %26, i32 %27, i32 %28, i32 %29)
  br label %40

31:                                               ; preds = %3, %3, %3
  %32 = load %struct.snd_soc_component*, %struct.snd_soc_component** %8, align 8
  %33 = load i32, i32* @RT5631_DIG_MIC_CTRL, align 4
  %34 = load i32, i32* @RT5631_DMIC_CLK_CTRL_MASK, align 4
  %35 = load i32, i32* @RT5631_DMIC_CLK_CTRL_TO_128FS, align 4
  %36 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %32, i32 %33, i32 %34, i32 %35)
  br label %40

37:                                               ; preds = %3
  %38 = load i32, i32* @EINVAL, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %4, align 4
  br label %41

40:                                               ; preds = %31, %25, %19
  store i32 0, i32* %4, align 4
  br label %41

41:                                               ; preds = %40, %37
  %42 = load i32, i32* %4, align 4
  ret i32 %42
}

declare dso_local %struct.snd_soc_component* @snd_soc_dapm_to_component(i32) #1

declare dso_local %struct.rt5631_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component*) #1

declare dso_local i32 @snd_soc_component_update_bits(%struct.snd_soc_component*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
