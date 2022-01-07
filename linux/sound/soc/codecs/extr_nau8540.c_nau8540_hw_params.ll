; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_nau8540.c_nau8540_hw_params.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_nau8540.c_nau8540_hw_params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.snd_pcm_substream = type { i32 }
%struct.snd_pcm_hw_params = type { i32 }
%struct.snd_soc_dai = type { %struct.snd_soc_component* }
%struct.snd_soc_component = type { i32 }
%struct.nau8540 = type { i32 }

@NAU8540_REG_ADC_SAMPLE_RATE = common dso_local global i32 0, align 4
@NAU8540_ADC_OSR_MASK = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@NAU8540_REG_CLOCK_SRC = common dso_local global i32 0, align 4
@NAU8540_CLK_ADC_SRC_MASK = common dso_local global i32 0, align 4
@osr_adc_sel = common dso_local global %struct.TYPE_2__* null, align 8
@NAU8540_CLK_ADC_SRC_SFT = common dso_local global i32 0, align 4
@NAU8540_I2S_DL_16 = common dso_local global i32 0, align 4
@NAU8540_I2S_DL_20 = common dso_local global i32 0, align 4
@NAU8540_I2S_DL_24 = common dso_local global i32 0, align 4
@NAU8540_I2S_DL_32 = common dso_local global i32 0, align 4
@NAU8540_REG_PCM_CTRL0 = common dso_local global i32 0, align 4
@NAU8540_I2S_DL_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_substream*, %struct.snd_pcm_hw_params*, %struct.snd_soc_dai*)* @nau8540_hw_params to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nau8540_hw_params(%struct.snd_pcm_substream* %0, %struct.snd_pcm_hw_params* %1, %struct.snd_soc_dai* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.snd_pcm_substream*, align 8
  %6 = alloca %struct.snd_pcm_hw_params*, align 8
  %7 = alloca %struct.snd_soc_dai*, align 8
  %8 = alloca %struct.snd_soc_component*, align 8
  %9 = alloca %struct.nau8540*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %5, align 8
  store %struct.snd_pcm_hw_params* %1, %struct.snd_pcm_hw_params** %6, align 8
  store %struct.snd_soc_dai* %2, %struct.snd_soc_dai** %7, align 8
  %12 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %7, align 8
  %13 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %12, i32 0, i32 0
  %14 = load %struct.snd_soc_component*, %struct.snd_soc_component** %13, align 8
  store %struct.snd_soc_component* %14, %struct.snd_soc_component** %8, align 8
  %15 = load %struct.snd_soc_component*, %struct.snd_soc_component** %8, align 8
  %16 = call %struct.nau8540* @snd_soc_component_get_drvdata(%struct.snd_soc_component* %15)
  store %struct.nau8540* %16, %struct.nau8540** %9, align 8
  store i32 0, i32* %10, align 4
  %17 = load %struct.nau8540*, %struct.nau8540** %9, align 8
  %18 = getelementptr inbounds %struct.nau8540, %struct.nau8540* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* @NAU8540_REG_ADC_SAMPLE_RATE, align 4
  %21 = call i32 @regmap_read(i32 %19, i32 %20, i32* %11)
  %22 = load i32, i32* @NAU8540_ADC_OSR_MASK, align 4
  %23 = load i32, i32* %11, align 4
  %24 = and i32 %23, %22
  store i32 %24, i32* %11, align 4
  %25 = load %struct.nau8540*, %struct.nau8540** %9, align 8
  %26 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %6, align 8
  %27 = call i32 @params_rate(%struct.snd_pcm_hw_params* %26)
  %28 = load i32, i32* %11, align 4
  %29 = call i64 @nau8540_clock_check(%struct.nau8540* %25, i32 %27, i32 %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %34

31:                                               ; preds = %3
  %32 = load i32, i32* @EINVAL, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %4, align 4
  br label %78

34:                                               ; preds = %3
  %35 = load %struct.nau8540*, %struct.nau8540** %9, align 8
  %36 = getelementptr inbounds %struct.nau8540, %struct.nau8540* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* @NAU8540_REG_CLOCK_SRC, align 4
  %39 = load i32, i32* @NAU8540_CLK_ADC_SRC_MASK, align 4
  %40 = load %struct.TYPE_2__*, %struct.TYPE_2__** @osr_adc_sel, align 8
  %41 = load i32, i32* %11, align 4
  %42 = zext i32 %41 to i64
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i64 %42
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load i32, i32* @NAU8540_CLK_ADC_SRC_SFT, align 4
  %47 = shl i32 %45, %46
  %48 = call i32 @regmap_update_bits(i32 %37, i32 %38, i32 %39, i32 %47)
  %49 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %6, align 8
  %50 = call i32 @params_width(%struct.snd_pcm_hw_params* %49)
  switch i32 %50, label %67 [
    i32 16, label %51
    i32 20, label %55
    i32 24, label %59
    i32 32, label %63
  ]

51:                                               ; preds = %34
  %52 = load i32, i32* @NAU8540_I2S_DL_16, align 4
  %53 = load i32, i32* %10, align 4
  %54 = or i32 %53, %52
  store i32 %54, i32* %10, align 4
  br label %70

55:                                               ; preds = %34
  %56 = load i32, i32* @NAU8540_I2S_DL_20, align 4
  %57 = load i32, i32* %10, align 4
  %58 = or i32 %57, %56
  store i32 %58, i32* %10, align 4
  br label %70

59:                                               ; preds = %34
  %60 = load i32, i32* @NAU8540_I2S_DL_24, align 4
  %61 = load i32, i32* %10, align 4
  %62 = or i32 %61, %60
  store i32 %62, i32* %10, align 4
  br label %70

63:                                               ; preds = %34
  %64 = load i32, i32* @NAU8540_I2S_DL_32, align 4
  %65 = load i32, i32* %10, align 4
  %66 = or i32 %65, %64
  store i32 %66, i32* %10, align 4
  br label %70

67:                                               ; preds = %34
  %68 = load i32, i32* @EINVAL, align 4
  %69 = sub nsw i32 0, %68
  store i32 %69, i32* %4, align 4
  br label %78

70:                                               ; preds = %63, %59, %55, %51
  %71 = load %struct.nau8540*, %struct.nau8540** %9, align 8
  %72 = getelementptr inbounds %struct.nau8540, %struct.nau8540* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = load i32, i32* @NAU8540_REG_PCM_CTRL0, align 4
  %75 = load i32, i32* @NAU8540_I2S_DL_MASK, align 4
  %76 = load i32, i32* %10, align 4
  %77 = call i32 @regmap_update_bits(i32 %73, i32 %74, i32 %75, i32 %76)
  store i32 0, i32* %4, align 4
  br label %78

78:                                               ; preds = %70, %67, %31
  %79 = load i32, i32* %4, align 4
  ret i32 %79
}

declare dso_local %struct.nau8540* @snd_soc_component_get_drvdata(%struct.snd_soc_component*) #1

declare dso_local i32 @regmap_read(i32, i32, i32*) #1

declare dso_local i64 @nau8540_clock_check(%struct.nau8540*, i32, i32) #1

declare dso_local i32 @params_rate(%struct.snd_pcm_hw_params*) #1

declare dso_local i32 @regmap_update_bits(i32, i32, i32, i32) #1

declare dso_local i32 @params_width(%struct.snd_pcm_hw_params*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
