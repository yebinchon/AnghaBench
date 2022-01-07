; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_ad193x.c_ad193x_hw_params.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_ad193x.c_ad193x_hw_params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_substream = type { i32 }
%struct.snd_pcm_hw_params = type { i32 }
%struct.snd_soc_dai = type { %struct.snd_soc_component* }
%struct.snd_soc_component = type { i32 }
%struct.ad193x_priv = type { i32, i32 }

@AD193X_PLL_INPUT_256 = common dso_local global i32 0, align 4
@AD193X_PLL_INPUT_384 = common dso_local global i32 0, align 4
@AD193X_PLL_INPUT_512 = common dso_local global i32 0, align 4
@AD193X_PLL_INPUT_768 = common dso_local global i32 0, align 4
@AD193X_PLL_CLK_CTRL0 = common dso_local global i32 0, align 4
@AD193X_PLL_INPUT_MASK = common dso_local global i32 0, align 4
@AD193X_DAC_CTRL2 = common dso_local global i32 0, align 4
@AD193X_DAC_WORD_LEN_MASK = common dso_local global i32 0, align 4
@AD193X_DAC_WORD_LEN_SHFT = common dso_local global i32 0, align 4
@AD193X_ADC_CTRL1 = common dso_local global i32 0, align 4
@AD193X_ADC_WORD_LEN_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_substream*, %struct.snd_pcm_hw_params*, %struct.snd_soc_dai*)* @ad193x_hw_params to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ad193x_hw_params(%struct.snd_pcm_substream* %0, %struct.snd_pcm_hw_params* %1, %struct.snd_soc_dai* %2) #0 {
  %4 = alloca %struct.snd_pcm_substream*, align 8
  %5 = alloca %struct.snd_pcm_hw_params*, align 8
  %6 = alloca %struct.snd_soc_dai*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.snd_soc_component*, align 8
  %10 = alloca %struct.ad193x_priv*, align 8
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %4, align 8
  store %struct.snd_pcm_hw_params* %1, %struct.snd_pcm_hw_params** %5, align 8
  store %struct.snd_soc_dai* %2, %struct.snd_soc_dai** %6, align 8
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  %11 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %6, align 8
  %12 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %11, i32 0, i32 0
  %13 = load %struct.snd_soc_component*, %struct.snd_soc_component** %12, align 8
  store %struct.snd_soc_component* %13, %struct.snd_soc_component** %9, align 8
  %14 = load %struct.snd_soc_component*, %struct.snd_soc_component** %9, align 8
  %15 = call %struct.ad193x_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component* %14)
  store %struct.ad193x_priv* %15, %struct.ad193x_priv** %10, align 8
  %16 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %5, align 8
  %17 = call i32 @params_width(%struct.snd_pcm_hw_params* %16)
  switch i32 %17, label %21 [
    i32 16, label %18
    i32 20, label %19
    i32 24, label %20
    i32 32, label %20
  ]

18:                                               ; preds = %3
  store i32 3, i32* %7, align 4
  br label %21

19:                                               ; preds = %3
  store i32 1, i32* %7, align 4
  br label %21

20:                                               ; preds = %3, %3
  store i32 0, i32* %7, align 4
  br label %21

21:                                               ; preds = %3, %20, %19, %18
  %22 = load %struct.ad193x_priv*, %struct.ad193x_priv** %10, align 8
  %23 = getelementptr inbounds %struct.ad193x_priv, %struct.ad193x_priv* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  switch i32 %24, label %33 [
    i32 12288000, label %25
    i32 18432000, label %27
    i32 24576000, label %29
    i32 36864000, label %31
  ]

25:                                               ; preds = %21
  %26 = load i32, i32* @AD193X_PLL_INPUT_256, align 4
  store i32 %26, i32* %8, align 4
  br label %33

27:                                               ; preds = %21
  %28 = load i32, i32* @AD193X_PLL_INPUT_384, align 4
  store i32 %28, i32* %8, align 4
  br label %33

29:                                               ; preds = %21
  %30 = load i32, i32* @AD193X_PLL_INPUT_512, align 4
  store i32 %30, i32* %8, align 4
  br label %33

31:                                               ; preds = %21
  %32 = load i32, i32* @AD193X_PLL_INPUT_768, align 4
  store i32 %32, i32* %8, align 4
  br label %33

33:                                               ; preds = %21, %31, %29, %27, %25
  %34 = load %struct.ad193x_priv*, %struct.ad193x_priv** %10, align 8
  %35 = getelementptr inbounds %struct.ad193x_priv, %struct.ad193x_priv* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* @AD193X_PLL_CLK_CTRL0, align 4
  %38 = load i32, i32* @AD193X_PLL_INPUT_MASK, align 4
  %39 = load i32, i32* %8, align 4
  %40 = call i32 @regmap_update_bits(i32 %36, i32 %37, i32 %38, i32 %39)
  %41 = load %struct.ad193x_priv*, %struct.ad193x_priv** %10, align 8
  %42 = getelementptr inbounds %struct.ad193x_priv, %struct.ad193x_priv* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* @AD193X_DAC_CTRL2, align 4
  %45 = load i32, i32* @AD193X_DAC_WORD_LEN_MASK, align 4
  %46 = load i32, i32* %7, align 4
  %47 = load i32, i32* @AD193X_DAC_WORD_LEN_SHFT, align 4
  %48 = shl i32 %46, %47
  %49 = call i32 @regmap_update_bits(i32 %43, i32 %44, i32 %45, i32 %48)
  %50 = load %struct.ad193x_priv*, %struct.ad193x_priv** %10, align 8
  %51 = call i64 @ad193x_has_adc(%struct.ad193x_priv* %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %61

53:                                               ; preds = %33
  %54 = load %struct.ad193x_priv*, %struct.ad193x_priv** %10, align 8
  %55 = getelementptr inbounds %struct.ad193x_priv, %struct.ad193x_priv* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = load i32, i32* @AD193X_ADC_CTRL1, align 4
  %58 = load i32, i32* @AD193X_ADC_WORD_LEN_MASK, align 4
  %59 = load i32, i32* %7, align 4
  %60 = call i32 @regmap_update_bits(i32 %56, i32 %57, i32 %58, i32 %59)
  br label %61

61:                                               ; preds = %53, %33
  ret i32 0
}

declare dso_local %struct.ad193x_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component*) #1

declare dso_local i32 @params_width(%struct.snd_pcm_hw_params*) #1

declare dso_local i32 @regmap_update_bits(i32, i32, i32, i32) #1

declare dso_local i64 @ad193x_has_adc(%struct.ad193x_priv*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
