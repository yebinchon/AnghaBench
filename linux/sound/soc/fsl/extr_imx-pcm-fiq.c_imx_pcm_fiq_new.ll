; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/fsl/extr_imx-pcm-fiq.c_imx_pcm_fiq_new.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/fsl/extr_imx-pcm-fiq.c_imx_pcm_fiq_new.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_pcm_runtime = type { %struct.snd_pcm* }
%struct.snd_pcm = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.snd_pcm_substream* }
%struct.snd_pcm_substream = type { %struct.snd_dma_buffer }
%struct.snd_dma_buffer = type { i64 }

@SNDRV_PCM_STREAM_PLAYBACK = common dso_local global i64 0, align 8
@imx_ssi_fiq_tx_buffer = common dso_local global i64 0, align 8
@SNDRV_PCM_STREAM_CAPTURE = common dso_local global i64 0, align 8
@imx_ssi_fiq_rx_buffer = common dso_local global i64 0, align 8
@imx_ssi_fiq_start = common dso_local global i32 0, align 4
@imx_ssi_fiq_end = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_soc_pcm_runtime*)* @imx_pcm_fiq_new to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @imx_pcm_fiq_new(%struct.snd_soc_pcm_runtime* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.snd_soc_pcm_runtime*, align 8
  %4 = alloca %struct.snd_pcm*, align 8
  %5 = alloca %struct.snd_pcm_substream*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.snd_dma_buffer*, align 8
  %8 = alloca %struct.snd_dma_buffer*, align 8
  store %struct.snd_soc_pcm_runtime* %0, %struct.snd_soc_pcm_runtime** %3, align 8
  %9 = load %struct.snd_soc_pcm_runtime*, %struct.snd_soc_pcm_runtime** %3, align 8
  %10 = getelementptr inbounds %struct.snd_soc_pcm_runtime, %struct.snd_soc_pcm_runtime* %9, i32 0, i32 0
  %11 = load %struct.snd_pcm*, %struct.snd_pcm** %10, align 8
  store %struct.snd_pcm* %11, %struct.snd_pcm** %4, align 8
  %12 = load %struct.snd_soc_pcm_runtime*, %struct.snd_soc_pcm_runtime** %3, align 8
  %13 = call i32 @imx_pcm_new(%struct.snd_soc_pcm_runtime* %12)
  store i32 %13, i32* %6, align 4
  %14 = load i32, i32* %6, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %1
  %17 = load i32, i32* %6, align 4
  store i32 %17, i32* %2, align 4
  br label %52

18:                                               ; preds = %1
  %19 = load %struct.snd_pcm*, %struct.snd_pcm** %4, align 8
  %20 = getelementptr inbounds %struct.snd_pcm, %struct.snd_pcm* %19, i32 0, i32 0
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** %20, align 8
  %22 = load i64, i64* @SNDRV_PCM_STREAM_PLAYBACK, align 8
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i64 %22
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %24, align 8
  store %struct.snd_pcm_substream* %25, %struct.snd_pcm_substream** %5, align 8
  %26 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %5, align 8
  %27 = icmp ne %struct.snd_pcm_substream* %26, null
  br i1 %27, label %28, label %34

28:                                               ; preds = %18
  %29 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %5, align 8
  %30 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %29, i32 0, i32 0
  store %struct.snd_dma_buffer* %30, %struct.snd_dma_buffer** %7, align 8
  %31 = load %struct.snd_dma_buffer*, %struct.snd_dma_buffer** %7, align 8
  %32 = getelementptr inbounds %struct.snd_dma_buffer, %struct.snd_dma_buffer* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  store i64 %33, i64* @imx_ssi_fiq_tx_buffer, align 8
  br label %34

34:                                               ; preds = %28, %18
  %35 = load %struct.snd_pcm*, %struct.snd_pcm** %4, align 8
  %36 = getelementptr inbounds %struct.snd_pcm, %struct.snd_pcm* %35, i32 0, i32 0
  %37 = load %struct.TYPE_2__*, %struct.TYPE_2__** %36, align 8
  %38 = load i64, i64* @SNDRV_PCM_STREAM_CAPTURE, align 8
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i64 %38
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 0
  %41 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %40, align 8
  store %struct.snd_pcm_substream* %41, %struct.snd_pcm_substream** %5, align 8
  %42 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %5, align 8
  %43 = icmp ne %struct.snd_pcm_substream* %42, null
  br i1 %43, label %44, label %50

44:                                               ; preds = %34
  %45 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %5, align 8
  %46 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %45, i32 0, i32 0
  store %struct.snd_dma_buffer* %46, %struct.snd_dma_buffer** %8, align 8
  %47 = load %struct.snd_dma_buffer*, %struct.snd_dma_buffer** %8, align 8
  %48 = getelementptr inbounds %struct.snd_dma_buffer, %struct.snd_dma_buffer* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  store i64 %49, i64* @imx_ssi_fiq_rx_buffer, align 8
  br label %50

50:                                               ; preds = %44, %34
  %51 = call i32 @set_fiq_handler(i32* @imx_ssi_fiq_start, i32 trunc (i64 sdiv exact (i64 sub (i64 ptrtoint (i32* @imx_ssi_fiq_end to i64), i64 ptrtoint (i32* @imx_ssi_fiq_start to i64)), i64 4) to i32))
  store i32 0, i32* %2, align 4
  br label %52

52:                                               ; preds = %50, %16
  %53 = load i32, i32* %2, align 4
  ret i32 %53
}

declare dso_local i32 @imx_pcm_new(%struct.snd_soc_pcm_runtime*) #1

declare dso_local i32 @set_fiq_handler(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
