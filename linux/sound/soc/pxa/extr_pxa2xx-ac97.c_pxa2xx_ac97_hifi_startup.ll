; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/pxa/extr_pxa2xx-ac97.c_pxa2xx_ac97_hifi_startup.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/pxa/extr_pxa2xx-ac97.c_pxa2xx_ac97_hifi_startup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_dmaengine_dai_dma_data = type { i32 }
%struct.snd_pcm_substream = type { i64 }
%struct.snd_soc_dai = type { i32 }

@SNDRV_PCM_STREAM_PLAYBACK = common dso_local global i64 0, align 8
@pxa2xx_ac97_pcm_stereo_out = common dso_local global %struct.snd_dmaengine_dai_dma_data zeroinitializer, align 4
@pxa2xx_ac97_pcm_stereo_in = common dso_local global %struct.snd_dmaengine_dai_dma_data zeroinitializer, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_substream*, %struct.snd_soc_dai*)* @pxa2xx_ac97_hifi_startup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pxa2xx_ac97_hifi_startup(%struct.snd_pcm_substream* %0, %struct.snd_soc_dai* %1) #0 {
  %3 = alloca %struct.snd_pcm_substream*, align 8
  %4 = alloca %struct.snd_soc_dai*, align 8
  %5 = alloca %struct.snd_dmaengine_dai_dma_data*, align 8
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %3, align 8
  store %struct.snd_soc_dai* %1, %struct.snd_soc_dai** %4, align 8
  %6 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %7 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = load i64, i64* @SNDRV_PCM_STREAM_PLAYBACK, align 8
  %10 = icmp eq i64 %8, %9
  br i1 %10, label %11, label %12

11:                                               ; preds = %2
  store %struct.snd_dmaengine_dai_dma_data* @pxa2xx_ac97_pcm_stereo_out, %struct.snd_dmaengine_dai_dma_data** %5, align 8
  br label %13

12:                                               ; preds = %2
  store %struct.snd_dmaengine_dai_dma_data* @pxa2xx_ac97_pcm_stereo_in, %struct.snd_dmaengine_dai_dma_data** %5, align 8
  br label %13

13:                                               ; preds = %12, %11
  %14 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %4, align 8
  %15 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %16 = load %struct.snd_dmaengine_dai_dma_data*, %struct.snd_dmaengine_dai_dma_data** %5, align 8
  %17 = call i32 @snd_soc_dai_set_dma_data(%struct.snd_soc_dai* %14, %struct.snd_pcm_substream* %15, %struct.snd_dmaengine_dai_dma_data* %16)
  ret i32 0
}

declare dso_local i32 @snd_soc_dai_set_dma_data(%struct.snd_soc_dai*, %struct.snd_pcm_substream*, %struct.snd_dmaengine_dai_dma_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
