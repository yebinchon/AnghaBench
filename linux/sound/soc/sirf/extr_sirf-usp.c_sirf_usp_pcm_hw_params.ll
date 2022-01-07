; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/sirf/extr_sirf-usp.c_sirf_usp_pcm_hw_params.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/sirf/extr_sirf-usp.c_sirf_usp_pcm_hw_params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_substream = type { i64 }
%struct.snd_pcm_hw_params = type { i32 }
%struct.snd_soc_dai = type { i32 }
%struct.sirf_usp = type { i32, i32 }

@.str = private unnamed_addr constant [20 x i8] c"Format unsupported\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@SND_SOC_DAIFMT_FORMAT_MASK = common dso_local global i32 0, align 4
@USP_RX_FRAME_CTRL = common dso_local global i32 0, align 4
@USP_I2S_SYNC_CHG = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [33 x i8] c"Only support I2S and DSP_A mode\0A\00", align 1
@SND_SOC_DAIFMT_INV_MASK = common dso_local global i32 0, align 4
@USP_MODE1 = common dso_local global i32 0, align 4
@USP_RXD_ACT_EDGE_FALLING = common dso_local global i32 0, align 4
@USP_TXD_ACT_EDGE_FALLING = common dso_local global i32 0, align 4
@SNDRV_PCM_STREAM_PLAYBACK = common dso_local global i64 0, align 8
@USP_TX_FRAME_CTRL = common dso_local global i32 0, align 4
@USP_TXC_DATA_LEN_MASK = common dso_local global i32 0, align 4
@USP_TXC_FRAME_LEN_MASK = common dso_local global i32 0, align 4
@USP_TXC_SHIFTER_LEN_MASK = common dso_local global i32 0, align 4
@USP_TXC_SLAVE_CLK_SAMPLE = common dso_local global i32 0, align 4
@USP_TXC_DATA_LEN_OFFSET = common dso_local global i32 0, align 4
@USP_TXC_FRAME_LEN_OFFSET = common dso_local global i32 0, align 4
@USP_TXC_SHIFTER_LEN_OFFSET = common dso_local global i32 0, align 4
@USP_RXC_DATA_LEN_MASK = common dso_local global i32 0, align 4
@USP_RXC_FRAME_LEN_MASK = common dso_local global i32 0, align 4
@USP_RXC_SHIFTER_LEN_MASK = common dso_local global i32 0, align 4
@USP_SINGLE_SYNC_MODE = common dso_local global i32 0, align 4
@USP_RXC_DATA_LEN_OFFSET = common dso_local global i32 0, align 4
@USP_RXC_FRAME_LEN_OFFSET = common dso_local global i32 0, align 4
@USP_RXC_SHIFTER_LEN_OFFSET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_substream*, %struct.snd_pcm_hw_params*, %struct.snd_soc_dai*)* @sirf_usp_pcm_hw_params to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sirf_usp_pcm_hw_params(%struct.snd_pcm_substream* %0, %struct.snd_pcm_hw_params* %1, %struct.snd_soc_dai* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.snd_pcm_substream*, align 8
  %6 = alloca %struct.snd_pcm_hw_params*, align 8
  %7 = alloca %struct.snd_soc_dai*, align 8
  %8 = alloca %struct.sirf_usp*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %5, align 8
  store %struct.snd_pcm_hw_params* %1, %struct.snd_pcm_hw_params** %6, align 8
  store %struct.snd_soc_dai* %2, %struct.snd_soc_dai** %7, align 8
  %12 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %7, align 8
  %13 = call %struct.sirf_usp* @snd_soc_dai_get_drvdata(%struct.snd_soc_dai* %12)
  store %struct.sirf_usp* %13, %struct.sirf_usp** %8, align 8
  %14 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %6, align 8
  %15 = call i32 @params_format(%struct.snd_pcm_hw_params* %14)
  switch i32 %15, label %19 [
    i32 134, label %16
    i32 132, label %17
    i32 133, label %18
  ]

16:                                               ; preds = %3
  store i32 16, i32* %9, align 4
  store i32 16, i32* %10, align 4
  br label %26

17:                                               ; preds = %3
  store i32 24, i32* %9, align 4
  store i32 32, i32* %10, align 4
  br label %26

18:                                               ; preds = %3
  store i32 24, i32* %9, align 4
  store i32 24, i32* %10, align 4
  br label %26

19:                                               ; preds = %3
  %20 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %7, align 8
  %21 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @dev_err(i32 %22, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  %24 = load i32, i32* @EINVAL, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %4, align 4
  br label %145

26:                                               ; preds = %18, %17, %16
  %27 = load i32, i32* %9, align 4
  store i32 %27, i32* %11, align 4
  %28 = load %struct.sirf_usp*, %struct.sirf_usp** %8, align 8
  %29 = getelementptr inbounds %struct.sirf_usp, %struct.sirf_usp* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* @SND_SOC_DAIFMT_FORMAT_MASK, align 4
  %32 = and i32 %30, %31
  switch i32 %32, label %53 [
    i32 130, label %33
    i32 131, label %41
  ]

33:                                               ; preds = %26
  %34 = load %struct.sirf_usp*, %struct.sirf_usp** %8, align 8
  %35 = getelementptr inbounds %struct.sirf_usp, %struct.sirf_usp* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* @USP_RX_FRAME_CTRL, align 4
  %38 = load i32, i32* @USP_I2S_SYNC_CHG, align 4
  %39 = load i32, i32* @USP_I2S_SYNC_CHG, align 4
  %40 = call i32 @regmap_update_bits(i32 %36, i32 %37, i32 %38, i32 %39)
  br label %60

41:                                               ; preds = %26
  %42 = load %struct.sirf_usp*, %struct.sirf_usp** %8, align 8
  %43 = getelementptr inbounds %struct.sirf_usp, %struct.sirf_usp* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* @USP_RX_FRAME_CTRL, align 4
  %46 = load i32, i32* @USP_I2S_SYNC_CHG, align 4
  %47 = call i32 @regmap_update_bits(i32 %44, i32 %45, i32 %46, i32 0)
  %48 = load i32, i32* %9, align 4
  %49 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %6, align 8
  %50 = call i32 @params_channels(%struct.snd_pcm_hw_params* %49)
  %51 = mul nsw i32 %48, %50
  store i32 %51, i32* %10, align 4
  %52 = load i32, i32* %10, align 4
  store i32 %52, i32* %9, align 4
  br label %60

53:                                               ; preds = %26
  %54 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %7, align 8
  %55 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @dev_err(i32 %56, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0))
  %58 = load i32, i32* @EINVAL, align 4
  %59 = sub nsw i32 0, %58
  store i32 %59, i32* %4, align 4
  br label %145

60:                                               ; preds = %41, %33
  %61 = load %struct.sirf_usp*, %struct.sirf_usp** %8, align 8
  %62 = getelementptr inbounds %struct.sirf_usp, %struct.sirf_usp* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = load i32, i32* @SND_SOC_DAIFMT_INV_MASK, align 4
  %65 = and i32 %63, %64
  switch i32 %65, label %77 [
    i32 128, label %66
    i32 129, label %67
  ]

66:                                               ; preds = %60
  br label %80

67:                                               ; preds = %60
  %68 = load %struct.sirf_usp*, %struct.sirf_usp** %8, align 8
  %69 = getelementptr inbounds %struct.sirf_usp, %struct.sirf_usp* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  %71 = load i32, i32* @USP_MODE1, align 4
  %72 = load i32, i32* @USP_RXD_ACT_EDGE_FALLING, align 4
  %73 = load i32, i32* @USP_TXD_ACT_EDGE_FALLING, align 4
  %74 = or i32 %72, %73
  %75 = load i32, i32* @USP_RXD_ACT_EDGE_FALLING, align 4
  %76 = call i32 @regmap_update_bits(i32 %70, i32 %71, i32 %74, i32 %75)
  br label %80

77:                                               ; preds = %60
  %78 = load i32, i32* @EINVAL, align 4
  %79 = sub nsw i32 0, %78
  store i32 %79, i32* %4, align 4
  br label %145

80:                                               ; preds = %67, %66
  %81 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %5, align 8
  %82 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %81, i32 0, i32 0
  %83 = load i64, i64* %82, align 8
  %84 = load i64, i64* @SNDRV_PCM_STREAM_PLAYBACK, align 8
  %85 = icmp eq i64 %83, %84
  br i1 %85, label %86, label %115

86:                                               ; preds = %80
  %87 = load %struct.sirf_usp*, %struct.sirf_usp** %8, align 8
  %88 = getelementptr inbounds %struct.sirf_usp, %struct.sirf_usp* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 4
  %90 = load i32, i32* @USP_TX_FRAME_CTRL, align 4
  %91 = load i32, i32* @USP_TXC_DATA_LEN_MASK, align 4
  %92 = load i32, i32* @USP_TXC_FRAME_LEN_MASK, align 4
  %93 = or i32 %91, %92
  %94 = load i32, i32* @USP_TXC_SHIFTER_LEN_MASK, align 4
  %95 = or i32 %93, %94
  %96 = load i32, i32* @USP_TXC_SLAVE_CLK_SAMPLE, align 4
  %97 = or i32 %95, %96
  %98 = load i32, i32* %9, align 4
  %99 = sub nsw i32 %98, 1
  %100 = load i32, i32* @USP_TXC_DATA_LEN_OFFSET, align 4
  %101 = shl i32 %99, %100
  %102 = load i32, i32* %10, align 4
  %103 = sub nsw i32 %102, 1
  %104 = load i32, i32* @USP_TXC_FRAME_LEN_OFFSET, align 4
  %105 = shl i32 %103, %104
  %106 = or i32 %101, %105
  %107 = load i32, i32* %11, align 4
  %108 = sub nsw i32 %107, 1
  %109 = load i32, i32* @USP_TXC_SHIFTER_LEN_OFFSET, align 4
  %110 = shl i32 %108, %109
  %111 = or i32 %106, %110
  %112 = load i32, i32* @USP_TXC_SLAVE_CLK_SAMPLE, align 4
  %113 = or i32 %111, %112
  %114 = call i32 @regmap_update_bits(i32 %89, i32 %90, i32 %97, i32 %113)
  br label %144

115:                                              ; preds = %80
  %116 = load %struct.sirf_usp*, %struct.sirf_usp** %8, align 8
  %117 = getelementptr inbounds %struct.sirf_usp, %struct.sirf_usp* %116, i32 0, i32 1
  %118 = load i32, i32* %117, align 4
  %119 = load i32, i32* @USP_RX_FRAME_CTRL, align 4
  %120 = load i32, i32* @USP_RXC_DATA_LEN_MASK, align 4
  %121 = load i32, i32* @USP_RXC_FRAME_LEN_MASK, align 4
  %122 = or i32 %120, %121
  %123 = load i32, i32* @USP_RXC_SHIFTER_LEN_MASK, align 4
  %124 = or i32 %122, %123
  %125 = load i32, i32* @USP_SINGLE_SYNC_MODE, align 4
  %126 = or i32 %124, %125
  %127 = load i32, i32* %9, align 4
  %128 = sub nsw i32 %127, 1
  %129 = load i32, i32* @USP_RXC_DATA_LEN_OFFSET, align 4
  %130 = shl i32 %128, %129
  %131 = load i32, i32* %10, align 4
  %132 = sub nsw i32 %131, 1
  %133 = load i32, i32* @USP_RXC_FRAME_LEN_OFFSET, align 4
  %134 = shl i32 %132, %133
  %135 = or i32 %130, %134
  %136 = load i32, i32* %11, align 4
  %137 = sub nsw i32 %136, 1
  %138 = load i32, i32* @USP_RXC_SHIFTER_LEN_OFFSET, align 4
  %139 = shl i32 %137, %138
  %140 = or i32 %135, %139
  %141 = load i32, i32* @USP_SINGLE_SYNC_MODE, align 4
  %142 = or i32 %140, %141
  %143 = call i32 @regmap_update_bits(i32 %118, i32 %119, i32 %126, i32 %142)
  br label %144

144:                                              ; preds = %115, %86
  store i32 0, i32* %4, align 4
  br label %145

145:                                              ; preds = %144, %77, %53, %19
  %146 = load i32, i32* %4, align 4
  ret i32 %146
}

declare dso_local %struct.sirf_usp* @snd_soc_dai_get_drvdata(%struct.snd_soc_dai*) #1

declare dso_local i32 @params_format(%struct.snd_pcm_hw_params*) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @regmap_update_bits(i32, i32, i32, i32) #1

declare dso_local i32 @params_channels(%struct.snd_pcm_hw_params*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
