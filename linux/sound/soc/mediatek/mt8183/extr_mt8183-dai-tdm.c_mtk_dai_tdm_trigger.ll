; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/mediatek/mt8183/extr_mt8183-dai-tdm.c_mtk_dai_tdm_trigger.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/mediatek/mt8183/extr_mt8183-dai-tdm.c_mtk_dai_tdm_trigger.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_substream = type { i32 }
%struct.snd_soc_dai = type { i32 }
%struct.mtk_base_afe = type { i32 }

@AFE_HDMI_OUT_CON0 = common dso_local global i32 0, align 4
@AFE_HDMI_OUT_ON_MASK_SFT = common dso_local global i32 0, align 4
@AFE_HDMI_OUT_ON_SFT = common dso_local global i32 0, align 4
@AFE_TDM_CON1 = common dso_local global i32 0, align 4
@TDM_EN_MASK_SFT = common dso_local global i32 0, align 4
@TDM_EN_SFT = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_substream*, i32, %struct.snd_soc_dai*)* @mtk_dai_tdm_trigger to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mtk_dai_tdm_trigger(%struct.snd_pcm_substream* %0, i32 %1, %struct.snd_soc_dai* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.snd_pcm_substream*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.snd_soc_dai*, align 8
  %8 = alloca %struct.mtk_base_afe*, align 8
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.snd_soc_dai* %2, %struct.snd_soc_dai** %7, align 8
  %9 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %7, align 8
  %10 = call %struct.mtk_base_afe* @snd_soc_dai_get_drvdata(%struct.snd_soc_dai* %9)
  store %struct.mtk_base_afe* %10, %struct.mtk_base_afe** %8, align 8
  %11 = load i32, i32* %6, align 4
  switch i32 %11, label %42 [
    i32 130, label %12
    i32 131, label %12
    i32 129, label %29
    i32 128, label %29
  ]

12:                                               ; preds = %3, %3
  %13 = load %struct.mtk_base_afe*, %struct.mtk_base_afe** %8, align 8
  %14 = getelementptr inbounds %struct.mtk_base_afe, %struct.mtk_base_afe* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* @AFE_HDMI_OUT_CON0, align 4
  %17 = load i32, i32* @AFE_HDMI_OUT_ON_MASK_SFT, align 4
  %18 = load i32, i32* @AFE_HDMI_OUT_ON_SFT, align 4
  %19 = shl i32 1, %18
  %20 = call i32 @regmap_update_bits(i32 %15, i32 %16, i32 %17, i32 %19)
  %21 = load %struct.mtk_base_afe*, %struct.mtk_base_afe** %8, align 8
  %22 = getelementptr inbounds %struct.mtk_base_afe, %struct.mtk_base_afe* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* @AFE_TDM_CON1, align 4
  %25 = load i32, i32* @TDM_EN_MASK_SFT, align 4
  %26 = load i32, i32* @TDM_EN_SFT, align 4
  %27 = shl i32 1, %26
  %28 = call i32 @regmap_update_bits(i32 %23, i32 %24, i32 %25, i32 %27)
  br label %45

29:                                               ; preds = %3, %3
  %30 = load %struct.mtk_base_afe*, %struct.mtk_base_afe** %8, align 8
  %31 = getelementptr inbounds %struct.mtk_base_afe, %struct.mtk_base_afe* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* @AFE_TDM_CON1, align 4
  %34 = load i32, i32* @TDM_EN_MASK_SFT, align 4
  %35 = call i32 @regmap_update_bits(i32 %32, i32 %33, i32 %34, i32 0)
  %36 = load %struct.mtk_base_afe*, %struct.mtk_base_afe** %8, align 8
  %37 = getelementptr inbounds %struct.mtk_base_afe, %struct.mtk_base_afe* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* @AFE_HDMI_OUT_CON0, align 4
  %40 = load i32, i32* @AFE_HDMI_OUT_ON_MASK_SFT, align 4
  %41 = call i32 @regmap_update_bits(i32 %38, i32 %39, i32 %40, i32 0)
  br label %45

42:                                               ; preds = %3
  %43 = load i32, i32* @EINVAL, align 4
  %44 = sub nsw i32 0, %43
  store i32 %44, i32* %4, align 4
  br label %46

45:                                               ; preds = %29, %12
  store i32 0, i32* %4, align 4
  br label %46

46:                                               ; preds = %45, %42
  %47 = load i32, i32* %4, align 4
  ret i32 %47
}

declare dso_local %struct.mtk_base_afe* @snd_soc_dai_get_drvdata(%struct.snd_soc_dai*) #1

declare dso_local i32 @regmap_update_bits(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
