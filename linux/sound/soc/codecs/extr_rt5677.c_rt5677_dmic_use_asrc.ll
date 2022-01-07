; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_rt5677.c_rt5677_dmic_use_asrc.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_rt5677.c_rt5677_dmic_use_asrc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_dapm_widget = type { i32, i32 }
%struct.snd_soc_component = type { i32 }
%struct.rt5677_priv = type { i32 }

@RT5677_ASRC_5 = common dso_local global i32 0, align 4
@RT5677_AD_STO1_CLK_SEL_MASK = common dso_local global i32 0, align 4
@RT5677_AD_STO1_CLK_SEL_SFT = common dso_local global i32 0, align 4
@RT5677_AD_STO2_CLK_SEL_MASK = common dso_local global i32 0, align 4
@RT5677_AD_STO2_CLK_SEL_SFT = common dso_local global i32 0, align 4
@RT5677_AD_STO3_CLK_SEL_MASK = common dso_local global i32 0, align 4
@RT5677_AD_STO3_CLK_SEL_SFT = common dso_local global i32 0, align 4
@RT5677_AD_STO4_CLK_SEL_MASK = common dso_local global i32 0, align 4
@RT5677_AD_STO4_CLK_SEL_SFT = common dso_local global i32 0, align 4
@RT5677_ASRC_6 = common dso_local global i32 0, align 4
@RT5677_AD_MONOL_CLK_SEL_MASK = common dso_local global i32 0, align 4
@RT5677_AD_MONOL_CLK_SEL_SFT = common dso_local global i32 0, align 4
@RT5677_AD_MONOR_CLK_SEL_MASK = common dso_local global i32 0, align 4
@RT5677_AD_MONOR_CLK_SEL_SFT = common dso_local global i32 0, align 4
@RT5677_CLK_SEL_I2S1_ASRC = common dso_local global i32 0, align 4
@RT5677_CLK_SEL_I2S6_ASRC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_soc_dapm_widget*, %struct.snd_soc_dapm_widget*)* @rt5677_dmic_use_asrc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rt5677_dmic_use_asrc(%struct.snd_soc_dapm_widget* %0, %struct.snd_soc_dapm_widget* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.snd_soc_dapm_widget*, align 8
  %5 = alloca %struct.snd_soc_dapm_widget*, align 8
  %6 = alloca %struct.snd_soc_component*, align 8
  %7 = alloca %struct.rt5677_priv*, align 8
  %8 = alloca i32, align 4
  store %struct.snd_soc_dapm_widget* %0, %struct.snd_soc_dapm_widget** %4, align 8
  store %struct.snd_soc_dapm_widget* %1, %struct.snd_soc_dapm_widget** %5, align 8
  %9 = load %struct.snd_soc_dapm_widget*, %struct.snd_soc_dapm_widget** %4, align 8
  %10 = getelementptr inbounds %struct.snd_soc_dapm_widget, %struct.snd_soc_dapm_widget* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 4
  %12 = call %struct.snd_soc_component* @snd_soc_dapm_to_component(i32 %11)
  store %struct.snd_soc_component* %12, %struct.snd_soc_component** %6, align 8
  %13 = load %struct.snd_soc_component*, %struct.snd_soc_component** %6, align 8
  %14 = call %struct.rt5677_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component* %13)
  store %struct.rt5677_priv* %14, %struct.rt5677_priv** %7, align 8
  %15 = load %struct.snd_soc_dapm_widget*, %struct.snd_soc_dapm_widget** %4, align 8
  %16 = getelementptr inbounds %struct.snd_soc_dapm_widget, %struct.snd_soc_dapm_widget* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  switch i32 %17, label %84 [
    i32 11, label %18
    i32 10, label %29
    i32 9, label %40
    i32 8, label %51
    i32 7, label %62
    i32 6, label %73
  ]

18:                                               ; preds = %2
  %19 = load %struct.rt5677_priv*, %struct.rt5677_priv** %7, align 8
  %20 = getelementptr inbounds %struct.rt5677_priv, %struct.rt5677_priv* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* @RT5677_ASRC_5, align 4
  %23 = call i32 @regmap_read(i32 %21, i32 %22, i32* %8)
  %24 = load i32, i32* %8, align 4
  %25 = load i32, i32* @RT5677_AD_STO1_CLK_SEL_MASK, align 4
  %26 = and i32 %24, %25
  %27 = load i32, i32* @RT5677_AD_STO1_CLK_SEL_SFT, align 4
  %28 = lshr i32 %26, %27
  store i32 %28, i32* %8, align 4
  br label %85

