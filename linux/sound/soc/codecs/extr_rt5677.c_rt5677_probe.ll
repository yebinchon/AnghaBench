; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_rt5677.c_rt5677_probe.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_rt5677.c_rt5677_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_component = type { i32 }
%struct.snd_soc_dapm_context = type { i32 }
%struct.rt5677_priv = type { i32, i32, %struct.TYPE_2__, i32, %struct.snd_soc_component* }
%struct.TYPE_2__ = type { i64, i32* }

@RT5677_DMIC_CLK2 = common dso_local global i64 0, align 8
@rt5677_dmic2_clk_2 = common dso_local global i32 0, align 4
@rt5677_dmic2_clk_1 = common dso_local global i32 0, align 4
@SND_SOC_BIAS_OFF = common dso_local global i32 0, align 4
@RT5677_DIG_MISC = common dso_local global i32 0, align 4
@RT5677_IRQ_DEBOUNCE_SEL_MASK = common dso_local global i32 0, align 4
@RT5677_PWR_DSP2 = common dso_local global i32 0, align 4
@RT5677_PWR_SLIM_ISO = common dso_local global i32 0, align 4
@RT5677_PWR_CORE_ISO = common dso_local global i32 0, align 4
@RT5677_GPIO_NUM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_soc_component*)* @rt5677_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rt5677_probe(%struct.snd_soc_component* %0) #0 {
  %2 = alloca %struct.snd_soc_component*, align 8
  %3 = alloca %struct.snd_soc_dapm_context*, align 8
  %4 = alloca %struct.rt5677_priv*, align 8
  %5 = alloca i32, align 4
  store %struct.snd_soc_component* %0, %struct.snd_soc_component** %2, align 8
  %6 = load %struct.snd_soc_component*, %struct.snd_soc_component** %2, align 8
  %7 = call %struct.snd_soc_dapm_context* @snd_soc_component_get_dapm(%struct.snd_soc_component* %6)
  store %struct.snd_soc_dapm_context* %7, %struct.snd_soc_dapm_context** %3, align 8
  %8 = load %struct.snd_soc_component*, %struct.snd_soc_component** %2, align 8
  %9 = call %struct.rt5677_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component* %8)
  store %struct.rt5677_priv* %9, %struct.rt5677_priv** %4, align 8
  %10 = load %struct.snd_soc_component*, %struct.snd_soc_component** %2, align 8
  %11 = load %struct.rt5677_priv*, %struct.rt5677_priv** %4, align 8
  %12 = getelementptr inbounds %struct.rt5677_priv, %struct.rt5677_priv* %11, i32 0, i32 4
  store %struct.snd_soc_component* %10, %struct.snd_soc_component** %12, align 8
  %13 = load %struct.rt5677_priv*, %struct.rt5677_priv** %4, align 8
  %14 = getelementptr inbounds %struct.rt5677_priv, %struct.rt5677_priv* %13, i32 0, i32 2
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @RT5677_DMIC_CLK2, align 8
  %18 = icmp eq i64 %16, %17
  br i1 %18, label %19, label %25

19:                                               ; preds = %1
  %20 = load %struct.snd_soc_dapm_context*, %struct.snd_soc_dapm_context** %3, align 8
  %21 = load i32, i32* @rt5677_dmic2_clk_2, align 4
  %22 = load i32, i32* @rt5677_dmic2_clk_2, align 4
  %23 = call i32 @ARRAY_SIZE(i32 %22)
  %24 = call i32 @snd_soc_dapm_add_routes(%struct.snd_soc_dapm_context* %20, i32 %21, i32 %23)
  br label %31

25:                                               ; preds = %1
  %26 = load %struct.snd_soc_dapm_context*, %struct.snd_soc_dapm_context** %3, align 8
  %27 = load i32, i32* @rt5677_dmic2_clk_1, align 4
  %28 = load i32, i32* @rt5677_dmic2_clk_1, align 4
  %29 = call i32 @ARRAY_SIZE(i32 %28)
  %30 = call i32 @snd_soc_dapm_add_routes(%struct.snd_soc_dapm_context* %26, i32 %27, i32 %29)
  br label %31

