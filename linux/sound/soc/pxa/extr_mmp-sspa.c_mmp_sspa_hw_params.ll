; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/pxa/extr_mmp-sspa.c_mmp_sspa_hw_params.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/pxa/extr_mmp-sspa.c_mmp_sspa_hw_params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_substream = type { i64, %struct.snd_soc_pcm_runtime* }
%struct.snd_soc_pcm_runtime = type { %struct.snd_soc_dai* }
%struct.snd_pcm_hw_params = type { i32 }
%struct.snd_soc_dai = type { i32 }
%struct.sspa_priv = type { %struct.snd_dmaengine_dai_dma_data*, %struct.ssp_device* }
%struct.snd_dmaengine_dai_dma_data = type { i64 }
%struct.ssp_device = type { i64 }

@SNDRV_PCM_STREAM_PLAYBACK = common dso_local global i64 0, align 8
@SSPA_TXCTL = common dso_local global i32 0, align 4
@SSPA_RXCTL = common dso_local global i32 0, align 4
@SSPA_CTL_XFRLEN1_MASK = common dso_local global i32 0, align 4
@SSPA_CTL_XWDLEN1_MASK = common dso_local global i32 0, align 4
@SSPA_CTL_32_BITS = common dso_local global i32 0, align 4
@SSPA_CTL_XSSZ1_MASK = common dso_local global i32 0, align 4
@SSPA_CTL_8_BITS = common dso_local global i32 0, align 4
@SSPA_CTL_16_BITS = common dso_local global i32 0, align 4
@SSPA_CTL_20_BITS = common dso_local global i32 0, align 4
@SSPA_CTL_24_BITS = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@SSPA_TXFIFO_LL = common dso_local global i32 0, align 4
@SSPA_RXFIFO_UL = common dso_local global i32 0, align 4
@SSPA_TXD = common dso_local global i64 0, align 8
@SSPA_RXD = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_substream*, %struct.snd_pcm_hw_params*, %struct.snd_soc_dai*)* @mmp_sspa_hw_params to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mmp_sspa_hw_params(%struct.snd_pcm_substream* %0, %struct.snd_pcm_hw_params* %1, %struct.snd_soc_dai* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.snd_pcm_substream*, align 8
  %6 = alloca %struct.snd_pcm_hw_params*, align 8
  %7 = alloca %struct.snd_soc_dai*, align 8
  %8 = alloca %struct.snd_soc_pcm_runtime*, align 8
  %9 = alloca %struct.snd_soc_dai*, align 8
  %10 = alloca %struct.sspa_priv*, align 8
  %11 = alloca %struct.ssp_device*, align 8
  %12 = alloca %struct.snd_dmaengine_dai_dma_data*, align 8
  %13 = alloca i32, align 4
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %5, align 8
  store %struct.snd_pcm_hw_params* %1, %struct.snd_pcm_hw_params** %6, align 8
  store %struct.snd_soc_dai* %2, %struct.snd_soc_dai** %7, align 8
  %14 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %5, align 8
  %15 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %14, i32 0, i32 1
  %16 = load %struct.snd_soc_pcm_runtime*, %struct.snd_soc_pcm_runtime** %15, align 8
  store %struct.snd_soc_pcm_runtime* %16, %struct.snd_soc_pcm_runtime** %8, align 8
  %17 = load %struct.snd_soc_pcm_runtime*, %struct.snd_soc_pcm_runtime** %8, align 8
  %18 = getelementptr inbounds %struct.snd_soc_pcm_runtime, %struct.snd_soc_pcm_runtime* %17, i32 0, i32 0
  %19 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %18, align 8
  store %struct.snd_soc_dai* %19, %struct.snd_soc_dai** %9, align 8
  %20 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %7, align 8
  %21 = call %struct.sspa_priv* @snd_soc_dai_get_drvdata(%struct.snd_soc_dai* %20)
  store %struct.sspa_priv* %21, %struct.sspa_priv** %10, align 8
  %22 = load %struct.sspa_priv*, %struct.sspa_priv** %10, align 8
  %23 = getelementptr inbounds %struct.sspa_priv, %struct.sspa_priv* %22, i32 0, i32 1
  %24 = load %struct.ssp_device*, %struct.ssp_device** %23, align 8
  store %struct.ssp_device* %24, %struct.ssp_device** %11, align 8
  %25 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %5, align 8
  %26 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @SNDRV_PCM_STREAM_PLAYBACK, align 8
  %29 = icmp eq i64 %27, %28
  br i1 %29, label %30, label %34

30:                                               ; preds = %3
  %31 = load %struct.ssp_device*, %struct.ssp_device** %11, align 8
  %32 = load i32, i32* @SSPA_TXCTL, align 4
  %33 = call i32 @mmp_sspa_read_reg(%struct.ssp_device* %31, i32 %32)
  store i32 %33, i32* %13, align 4
  br label %38

34:                                               ; preds = %3
  %35 = load %struct.ssp_device*, %struct.ssp_device** %11, align 8
  %36 = load i32, i32* @SSPA_RXCTL, align 4
  %37 = call i32 @mmp_sspa_read_reg(%struct.ssp_device* %35, i32 %36)
  store i32 %37, i32* %13, align 4
  br label %38

38:                                               ; preds = %34, %30
  %39 = load i32, i32* @SSPA_CTL_XFRLEN1_MASK, align 4
  %40 = xor i32 %39, -1
  %41 = load i32, i32* %13, align 4
  %42 = and i32 %41, %40
  store i32 %42, i32* %13, align 4
  %43 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %6, align 8
  %44 = call i64 @params_channels(%struct.snd_pcm_hw_params* %43)
  %45 = sub nsw i64 %44, 1
  %46 = call i32 @SSPA_CTL_XFRLEN1(i64 %45)
  %47 = load i32, i32* %13, align 4
  %48 = or i32 %47, %46
  store i32 %48, i32* %13, align 4
  %49 = load i32, i32* @SSPA_CTL_XWDLEN1_MASK, align 4
  %50 = xor i32 %49, -1
  %51 = load i32, i32* %13, align 4
  %52 = and i32 %51, %50
  store i32 %52, i32* %13, align 4
  %53 = load i32, i32* @SSPA_CTL_32_BITS, align 4
  %54 = call i32 @SSPA_CTL_XWDLEN1(i32 %53)
  %55 = load i32, i32* %13, align 4
  %56 = or i32 %55, %54
  store i32 %56, i32* %13, align 4
  %57 = load i32, i32* @SSPA_CTL_XSSZ1_MASK, align 4
  %58 = xor i32 %57, -1
  %59 = load i32, i32* %13, align 4
  %60 = and i32 %59, %58
  store i32 %60, i32* %13, align 4
  %61 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %6, align 8
  %62 = call i32 @params_format(%struct.snd_pcm_hw_params* %61)
  switch i32 %62, label %88 [
    i32 128, label %63
    i32 132, label %68
    i32 131, label %73
    i32 130, label %78
    i32 129, label %83
  ]

63:                                               ; preds = %38
  %64 = load i32, i32* @SSPA_CTL_8_BITS, align 4
  %65 = call i32 @SSPA_CTL_XSSZ1(i32 %64)
  %66 = load i32, i32* %13, align 4
  %67 = or i32 %66, %65
  store i32 %67, i32* %13, align 4
  br label %91

68:                                               ; preds = %38
  %69 = load i32, i32* @SSPA_CTL_16_BITS, align 4
  %70 = call i32 @SSPA_CTL_XSSZ1(i32 %69)
  %71 = load i32, i32* %13, align 4
  %72 = or i32 %71, %70
  store i32 %72, i32* %13, align 4
  br label %91

73:                                               ; preds = %38
  %74 = load i32, i32* @SSPA_CTL_20_BITS, align 4
  %75 = call i32 @SSPA_CTL_XSSZ1(i32 %74)
  %76 = load i32, i32* %13, align 4
  %77 = or i32 %76, %75
  store i32 %77, i32* %13, align 4
  br label %91

78:                                               ; preds = %38
  %79 = load i32, i32* @SSPA_CTL_24_BITS, align 4
  %80 = call i32 @SSPA_CTL_XSSZ1(i32 %79)
  %81 = load i32, i32* %13, align 4
  %82 = or i32 %81, %80
  store i32 %82, i32* %13, align 4
  br label %91

83:                                               ; preds = %38
  %84 = load i32, i32* @SSPA_CTL_32_BITS, align 4
  %85 = call i32 @SSPA_CTL_XSSZ1(i32 %84)
  %86 = load i32, i32* %13, align 4
  %87 = or i32 %86, %85
  store i32 %87, i32* %13, align 4
  br label %91

88:                                               ; preds = %38
  %89 = load i32, i32* @EINVAL, align 4
  %90 = sub nsw i32 0, %89
  store i32 %90, i32* %4, align 4
  br label %146

91:                                               ; preds = %83, %78, %73, %68, %63
  %92 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %5, align 8
  %93 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %92, i32 0, i32 0
  %94 = load i64, i64* %93, align 8
  %95 = load i64, i64* @SNDRV_PCM_STREAM_PLAYBACK, align 8
  %96 = icmp eq i64 %94, %95
  br i1 %96, label %97, label %105

97:                                               ; preds = %91
  %98 = load %struct.ssp_device*, %struct.ssp_device** %11, align 8
  %99 = load i32, i32* @SSPA_TXCTL, align 4
  %100 = load i32, i32* %13, align 4
  %101 = call i32 @mmp_sspa_write_reg(%struct.ssp_device* %98, i32 %99, i32 %100)
  %102 = load %struct.ssp_device*, %struct.ssp_device** %11, align 8
  %103 = load i32, i32* @SSPA_TXFIFO_LL, align 4
  %104 = call i32 @mmp_sspa_write_reg(%struct.ssp_device* %102, i32 %103, i32 1)
  br label %113

105:                                              ; preds = %91
  %106 = load %struct.ssp_device*, %struct.ssp_device** %11, align 8
  %107 = load i32, i32* @SSPA_RXCTL, align 4
  %108 = load i32, i32* %13, align 4
  %109 = call i32 @mmp_sspa_write_reg(%struct.ssp_device* %106, i32 %107, i32 %108)
  %110 = load %struct.ssp_device*, %struct.ssp_device** %11, align 8
  %111 = load i32, i32* @SSPA_RXFIFO_UL, align 4
  %112 = call i32 @mmp_sspa_write_reg(%struct.ssp_device* %110, i32 %111, i32 0)
  br label %113

113:                                              ; preds = %105, %97
  %114 = load %struct.sspa_priv*, %struct.sspa_priv** %10, align 8
  %115 = getelementptr inbounds %struct.sspa_priv, %struct.sspa_priv* %114, i32 0, i32 0
  %116 = load %struct.snd_dmaengine_dai_dma_data*, %struct.snd_dmaengine_dai_dma_data** %115, align 8
  %117 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %5, align 8
  %118 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %117, i32 0, i32 0
  %119 = load i64, i64* %118, align 8
  %120 = getelementptr inbounds %struct.snd_dmaengine_dai_dma_data, %struct.snd_dmaengine_dai_dma_data* %116, i64 %119
  store %struct.snd_dmaengine_dai_dma_data* %120, %struct.snd_dmaengine_dai_dma_data** %12, align 8
  %121 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %5, align 8
  %122 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %121, i32 0, i32 0
  %123 = load i64, i64* %122, align 8
  %124 = load i64, i64* @SNDRV_PCM_STREAM_PLAYBACK, align 8
  %125 = icmp eq i64 %123, %124
  br i1 %125, label %126, label %132

126:                                              ; preds = %113
  %127 = load %struct.ssp_device*, %struct.ssp_device** %11, align 8
  %128 = getelementptr inbounds %struct.ssp_device, %struct.ssp_device* %127, i32 0, i32 0
  %129 = load i64, i64* %128, align 8
  %130 = load i64, i64* @SSPA_TXD, align 8
  %131 = add nsw i64 %129, %130
  br label %138

132:                                              ; preds = %113
  %133 = load %struct.ssp_device*, %struct.ssp_device** %11, align 8
  %134 = getelementptr inbounds %struct.ssp_device, %struct.ssp_device* %133, i32 0, i32 0
  %135 = load i64, i64* %134, align 8
  %136 = load i64, i64* @SSPA_RXD, align 8
  %137 = add nsw i64 %135, %136
  br label %138

138:                                              ; preds = %132, %126
  %139 = phi i64 [ %131, %126 ], [ %137, %132 ]
  %140 = load %struct.snd_dmaengine_dai_dma_data*, %struct.snd_dmaengine_dai_dma_data** %12, align 8
  %141 = getelementptr inbounds %struct.snd_dmaengine_dai_dma_data, %struct.snd_dmaengine_dai_dma_data* %140, i32 0, i32 0
  store i64 %139, i64* %141, align 8
  %142 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %9, align 8
  %143 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %5, align 8
  %144 = load %struct.snd_dmaengine_dai_dma_data*, %struct.snd_dmaengine_dai_dma_data** %12, align 8
  %145 = call i32 @snd_soc_dai_set_dma_data(%struct.snd_soc_dai* %142, %struct.snd_pcm_substream* %143, %struct.snd_dmaengine_dai_dma_data* %144)
  store i32 0, i32* %4, align 4
  br label %146

146:                                              ; preds = %138, %88
  %147 = load i32, i32* %4, align 4
  ret i32 %147
}

declare dso_local %struct.sspa_priv* @snd_soc_dai_get_drvdata(%struct.snd_soc_dai*) #1

declare dso_local i32 @mmp_sspa_read_reg(%struct.ssp_device*, i32) #1

declare dso_local i32 @SSPA_CTL_XFRLEN1(i64) #1

declare dso_local i64 @params_channels(%struct.snd_pcm_hw_params*) #1

declare dso_local i32 @SSPA_CTL_XWDLEN1(i32) #1

declare dso_local i32 @params_format(%struct.snd_pcm_hw_params*) #1

declare dso_local i32 @SSPA_CTL_XSSZ1(i32) #1

declare dso_local i32 @mmp_sspa_write_reg(%struct.ssp_device*, i32, i32) #1

declare dso_local i32 @snd_soc_dai_set_dma_data(%struct.snd_soc_dai*, %struct.snd_pcm_substream*, %struct.snd_dmaengine_dai_dma_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
