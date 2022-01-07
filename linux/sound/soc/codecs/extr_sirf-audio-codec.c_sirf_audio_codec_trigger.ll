; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_sirf-audio-codec.c_sirf_audio_codec_trigger.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_sirf-audio-codec.c_sirf_audio_codec_trigger.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_substream = type { i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.snd_soc_dai = type { %struct.snd_soc_component* }
%struct.snd_soc_component = type { i32 }
%struct.sirf_audio_codec = type { i32 }

@SNDRV_PCM_STREAM_PLAYBACK = common dso_local global i64 0, align 8
@AUDIO_IC_CODEC_CTRL0 = common dso_local global i32 0, align 4
@IC_HSLEN = common dso_local global i32 0, align 4
@IC_HSREN = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_substream*, i32, %struct.snd_soc_dai*)* @sirf_audio_codec_trigger to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sirf_audio_codec_trigger(%struct.snd_pcm_substream* %0, i32 %1, %struct.snd_soc_dai* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.snd_pcm_substream*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.snd_soc_dai*, align 8
  %8 = alloca %struct.snd_soc_component*, align 8
  %9 = alloca %struct.sirf_audio_codec*, align 8
  %10 = alloca i32, align 4
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.snd_soc_dai* %2, %struct.snd_soc_dai** %7, align 8
  %11 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %7, align 8
  %12 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %11, i32 0, i32 0
  %13 = load %struct.snd_soc_component*, %struct.snd_soc_component** %12, align 8
  store %struct.snd_soc_component* %13, %struct.snd_soc_component** %8, align 8
  %14 = load %struct.snd_soc_component*, %struct.snd_soc_component** %8, align 8
  %15 = call %struct.sirf_audio_codec* @snd_soc_component_get_drvdata(%struct.snd_soc_component* %14)
  store %struct.sirf_audio_codec* %15, %struct.sirf_audio_codec** %9, align 8
  %16 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %5, align 8
  %17 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @SNDRV_PCM_STREAM_PLAYBACK, align 8
  %20 = icmp eq i64 %18, %19
  %21 = zext i1 %20 to i32
  store i32 %21, i32* %10, align 4
  %22 = load i32, i32* %6, align 4
  switch i32 %22, label %63 [
    i32 129, label %23
    i32 128, label %23
    i32 133, label %23
    i32 130, label %39
    i32 131, label %39
    i32 132, label %39
  ]

23:                                               ; preds = %3, %3, %3
  %24 = load i32, i32* %10, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %35

26:                                               ; preds = %23
  %27 = load %struct.snd_soc_component*, %struct.snd_soc_component** %8, align 8
  %28 = load i32, i32* @AUDIO_IC_CODEC_CTRL0, align 4
  %29 = load i32, i32* @IC_HSLEN, align 4
  %30 = load i32, i32* @IC_HSREN, align 4
  %31 = or i32 %29, %30
  %32 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %27, i32 %28, i32 %31, i32 0)
  %33 = load %struct.sirf_audio_codec*, %struct.sirf_audio_codec** %9, align 8
  %34 = call i32 @sirf_audio_codec_tx_disable(%struct.sirf_audio_codec* %33)
  br label %38

35:                                               ; preds = %23
  %36 = load %struct.sirf_audio_codec*, %struct.sirf_audio_codec** %9, align 8
  %37 = call i32 @sirf_audio_codec_rx_disable(%struct.sirf_audio_codec* %36)
  br label %38

38:                                               ; preds = %35, %26
  br label %66

39:                                               ; preds = %3, %3, %3
  %40 = load i32, i32* %10, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %54

42:                                               ; preds = %39
  %43 = load %struct.sirf_audio_codec*, %struct.sirf_audio_codec** %9, align 8
  %44 = call i32 @sirf_audio_codec_tx_enable(%struct.sirf_audio_codec* %43)
  %45 = load %struct.snd_soc_component*, %struct.snd_soc_component** %8, align 8
  %46 = load i32, i32* @AUDIO_IC_CODEC_CTRL0, align 4
  %47 = load i32, i32* @IC_HSLEN, align 4
  %48 = load i32, i32* @IC_HSREN, align 4
  %49 = or i32 %47, %48
  %50 = load i32, i32* @IC_HSLEN, align 4
  %51 = load i32, i32* @IC_HSREN, align 4
  %52 = or i32 %50, %51
  %53 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %45, i32 %46, i32 %49, i32 %52)
  br label %62

54:                                               ; preds = %39
  %55 = load %struct.sirf_audio_codec*, %struct.sirf_audio_codec** %9, align 8
  %56 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %5, align 8
  %57 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %56, i32 0, i32 1
  %58 = load %struct.TYPE_2__*, %struct.TYPE_2__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = call i32 @sirf_audio_codec_rx_enable(%struct.sirf_audio_codec* %55, i32 %60)
  br label %62

62:                                               ; preds = %54, %42
  br label %66

63:                                               ; preds = %3
  %64 = load i32, i32* @EINVAL, align 4
  %65 = sub nsw i32 0, %64
  store i32 %65, i32* %4, align 4
  br label %67

66:                                               ; preds = %62, %38
  store i32 0, i32* %4, align 4
  br label %67

67:                                               ; preds = %66, %63
  %68 = load i32, i32* %4, align 4
  ret i32 %68
}

declare dso_local %struct.sirf_audio_codec* @snd_soc_component_get_drvdata(%struct.snd_soc_component*) #1

declare dso_local i32 @snd_soc_component_update_bits(%struct.snd_soc_component*, i32, i32, i32) #1

declare dso_local i32 @sirf_audio_codec_tx_disable(%struct.sirf_audio_codec*) #1

declare dso_local i32 @sirf_audio_codec_rx_disable(%struct.sirf_audio_codec*) #1

declare dso_local i32 @sirf_audio_codec_tx_enable(%struct.sirf_audio_codec*) #1

declare dso_local i32 @sirf_audio_codec_rx_enable(%struct.sirf_audio_codec*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
