; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/mediatek/mt8173/extr_mt8173-afe-pcm.c_mt8173_afe_hdmi_startup.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/mediatek/mt8173/extr_mt8173-afe-pcm.c_mt8173_afe_hdmi_startup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_substream = type { i32 }
%struct.snd_soc_dai = type { i64 }
%struct.mtk_base_afe = type { %struct.mt8173_afe_private* }
%struct.mt8173_afe_private = type { i32* }

@MT8173_CLK_I2S3_M = common dso_local global i64 0, align 8
@MT8173_CLK_I2S3_B = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_substream*, %struct.snd_soc_dai*)* @mt8173_afe_hdmi_startup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mt8173_afe_hdmi_startup(%struct.snd_pcm_substream* %0, %struct.snd_soc_dai* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.snd_pcm_substream*, align 8
  %5 = alloca %struct.snd_soc_dai*, align 8
  %6 = alloca %struct.mtk_base_afe*, align 8
  %7 = alloca %struct.mt8173_afe_private*, align 8
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %4, align 8
  store %struct.snd_soc_dai* %1, %struct.snd_soc_dai** %5, align 8
  %8 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %5, align 8
  %9 = call %struct.mtk_base_afe* @snd_soc_dai_get_drvdata(%struct.snd_soc_dai* %8)
  store %struct.mtk_base_afe* %9, %struct.mtk_base_afe** %6, align 8
  %10 = load %struct.mtk_base_afe*, %struct.mtk_base_afe** %6, align 8
  %11 = getelementptr inbounds %struct.mtk_base_afe, %struct.mtk_base_afe* %10, i32 0, i32 0
  %12 = load %struct.mt8173_afe_private*, %struct.mt8173_afe_private** %11, align 8
  store %struct.mt8173_afe_private* %12, %struct.mt8173_afe_private** %7, align 8
  %13 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %5, align 8
  %14 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %33

18:                                               ; preds = %2
  %19 = load %struct.mtk_base_afe*, %struct.mtk_base_afe** %6, align 8
  %20 = load %struct.mt8173_afe_private*, %struct.mt8173_afe_private** %7, align 8
  %21 = getelementptr inbounds %struct.mt8173_afe_private, %struct.mt8173_afe_private* %20, i32 0, i32 0
  %22 = load i32*, i32** %21, align 8
  %23 = load i64, i64* @MT8173_CLK_I2S3_M, align 8
  %24 = getelementptr inbounds i32, i32* %22, i64 %23
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.mt8173_afe_private*, %struct.mt8173_afe_private** %7, align 8
  %27 = getelementptr inbounds %struct.mt8173_afe_private, %struct.mt8173_afe_private* %26, i32 0, i32 0
  %28 = load i32*, i32** %27, align 8
  %29 = load i64, i64* @MT8173_CLK_I2S3_B, align 8
  %30 = getelementptr inbounds i32, i32* %28, i64 %29
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @mt8173_afe_dais_enable_clks(%struct.mtk_base_afe* %19, i32 %25, i32 %31)
  store i32 0, i32* %3, align 4
  br label %33

33:                                               ; preds = %18, %17
  %34 = load i32, i32* %3, align 4
  ret i32 %34
}

declare dso_local %struct.mtk_base_afe* @snd_soc_dai_get_drvdata(%struct.snd_soc_dai*) #1

declare dso_local i32 @mt8173_afe_dais_enable_clks(%struct.mtk_base_afe*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
