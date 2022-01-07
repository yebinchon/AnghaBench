; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_jz4725b.c_jz4725b_codec_hw_params.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_jz4725b.c_jz4725b_codec_hw_params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_substream = type { i64 }
%struct.snd_pcm_hw_params = type { i32 }
%struct.snd_soc_dai = type { i32 }
%struct.jz_icdc = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@jz4725b_codec_sample_rates = common dso_local global i64* null, align 8
@SNDRV_PCM_STREAM_PLAYBACK = common dso_local global i64 0, align 8
@JZ4725B_CODEC_REG_CR2 = common dso_local global i32 0, align 4
@REG_CR2_DAC_ADWL_MASK = common dso_local global i32 0, align 4
@REG_CR2_DAC_ADWL_OFFSET = common dso_local global i32 0, align 4
@JZ4725B_CODEC_REG_CCR2 = common dso_local global i32 0, align 4
@REG_CCR2_DFREQ_MASK = common dso_local global i32 0, align 4
@REG_CCR2_DFREQ_OFFSET = common dso_local global i32 0, align 4
@REG_CR2_ADC_ADWL_MASK = common dso_local global i32 0, align 4
@REG_CR2_ADC_ADWL_OFFSET = common dso_local global i32 0, align 4
@REG_CCR2_AFREQ_MASK = common dso_local global i32 0, align 4
@REG_CCR2_AFREQ_OFFSET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_substream*, %struct.snd_pcm_hw_params*, %struct.snd_soc_dai*)* @jz4725b_codec_hw_params to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @jz4725b_codec_hw_params(%struct.snd_pcm_substream* %0, %struct.snd_pcm_hw_params* %1, %struct.snd_soc_dai* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.snd_pcm_substream*, align 8
  %6 = alloca %struct.snd_pcm_hw_params*, align 8
  %7 = alloca %struct.snd_soc_dai*, align 8
  %8 = alloca %struct.jz_icdc*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %5, align 8
  store %struct.snd_pcm_hw_params* %1, %struct.snd_pcm_hw_params** %6, align 8
  store %struct.snd_soc_dai* %2, %struct.snd_soc_dai** %7, align 8
  %11 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %7, align 8
  %12 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call %struct.jz_icdc* @snd_soc_component_get_drvdata(i32 %13)
  store %struct.jz_icdc* %14, %struct.jz_icdc** %8, align 8
  %15 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %6, align 8
  %16 = call i32 @params_format(%struct.snd_pcm_hw_params* %15)
  switch i32 %16, label %21 [
    i32 131, label %17
    i32 130, label %18
    i32 129, label %19
    i32 128, label %20
  ]

17:                                               ; preds = %3
  store i32 0, i32* %10, align 4
  br label %24

18:                                               ; preds = %3
  store i32 1, i32* %10, align 4
  br label %24

19:                                               ; preds = %3
  store i32 2, i32* %10, align 4
  br label %24

20:                                               ; preds = %3
  store i32 3, i32* %10, align 4
  br label %24

21:                                               ; preds = %3
  %22 = load i32, i32* @EINVAL, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %4, align 4
  br label %97

24:                                               ; preds = %20, %19, %18, %17
  store i32 0, i32* %9, align 4
  br label %25

25:                                               ; preds = %41, %24
  %26 = load i32, i32* %9, align 4
  %27 = load i64*, i64** @jz4725b_codec_sample_rates, align 8
  %28 = call i32 @ARRAY_SIZE(i64* %27)
  %29 = icmp ult i32 %26, %28
  br i1 %29, label %30, label %44

30:                                               ; preds = %25
  %31 = load i64*, i64** @jz4725b_codec_sample_rates, align 8
  %32 = load i32, i32* %9, align 4
  %33 = zext i32 %32 to i64
  %34 = getelementptr inbounds i64, i64* %31, i64 %33
  %35 = load i64, i64* %34, align 8
  %36 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %6, align 8
  %37 = call i64 @params_rate(%struct.snd_pcm_hw_params* %36)
  %38 = icmp eq i64 %35, %37
  br i1 %38, label %39, label %40

39:                                               ; preds = %30
  br label %44

40:                                               ; preds = %30
  br label %41

41:                                               ; preds = %40
  %42 = load i32, i32* %9, align 4
  %43 = add i32 %42, 1
  store i32 %43, i32* %9, align 4
  br label %25

44:                                               ; preds = %39, %25
  %45 = load i32, i32* %9, align 4
  %46 = load i64*, i64** @jz4725b_codec_sample_rates, align 8
  %47 = call i32 @ARRAY_SIZE(i64* %46)
  %48 = icmp eq i32 %45, %47
  br i1 %48, label %49, label %52

49:                                               ; preds = %44
  %50 = load i32, i32* @EINVAL, align 4
  %51 = sub nsw i32 0, %50
  store i32 %51, i32* %4, align 4
  br label %97

52:                                               ; preds = %44
  %53 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %5, align 8
  %54 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = load i64, i64* @SNDRV_PCM_STREAM_PLAYBACK, align 8
  %57 = icmp eq i64 %55, %56
  br i1 %57, label %58, label %77

58:                                               ; preds = %52
  %59 = load %struct.jz_icdc*, %struct.jz_icdc** %8, align 8
  %60 = getelementptr inbounds %struct.jz_icdc, %struct.jz_icdc* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = load i32, i32* @JZ4725B_CODEC_REG_CR2, align 4
  %63 = load i32, i32* @REG_CR2_DAC_ADWL_MASK, align 4
  %64 = load i32, i32* %10, align 4
  %65 = load i32, i32* @REG_CR2_DAC_ADWL_OFFSET, align 4
  %66 = shl i32 %64, %65
  %67 = call i32 @regmap_update_bits(i32 %61, i32 %62, i32 %63, i32 %66)
  %68 = load %struct.jz_icdc*, %struct.jz_icdc** %8, align 8
  %69 = getelementptr inbounds %struct.jz_icdc, %struct.jz_icdc* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = load i32, i32* @JZ4725B_CODEC_REG_CCR2, align 4
  %72 = load i32, i32* @REG_CCR2_DFREQ_MASK, align 4
  %73 = load i32, i32* %9, align 4
  %74 = load i32, i32* @REG_CCR2_DFREQ_OFFSET, align 4
  %75 = shl i32 %73, %74
  %76 = call i32 @regmap_update_bits(i32 %70, i32 %71, i32 %72, i32 %75)
  br label %96

77:                                               ; preds = %52
  %78 = load %struct.jz_icdc*, %struct.jz_icdc** %8, align 8
  %79 = getelementptr inbounds %struct.jz_icdc, %struct.jz_icdc* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = load i32, i32* @JZ4725B_CODEC_REG_CR2, align 4
  %82 = load i32, i32* @REG_CR2_ADC_ADWL_MASK, align 4
  %83 = load i32, i32* %10, align 4
  %84 = load i32, i32* @REG_CR2_ADC_ADWL_OFFSET, align 4
  %85 = shl i32 %83, %84
  %86 = call i32 @regmap_update_bits(i32 %80, i32 %81, i32 %82, i32 %85)
  %87 = load %struct.jz_icdc*, %struct.jz_icdc** %8, align 8
  %88 = getelementptr inbounds %struct.jz_icdc, %struct.jz_icdc* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 4
  %90 = load i32, i32* @JZ4725B_CODEC_REG_CCR2, align 4
  %91 = load i32, i32* @REG_CCR2_AFREQ_MASK, align 4
  %92 = load i32, i32* %9, align 4
  %93 = load i32, i32* @REG_CCR2_AFREQ_OFFSET, align 4
  %94 = shl i32 %92, %93
  %95 = call i32 @regmap_update_bits(i32 %89, i32 %90, i32 %91, i32 %94)
  br label %96

96:                                               ; preds = %77, %58
  store i32 0, i32* %4, align 4
  br label %97

97:                                               ; preds = %96, %49, %21
  %98 = load i32, i32* %4, align 4
  ret i32 %98
}

declare dso_local %struct.jz_icdc* @snd_soc_component_get_drvdata(i32) #1

declare dso_local i32 @params_format(%struct.snd_pcm_hw_params*) #1

declare dso_local i32 @ARRAY_SIZE(i64*) #1

declare dso_local i64 @params_rate(%struct.snd_pcm_hw_params*) #1

declare dso_local i32 @regmap_update_bits(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
