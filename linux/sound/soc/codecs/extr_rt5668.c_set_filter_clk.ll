; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_rt5668.c_set_filter_clk.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_rt5668.c_set_filter_clk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_dapm_widget = type { i64, i32 }
%struct.snd_kcontrol = type { i32 }
%struct.snd_soc_component = type { i32 }
%struct.rt5668_priv = type { i32* }

@EINVAL = common dso_local global i32 0, align 4
@set_filter_clk.div = internal constant [11 x i32] [i32 1, i32 2, i32 3, i32 4, i32 6, i32 8, i32 12, i32 16, i32 24, i32 32, i32 48], align 16
@RT5668_GPIO_CTRL_1 = common dso_local global i32 0, align 4
@RT5668_GP4_PIN_MASK = common dso_local global i32 0, align 4
@RT5668_PWR_ADC_S1F_BIT = common dso_local global i64 0, align 8
@RT5668_GP4_PIN_ADCDAT2 = common dso_local global i32 0, align 4
@RT5668_AIF2 = common dso_local global i64 0, align 8
@RT5668_AIF1 = common dso_local global i64 0, align 8
@RT5668_PLL_TRACK_3 = common dso_local global i32 0, align 4
@RT5668_PLL_TRACK_2 = common dso_local global i32 0, align 4
@RT5668_FILTER_CLK_SEL_MASK = common dso_local global i32 0, align 4
@RT5668_FILTER_CLK_SEL_SFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_soc_dapm_widget*, %struct.snd_kcontrol*, i32)* @set_filter_clk to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @set_filter_clk(%struct.snd_soc_dapm_widget* %0, %struct.snd_kcontrol* %1, i32 %2) #0 {
  %4 = alloca %struct.snd_soc_dapm_widget*, align 8
  %5 = alloca %struct.snd_kcontrol*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.snd_soc_component*, align 8
  %8 = alloca %struct.rt5668_priv*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.snd_soc_dapm_widget* %0, %struct.snd_soc_dapm_widget** %4, align 8
  store %struct.snd_kcontrol* %1, %struct.snd_kcontrol** %5, align 8
  store i32 %2, i32* %6, align 4
  %13 = load %struct.snd_soc_dapm_widget*, %struct.snd_soc_dapm_widget** %4, align 8
  %14 = getelementptr inbounds %struct.snd_soc_dapm_widget, %struct.snd_soc_dapm_widget* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 8
  %16 = call %struct.snd_soc_component* @snd_soc_dapm_to_component(i32 %15)
  store %struct.snd_soc_component* %16, %struct.snd_soc_component** %7, align 8
  %17 = load %struct.snd_soc_component*, %struct.snd_soc_component** %7, align 8
  %18 = call %struct.rt5668_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component* %17)
  store %struct.rt5668_priv* %18, %struct.rt5668_priv** %8, align 8
  %19 = load i32, i32* @EINVAL, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %12, align 4
  %21 = load %struct.snd_soc_component*, %struct.snd_soc_component** %7, align 8
  %22 = load i32, i32* @RT5668_GPIO_CTRL_1, align 4
  %23 = call i32 @snd_soc_component_read32(%struct.snd_soc_component* %21, i32 %22)
  %24 = load i32, i32* @RT5668_GP4_PIN_MASK, align 4
  %25 = and i32 %23, %24
  store i32 %25, i32* %10, align 4
  %26 = load %struct.snd_soc_dapm_widget*, %struct.snd_soc_dapm_widget** %4, align 8
  %27 = getelementptr inbounds %struct.snd_soc_dapm_widget, %struct.snd_soc_dapm_widget* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @RT5668_PWR_ADC_S1F_BIT, align 8
  %30 = icmp eq i64 %28, %29
  br i1 %30, label %31, label %43

