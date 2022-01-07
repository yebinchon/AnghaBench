; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/ux500/extr_ux500_pcm.c_ux500_pcm_request_chan.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/ux500/extr_ux500_pcm.c_ux500_pcm_request_chan.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dma_chan = type { i32 }
%struct.snd_soc_pcm_runtime = type { %struct.snd_soc_dai* }
%struct.snd_soc_dai = type { i32 }
%struct.snd_pcm_substream = type { i64 }
%struct.stedma40_chan_cfg = type { %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i8* }
%struct.TYPE_3__ = type { i8* }
%struct.ux500_msp_dma_params = type { i32, %struct.stedma40_chan_cfg* }

@DMA_SLAVE_BUSWIDTH_2_BYTES = common dso_local global i8* null, align 8
@DMA_SLAVE_BUSWIDTH_4_BYTES = common dso_local global i8* null, align 8
@DMA_SLAVE_BUSWIDTH_1_BYTE = common dso_local global i8* null, align 8
@SNDRV_PCM_STREAM_PLAYBACK = common dso_local global i64 0, align 8
@stedma40_filter = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.dma_chan* (%struct.snd_soc_pcm_runtime*, %struct.snd_pcm_substream*)* @ux500_pcm_request_chan to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.dma_chan* @ux500_pcm_request_chan(%struct.snd_soc_pcm_runtime* %0, %struct.snd_pcm_substream* %1) #0 {
  %3 = alloca %struct.snd_soc_pcm_runtime*, align 8
  %4 = alloca %struct.snd_pcm_substream*, align 8
  %5 = alloca %struct.snd_soc_dai*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.stedma40_chan_cfg*, align 8
  %9 = alloca %struct.ux500_msp_dma_params*, align 8
  store %struct.snd_soc_pcm_runtime* %0, %struct.snd_soc_pcm_runtime** %3, align 8
  store %struct.snd_pcm_substream* %1, %struct.snd_pcm_substream** %4, align 8
  %10 = load %struct.snd_soc_pcm_runtime*, %struct.snd_soc_pcm_runtime** %3, align 8
  %11 = getelementptr inbounds %struct.snd_soc_pcm_runtime, %struct.snd_soc_pcm_runtime* %10, i32 0, i32 0
  %12 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %11, align 8
  store %struct.snd_soc_dai* %12, %struct.snd_soc_dai** %5, align 8
  %13 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %5, align 8
  %14 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %4, align 8
  %15 = call %struct.ux500_msp_dma_params* @snd_soc_dai_get_dma_data(%struct.snd_soc_dai* %13, %struct.snd_pcm_substream* %14)
  store %struct.ux500_msp_dma_params* %15, %struct.ux500_msp_dma_params** %9, align 8
  %16 = load %struct.ux500_msp_dma_params*, %struct.ux500_msp_dma_params** %9, align 8
  %17 = getelementptr inbounds %struct.ux500_msp_dma_params, %struct.ux500_msp_dma_params* %16, i32 0, i32 1
  %18 = load %struct.stedma40_chan_cfg*, %struct.stedma40_chan_cfg** %17, align 8
  store %struct.stedma40_chan_cfg* %18, %struct.stedma40_chan_cfg** %8, align 8
  %19 = load i8*, i8** @DMA_SLAVE_BUSWIDTH_2_BYTES, align 8
  store i8* %19, i8** %7, align 8
  %20 = load %struct.ux500_msp_dma_params*, %struct.ux500_msp_dma_params** %9, align 8
  %21 = getelementptr inbounds %struct.ux500_msp_dma_params, %struct.ux500_msp_dma_params* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  switch i32 %22, label %29 [
    i32 32, label %23
    i32 16, label %25
    i32 8, label %27
  ]

23:                                               ; preds = %2
  %24 = load i8*, i8** @DMA_SLAVE_BUSWIDTH_4_BYTES, align 8
  store i8* %24, i8** %6, align 8
  br label %31

25:                                               ; preds = %2
  %26 = load i8*, i8** @DMA_SLAVE_BUSWIDTH_2_BYTES, align 8
  store i8* %26, i8** %6, align 8
  br label %31

27:                                               ; preds = %2
  %28 = load i8*, i8** @DMA_SLAVE_BUSWIDTH_1_BYTE, align 8
  store i8* %28, i8** %6, align 8
  br label %31

29:                                               ; preds = %2
  %30 = load i8*, i8** @DMA_SLAVE_BUSWIDTH_4_BYTES, align 8
  store i8* %30, i8** %6, align 8
  br label %31

31:                                               ; preds = %29, %27, %25, %23
  %32 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %4, align 8
  %33 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* @SNDRV_PCM_STREAM_PLAYBACK, align 8
  %36 = icmp eq i64 %34, %35
  br i1 %36, label %37, label %46

37:                                               ; preds = %31
  %38 = load i8*, i8** %7, align 8
  %39 = load %struct.stedma40_chan_cfg*, %struct.stedma40_chan_cfg** %8, align 8
  %40 = getelementptr inbounds %struct.stedma40_chan_cfg, %struct.stedma40_chan_cfg* %39, i32 0, i32 1
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 0
  store i8* %38, i8** %41, align 8
  %42 = load i8*, i8** %6, align 8
  %43 = load %struct.stedma40_chan_cfg*, %struct.stedma40_chan_cfg** %8, align 8
  %44 = getelementptr inbounds %struct.stedma40_chan_cfg, %struct.stedma40_chan_cfg* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 0
  store i8* %42, i8** %45, align 8
  br label %55

46:                                               ; preds = %31
  %47 = load i8*, i8** %6, align 8
  %48 = load %struct.stedma40_chan_cfg*, %struct.stedma40_chan_cfg** %8, align 8
  %49 = getelementptr inbounds %struct.stedma40_chan_cfg, %struct.stedma40_chan_cfg* %48, i32 0, i32 1
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %49, i32 0, i32 0
  store i8* %47, i8** %50, align 8
  %51 = load i8*, i8** %7, align 8
  %52 = load %struct.stedma40_chan_cfg*, %struct.stedma40_chan_cfg** %8, align 8
  %53 = getelementptr inbounds %struct.stedma40_chan_cfg, %struct.stedma40_chan_cfg* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 0
  store i8* %51, i8** %54, align 8
  br label %55

55:                                               ; preds = %46, %37
  %56 = load i32, i32* @stedma40_filter, align 4
  %57 = load %struct.stedma40_chan_cfg*, %struct.stedma40_chan_cfg** %8, align 8
  %58 = call %struct.dma_chan* @snd_dmaengine_pcm_request_channel(i32 %56, %struct.stedma40_chan_cfg* %57)
  ret %struct.dma_chan* %58
}

declare dso_local %struct.ux500_msp_dma_params* @snd_soc_dai_get_dma_data(%struct.snd_soc_dai*, %struct.snd_pcm_substream*) #1

declare dso_local %struct.dma_chan* @snd_dmaengine_pcm_request_channel(i32, %struct.stedma40_chan_cfg*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
