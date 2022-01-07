; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/mediatek/mt8173/extr_mt8173-afe-pcm.c_mt8173_afe_hdmi_prepare.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/mediatek/mt8173/extr_mt8173-afe-pcm.c_mt8173_afe_hdmi_prepare.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_substream = type { %struct.snd_pcm_runtime* }
%struct.snd_pcm_runtime = type { i32, i32 }
%struct.snd_soc_dai = type { i32 }
%struct.mtk_base_afe = type { i32, %struct.mt8173_afe_private* }
%struct.mt8173_afe_private = type { i32* }

@MT8173_CLK_I2S3_M = common dso_local global i64 0, align 8
@MT8173_CLK_I2S3_B = common dso_local global i64 0, align 8
@AFE_TDM_CON1_BCK_INV = common dso_local global i32 0, align 4
@AFE_TDM_CON1_LRCK_INV = common dso_local global i32 0, align 4
@AFE_TDM_CON1_1_BCK_DELAY = common dso_local global i32 0, align 4
@AFE_TDM_CON1_MSB_ALIGNED = common dso_local global i32 0, align 4
@AFE_TDM_CON1_WLEN_32BIT = common dso_local global i32 0, align 4
@AFE_TDM_CON1_32_BCK_CYCLES = common dso_local global i32 0, align 4
@AFE_TDM_CON1 = common dso_local global i32 0, align 4
@AFE_TDM_CON1_EN = common dso_local global i32 0, align 4
@AFE_TDM_CH_START_O30_O31 = common dso_local global i32 0, align 4
@AFE_TDM_CH_ZERO = common dso_local global i32 0, align 4
@AFE_TDM_CH_START_O32_O33 = common dso_local global i32 0, align 4
@AFE_TDM_CH_START_O34_O35 = common dso_local global i32 0, align 4
@AFE_TDM_CH_START_O36_O37 = common dso_local global i32 0, align 4
@AFE_TDM_CON2 = common dso_local global i32 0, align 4
@AFE_HDMI_OUT_CON0 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_substream*, %struct.snd_soc_dai*)* @mt8173_afe_hdmi_prepare to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mt8173_afe_hdmi_prepare(%struct.snd_pcm_substream* %0, %struct.snd_soc_dai* %1) #0 {
  %3 = alloca %struct.snd_pcm_substream*, align 8
  %4 = alloca %struct.snd_soc_dai*, align 8
  %5 = alloca %struct.snd_pcm_runtime*, align 8
  %6 = alloca %struct.mtk_base_afe*, align 8
  %7 = alloca %struct.mt8173_afe_private*, align 8
  %8 = alloca i32, align 4
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %3, align 8
  store %struct.snd_soc_dai* %1, %struct.snd_soc_dai** %4, align 8
  %9 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %10 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %9, i32 0, i32 0
  %11 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %10, align 8
  store %struct.snd_pcm_runtime* %11, %struct.snd_pcm_runtime** %5, align 8
  %12 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %4, align 8
  %13 = call %struct.mtk_base_afe* @snd_soc_dai_get_drvdata(%struct.snd_soc_dai* %12)
  store %struct.mtk_base_afe* %13, %struct.mtk_base_afe** %6, align 8
  %14 = load %struct.mtk_base_afe*, %struct.mtk_base_afe** %6, align 8
  %15 = getelementptr inbounds %struct.mtk_base_afe, %struct.mtk_base_afe* %14, i32 0, i32 1
  %16 = load %struct.mt8173_afe_private*, %struct.mt8173_afe_private** %15, align 8
  store %struct.mt8173_afe_private* %16, %struct.mt8173_afe_private** %7, align 8
  %17 = load %struct.mtk_base_afe*, %struct.mtk_base_afe** %6, align 8
  %18 = load %struct.mt8173_afe_private*, %struct.mt8173_afe_private** %7, align 8
  %19 = getelementptr inbounds %struct.mt8173_afe_private, %struct.mt8173_afe_private* %18, i32 0, i32 0
  %20 = load i32*, i32** %19, align 8
  %21 = load i64, i64* @MT8173_CLK_I2S3_M, align 8
  %22 = getelementptr inbounds i32, i32* %20, i64 %21
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %5, align 8
  %25 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = mul nsw i32 %26, 128
  %28 = load %struct.mt8173_afe_private*, %struct.mt8173_afe_private** %7, align 8
  %29 = getelementptr inbounds %struct.mt8173_afe_private, %struct.mt8173_afe_private* %28, i32 0, i32 0
  %30 = load i32*, i32** %29, align 8
  %31 = load i64, i64* @MT8173_CLK_I2S3_B, align 8
  %32 = getelementptr inbounds i32, i32* %30, i64 %31
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %5, align 8
  %35 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %5, align 8
  %38 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = mul nsw i32 %36, %39
  %41 = mul nsw i32 %40, 32
  %42 = call i32 @mt8173_afe_dais_set_clks(%struct.mtk_base_afe* %17, i32 %23, i32 %27, i32 %33, i32 %41)
  %43 = load i32, i32* @AFE_TDM_CON1_BCK_INV, align 4
  %44 = load i32, i32* @AFE_TDM_CON1_LRCK_INV, align 4
  %45 = or i32 %43, %44
  %46 = load i32, i32* @AFE_TDM_CON1_1_BCK_DELAY, align 4
  %47 = or i32 %45, %46
  %48 = load i32, i32* @AFE_TDM_CON1_MSB_ALIGNED, align 4
  %49 = or i32 %47, %48
  %50 = load i32, i32* @AFE_TDM_CON1_WLEN_32BIT, align 4
  %51 = or i32 %49, %50
  %52 = load i32, i32* @AFE_TDM_CON1_32_BCK_CYCLES, align 4
  %53 = or i32 %51, %52
  %54 = call i32 @AFE_TDM_CON1_LRCK_WIDTH(i32 32)
  %55 = or i32 %53, %54
  store i32 %55, i32* %8, align 4
  %56 = load %struct.mtk_base_afe*, %struct.mtk_base_afe** %6, align 8
  %57 = getelementptr inbounds %struct.mtk_base_afe, %struct.mtk_base_afe* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = load i32, i32* @AFE_TDM_CON1, align 4
  %60 = load i32, i32* @AFE_TDM_CON1_EN, align 4
  %61 = xor i32 %60, -1
  %62 = load i32, i32* %8, align 4
  %63 = call i32 @regmap_update_bits(i32 %58, i32 %59, i32 %61, i32 %62)
  %64 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %5, align 8
  %65 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  switch i32 %66, label %123 [
    i32 1, label %67
    i32 2, label %67
    i32 3, label %81
    i32 4, label %81
    i32 5, label %95
    i32 6, label %95
    i32 7, label %109
    i32 8, label %109
  ]