31:                                               ; preds = %25, %19
  %32 = load %struct.snd_soc_component*, %struct.snd_soc_component** %2, align 8
  %33 = load i32, i32* @SND_SOC_BIAS_OFF, align 4
  %34 = call i32 @snd_soc_component_force_bias_level(%struct.snd_soc_component* %32, i32 %33)
  %35 = load %struct.rt5677_priv*, %struct.rt5677_priv** %4, align 8
  %36 = getelementptr inbounds %struct.rt5677_priv, %struct.rt5677_priv* %35, i32 0, i32 3
  %37 = load i32, i32* %36, align 8
  %38 = load i32, i32* @RT5677_DIG_MISC, align 4
  %39 = load i32, i32* @RT5677_IRQ_DEBOUNCE_SEL_MASK, align 4
  %40 = xor i32 %39, -1
  %41 = call i32 @regmap_update_bits(i32 %37, i32 %38, i32 %40, i32 32)
  %42 = load %struct.rt5677_priv*, %struct.rt5677_priv** %4, align 8
  %43 = getelementptr inbounds %struct.rt5677_priv, %struct.rt5677_priv* %42, i32 0, i32 3
  %44 = load i32, i32* %43, align 8
  %45 = load i32, i32* @RT5677_PWR_DSP2, align 4
  %46 = load i32, i32* @RT5677_PWR_SLIM_ISO, align 4
  %47 = load i32, i32* @RT5677_PWR_CORE_ISO, align 4
  %48 = or i32 %46, %47
  %49 = call i32 @regmap_write(i32 %44, i32 %45, i32 %48)
  store i32 0, i32* %5, align 4
  br label %50

50:                                               ; preds = %66, %31
  %51 = load i32, i32* %5, align 4
  %52 = load i32, i32* @RT5677_GPIO_NUM, align 4
  %53 = icmp slt i32 %51, %52
  br i1 %53, label %54, label %69

54:                                               ; preds = %50
  %55 = load %struct.rt5677_priv*, %struct.rt5677_priv** %4, align 8
  %56 = load i32, i32* %5, align 4
  %57 = load %struct.rt5677_priv*, %struct.rt5677_priv** %4, align 8
  %58 = getelementptr inbounds %struct.rt5677_priv, %struct.rt5677_priv* %57, i32 0, i32 2
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i32 0, i32 1
  %60 = load i32*, i32** %59, align 8
  %61 = load i32, i32* %5, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds i32, i32* %60, i64 %62
  %64 = load i32, i32* %63, align 4
  %65 = call i32 @rt5677_gpio_config(%struct.rt5677_priv* %55, i32 %56, i32 %64)
  br label %66

66:                                               ; preds = %54
  %67 = load i32, i32* %5, align 4
  %68 = add nsw i32 %67, 1
  store i32 %68, i32* %5, align 4
  br label %50

69:                                               ; preds = %50
  %70 = load %struct.rt5677_priv*, %struct.rt5677_priv** %4, align 8
  %71 = getelementptr inbounds %struct.rt5677_priv, %struct.rt5677_priv* %70, i32 0, i32 1
  %72 = call i32 @mutex_init(i32* %71)
  %73 = load %struct.rt5677_priv*, %struct.rt5677_priv** %4, align 8
  %74 = getelementptr inbounds %struct.rt5677_priv, %struct.rt5677_priv* %73, i32 0, i32 0
  %75 = call i32 @mutex_init(i32* %74)
  ret i32 0
}

declare dso_local %struct.snd_soc_dapm_context* @snd_soc_component_get_dapm(%struct.snd_soc_component*) #1

declare dso_local %struct.rt5677_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component*) #1

declare dso_local i32 @snd_soc_dapm_add_routes(%struct.snd_soc_dapm_context*, i32, i32) #1

declare dso_local i32 @ARRAY_SIZE(i32) #1

declare dso_local i32 @snd_soc_component_force_bias_level(%struct.snd_soc_component*, i32) #1

declare dso_local i32 @regmap_update_bits(i32, i32, i32, i32) #1

declare dso_local i32 @regmap_write(i32, i32, i32) #1

declare dso_local i32 @rt5677_gpio_config(%struct.rt5677_priv*, i32, i32) #1

declare dso_local i32 @mutex_init(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
