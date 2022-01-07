; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_jz4740.c_jz4740_codec_hw_params.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_jz4740.c_jz4740_codec_hw_params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_substream = type { i32 }
%struct.snd_pcm_hw_params = type { i32 }
%struct.snd_soc_dai = type { i32 }
%struct.jz4740_codec = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@JZ4740_CODEC_2_SAMPLE_RATE_OFFSET = common dso_local global i32 0, align 4
@JZ4740_REG_CODEC_2 = common dso_local global i32 0, align 4
@JZ4740_CODEC_2_SAMPLE_RATE_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_substream*, %struct.snd_pcm_hw_params*, %struct.snd_soc_dai*)* @jz4740_codec_hw_params to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @jz4740_codec_hw_params(%struct.snd_pcm_substream* %0, %struct.snd_pcm_hw_params* %1, %struct.snd_soc_dai* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.snd_pcm_substream*, align 8
  %6 = alloca %struct.snd_pcm_hw_params*, align 8
  %7 = alloca %struct.snd_soc_dai*, align 8
  %8 = alloca %struct.jz4740_codec*, align 8
  %9 = alloca i32, align 4
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %5, align 8
  store %struct.snd_pcm_hw_params* %1, %struct.snd_pcm_hw_params** %6, align 8
  store %struct.snd_soc_dai* %2, %struct.snd_soc_dai** %7, align 8
  %10 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %7, align 8
  %11 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call %struct.jz4740_codec* @snd_soc_component_get_drvdata(i32 %12)
  store %struct.jz4740_codec* %13, %struct.jz4740_codec** %8, align 8
  %14 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %6, align 8
  %15 = call i32 @params_rate(%struct.snd_pcm_hw_params* %14)
  switch i32 %15, label %25 [
    i32 8000, label %16
    i32 11025, label %17
    i32 12000, label %18
    i32 16000, label %19
    i32 22050, label %20
    i32 24000, label %21
    i32 32000, label %22
    i32 44100, label %23
    i32 48000, label %24
  ]

16:                                               ; preds = %3
  store i32 0, i32* %9, align 4
  br label %28

17:                                               ; preds = %3
  store i32 1, i32* %9, align 4
  br label %28

18:                                               ; preds = %3
  store i32 2, i32* %9, align 4
  br label %28

19:                                               ; preds = %3
  store i32 3, i32* %9, align 4
  br label %28

20:                                               ; preds = %3
  store i32 4, i32* %9, align 4
  br label %28

21:                                               ; preds = %3
  store i32 5, i32* %9, align 4
  br label %28

22:                                               ; preds = %3
  store i32 6, i32* %9, align 4
  br label %28

23:                                               ; preds = %3
  store i32 7, i32* %9, align 4
  br label %28

24:                                               ; preds = %3
  store i32 8, i32* %9, align 4
  br label %28

25:                                               ; preds = %3
  %26 = load i32, i32* @EINVAL, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %4, align 4
  br label %39

28:                                               ; preds = %24, %23, %22, %21, %20, %19, %18, %17, %16
  %29 = load i32, i32* @JZ4740_CODEC_2_SAMPLE_RATE_OFFSET, align 4
  %30 = load i32, i32* %9, align 4
  %31 = shl i32 %30, %29
  store i32 %31, i32* %9, align 4
  %32 = load %struct.jz4740_codec*, %struct.jz4740_codec** %8, align 8
  %33 = getelementptr inbounds %struct.jz4740_codec, %struct.jz4740_codec* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* @JZ4740_REG_CODEC_2, align 4
  %36 = load i32, i32* @JZ4740_CODEC_2_SAMPLE_RATE_MASK, align 4
  %37 = load i32, i32* %9, align 4
  %38 = call i32 @regmap_update_bits(i32 %34, i32 %35, i32 %36, i32 %37)
  store i32 0, i32* %4, align 4
  br label %39

39:                                               ; preds = %28, %25
  %40 = load i32, i32* %4, align 4
  ret i32 %40
}

declare dso_local %struct.jz4740_codec* @snd_soc_component_get_drvdata(i32) #1

declare dso_local i32 @params_rate(%struct.snd_pcm_hw_params*) #1

declare dso_local i32 @regmap_update_bits(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
