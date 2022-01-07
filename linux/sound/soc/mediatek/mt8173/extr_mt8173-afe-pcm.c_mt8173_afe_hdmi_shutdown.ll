; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/mediatek/mt8173/extr_mt8173-afe-pcm.c_mt8173_afe_hdmi_shutdown.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/mediatek/mt8173/extr_mt8173-afe-pcm.c_mt8173_afe_hdmi_shutdown.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_substream = type { i32 }
%struct.snd_soc_dai = type { i64 }
%struct.mtk_base_afe = type { %struct.mt8173_afe_private* }
%struct.mt8173_afe_private = type { i32* }

@MT8173_CLK_I2S3_M = common dso_local global i64 0, align 8
@MT8173_CLK_I2S3_B = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.snd_pcm_substream*, %struct.snd_soc_dai*)* @mt8173_afe_hdmi_shutdown to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mt8173_afe_hdmi_shutdown(%struct.snd_pcm_substream* %0, %struct.snd_soc_dai* %1) #0 {
  %3 = alloca %struct.snd_pcm_substream*, align 8
  %4 = alloca %struct.snd_soc_dai*, align 8
  %5 = alloca %struct.mtk_base_afe*, align 8
  %6 = alloca %struct.mt8173_afe_private*, align 8
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %3, align 8
  store %struct.snd_soc_dai* %1, %struct.snd_soc_dai** %4, align 8
  %7 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %4, align 8
  %8 = call %struct.mtk_base_afe* @snd_soc_dai_get_drvdata(%struct.snd_soc_dai* %7)
  store %struct.mtk_base_afe* %8, %struct.mtk_base_afe** %5, align 8
  %9 = load %struct.mtk_base_afe*, %struct.mtk_base_afe** %5, align 8
  %10 = getelementptr inbounds %struct.mtk_base_afe, %struct.mtk_base_afe* %9, i32 0, i32 0
  %11 = load %struct.mt8173_afe_private*, %struct.mt8173_afe_private** %10, align 8
  store %struct.mt8173_afe_private* %11, %struct.mt8173_afe_private** %6, align 8
  %12 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %4, align 8
  %13 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %2
  br label %32

17:                                               ; preds = %2
  %18 = load %struct.mtk_base_afe*, %struct.mtk_base_afe** %5, align 8
  %19 = load %struct.mt8173_afe_private*, %struct.mt8173_afe_private** %6, align 8
  %20 = getelementptr inbounds %struct.mt8173_afe_private, %struct.mt8173_afe_private* %19, i32 0, i32 0
  %21 = load i32*, i32** %20, align 8
  %22 = load i64, i64* @MT8173_CLK_I2S3_M, align 8
  %23 = getelementptr inbounds i32, i32* %21, i64 %22
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.mt8173_afe_private*, %struct.mt8173_afe_private** %6, align 8
  %26 = getelementptr inbounds %struct.mt8173_afe_private, %struct.mt8173_afe_private* %25, i32 0, i32 0
  %27 = load i32*, i32** %26, align 8
  %28 = load i64, i64* @MT8173_CLK_I2S3_B, align 8
  %29 = getelementptr inbounds i32, i32* %27, i64 %28
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @mt8173_afe_dais_disable_clks(%struct.mtk_base_afe* %18, i32 %24, i32 %30)
  br label %32

32:                                               ; preds = %17, %16
  ret void
}

declare dso_local %struct.mtk_base_afe* @snd_soc_dai_get_drvdata(%struct.snd_soc_dai*) #1

declare dso_local i32 @mt8173_afe_dais_disable_clks(%struct.mtk_base_afe*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
