; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_wm8994.c_late_enable_ev.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_wm8994.c_late_enable_ev.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_dapm_widget = type { i32 }
%struct.snd_kcontrol = type { i32 }
%struct.snd_soc_component = type { i32 }
%struct.wm8994_priv = type { i32, i32 }

@WM8994_AIF1_CLOCKING_1 = common dso_local global i32 0, align 4
@WM8994_AIF1CLK_ENA_MASK = common dso_local global i32 0, align 4
@WM8994_AIF1CLK_ENA = common dso_local global i32 0, align 4
@SND_SOC_DAPM_POST_PMU = common dso_local global i32 0, align 4
@WM8994_AIF2_CLOCKING_1 = common dso_local global i32 0, align 4
@WM8994_AIF2CLK_ENA_MASK = common dso_local global i32 0, align 4
@WM8994_AIF2CLK_ENA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_soc_dapm_widget*, %struct.snd_kcontrol*, i32)* @late_enable_ev to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @late_enable_ev(%struct.snd_soc_dapm_widget* %0, %struct.snd_kcontrol* %1, i32 %2) #0 {
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
  switch i32 %15, label %57 [
    i32 128, label %16
  ]

16:                                               ; preds = %3
  %17 = load %struct.wm8994_priv*, %struct.wm8994_priv** %8, align 8
  %18 = getelementptr inbounds %struct.wm8994_priv, %struct.wm8994_priv* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %36

21:                                               ; preds = %16
  %22 = load %struct.snd_soc_dapm_widget*, %struct.snd_soc_dapm_widget** %4, align 8
  %23 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %5, align 8
  %24 = call i32 @aif1clk_ev(%struct.snd_soc_dapm_widget* %22, %struct.snd_kcontrol* %23, i32 128)
  %25 = load %struct.snd_soc_component*, %struct.snd_soc_component** %7, align 8
  %26 = load i32, i32* @WM8994_AIF1_CLOCKING_1, align 4
  %27 = load i32, i32* @WM8994_AIF1CLK_ENA_MASK, align 4
  %28 = load i32, i32* @WM8994_AIF1CLK_ENA, align 4
  %29 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %25, i32 %26, i32 %27, i32 %28)
  %30 = load %struct.snd_soc_dapm_widget*, %struct.snd_soc_dapm_widget** %4, align 8
  %31 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %5, align 8
  %32 = load i32, i32* @SND_SOC_DAPM_POST_PMU, align 4
  %33 = call i32 @aif1clk_ev(%struct.snd_soc_dapm_widget* %30, %struct.snd_kcontrol* %31, i32 %32)
  %34 = load %struct.wm8994_priv*, %struct.wm8994_priv** %8, align 8
  %35 = getelementptr inbounds %struct.wm8994_priv, %struct.wm8994_priv* %34, i32 0, i32 1
  store i32 0, i32* %35, align 4
  br label %36

36:                                               ; preds = %21, %16
  %37 = load %struct.wm8994_priv*, %struct.wm8994_priv** %8, align 8
  %38 = getelementptr inbounds %struct.wm8994_priv, %struct.wm8994_priv* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %56

41:                                               ; preds = %36
  %42 = load %struct.snd_soc_dapm_widget*, %struct.snd_soc_dapm_widget** %4, align 8
  %43 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %5, align 8
  %44 = call i32 @aif2clk_ev(%struct.snd_soc_dapm_widget* %42, %struct.snd_kcontrol* %43, i32 128)
  %45 = load %struct.snd_soc_component*, %struct.snd_soc_component** %7, align 8
  %46 = load i32, i32* @WM8994_AIF2_CLOCKING_1, align 4
  %47 = load i32, i32* @WM8994_AIF2CLK_ENA_MASK, align 4
  %48 = load i32, i32* @WM8994_AIF2CLK_ENA, align 4
  %49 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %45, i32 %46, i32 %47, i32 %48)
  %50 = load %struct.snd_soc_dapm_widget*, %struct.snd_soc_dapm_widget** %4, align 8
  %51 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %5, align 8
  %52 = load i32, i32* @SND_SOC_DAPM_POST_PMU, align 4
  %53 = call i32 @aif2clk_ev(%struct.snd_soc_dapm_widget* %50, %struct.snd_kcontrol* %51, i32 %52)
  %54 = load %struct.wm8994_priv*, %struct.wm8994_priv** %8, align 8
  %55 = getelementptr inbounds %struct.wm8994_priv, %struct.wm8994_priv* %54, i32 0, i32 0
  store i32 0, i32* %55, align 4
  br label %56

56:                                               ; preds = %41, %36
  br label %57

57:                                               ; preds = %3, %56
  %58 = load %struct.snd_soc_dapm_widget*, %struct.snd_soc_dapm_widget** %4, align 8
  %59 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %5, align 8
  %60 = load i32, i32* %6, align 4
  %61 = call i32 @wm8958_aif_ev(%struct.snd_soc_dapm_widget* %58, %struct.snd_kcontrol* %59, i32 %60)
  ret i32 0
}

declare dso_local %struct.snd_soc_component* @snd_soc_dapm_to_component(i32) #1

declare dso_local %struct.wm8994_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component*) #1

declare dso_local i32 @aif1clk_ev(%struct.snd_soc_dapm_widget*, %struct.snd_kcontrol*, i32) #1

declare dso_local i32 @snd_soc_component_update_bits(%struct.snd_soc_component*, i32, i32, i32) #1

declare dso_local i32 @aif2clk_ev(%struct.snd_soc_dapm_widget*, %struct.snd_kcontrol*, i32) #1

declare dso_local i32 @wm8958_aif_ev(%struct.snd_soc_dapm_widget*, %struct.snd_kcontrol*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
