; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_wm8994.c_late_disable_ev.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_wm8994.c_late_disable_ev.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_dapm_widget = type { i32 }
%struct.snd_kcontrol = type { i32 }
%struct.snd_soc_component = type { i32 }
%struct.wm8994_priv = type { i32, i32 }

@SND_SOC_DAPM_PRE_PMD = common dso_local global i32 0, align 4
@WM8994_AIF1_CLOCKING_1 = common dso_local global i32 0, align 4
@WM8994_AIF1CLK_ENA_MASK = common dso_local global i32 0, align 4
@WM8994_AIF2_CLOCKING_1 = common dso_local global i32 0, align 4
@WM8994_AIF2CLK_ENA_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_soc_dapm_widget*, %struct.snd_kcontrol*, i32)* @late_disable_ev to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @late_disable_ev(%struct.snd_soc_dapm_widget* %0, %struct.snd_kcontrol* %1, i32 %2) #0 {
  %4 = alloca %struct.snd_soc_dapm_widget*, align 8
  %5 = alloca %struct.snd_kcontrol*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.snd_soc_component*, align 8
  %8 = alloca %struct.wm8994_priv*, align 8
  store %struct.snd_soc_dapm_widget* %0, %struct.snd_soc_dapm_widget** %4, align 8
  store %struct.snd_kcontrol* %1, %struct.snd_kcontrol** %5, align 8
  store i32 %2, i32* %6, align 4
  %9 = load %struct.snd_soc_dapm_widget*, %struct.snd_soc_dapm_widget** %4, align 8
  %10 = getelementptr inbounds %struct.snd_soc_dapm_widget, %struct.snd_soc_dapm_widget* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = call %struct.snd_soc_component* @snd_soc_dapm_to_component(i32 %11)
  store %struct.snd_soc_component* %12, %struct.snd_soc_component** %7, align 8
  %13 = load %struct.snd_soc_component*, %struct.snd_soc_component** %7, align 8
  %14 = call %struct.wm8994_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component* %13)
  store %struct.wm8994_priv* %14, %struct.wm8994_priv** %8, align 8
  %15 = load i32, i32* %6, align 4
  switch i32 %15, label %55 [
    i32 128, label %16
  ]

16:                                               ; preds = %3
  %17 = load %struct.wm8994_priv*, %struct.wm8994_priv** %8, align 8
  %18 = getelementptr inbounds %struct.wm8994_priv, %struct.wm8994_priv* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %35

21:                                               ; preds = %16
  %22 = load %struct.snd_soc_dapm_widget*, %struct.snd_soc_dapm_widget** %4, align 8
  %23 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %5, align 8
  %24 = load i32, i32* @SND_SOC_DAPM_PRE_PMD, align 4
  %25 = call i32 @aif1clk_ev(%struct.snd_soc_dapm_widget* %22, %struct.snd_kcontrol* %23, i32 %24)
  %26 = load %struct.snd_soc_component*, %struct.snd_soc_component** %7, align 8
  %27 = load i32, i32* @WM8994_AIF1_CLOCKING_1, align 4
  %28 = load i32, i32* @WM8994_AIF1CLK_ENA_MASK, align 4
  %29 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %26, i32 %27, i32 %28, i32 0)
  %30 = load %struct.snd_soc_dapm_widget*, %struct.snd_soc_dapm_widget** %4, align 8
  %31 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %5, align 8
  %32 = call i32 @aif1clk_ev(%struct.snd_soc_dapm_widget* %30, %struct.snd_kcontrol* %31, i32 128)
  %33 = load %struct.wm8994_priv*, %struct.wm8994_priv** %8, align 8
  %34 = getelementptr inbounds %struct.wm8994_priv, %struct.wm8994_priv* %33, i32 0, i32 1
  store i32 0, i32* %34, align 4
  br label %35

35:                                               ; preds = %21, %16
  %36 = load %struct.wm8994_priv*, %struct.wm8994_priv** %8, align 8
  %37 = getelementptr inbounds %struct.wm8994_priv, %struct.wm8994_priv* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %54

40:                                               ; preds = %35
  %41 = load %struct.snd_soc_dapm_widget*, %struct.snd_soc_dapm_widget** %4, align 8
  %42 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %5, align 8
  %43 = load i32, i32* @SND_SOC_DAPM_PRE_PMD, align 4
  %44 = call i32 @aif2clk_ev(%struct.snd_soc_dapm_widget* %41, %struct.snd_kcontrol* %42, i32 %43)
  %45 = load %struct.snd_soc_component*, %struct.snd_soc_component** %7, align 8
  %46 = load i32, i32* @WM8994_AIF2_CLOCKING_1, align 4
  %47 = load i32, i32* @WM8994_AIF2CLK_ENA_MASK, align 4
  %48 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %45, i32 %46, i32 %47, i32 0)
  %49 = load %struct.snd_soc_dapm_widget*, %struct.snd_soc_dapm_widget** %4, align 8
  %50 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %5, align 8
  %51 = call i32 @aif2clk_ev(%struct.snd_soc_dapm_widget* %49, %struct.snd_kcontrol* %50, i32 128)
  %52 = load %struct.wm8994_priv*, %struct.wm8994_priv** %8, align 8
  %53 = getelementptr inbounds %struct.wm8994_priv, %struct.wm8994_priv* %52, i32 0, i32 0
  store i32 0, i32* %53, align 4
  br label %54

54:                                               ; preds = %40, %35
  br label %55

55:                                               ; preds = %3, %54
  ret i32 0
}

declare dso_local %struct.snd_soc_component* @snd_soc_dapm_to_component(i32) #1

declare dso_local %struct.wm8994_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component*) #1

declare dso_local i32 @aif1clk_ev(%struct.snd_soc_dapm_widget*, %struct.snd_kcontrol*, i32) #1

declare dso_local i32 @snd_soc_component_update_bits(%struct.snd_soc_component*, i32, i32, i32) #1

declare dso_local i32 @aif2clk_ev(%struct.snd_soc_dapm_widget*, %struct.snd_kcontrol*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
