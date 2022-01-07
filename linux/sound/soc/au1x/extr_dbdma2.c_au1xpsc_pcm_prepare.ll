; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/au1x/extr_dbdma2.c_au1xpsc_pcm_prepare.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/au1x/extr_dbdma2.c_au1xpsc_pcm_prepare.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_substream = type { i64 }
%struct.au1xpsc_audio_dmadata = type { i32 }

@SNDRV_PCM_STREAM_CAPTURE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_substream*)* @au1xpsc_pcm_prepare to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @au1xpsc_pcm_prepare(%struct.snd_pcm_substream* %0) #0 {
  %2 = alloca %struct.snd_pcm_substream*, align 8
  %3 = alloca %struct.au1xpsc_audio_dmadata*, align 8
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %2, align 8
  %4 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %2, align 8
  %5 = call %struct.au1xpsc_audio_dmadata* @to_dmadata(%struct.snd_pcm_substream* %4)
  store %struct.au1xpsc_audio_dmadata* %5, %struct.au1xpsc_audio_dmadata** %3, align 8
  %6 = load %struct.au1xpsc_audio_dmadata*, %struct.au1xpsc_audio_dmadata** %3, align 8
  %7 = getelementptr inbounds %struct.au1xpsc_audio_dmadata, %struct.au1xpsc_audio_dmadata* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = call i32 @au1xxx_dbdma_reset(i32 %8)
  %10 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %2, align 8
  %11 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @SNDRV_PCM_STREAM_CAPTURE, align 8
  %14 = icmp eq i64 %12, %13
  br i1 %14, label %15, label %20

15:                                               ; preds = %1
  %16 = load %struct.au1xpsc_audio_dmadata*, %struct.au1xpsc_audio_dmadata** %3, align 8
  %17 = call i32 @au1x_pcm_queue_rx(%struct.au1xpsc_audio_dmadata* %16)
  %18 = load %struct.au1xpsc_audio_dmadata*, %struct.au1xpsc_audio_dmadata** %3, align 8
  %19 = call i32 @au1x_pcm_queue_rx(%struct.au1xpsc_audio_dmadata* %18)
  br label %25

20:                                               ; preds = %1
  %21 = load %struct.au1xpsc_audio_dmadata*, %struct.au1xpsc_audio_dmadata** %3, align 8
  %22 = call i32 @au1x_pcm_queue_tx(%struct.au1xpsc_audio_dmadata* %21)
  %23 = load %struct.au1xpsc_audio_dmadata*, %struct.au1xpsc_audio_dmadata** %3, align 8
  %24 = call i32 @au1x_pcm_queue_tx(%struct.au1xpsc_audio_dmadata* %23)
  br label %25

25:                                               ; preds = %20, %15
  ret i32 0
}

declare dso_local %struct.au1xpsc_audio_dmadata* @to_dmadata(%struct.snd_pcm_substream*) #1

declare dso_local i32 @au1xxx_dbdma_reset(i32) #1

declare dso_local i32 @au1x_pcm_queue_rx(%struct.au1xpsc_audio_dmadata*) #1

declare dso_local i32 @au1x_pcm_queue_tx(%struct.au1xpsc_audio_dmadata*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
