; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/tegra/extr_tegra30_i2s.c_tegra30_i2s_hw_params.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/tegra/extr_tegra30_i2s.c_tegra30_i2s_hw_params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_substream = type { i64 }
%struct.snd_pcm_hw_params = type { i32 }
%struct.snd_soc_dai = type { %struct.device* }
%struct.device = type { i32 }
%struct.tegra30_i2s = type { i32, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 (i32, i32, %struct.tegra30_ahub_cif_conf*)* }
%struct.tegra30_ahub_cif_conf = type { i32, i32, i32, i64, i64, i64, i64, i64, i8*, i8*, i64 }

@EINVAL = common dso_local global i32 0, align 4
@TEGRA30_I2S_CTRL_BIT_SIZE_MASK = common dso_local global i32 0, align 4
@TEGRA30_I2S_CTRL_BIT_SIZE_16 = common dso_local global i32 0, align 4
@TEGRA30_I2S_CTRL = common dso_local global i32 0, align 4
@TEGRA30_I2S_TIMING_CHANNEL_BIT_COUNT_MASK_US = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"Can't set I2S clock rate: %d\0A\00", align 1
@TEGRA30_I2S_TIMING_CHANNEL_BIT_COUNT_SHIFT = common dso_local global i32 0, align 4
@TEGRA30_I2S_TIMING_NON_SYM_ENABLE = common dso_local global i32 0, align 4
@TEGRA30_I2S_TIMING = common dso_local global i32 0, align 4
@TEGRA30_AUDIOCIF_BITS_16 = common dso_local global i8* null, align 8
@SNDRV_PCM_STREAM_PLAYBACK = common dso_local global i64 0, align 8
@TEGRA30_AUDIOCIF_DIRECTION_RX = common dso_local global i32 0, align 4
@TEGRA30_I2S_CIF_RX_CTRL = common dso_local global i32 0, align 4
@TEGRA30_AUDIOCIF_DIRECTION_TX = common dso_local global i32 0, align 4
@TEGRA30_I2S_CIF_TX_CTRL = common dso_local global i32 0, align 4
@TEGRA30_I2S_OFFSET_RX_DATA_OFFSET_SHIFT = common dso_local global i32 0, align 4
@TEGRA30_I2S_OFFSET_TX_DATA_OFFSET_SHIFT = common dso_local global i32 0, align 4
@TEGRA30_I2S_OFFSET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_substream*, %struct.snd_pcm_hw_params*, %struct.snd_soc_dai*)* @tegra30_i2s_hw_params to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tegra30_i2s_hw_params(%struct.snd_pcm_substream* %0, %struct.snd_pcm_hw_params* %1, %struct.snd_soc_dai* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.snd_pcm_substream*, align 8
  %6 = alloca %struct.snd_pcm_hw_params*, align 8
  %7 = alloca %struct.snd_soc_dai*, align 8
  %8 = alloca %struct.device*, align 8
  %9 = alloca %struct.tegra30_i2s*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca %struct.tegra30_ahub_cif_conf, align 8
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %5, align 8
  store %struct.snd_pcm_hw_params* %1, %struct.snd_pcm_hw_params** %6, align 8
  store %struct.snd_soc_dai* %2, %struct.snd_soc_dai** %7, align 8
  %19 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %7, align 8
  %20 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %19, i32 0, i32 0
  %21 = load %struct.device*, %struct.device** %20, align 8
  store %struct.device* %21, %struct.device** %8, align 8
  %22 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %7, align 8
  %23 = call %struct.tegra30_i2s* @snd_soc_dai_get_drvdata(%struct.snd_soc_dai* %22)
  store %struct.tegra30_i2s* %23, %struct.tegra30_i2s** %9, align 8
  %24 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %6, align 8
  %25 = call i32 @params_channels(%struct.snd_pcm_hw_params* %24)
  %26 = icmp ne i32 %25, 2
  br i1 %26, label %27, label %30

27:                                               ; preds = %3
  %28 = load i32, i32* @EINVAL, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %4, align 4
  br label %150

30:                                               ; preds = %3
  %31 = load i32, i32* @TEGRA30_I2S_CTRL_BIT_SIZE_MASK, align 4
  store i32 %31, i32* %10, align 4
  %32 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %6, align 8
  %33 = call i32 @params_format(%struct.snd_pcm_hw_params* %32)
  switch i32 %33, label %36 [
    i32 128, label %34
  ]

34:                                               ; preds = %30
  %35 = load i32, i32* @TEGRA30_I2S_CTRL_BIT_SIZE_16, align 4
  store i32 %35, i32* %11, align 4
  store i32 16, i32* %14, align 4
  br label %39

36:                                               ; preds = %30
  %37 = load i32, i32* @EINVAL, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %4, align 4
  br label %150

39:                                               ; preds = %34
  %40 = load %struct.tegra30_i2s*, %struct.tegra30_i2s** %9, align 8
  %41 = getelementptr inbounds %struct.tegra30_i2s, %struct.tegra30_i2s* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = load i32, i32* @TEGRA30_I2S_CTRL, align 4
  %44 = load i32, i32* %10, align 4
  %45 = load i32, i32* %11, align 4
  %46 = call i32 @regmap_update_bits(i32 %42, i32 %43, i32 %44, i32 %45)
  %47 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %6, align 8
  %48 = call i32 @params_rate(%struct.snd_pcm_hw_params* %47)
  store i32 %48, i32* %15, align 4
  %49 = load i32, i32* %15, align 4
  %50 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %6, align 8
  %51 = call i32 @params_channels(%struct.snd_pcm_hw_params* %50)
  %52 = mul nsw i32 %49, %51
  %53 = load i32, i32* %14, align 4
  %54 = mul nsw i32 %52, %53
  %55 = mul nsw i32 %54, 2
  store i32 %55, i32* %16, align 4
  %56 = load i32, i32* %16, align 4
  %57 = load i32, i32* %15, align 4
  %58 = mul nsw i32 2, %57
  %59 = sdiv i32 %56, %58
  %60 = sub nsw i32 %59, 1
  store i32 %60, i32* %17, align 4
  %61 = load i32, i32* %17, align 4
  %62 = icmp slt i32 %61, 0
  br i1 %62, label %67, label %63

63:                                               ; preds = %39
  %64 = load i32, i32* %17, align 4
  %65 = load i32, i32* @TEGRA30_I2S_TIMING_CHANNEL_BIT_COUNT_MASK_US, align 4
  %66 = icmp sgt i32 %64, %65
  br i1 %66, label %67, label %70

67:                                               ; preds = %63, %39
  %68 = load i32, i32* @EINVAL, align 4
  %69 = sub nsw i32 0, %68
  store i32 %69, i32* %4, align 4
  br label %150

70:                                               ; preds = %63
  %71 = load %struct.tegra30_i2s*, %struct.tegra30_i2s** %9, align 8
  %72 = getelementptr inbounds %struct.tegra30_i2s, %struct.tegra30_i2s* %71, i32 0, i32 2
  %73 = load i32, i32* %72, align 8
  %74 = load i32, i32* %16, align 4
  %75 = call i32 @clk_set_rate(i32 %73, i32 %74)
  store i32 %75, i32* %13, align 4
  %76 = load i32, i32* %13, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %83

78:                                               ; preds = %70
  %79 = load %struct.device*, %struct.device** %8, align 8
  %80 = load i32, i32* %13, align 4
  %81 = call i32 @dev_err(%struct.device* %79, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %80)
  %82 = load i32, i32* %13, align 4
  store i32 %82, i32* %4, align 4
  br label %150

83:                                               ; preds = %70
  %84 = load i32, i32* %17, align 4
  %85 = load i32, i32* @TEGRA30_I2S_TIMING_CHANNEL_BIT_COUNT_SHIFT, align 4
  %86 = shl i32 %84, %85
  store i32 %86, i32* %11, align 4
  %87 = load i32, i32* %16, align 4
  %88 = load i32, i32* %15, align 4
  %89 = mul nsw i32 2, %88
  %90 = srem i32 %87, %89
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %96

92:                                               ; preds = %83
  %93 = load i32, i32* @TEGRA30_I2S_TIMING_NON_SYM_ENABLE, align 4
  %94 = load i32, i32* %11, align 4
  %95 = or i32 %94, %93
  store i32 %95, i32* %11, align 4
  br label %96

96:                                               ; preds = %92, %83
  %97 = load %struct.tegra30_i2s*, %struct.tegra30_i2s** %9, align 8
  %98 = getelementptr inbounds %struct.tegra30_i2s, %struct.tegra30_i2s* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 8
  %100 = load i32, i32* @TEGRA30_I2S_TIMING, align 4
  %101 = load i32, i32* %11, align 4
  %102 = call i32 @regmap_write(i32 %99, i32 %100, i32 %101)
  %103 = getelementptr inbounds %struct.tegra30_ahub_cif_conf, %struct.tegra30_ahub_cif_conf* %18, i32 0, i32 10
  store i64 0, i64* %103, align 8
  %104 = getelementptr inbounds %struct.tegra30_ahub_cif_conf, %struct.tegra30_ahub_cif_conf* %18, i32 0, i32 0
  store i32 2, i32* %104, align 8
  %105 = getelementptr inbounds %struct.tegra30_ahub_cif_conf, %struct.tegra30_ahub_cif_conf* %18, i32 0, i32 1
  store i32 2, i32* %105, align 4
  %106 = load i8*, i8** @TEGRA30_AUDIOCIF_BITS_16, align 8
  %107 = getelementptr inbounds %struct.tegra30_ahub_cif_conf, %struct.tegra30_ahub_cif_conf* %18, i32 0, i32 9
  store i8* %106, i8** %107, align 8
  %108 = load i8*, i8** @TEGRA30_AUDIOCIF_BITS_16, align 8
  %109 = getelementptr inbounds %struct.tegra30_ahub_cif_conf, %struct.tegra30_ahub_cif_conf* %18, i32 0, i32 8
  store i8* %108, i8** %109, align 8
  %110 = getelementptr inbounds %struct.tegra30_ahub_cif_conf, %struct.tegra30_ahub_cif_conf* %18, i32 0, i32 7
  store i64 0, i64* %110, align 8
  %111 = getelementptr inbounds %struct.tegra30_ahub_cif_conf, %struct.tegra30_ahub_cif_conf* %18, i32 0, i32 6
  store i64 0, i64* %111, align 8
  %112 = getelementptr inbounds %struct.tegra30_ahub_cif_conf, %struct.tegra30_ahub_cif_conf* %18, i32 0, i32 5
  store i64 0, i64* %112, align 8
  %113 = getelementptr inbounds %struct.tegra30_ahub_cif_conf, %struct.tegra30_ahub_cif_conf* %18, i32 0, i32 4
  store i64 0, i64* %113, align 8
  %114 = getelementptr inbounds %struct.tegra30_ahub_cif_conf, %struct.tegra30_ahub_cif_conf* %18, i32 0, i32 3
  store i64 0, i64* %114, align 8
  %115 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %5, align 8
  %116 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %115, i32 0, i32 0
  %117 = load i64, i64* %116, align 8
  %118 = load i64, i64* @SNDRV_PCM_STREAM_PLAYBACK, align 8
  %119 = icmp eq i64 %117, %118
  br i1 %119, label %120, label %124

120:                                              ; preds = %96
  %121 = load i32, i32* @TEGRA30_AUDIOCIF_DIRECTION_RX, align 4
  %122 = getelementptr inbounds %struct.tegra30_ahub_cif_conf, %struct.tegra30_ahub_cif_conf* %18, i32 0, i32 2
  store i32 %121, i32* %122, align 8
  %123 = load i32, i32* @TEGRA30_I2S_CIF_RX_CTRL, align 4
  store i32 %123, i32* %12, align 4
  br label %128

124:                                              ; preds = %96
  %125 = load i32, i32* @TEGRA30_AUDIOCIF_DIRECTION_TX, align 4
  %126 = getelementptr inbounds %struct.tegra30_ahub_cif_conf, %struct.tegra30_ahub_cif_conf* %18, i32 0, i32 2
  store i32 %125, i32* %126, align 8
  %127 = load i32, i32* @TEGRA30_I2S_CIF_TX_CTRL, align 4
  store i32 %127, i32* %12, align 4
  br label %128

128:                                              ; preds = %124, %120
  %129 = load %struct.tegra30_i2s*, %struct.tegra30_i2s** %9, align 8
  %130 = getelementptr inbounds %struct.tegra30_i2s, %struct.tegra30_i2s* %129, i32 0, i32 1
  %131 = load %struct.TYPE_2__*, %struct.TYPE_2__** %130, align 8
  %132 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %131, i32 0, i32 0
  %133 = load i32 (i32, i32, %struct.tegra30_ahub_cif_conf*)*, i32 (i32, i32, %struct.tegra30_ahub_cif_conf*)** %132, align 8
  %134 = load %struct.tegra30_i2s*, %struct.tegra30_i2s** %9, align 8
  %135 = getelementptr inbounds %struct.tegra30_i2s, %struct.tegra30_i2s* %134, i32 0, i32 0
  %136 = load i32, i32* %135, align 8
  %137 = load i32, i32* %12, align 4
  %138 = call i32 %133(i32 %136, i32 %137, %struct.tegra30_ahub_cif_conf* %18)
  %139 = load i32, i32* @TEGRA30_I2S_OFFSET_RX_DATA_OFFSET_SHIFT, align 4
  %140 = shl i32 1, %139
  %141 = load i32, i32* @TEGRA30_I2S_OFFSET_TX_DATA_OFFSET_SHIFT, align 4
  %142 = shl i32 1, %141
  %143 = or i32 %140, %142
  store i32 %143, i32* %11, align 4
  %144 = load %struct.tegra30_i2s*, %struct.tegra30_i2s** %9, align 8
  %145 = getelementptr inbounds %struct.tegra30_i2s, %struct.tegra30_i2s* %144, i32 0, i32 0
  %146 = load i32, i32* %145, align 8
  %147 = load i32, i32* @TEGRA30_I2S_OFFSET, align 4
  %148 = load i32, i32* %11, align 4
  %149 = call i32 @regmap_write(i32 %146, i32 %147, i32 %148)
  store i32 0, i32* %4, align 4
  br label %150

150:                                              ; preds = %128, %78, %67, %36, %27
  %151 = load i32, i32* %4, align 4
  ret i32 %151
}

declare dso_local %struct.tegra30_i2s* @snd_soc_dai_get_drvdata(%struct.snd_soc_dai*) #1

declare dso_local i32 @params_channels(%struct.snd_pcm_hw_params*) #1

declare dso_local i32 @params_format(%struct.snd_pcm_hw_params*) #1

declare dso_local i32 @regmap_update_bits(i32, i32, i32, i32) #1

declare dso_local i32 @params_rate(%struct.snd_pcm_hw_params*) #1

declare dso_local i32 @clk_set_rate(i32, i32) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, i32) #1

declare dso_local i32 @regmap_write(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