67:                                               ; preds = %2, %2
  %68 = load i32, i32* @AFE_TDM_CH_START_O30_O31, align 4
  store i32 %68, i32* %8, align 4
  %69 = load i32, i32* @AFE_TDM_CH_ZERO, align 4
  %70 = shl i32 %69, 4
  %71 = load i32, i32* %8, align 4
  %72 = or i32 %71, %70
  store i32 %72, i32* %8, align 4
  %73 = load i32, i32* @AFE_TDM_CH_ZERO, align 4
  %74 = shl i32 %73, 8
  %75 = load i32, i32* %8, align 4
  %76 = or i32 %75, %74
  store i32 %76, i32* %8, align 4
  %77 = load i32, i32* @AFE_TDM_CH_ZERO, align 4
  %78 = shl i32 %77, 12
  %79 = load i32, i32* %8, align 4
  %80 = or i32 %79, %78
  store i32 %80, i32* %8, align 4
  br label %124

81:                                               ; preds = %2, %2
  %82 = load i32, i32* @AFE_TDM_CH_START_O30_O31, align 4
  store i32 %82, i32* %8, align 4
  %83 = load i32, i32* @AFE_TDM_CH_START_O32_O33, align 4
  %84 = shl i32 %83, 4
  %85 = load i32, i32* %8, align 4
  %86 = or i32 %85, %84
  store i32 %86, i32* %8, align 4
  %87 = load i32, i32* @AFE_TDM_CH_ZERO, align 4
  %88 = shl i32 %87, 8
  %89 = load i32, i32* %8, align 4
  %90 = or i32 %89, %88
  store i32 %90, i32* %8, align 4
  %91 = load i32, i32* @AFE_TDM_CH_ZERO, align 4
  %92 = shl i32 %91, 12
  %93 = load i32, i32* %8, align 4
  %94 = or i32 %93, %92
  store i32 %94, i32* %8, align 4
  br label %124