31:                                               ; preds = %3
  %32 = load i32, i32* %10, align 4
  %33 = load i32, i32* @RT5668_GP4_PIN_ADCDAT2, align 4
  %34 = icmp eq i32 %32, %33
  br i1 %34, label %35, label %43

35:                                               ; preds = %31
  %36 = load %struct.rt5668_priv*, %struct.rt5668_priv** %8, align 8
  %37 = getelementptr inbounds %struct.rt5668_priv, %struct.rt5668_priv* %36, i32 0, i32 0
  %38 = load i32*, i32** %37, align 8
  %39 = load i64, i64* @RT5668_AIF2, align 8
  %40 = getelementptr inbounds i32, i32* %38, i64 %39
  %41 = load i32, i32* %40, align 4
  %42 = mul nsw i32 256, %41
  store i32 %42, i32* %9, align 4
  br label %51

43:                                               ; preds = %31, %3
  %44 = load %struct.rt5668_priv*, %struct.rt5668_priv** %8, align 8
  %45 = getelementptr inbounds %struct.rt5668_priv, %struct.rt5668_priv* %44, i32 0, i32 0
  %46 = load i32*, i32** %45, align 8
  %47 = load i64, i64* @RT5668_AIF1, align 8
  %48 = getelementptr inbounds i32, i32* %46, i64 %47
  %49 = load i32, i32* %48, align 4
  %50 = mul nsw i32 256, %49
  store i32 %50, i32* %9, align 4
  br label %51

51:                                               ; preds = %43, %35
  %52 = load %struct.rt5668_priv*, %struct.rt5668_priv** %8, align 8
  %53 = load i32, i32* %9, align 4
  %54 = call i32 @ARRAY_SIZE(i32* getelementptr inbounds ([11 x i32], [11 x i32]* @set_filter_clk.div, i64 0, i64 0))
  %55 = call i32 @rt5668_div_sel(%struct.rt5668_priv* %52, i32 %53, i32* getelementptr inbounds ([11 x i32], [11 x i32]* @set_filter_clk.div, i64 0, i64 0), i32 %54)
  store i32 %55, i32* %12, align 4
  %56 = load %struct.snd_soc_dapm_widget*, %struct.snd_soc_dapm_widget** %4, align 8
  %57 = getelementptr inbounds %struct.snd_soc_dapm_widget, %struct.snd_soc_dapm_widget* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = load i64, i64* @RT5668_PWR_ADC_S1F_BIT, align 8
  %60 = icmp eq i64 %58, %59
  br i1 %60, label %61, label %63

61:                                               ; preds = %51
  %62 = load i32, i32* @RT5668_PLL_TRACK_3, align 4
  store i32 %62, i32* %11, align 4
  br label %65

63:                                               ; preds = %51
  %64 = load i32, i32* @RT5668_PLL_TRACK_2, align 4
  store i32 %64, i32* %11, align 4
  br label %65

65:                                               ; preds = %63, %61
  %66 = load %struct.snd_soc_component*, %struct.snd_soc_component** %7, align 8
  %67 = load i32, i32* %11, align 4
  %68 = load i32, i32* @RT5668_FILTER_CLK_SEL_MASK, align 4
  %69 = load i32, i32* %12, align 4
  %70 = load i32, i32* @RT5668_FILTER_CLK_SEL_SFT, align 4
  %71 = shl i32 %69, %70
  %72 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %66, i32 %67, i32 %68, i32 %71)
  ret i32 0
}

declare dso_local %struct.snd_soc_component* @snd_soc_dapm_to_component(i32) #1

declare dso_local %struct.rt5668_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component*) #1

declare dso_local i32 @snd_soc_component_read32(%struct.snd_soc_component*, i32) #1

declare dso_local i32 @rt5668_div_sel(%struct.rt5668_priv*, i32, i32*, i32) #1

declare dso_local i32 @ARRAY_SIZE(i32*) #1

declare dso_local i32 @snd_soc_component_update_bits(%struct.snd_soc_component*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
