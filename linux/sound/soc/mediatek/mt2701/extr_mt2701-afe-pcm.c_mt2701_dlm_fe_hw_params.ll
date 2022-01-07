; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/mediatek/mt2701/extr_mt2701-afe-pcm.c_mt2701_dlm_fe_hw_params.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/mediatek/mt2701/extr_mt2701-afe-pcm.c_mt2701_dlm_fe_hw_params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_substream = type { i32 }
%struct.snd_pcm_hw_params = type { i32 }
%struct.snd_soc_dai = type { i32 }
%struct.mtk_base_afe = type { i32 }

@AFE_MEMIF_PBUF_SIZE = common dso_local global i32 0, align 4
@AFE_MEMIF_PBUF_SIZE_DLM_MASK = common dso_local global i32 0, align 4
@AFE_MEMIF_PBUF_SIZE_FULL_INTERLEAVE = common dso_local global i32 0, align 4
@AFE_MEMIF_PBUF_SIZE_DLM_BYTE_MASK = common dso_local global i32 0, align 4
@AFE_MEMIF_PBUF_SIZE_DLM_32BYTES = common dso_local global i32 0, align 4
@AFE_MEMIF_PBUF_SIZE_DLM_CH_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_substream*, %struct.snd_pcm_hw_params*, %struct.snd_soc_dai*)* @mt2701_dlm_fe_hw_params to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mt2701_dlm_fe_hw_params(%struct.snd_pcm_substream* %0, %struct.snd_pcm_hw_params* %1, %struct.snd_soc_dai* %2) #0 {
  %4 = alloca %struct.snd_pcm_substream*, align 8
  %5 = alloca %struct.snd_pcm_hw_params*, align 8
  %6 = alloca %struct.snd_soc_dai*, align 8
  %7 = alloca %struct.mtk_base_afe*, align 8
  %8 = alloca i32, align 4
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %4, align 8
  store %struct.snd_pcm_hw_params* %1, %struct.snd_pcm_hw_params** %5, align 8
  store %struct.snd_soc_dai* %2, %struct.snd_soc_dai** %6, align 8
  %9 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %6, align 8
  %10 = call %struct.mtk_base_afe* @snd_soc_dai_get_drvdata(%struct.snd_soc_dai* %9)
  store %struct.mtk_base_afe* %10, %struct.mtk_base_afe** %7, align 8
  %11 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %5, align 8
  %12 = call i32 @params_channels(%struct.snd_pcm_hw_params* %11)
  store i32 %12, i32* %8, align 4
  %13 = load %struct.mtk_base_afe*, %struct.mtk_base_afe** %7, align 8
  %14 = getelementptr inbounds %struct.mtk_base_afe, %struct.mtk_base_afe* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* @AFE_MEMIF_PBUF_SIZE, align 4
  %17 = load i32, i32* @AFE_MEMIF_PBUF_SIZE_DLM_MASK, align 4
  %18 = load i32, i32* @AFE_MEMIF_PBUF_SIZE_FULL_INTERLEAVE, align 4
  %19 = call i32 @regmap_update_bits(i32 %15, i32 %16, i32 %17, i32 %18)
  %20 = load %struct.mtk_base_afe*, %struct.mtk_base_afe** %7, align 8
  %21 = getelementptr inbounds %struct.mtk_base_afe, %struct.mtk_base_afe* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* @AFE_MEMIF_PBUF_SIZE, align 4
  %24 = load i32, i32* @AFE_MEMIF_PBUF_SIZE_DLM_BYTE_MASK, align 4
  %25 = load i32, i32* @AFE_MEMIF_PBUF_SIZE_DLM_32BYTES, align 4
  %26 = call i32 @regmap_update_bits(i32 %22, i32 %23, i32 %24, i32 %25)
  %27 = load %struct.mtk_base_afe*, %struct.mtk_base_afe** %7, align 8
  %28 = getelementptr inbounds %struct.mtk_base_afe, %struct.mtk_base_afe* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* @AFE_MEMIF_PBUF_SIZE, align 4
  %31 = load i32, i32* @AFE_MEMIF_PBUF_SIZE_DLM_CH_MASK, align 4
  %32 = load i32, i32* %8, align 4
  %33 = call i32 @AFE_MEMIF_PBUF_SIZE_DLM_CH(i32 %32)
  %34 = call i32 @regmap_update_bits(i32 %29, i32 %30, i32 %31, i32 %33)
  %35 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %4, align 8
  %36 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %5, align 8
  %37 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %6, align 8
  %38 = call i32 @mtk_afe_fe_hw_params(%struct.snd_pcm_substream* %35, %struct.snd_pcm_hw_params* %36, %struct.snd_soc_dai* %37)
  ret i32 %38
}

declare dso_local %struct.mtk_base_afe* @snd_soc_dai_get_drvdata(%struct.snd_soc_dai*) #1

declare dso_local i32 @params_channels(%struct.snd_pcm_hw_params*) #1

declare dso_local i32 @regmap_update_bits(i32, i32, i32, i32) #1

declare dso_local i32 @AFE_MEMIF_PBUF_SIZE_DLM_CH(i32) #1

declare dso_local i32 @mtk_afe_fe_hw_params(%struct.snd_pcm_substream*, %struct.snd_pcm_hw_params*, %struct.snd_soc_dai*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
