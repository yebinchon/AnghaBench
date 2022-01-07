; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/fsl/extr_imx-ssi.c_imx_ssi_trigger.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/fsl/extr_imx-ssi.c_imx_ssi_trigger.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_substream = type { i64 }
%struct.snd_soc_dai = type { i32 }
%struct.imx_ssi = type { i32, i64 }

@SSI_SCR = common dso_local global i64 0, align 8
@SSI_SIER = common dso_local global i64 0, align 8
@SNDRV_PCM_STREAM_PLAYBACK = common dso_local global i64 0, align 8
@IMX_SSI_DMA = common dso_local global i32 0, align 4
@SSI_SIER_TDMAE = common dso_local global i32 0, align 4
@SSI_SIER_TIE = common dso_local global i32 0, align 4
@SSI_SIER_TFE0_EN = common dso_local global i32 0, align 4
@SSI_SIER_RDMAE = common dso_local global i32 0, align 4
@SSI_SIER_RIE = common dso_local global i32 0, align 4
@SSI_SIER_RFF0_EN = common dso_local global i32 0, align 4
@SSI_SCR_TE = common dso_local global i32 0, align 4
@SSI_SCR_RE = common dso_local global i32 0, align 4
@SSI_SCR_SSIEN = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@IMX_SSI_USE_AC97 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_substream*, i32, %struct.snd_soc_dai*)* @imx_ssi_trigger to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @imx_ssi_trigger(%struct.snd_pcm_substream* %0, i32 %1, %struct.snd_soc_dai* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.snd_pcm_substream*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.snd_soc_dai*, align 8
  %8 = alloca %struct.imx_ssi*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.snd_soc_dai* %2, %struct.snd_soc_dai** %7, align 8
  %12 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %7, align 8
  %13 = call %struct.imx_ssi* @snd_soc_dai_get_drvdata(%struct.snd_soc_dai* %12)
  store %struct.imx_ssi* %13, %struct.imx_ssi** %8, align 8
  %14 = load %struct.imx_ssi*, %struct.imx_ssi** %8, align 8
  %15 = getelementptr inbounds %struct.imx_ssi, %struct.imx_ssi* %14, i32 0, i32 1
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @SSI_SCR, align 8
  %18 = add nsw i64 %16, %17
  %19 = call i32 @readl(i64 %18)
  store i32 %19, i32* %11, align 4
  %20 = load %struct.imx_ssi*, %struct.imx_ssi** %8, align 8
  %21 = getelementptr inbounds %struct.imx_ssi, %struct.imx_ssi* %20, i32 0, i32 1
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @SSI_SIER, align 8
  %24 = add nsw i64 %22, %23
  %25 = call i32 @readl(i64 %24)
  store i32 %25, i32* %10, align 4
  %26 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %5, align 8
  %27 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @SNDRV_PCM_STREAM_PLAYBACK, align 8
  %30 = icmp eq i64 %28, %29
  br i1 %30, label %31, label %45

31:                                               ; preds = %3
  %32 = load %struct.imx_ssi*, %struct.imx_ssi** %8, align 8
  %33 = getelementptr inbounds %struct.imx_ssi, %struct.imx_ssi* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = load i32, i32* @IMX_SSI_DMA, align 4
  %36 = and i32 %34, %35
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %31
  %39 = load i32, i32* @SSI_SIER_TDMAE, align 4
  store i32 %39, i32* %9, align 4
  br label %44

40:                                               ; preds = %31
  %41 = load i32, i32* @SSI_SIER_TIE, align 4
  %42 = load i32, i32* @SSI_SIER_TFE0_EN, align 4
  %43 = or i32 %41, %42
  store i32 %43, i32* %9, align 4
  br label %44

44:                                               ; preds = %40, %38
  br label %59

45:                                               ; preds = %3
  %46 = load %struct.imx_ssi*, %struct.imx_ssi** %8, align 8
  %47 = getelementptr inbounds %struct.imx_ssi, %struct.imx_ssi* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = load i32, i32* @IMX_SSI_DMA, align 4
  %50 = and i32 %48, %49
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %54

52:                                               ; preds = %45
  %53 = load i32, i32* @SSI_SIER_RDMAE, align 4
  store i32 %53, i32* %9, align 4
  br label %58

54:                                               ; preds = %45
  %55 = load i32, i32* @SSI_SIER_RIE, align 4
  %56 = load i32, i32* @SSI_SIER_RFF0_EN, align 4
  %57 = or i32 %55, %56
  store i32 %57, i32* %9, align 4
  br label %58

58:                                               ; preds = %54, %52
  br label %59

59:                                               ; preds = %58, %44
  %60 = load i32, i32* %6, align 4
  switch i32 %60, label %115 [
    i32 130, label %61
    i32 131, label %61
    i32 132, label %61
    i32 129, label %82
    i32 128, label %82
    i32 133, label %82
  ]

61:                                               ; preds = %59, %59, %59
  %62 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %5, align 8
  %63 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = load i64, i64* @SNDRV_PCM_STREAM_PLAYBACK, align 8
  %66 = icmp eq i64 %64, %65
  br i1 %66, label %67, label %71

67:                                               ; preds = %61
  %68 = load i32, i32* @SSI_SCR_TE, align 4
  %69 = load i32, i32* %11, align 4
  %70 = or i32 %69, %68
  store i32 %70, i32* %11, align 4
  br label %75

71:                                               ; preds = %61
  %72 = load i32, i32* @SSI_SCR_RE, align 4
  %73 = load i32, i32* %11, align 4
  %74 = or i32 %73, %72
  store i32 %74, i32* %11, align 4
  br label %75

75:                                               ; preds = %71, %67
  %76 = load i32, i32* %9, align 4
  %77 = load i32, i32* %10, align 4
  %78 = or i32 %77, %76
  store i32 %78, i32* %10, align 4
  %79 = load i32, i32* @SSI_SCR_SSIEN, align 4
  %80 = load i32, i32* %11, align 4
  %81 = or i32 %80, %79
  store i32 %81, i32* %11, align 4
  br label %118

82:                                               ; preds = %59, %59, %59
  %83 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %5, align 8
  %84 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %83, i32 0, i32 0
  %85 = load i64, i64* %84, align 8
  %86 = load i64, i64* @SNDRV_PCM_STREAM_PLAYBACK, align 8
  %87 = icmp eq i64 %85, %86
  br i1 %87, label %88, label %93

88:                                               ; preds = %82
  %89 = load i32, i32* @SSI_SCR_TE, align 4
  %90 = xor i32 %89, -1
  %91 = load i32, i32* %11, align 4
  %92 = and i32 %91, %90
  store i32 %92, i32* %11, align 4
  br label %98

93:                                               ; preds = %82
  %94 = load i32, i32* @SSI_SCR_RE, align 4
  %95 = xor i32 %94, -1
  %96 = load i32, i32* %11, align 4
  %97 = and i32 %96, %95
  store i32 %97, i32* %11, align 4
  br label %98

98:                                               ; preds = %93, %88
  %99 = load i32, i32* %9, align 4
  %100 = xor i32 %99, -1
  %101 = load i32, i32* %10, align 4
  %102 = and i32 %101, %100
  store i32 %102, i32* %10, align 4
  %103 = load i32, i32* %11, align 4
  %104 = load i32, i32* @SSI_SCR_TE, align 4
  %105 = load i32, i32* @SSI_SCR_RE, align 4
  %106 = or i32 %104, %105
  %107 = and i32 %103, %106
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %114, label %109

109:                                              ; preds = %98
  %110 = load i32, i32* @SSI_SCR_SSIEN, align 4
  %111 = xor i32 %110, -1
  %112 = load i32, i32* %11, align 4
  %113 = and i32 %112, %111
  store i32 %113, i32* %11, align 4
  br label %114

114:                                              ; preds = %109, %98
  br label %118

115:                                              ; preds = %59
  %116 = load i32, i32* @EINVAL, align 4
  %117 = sub nsw i32 0, %116
  store i32 %117, i32* %4, align 4
  br label %141

118:                                              ; preds = %114, %75
  %119 = load %struct.imx_ssi*, %struct.imx_ssi** %8, align 8
  %120 = getelementptr inbounds %struct.imx_ssi, %struct.imx_ssi* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 8
  %122 = load i32, i32* @IMX_SSI_USE_AC97, align 4
  %123 = and i32 %121, %122
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %133, label %125

125:                                              ; preds = %118
  %126 = load i32, i32* %11, align 4
  %127 = load %struct.imx_ssi*, %struct.imx_ssi** %8, align 8
  %128 = getelementptr inbounds %struct.imx_ssi, %struct.imx_ssi* %127, i32 0, i32 1
  %129 = load i64, i64* %128, align 8
  %130 = load i64, i64* @SSI_SCR, align 8
  %131 = add nsw i64 %129, %130
  %132 = call i32 @writel(i32 %126, i64 %131)
  br label %133

133:                                              ; preds = %125, %118
  %134 = load i32, i32* %10, align 4
  %135 = load %struct.imx_ssi*, %struct.imx_ssi** %8, align 8
  %136 = getelementptr inbounds %struct.imx_ssi, %struct.imx_ssi* %135, i32 0, i32 1
  %137 = load i64, i64* %136, align 8
  %138 = load i64, i64* @SSI_SIER, align 8
  %139 = add nsw i64 %137, %138
  %140 = call i32 @writel(i32 %134, i64 %139)
  store i32 0, i32* %4, align 4
  br label %141

141:                                              ; preds = %133, %115
  %142 = load i32, i32* %4, align 4
  ret i32 %142
}

declare dso_local %struct.imx_ssi* @snd_soc_dai_get_drvdata(%struct.snd_soc_dai*) #1

declare dso_local i32 @readl(i64) #1

declare dso_local i32 @writel(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
