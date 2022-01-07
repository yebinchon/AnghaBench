; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/kirkwood/extr_kirkwood-i2s.c_kirkwood_i2s_hw_params.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/kirkwood/extr_kirkwood-i2s.c_kirkwood_i2s_hw_params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_substream = type { i64 }
%struct.snd_pcm_hw_params = type { i32 }
%struct.snd_soc_dai = type { i32 }
%struct.kirkwood_dma_data = type { i32, i32, i64 }

@SNDRV_PCM_STREAM_PLAYBACK = common dso_local global i64 0, align 8
@KIRKWOOD_I2S_PLAYCTL = common dso_local global i32 0, align 4
@KIRKWOOD_I2S_RECCTL = common dso_local global i32 0, align 4
@KIRKWOOD_I2S_CTL_SIZE_MASK = common dso_local global i64 0, align 8
@KIRKWOOD_I2S_CTL_SIZE_16 = common dso_local global i64 0, align 8
@KIRKWOOD_PLAYCTL_SIZE_16_C = common dso_local global i32 0, align 4
@KIRKWOOD_PLAYCTL_I2S_EN = common dso_local global i32 0, align 4
@KIRKWOOD_PLAYCTL_SPDIF_EN = common dso_local global i32 0, align 4
@KIRKWOOD_RECCTL_SIZE_16_C = common dso_local global i32 0, align 4
@KIRKWOOD_RECCTL_I2S_EN = common dso_local global i32 0, align 4
@KIRKWOOD_RECCTL_SPDIF_EN = common dso_local global i32 0, align 4
@KIRKWOOD_I2S_CTL_SIZE_24 = common dso_local global i64 0, align 8
@KIRKWOOD_PLAYCTL_SIZE_24 = common dso_local global i32 0, align 4
@KIRKWOOD_RECCTL_SIZE_24 = common dso_local global i32 0, align 4
@KIRKWOOD_I2S_CTL_SIZE_32 = common dso_local global i64 0, align 8
@KIRKWOOD_PLAYCTL_SIZE_32 = common dso_local global i32 0, align 4
@KIRKWOOD_RECCTL_SIZE_32 = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@KIRKWOOD_PLAYCTL_MONO_BOTH = common dso_local global i32 0, align 4
@KIRKWOOD_PLAYCTL_MONO_OFF = common dso_local global i32 0, align 4
@KIRKWOOD_PLAYCTL_MONO_MASK = common dso_local global i32 0, align 4
@KIRKWOOD_PLAYCTL_ENABLE_MASK = common dso_local global i32 0, align 4
@KIRKWOOD_PLAYCTL_SIZE_MASK = common dso_local global i32 0, align 4
@KIRKWOOD_RECCTL_ENABLE_MASK = common dso_local global i32 0, align 4
@KIRKWOOD_RECCTL_SIZE_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_substream*, %struct.snd_pcm_hw_params*, %struct.snd_soc_dai*)* @kirkwood_i2s_hw_params to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @kirkwood_i2s_hw_params(%struct.snd_pcm_substream* %0, %struct.snd_pcm_hw_params* %1, %struct.snd_soc_dai* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.snd_pcm_substream*, align 8
  %6 = alloca %struct.snd_pcm_hw_params*, align 8
  %7 = alloca %struct.snd_soc_dai*, align 8
  %8 = alloca %struct.kirkwood_dma_data*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %5, align 8
  store %struct.snd_pcm_hw_params* %1, %struct.snd_pcm_hw_params** %6, align 8
  store %struct.snd_soc_dai* %2, %struct.snd_soc_dai** %7, align 8
  %13 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %7, align 8
  %14 = call %struct.kirkwood_dma_data* @snd_soc_dai_get_drvdata(%struct.snd_soc_dai* %13)
  store %struct.kirkwood_dma_data* %14, %struct.kirkwood_dma_data** %8, align 8
  %15 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %5, align 8
  %16 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @SNDRV_PCM_STREAM_PLAYBACK, align 8
  %19 = icmp eq i64 %17, %18
  br i1 %19, label %20, label %22

20:                                               ; preds = %3
  %21 = load i32, i32* @KIRKWOOD_I2S_PLAYCTL, align 4
  store i32 %21, i32* %11, align 4
  br label %24

22:                                               ; preds = %3
  %23 = load i32, i32* @KIRKWOOD_I2S_RECCTL, align 4
  store i32 %23, i32* %11, align 4
  br label %24

24:                                               ; preds = %22, %20
  %25 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %7, align 8
  %26 = load %struct.kirkwood_dma_data*, %struct.kirkwood_dma_data** %8, align 8
  %27 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %6, align 8
  %28 = call i32 @params_rate(%struct.snd_pcm_hw_params* %27)
  %29 = call i32 @kirkwood_set_rate(%struct.snd_soc_dai* %25, %struct.kirkwood_dma_data* %26, i32 %28)
  %30 = load %struct.kirkwood_dma_data*, %struct.kirkwood_dma_data** %8, align 8
  %31 = getelementptr inbounds %struct.kirkwood_dma_data, %struct.kirkwood_dma_data* %30, i32 0, i32 2
  %32 = load i64, i64* %31, align 8
  %33 = load i32, i32* %11, align 4
  %34 = zext i32 %33 to i64
  %35 = add nsw i64 %32, %34
  %36 = call i64 @readl(i64 %35)
  store i64 %36, i64* %12, align 8
  %37 = load i64, i64* @KIRKWOOD_I2S_CTL_SIZE_MASK, align 8
  %38 = xor i64 %37, -1
  %39 = load i64, i64* %12, align 8
  %40 = and i64 %39, %38
  store i64 %40, i64* %12, align 8
  %41 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %6, align 8
  %42 = call i32 @params_format(%struct.snd_pcm_hw_params* %41)
  switch i32 %42, label %81 [
    i32 130, label %43
    i32 129, label %57
    i32 128, label %71
  ]

43:                                               ; preds = %24
  %44 = load i64, i64* @KIRKWOOD_I2S_CTL_SIZE_16, align 8
  %45 = load i64, i64* %12, align 8
  %46 = or i64 %45, %44
  store i64 %46, i64* %12, align 8
  %47 = load i32, i32* @KIRKWOOD_PLAYCTL_SIZE_16_C, align 4
  %48 = load i32, i32* @KIRKWOOD_PLAYCTL_I2S_EN, align 4
  %49 = or i32 %47, %48
  %50 = load i32, i32* @KIRKWOOD_PLAYCTL_SPDIF_EN, align 4
  %51 = or i32 %49, %50
  store i32 %51, i32* %9, align 4
  %52 = load i32, i32* @KIRKWOOD_RECCTL_SIZE_16_C, align 4
  %53 = load i32, i32* @KIRKWOOD_RECCTL_I2S_EN, align 4
  %54 = or i32 %52, %53
  %55 = load i32, i32* @KIRKWOOD_RECCTL_SPDIF_EN, align 4
  %56 = or i32 %54, %55
  store i32 %56, i32* %10, align 4
  br label %84

57:                                               ; preds = %24
  %58 = load i64, i64* @KIRKWOOD_I2S_CTL_SIZE_24, align 8
  %59 = load i64, i64* %12, align 8
  %60 = or i64 %59, %58
  store i64 %60, i64* %12, align 8
  %61 = load i32, i32* @KIRKWOOD_PLAYCTL_SIZE_24, align 4
  %62 = load i32, i32* @KIRKWOOD_PLAYCTL_I2S_EN, align 4
  %63 = or i32 %61, %62
  %64 = load i32, i32* @KIRKWOOD_PLAYCTL_SPDIF_EN, align 4
  %65 = or i32 %63, %64
  store i32 %65, i32* %9, align 4
  %66 = load i32, i32* @KIRKWOOD_RECCTL_SIZE_24, align 4
  %67 = load i32, i32* @KIRKWOOD_RECCTL_I2S_EN, align 4
  %68 = or i32 %66, %67
  %69 = load i32, i32* @KIRKWOOD_RECCTL_SPDIF_EN, align 4
  %70 = or i32 %68, %69
  store i32 %70, i32* %10, align 4
  br label %84

71:                                               ; preds = %24
  %72 = load i64, i64* @KIRKWOOD_I2S_CTL_SIZE_32, align 8
  %73 = load i64, i64* %12, align 8
  %74 = or i64 %73, %72
  store i64 %74, i64* %12, align 8
  %75 = load i32, i32* @KIRKWOOD_PLAYCTL_SIZE_32, align 4
  %76 = load i32, i32* @KIRKWOOD_PLAYCTL_I2S_EN, align 4
  %77 = or i32 %75, %76
  store i32 %77, i32* %9, align 4
  %78 = load i32, i32* @KIRKWOOD_RECCTL_SIZE_32, align 4
  %79 = load i32, i32* @KIRKWOOD_RECCTL_I2S_EN, align 4
  %80 = or i32 %78, %79
  store i32 %80, i32* %10, align 4
  br label %84

81:                                               ; preds = %24
  %82 = load i32, i32* @EINVAL, align 4
  %83 = sub nsw i32 0, %82
  store i32 %83, i32* %4, align 4
  br label %141

84:                                               ; preds = %71, %57, %43
  %85 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %5, align 8
  %86 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %85, i32 0, i32 0
  %87 = load i64, i64* %86, align 8
  %88 = load i64, i64* @SNDRV_PCM_STREAM_PLAYBACK, align 8
  %89 = icmp eq i64 %87, %88
  br i1 %89, label %90, label %118

90:                                               ; preds = %84
  %91 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %6, align 8
  %92 = call i32 @params_channels(%struct.snd_pcm_hw_params* %91)
  %93 = icmp eq i32 %92, 1
  br i1 %93, label %94, label %98

94:                                               ; preds = %90
  %95 = load i32, i32* @KIRKWOOD_PLAYCTL_MONO_BOTH, align 4
  %96 = load i32, i32* %9, align 4
  %97 = or i32 %96, %95
  store i32 %97, i32* %9, align 4
  br label %102

98:                                               ; preds = %90
  %99 = load i32, i32* @KIRKWOOD_PLAYCTL_MONO_OFF, align 4
  %100 = load i32, i32* %9, align 4
  %101 = or i32 %100, %99
  store i32 %101, i32* %9, align 4
  br label %102

102:                                              ; preds = %98, %94
  %103 = load i32, i32* @KIRKWOOD_PLAYCTL_MONO_MASK, align 4
  %104 = load i32, i32* @KIRKWOOD_PLAYCTL_ENABLE_MASK, align 4
  %105 = or i32 %103, %104
  %106 = load i32, i32* @KIRKWOOD_PLAYCTL_SIZE_MASK, align 4
  %107 = or i32 %105, %106
  %108 = xor i32 %107, -1
  %109 = load %struct.kirkwood_dma_data*, %struct.kirkwood_dma_data** %8, align 8
  %110 = getelementptr inbounds %struct.kirkwood_dma_data, %struct.kirkwood_dma_data* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 8
  %112 = and i32 %111, %108
  store i32 %112, i32* %110, align 8
  %113 = load i32, i32* %9, align 4
  %114 = load %struct.kirkwood_dma_data*, %struct.kirkwood_dma_data** %8, align 8
  %115 = getelementptr inbounds %struct.kirkwood_dma_data, %struct.kirkwood_dma_data* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 8
  %117 = or i32 %116, %113
  store i32 %117, i32* %115, align 8
  br label %132

118:                                              ; preds = %84
  %119 = load i32, i32* @KIRKWOOD_RECCTL_ENABLE_MASK, align 4
  %120 = load i32, i32* @KIRKWOOD_RECCTL_SIZE_MASK, align 4
  %121 = or i32 %119, %120
  %122 = xor i32 %121, -1
  %123 = load %struct.kirkwood_dma_data*, %struct.kirkwood_dma_data** %8, align 8
  %124 = getelementptr inbounds %struct.kirkwood_dma_data, %struct.kirkwood_dma_data* %123, i32 0, i32 1
  %125 = load i32, i32* %124, align 4
  %126 = and i32 %125, %122
  store i32 %126, i32* %124, align 4
  %127 = load i32, i32* %10, align 4
  %128 = load %struct.kirkwood_dma_data*, %struct.kirkwood_dma_data** %8, align 8
  %129 = getelementptr inbounds %struct.kirkwood_dma_data, %struct.kirkwood_dma_data* %128, i32 0, i32 1
  %130 = load i32, i32* %129, align 4
  %131 = or i32 %130, %127
  store i32 %131, i32* %129, align 4
  br label %132

132:                                              ; preds = %118, %102
  %133 = load i64, i64* %12, align 8
  %134 = load %struct.kirkwood_dma_data*, %struct.kirkwood_dma_data** %8, align 8
  %135 = getelementptr inbounds %struct.kirkwood_dma_data, %struct.kirkwood_dma_data* %134, i32 0, i32 2
  %136 = load i64, i64* %135, align 8
  %137 = load i32, i32* %11, align 4
  %138 = zext i32 %137 to i64
  %139 = add nsw i64 %136, %138
  %140 = call i32 @writel(i64 %133, i64 %139)
  store i32 0, i32* %4, align 4
  br label %141

141:                                              ; preds = %132, %81
  %142 = load i32, i32* %4, align 4
  ret i32 %142
}

declare dso_local %struct.kirkwood_dma_data* @snd_soc_dai_get_drvdata(%struct.snd_soc_dai*) #1

declare dso_local i32 @kirkwood_set_rate(%struct.snd_soc_dai*, %struct.kirkwood_dma_data*, i32) #1

declare dso_local i32 @params_rate(%struct.snd_pcm_hw_params*) #1

declare dso_local i64 @readl(i64) #1

declare dso_local i32 @params_format(%struct.snd_pcm_hw_params*) #1

declare dso_local i32 @params_channels(%struct.snd_pcm_hw_params*) #1

declare dso_local i32 @writel(i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
