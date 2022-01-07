; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/mediatek/mt8173/extr_mt8173-afe-pcm.c_mt8173_afe_i2s_prepare.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/mediatek/mt8173/extr_mt8173-afe-pcm.c_mt8173_afe_i2s_prepare.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_substream = type { %struct.snd_pcm_runtime* }
%struct.snd_pcm_runtime = type { i32 }
%struct.snd_soc_dai = type { i32 }
%struct.mtk_base_afe = type { %struct.mt8173_afe_private* }
%struct.mt8173_afe_private = type { i32* }

@MT8173_CLK_I2S1_M = common dso_local global i64 0, align 8
@MT8173_CLK_I2S2_M = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_substream*, %struct.snd_soc_dai*)* @mt8173_afe_i2s_prepare to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mt8173_afe_i2s_prepare(%struct.snd_pcm_substream* %0, %struct.snd_soc_dai* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.snd_pcm_substream*, align 8
  %5 = alloca %struct.snd_soc_dai*, align 8
  %6 = alloca %struct.snd_pcm_runtime*, align 8
  %7 = alloca %struct.mtk_base_afe*, align 8
  %8 = alloca %struct.mt8173_afe_private*, align 8
  %9 = alloca i32, align 4
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %4, align 8
  store %struct.snd_soc_dai* %1, %struct.snd_soc_dai** %5, align 8
  %10 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %4, align 8
  %11 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %10, i32 0, i32 0
  %12 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %11, align 8
  store %struct.snd_pcm_runtime* %12, %struct.snd_pcm_runtime** %6, align 8
  %13 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %5, align 8
  %14 = call %struct.mtk_base_afe* @snd_soc_dai_get_drvdata(%struct.snd_soc_dai* %13)
  store %struct.mtk_base_afe* %14, %struct.mtk_base_afe** %7, align 8
  %15 = load %struct.mtk_base_afe*, %struct.mtk_base_afe** %7, align 8
  %16 = getelementptr inbounds %struct.mtk_base_afe, %struct.mtk_base_afe* %15, i32 0, i32 0
  %17 = load %struct.mt8173_afe_private*, %struct.mt8173_afe_private** %16, align 8
  store %struct.mt8173_afe_private* %17, %struct.mt8173_afe_private** %8, align 8
  %18 = load %struct.mtk_base_afe*, %struct.mtk_base_afe** %7, align 8
  %19 = load %struct.mt8173_afe_private*, %struct.mt8173_afe_private** %8, align 8
  %20 = getelementptr inbounds %struct.mt8173_afe_private, %struct.mt8173_afe_private* %19, i32 0, i32 0
  %21 = load i32*, i32** %20, align 8
  %22 = load i64, i64* @MT8173_CLK_I2S1_M, align 8
  %23 = getelementptr inbounds i32, i32* %21, i64 %22
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %6, align 8
  %26 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = mul nsw i32 %27, 256
  %29 = call i32 @mt8173_afe_dais_set_clks(%struct.mtk_base_afe* %18, i32 %24, i32 %28, i32* null, i32 0)
  %30 = load %struct.mtk_base_afe*, %struct.mtk_base_afe** %7, align 8
  %31 = load %struct.mt8173_afe_private*, %struct.mt8173_afe_private** %8, align 8
  %32 = getelementptr inbounds %struct.mt8173_afe_private, %struct.mt8173_afe_private* %31, i32 0, i32 0
  %33 = load i32*, i32** %32, align 8
  %34 = load i64, i64* @MT8173_CLK_I2S2_M, align 8
  %35 = getelementptr inbounds i32, i32* %33, i64 %34
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %6, align 8
  %38 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = mul nsw i32 %39, 256
  %41 = call i32 @mt8173_afe_dais_set_clks(%struct.mtk_base_afe* %30, i32 %36, i32 %40, i32* null, i32 0)
  %42 = load %struct.mtk_base_afe*, %struct.mtk_base_afe** %7, align 8
  %43 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %4, align 8
  %44 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %43, i32 0, i32 0
  %45 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %44, align 8
  %46 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @mt8173_afe_set_i2s(%struct.mtk_base_afe* %42, i32 %47)
  store i32 %48, i32* %9, align 4
  %49 = load i32, i32* %9, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %53

51:                                               ; preds = %2
  %52 = load i32, i32* %9, align 4
  store i32 %52, i32* %3, align 4
  br label %56

53:                                               ; preds = %2
  %54 = load %struct.mtk_base_afe*, %struct.mtk_base_afe** %7, align 8
  %55 = call i32 @mt8173_afe_set_i2s_enable(%struct.mtk_base_afe* %54, i32 1)
  store i32 0, i32* %3, align 4
  br label %56

56:                                               ; preds = %53, %51
  %57 = load i32, i32* %3, align 4
  ret i32 %57
}

declare dso_local %struct.mtk_base_afe* @snd_soc_dai_get_drvdata(%struct.snd_soc_dai*) #1

declare dso_local i32 @mt8173_afe_dais_set_clks(%struct.mtk_base_afe*, i32, i32, i32*, i32) #1

declare dso_local i32 @mt8173_afe_set_i2s(%struct.mtk_base_afe*, i32) #1

declare dso_local i32 @mt8173_afe_set_i2s_enable(%struct.mtk_base_afe*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
