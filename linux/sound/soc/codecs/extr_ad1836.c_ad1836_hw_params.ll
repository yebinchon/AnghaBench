; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_ad1836.c_ad1836_hw_params.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_ad1836.c_ad1836_hw_params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_substream = type { i32 }
%struct.snd_pcm_hw_params = type { i32 }
%struct.snd_soc_dai = type { i32 }
%struct.ad1836_priv = type { i32 }

@AD1836_WORD_LEN_16 = common dso_local global i32 0, align 4
@AD1836_WORD_LEN_20 = common dso_local global i32 0, align 4
@AD1836_WORD_LEN_24 = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@AD1836_DAC_CTRL1 = common dso_local global i32 0, align 4
@AD1836_DAC_WORD_LEN_MASK = common dso_local global i32 0, align 4
@AD1836_DAC_WORD_LEN_OFFSET = common dso_local global i32 0, align 4
@AD1836_ADC_CTRL2 = common dso_local global i32 0, align 4
@AD1836_ADC_WORD_LEN_MASK = common dso_local global i32 0, align 4
@AD1836_ADC_WORD_OFFSET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_substream*, %struct.snd_pcm_hw_params*, %struct.snd_soc_dai*)* @ad1836_hw_params to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ad1836_hw_params(%struct.snd_pcm_substream* %0, %struct.snd_pcm_hw_params* %1, %struct.snd_soc_dai* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.snd_pcm_substream*, align 8
  %6 = alloca %struct.snd_pcm_hw_params*, align 8
  %7 = alloca %struct.snd_soc_dai*, align 8
  %8 = alloca %struct.ad1836_priv*, align 8
  %9 = alloca i32, align 4
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %5, align 8
  store %struct.snd_pcm_hw_params* %1, %struct.snd_pcm_hw_params** %6, align 8
  store %struct.snd_soc_dai* %2, %struct.snd_soc_dai** %7, align 8
  %10 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %7, align 8
  %11 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call %struct.ad1836_priv* @snd_soc_component_get_drvdata(i32 %12)
  store %struct.ad1836_priv* %13, %struct.ad1836_priv** %8, align 8
  store i32 0, i32* %9, align 4
  %14 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %6, align 8
  %15 = call i32 @params_width(%struct.snd_pcm_hw_params* %14)
  switch i32 %15, label %22 [
    i32 16, label %16
    i32 20, label %18
    i32 24, label %20
    i32 32, label %20
  ]

16:                                               ; preds = %3
  %17 = load i32, i32* @AD1836_WORD_LEN_16, align 4
  store i32 %17, i32* %9, align 4
  br label %25

18:                                               ; preds = %3
  %19 = load i32, i32* @AD1836_WORD_LEN_20, align 4
  store i32 %19, i32* %9, align 4
  br label %25

20:                                               ; preds = %3, %3
  %21 = load i32, i32* @AD1836_WORD_LEN_24, align 4
  store i32 %21, i32* %9, align 4
  br label %25

22:                                               ; preds = %3
  %23 = load i32, i32* @EINVAL, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %4, align 4
  br label %44

25:                                               ; preds = %20, %18, %16
  %26 = load %struct.ad1836_priv*, %struct.ad1836_priv** %8, align 8
  %27 = getelementptr inbounds %struct.ad1836_priv, %struct.ad1836_priv* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* @AD1836_DAC_CTRL1, align 4
  %30 = load i32, i32* @AD1836_DAC_WORD_LEN_MASK, align 4
  %31 = load i32, i32* %9, align 4
  %32 = load i32, i32* @AD1836_DAC_WORD_LEN_OFFSET, align 4
  %33 = shl i32 %31, %32
  %34 = call i32 @regmap_update_bits(i32 %28, i32 %29, i32 %30, i32 %33)
  %35 = load %struct.ad1836_priv*, %struct.ad1836_priv** %8, align 8
  %36 = getelementptr inbounds %struct.ad1836_priv, %struct.ad1836_priv* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* @AD1836_ADC_CTRL2, align 4
  %39 = load i32, i32* @AD1836_ADC_WORD_LEN_MASK, align 4
  %40 = load i32, i32* %9, align 4
  %41 = load i32, i32* @AD1836_ADC_WORD_OFFSET, align 4
  %42 = shl i32 %40, %41
  %43 = call i32 @regmap_update_bits(i32 %37, i32 %38, i32 %39, i32 %42)
  store i32 0, i32* %4, align 4
  br label %44

44:                                               ; preds = %25, %22
  %45 = load i32, i32* %4, align 4
  ret i32 %45
}

declare dso_local %struct.ad1836_priv* @snd_soc_component_get_drvdata(i32) #1

declare dso_local i32 @params_width(%struct.snd_pcm_hw_params*) #1

declare dso_local i32 @regmap_update_bits(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
