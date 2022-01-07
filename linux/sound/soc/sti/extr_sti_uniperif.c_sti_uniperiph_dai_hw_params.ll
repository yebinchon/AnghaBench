; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/sti/extr_sti_uniperif.c_sti_uniperiph_dai_hw_params.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/sti/extr_sti_uniperif.c_sti_uniperiph_dai_hw_params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_substream = type { i32 }
%struct.snd_pcm_hw_params = type { i32 }
%struct.snd_soc_dai = type { i32 }
%struct.sti_uniperiph_data = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.uniperif* }
%struct.uniperif = type { i64 }
%struct.snd_dmaengine_dai_dma_data = type { i32 }

@SND_ST_UNIPERIF_TYPE_TDM = common dso_local global i64 0, align 8
@UNIPERIF_FIFO_FRAMES = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sti_uniperiph_dai_hw_params(%struct.snd_pcm_substream* %0, %struct.snd_pcm_hw_params* %1, %struct.snd_soc_dai* %2) #0 {
  %4 = alloca %struct.snd_pcm_substream*, align 8
  %5 = alloca %struct.snd_pcm_hw_params*, align 8
  %6 = alloca %struct.snd_soc_dai*, align 8
  %7 = alloca %struct.sti_uniperiph_data*, align 8
  %8 = alloca %struct.uniperif*, align 8
  %9 = alloca %struct.snd_dmaengine_dai_dma_data*, align 8
  %10 = alloca i32, align 4
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %4, align 8
  store %struct.snd_pcm_hw_params* %1, %struct.snd_pcm_hw_params** %5, align 8
  store %struct.snd_soc_dai* %2, %struct.snd_soc_dai** %6, align 8
  %11 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %6, align 8
  %12 = call %struct.sti_uniperiph_data* @snd_soc_dai_get_drvdata(%struct.snd_soc_dai* %11)
  store %struct.sti_uniperiph_data* %12, %struct.sti_uniperiph_data** %7, align 8
  %13 = load %struct.sti_uniperiph_data*, %struct.sti_uniperiph_data** %7, align 8
  %14 = getelementptr inbounds %struct.sti_uniperiph_data, %struct.sti_uniperiph_data* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load %struct.uniperif*, %struct.uniperif** %15, align 8
  store %struct.uniperif* %16, %struct.uniperif** %8, align 8
  %17 = load %struct.uniperif*, %struct.uniperif** %8, align 8
  %18 = getelementptr inbounds %struct.uniperif, %struct.uniperif* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @SND_ST_UNIPERIF_TYPE_TDM, align 8
  %21 = icmp eq i64 %19, %20
  br i1 %21, label %22, label %26

22:                                               ; preds = %3
  %23 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %5, align 8
  %24 = call i32 @snd_soc_params_to_frame_size(%struct.snd_pcm_hw_params* %23)
  %25 = sdiv i32 %24, 32
  store i32 %25, i32* %10, align 4
  br label %31

26:                                               ; preds = %3
  %27 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %5, align 8
  %28 = call i32 @params_channels(%struct.snd_pcm_hw_params* %27)
  %29 = load i32, i32* @UNIPERIF_FIFO_FRAMES, align 4
  %30 = mul nsw i32 %28, %29
  store i32 %30, i32* %10, align 4
  br label %31

31:                                               ; preds = %26, %22
  %32 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %6, align 8
  %33 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %4, align 8
  %34 = call %struct.snd_dmaengine_dai_dma_data* @snd_soc_dai_get_dma_data(%struct.snd_soc_dai* %32, %struct.snd_pcm_substream* %33)
  store %struct.snd_dmaengine_dai_dma_data* %34, %struct.snd_dmaengine_dai_dma_data** %9, align 8
  %35 = load i32, i32* %10, align 4
  %36 = load %struct.snd_dmaengine_dai_dma_data*, %struct.snd_dmaengine_dai_dma_data** %9, align 8
  %37 = getelementptr inbounds %struct.snd_dmaengine_dai_dma_data, %struct.snd_dmaengine_dai_dma_data* %36, i32 0, i32 0
  store i32 %35, i32* %37, align 4
  ret i32 0
}

declare dso_local %struct.sti_uniperiph_data* @snd_soc_dai_get_drvdata(%struct.snd_soc_dai*) #1

declare dso_local i32 @snd_soc_params_to_frame_size(%struct.snd_pcm_hw_params*) #1

declare dso_local i32 @params_channels(%struct.snd_pcm_hw_params*) #1

declare dso_local %struct.snd_dmaengine_dai_dma_data* @snd_soc_dai_get_dma_data(%struct.snd_soc_dai*, %struct.snd_pcm_substream*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