29:                                               ; preds = %2
  %30 = load %struct.rt5677_priv*, %struct.rt5677_priv** %7, align 8
  %31 = getelementptr inbounds %struct.rt5677_priv, %struct.rt5677_priv* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* @RT5677_ASRC_5, align 4
  %34 = call i32 @regmap_read(i32 %32, i32 %33, i32* %8)
  %35 = load i32, i32* %8, align 4
  %36 = load i32, i32* @RT5677_AD_STO2_CLK_SEL_MASK, align 4
  %37 = and i32 %35, %36
  %38 = load i32, i32* @RT5677_AD_STO2_CLK_SEL_SFT, align 4
  %39 = lshr i32 %37, %38
  store i32 %39, i32* %8, align 4
  br label %85

40:                                               ; preds = %2
  %41 = load %struct.rt5677_priv*, %struct.rt5677_priv** %7, align 8
  %42 = getelementptr inbounds %struct.rt5677_priv, %struct.rt5677_priv* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* @RT5677_ASRC_5, align 4
  %45 = call i32 @regmap_read(i32 %43, i32 %44, i32* %8)
  %46 = load i32, i32* %8, align 4
  %47 = load i32, i32* @RT5677_AD_STO3_CLK_SEL_MASK, align 4
  %48 = and i32 %46, %47
  %49 = load i32, i32* @RT5677_AD_STO3_CLK_SEL_SFT, align 4
  %50 = lshr i32 %48, %49
  store i32 %50, i32* %8, align 4
  br label %85

51:                                               ; preds = %2
  %52 = load %struct.rt5677_priv*, %struct.rt5677_priv** %7, align 8
  %53 = getelementptr inbounds %struct.rt5677_priv, %struct.rt5677_priv* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = load i32, i32* @RT5677_ASRC_5, align 4
  %56 = call i32 @regmap_read(i32 %54, i32 %55, i32* %8)
  %57 = load i32, i32* %8, align 4
  %58 = load i32, i32* @RT5677_AD_STO4_CLK_SEL_MASK, align 4
  %59 = and i32 %57, %58
  %60 = load i32, i32* @RT5677_AD_STO4_CLK_SEL_SFT, align 4
  %61 = lshr i32 %59, %60
  store i32 %61, i32* %8, align 4
  br label %85

62:                                               ; preds = %2
  %63 = load %struct.rt5677_priv*, %struct.rt5677_priv** %7, align 8
  %64 = getelementptr inbounds %struct.rt5677_priv, %struct.rt5677_priv* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = load i32, i32* @RT5677_ASRC_6, align 4
  %67 = call i32 @regmap_read(i32 %65, i32 %66, i32* %8)
  %68 = load i32, i32* %8, align 4
  %69 = load i32, i32* @RT5677_AD_MONOL_CLK_SEL_MASK, align 4
  %70 = and i32 %68, %69
  %71 = load i32, i32* @RT5677_AD_MONOL_CLK_SEL_SFT, align 4
  %72 = lshr i32 %70, %71
  store i32 %72, i32* %8, align 4
  br label %85

73:                                               ; preds = %2
  %74 = load %struct.rt5677_priv*, %struct.rt5677_priv** %7, align 8
  %75 = getelementptr inbounds %struct.rt5677_priv, %struct.rt5677_priv* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = load i32, i32* @RT5677_ASRC_6, align 4
  %78 = call i32 @regmap_read(i32 %76, i32 %77, i32* %8)
  %79 = load i32, i32* %8, align 4
  %80 = load i32, i32* @RT5677_AD_MONOR_CLK_SEL_MASK, align 4
  %81 = and i32 %79, %80
  %82 = load i32, i32* @RT5677_AD_MONOR_CLK_SEL_SFT, align 4
  %83 = lshr i32 %81, %82
  store i32 %83, i32* %8, align 4
  br label %85

84:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %95

85:                                               ; preds = %73, %62, %51, %40, %29, %18
  %86 = load i32, i32* %8, align 4
  %87 = load i32, i32* @RT5677_CLK_SEL_I2S1_ASRC, align 4
  %88 = icmp uge i32 %86, %87
  br i1 %88, label %89, label %94

89:                                               ; preds = %85
  %90 = load i32, i32* %8, align 4
  %91 = load i32, i32* @RT5677_CLK_SEL_I2S6_ASRC, align 4
  %92 = icmp ule i32 %90, %91
  br i1 %92, label %93, label %94

93:                                               ; preds = %89
  store i32 1, i32* %3, align 4
  br label %95

94:                                               ; preds = %89, %85
  store i32 0, i32* %3, align 4
  br label %95

95:                                               ; preds = %94, %93, %84
  %96 = load i32, i32* %3, align 4
  ret i32 %96
}

declare dso_local %struct.snd_soc_component* @snd_soc_dapm_to_component(i32) #1

declare dso_local %struct.rt5677_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component*) #1

declare dso_local i32 @regmap_read(i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