95:                                               ; preds = %2, %2
  %96 = load i32, i32* @AFE_TDM_CH_START_O30_O31, align 4
  store i32 %96, i32* %8, align 4
  %97 = load i32, i32* @AFE_TDM_CH_START_O32_O33, align 4
  %98 = shl i32 %97, 4
  %99 = load i32, i32* %8, align 4
  %100 = or i32 %99, %98
  store i32 %100, i32* %8, align 4
  %101 = load i32, i32* @AFE_TDM_CH_START_O34_O35, align 4
  %102 = shl i32 %101, 8
  %103 = load i32, i32* %8, align 4
  %104 = or i32 %103, %102
  store i32 %104, i32* %8, align 4
  %105 = load i32, i32* @AFE_TDM_CH_ZERO, align 4
  %106 = shl i32 %105, 12
  %107 = load i32, i32* %8, align 4
  %108 = or i32 %107, %106
  store i32 %108, i32* %8, align 4
  br label %124

109:                                              ; preds = %2, %2
  %110 = load i32, i32* @AFE_TDM_CH_START_O30_O31, align 4
  store i32 %110, i32* %8, align 4
  %111 = load i32, i32* @AFE_TDM_CH_START_O32_O33, align 4
  %112 = shl i32 %111, 4
  %113 = load i32, i32* %8, align 4
  %114 = or i32 %113, %112
  store i32 %114, i32* %8, align 4
  %115 = load i32, i32* @AFE_TDM_CH_START_O34_O35, align 4
  %116 = shl i32 %115, 8
  %117 = load i32, i32* %8, align 4
  %118 = or i32 %117, %116
  store i32 %118, i32* %8, align 4
  %119 = load i32, i32* @AFE_TDM_CH_START_O36_O37, align 4
  %120 = shl i32 %119, 12
  %121 = load i32, i32* %8, align 4
  %122 = or i32 %121, %120
  store i32 %122, i32* %8, align 4
  br label %124

123:                                              ; preds = %2
  store i32 0, i32* %8, align 4
  br label %124

124:                                              ; preds = %123, %109, %95, %81, %67
  %125 = load %struct.mtk_base_afe*, %struct.mtk_base_afe** %6, align 8
  %126 = getelementptr inbounds %struct.mtk_base_afe, %struct.mtk_base_afe* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 8
  %128 = load i32, i32* @AFE_TDM_CON2, align 4
  %129 = load i32, i32* %8, align 4
  %130 = call i32 @regmap_update_bits(i32 %127, i32 %128, i32 65535, i32 %129)
  %131 = load %struct.mtk_base_afe*, %struct.mtk_base_afe** %6, align 8
  %132 = getelementptr inbounds %struct.mtk_base_afe, %struct.mtk_base_afe* %131, i32 0, i32 0
  %133 = load i32, i32* %132, align 8
  %134 = load i32, i32* @AFE_HDMI_OUT_CON0, align 4
  %135 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %5, align 8
  %136 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %135, i32 0, i32 1
  %137 = load i32, i32* %136, align 4
  %138 = shl i32 %137, 4
  %139 = call i32 @regmap_update_bits(i32 %133, i32 %134, i32 240, i32 %138)
  ret i32 0
}

declare dso_local %struct.mtk_base_afe* @snd_soc_dai_get_drvdata(%struct.snd_soc_dai*) #1

declare dso_local i32 @mt8173_afe_dais_set_clks(%struct.mtk_base_afe*, i32, i32, i32, i32) #1

declare dso_local i32 @AFE_TDM_CON1_LRCK_WIDTH(i32) #1

declare dso_local i32 @regmap_update_bits(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
