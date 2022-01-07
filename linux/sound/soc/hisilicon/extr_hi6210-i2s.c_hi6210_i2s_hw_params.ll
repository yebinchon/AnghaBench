; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/hisilicon/extr_hi6210-i2s.c_hi6210_i2s_hw_params.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/hisilicon/extr_hi6210-i2s.c_hi6210_i2s_hw_params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_substream = type { i64 }
%struct.snd_pcm_hw_params = type { i32 }
%struct.snd_soc_dai = type { i32 }
%struct.hi6210_i2s = type { i32, i32, i32, i32, i32, i32, i64 }
%struct.snd_dmaengine_dai_dma_data = type { i32, i32, i64 }

@HII2S_I2S_CFG__S2_CODEC_DATA_FORMAT = common dso_local global i32 0, align 4
@HII2S_BITS_16 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [12 x i8] c"Bad format\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@HII2S_FS_RATE_8KHZ = common dso_local global i32 0, align 4
@HII2S_FS_RATE_16KHZ = common dso_local global i32 0, align 4
@HII2S_FS_RATE_32KHZ = common dso_local global i32 0, align 4
@HII2S_FS_RATE_48KHZ = common dso_local global i32 0, align 4
@HII2S_FS_RATE_96KHZ = common dso_local global i32 0, align 4
@HII2S_FS_RATE_192KHZ = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [14 x i8] c"Bad rate: %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [14 x i8] c"Bad channels\0A\00", align 1
@HII2S_ST_DL_FIFO_TH_CFG = common dso_local global i32 0, align 4
@HII2S_ST_DL_FIFO_TH_CFG__ST_DL_R_AEMPTY_MASK = common dso_local global i32 0, align 4
@HII2S_ST_DL_FIFO_TH_CFG__ST_DL_R_AEMPTY_SHIFT = common dso_local global i32 0, align 4
@HII2S_ST_DL_FIFO_TH_CFG__ST_DL_R_AFULL_MASK = common dso_local global i32 0, align 4
@HII2S_ST_DL_FIFO_TH_CFG__ST_DL_R_AFULL_SHIFT = common dso_local global i32 0, align 4
@HII2S_ST_DL_FIFO_TH_CFG__ST_DL_L_AEMPTY_MASK = common dso_local global i32 0, align 4
@HII2S_ST_DL_FIFO_TH_CFG__ST_DL_L_AEMPTY_SHIFT = common dso_local global i32 0, align 4
@HII2S_ST_DL_FIFO_TH_CFG__ST_DL_L_AFULL_MASK = common dso_local global i32 0, align 4
@HII2S_ST_DL_FIFO_TH_CFG__ST_DL_L_AFULL_SHIFT = common dso_local global i32 0, align 4
@HII2S_IF_CLK_EN_CFG = common dso_local global i32 0, align 4
@HII2S_IF_CLK_EN_CFG__S2_IF_CLK_EN = common dso_local global i32 0, align 4
@HII2S_IF_CLK_EN_CFG__S2_OL_MIXER_EN = common dso_local global i32 0, align 4
@HII2S_IF_CLK_EN_CFG__S2_OL_SRC_EN = common dso_local global i32 0, align 4
@HII2S_IF_CLK_EN_CFG__ST_DL_R_EN = common dso_local global i32 0, align 4
@HII2S_IF_CLK_EN_CFG__ST_DL_L_EN = common dso_local global i32 0, align 4
@HII2S_DIG_FILTER_CLK_EN_CFG = common dso_local global i32 0, align 4
@HII2S_DIG_FILTER_CLK_EN_CFG__DACR_SDM_EN = common dso_local global i32 0, align 4
@HII2S_DIG_FILTER_CLK_EN_CFG__DACR_HBF2I_EN = common dso_local global i32 0, align 4
@HII2S_DIG_FILTER_CLK_EN_CFG__DACR_AGC_EN = common dso_local global i32 0, align 4
@HII2S_DIG_FILTER_CLK_EN_CFG__DACL_SDM_EN = common dso_local global i32 0, align 4
@HII2S_DIG_FILTER_CLK_EN_CFG__DACL_HBF2I_EN = common dso_local global i32 0, align 4
@HII2S_DIG_FILTER_CLK_EN_CFG__DACL_AGC_EN = common dso_local global i32 0, align 4
@HII2S_DIG_FILTER_CLK_EN_CFG__DACR_MIXER_EN = common dso_local global i32 0, align 4
@HII2S_DIG_FILTER_CLK_EN_CFG__DACL_MIXER_EN = common dso_local global i32 0, align 4
@HII2S_DIG_FILTER_MODULE_CFG = common dso_local global i32 0, align 4
@HII2S_DIG_FILTER_MODULE_CFG__DACR_MIXER_IN2_MUTE = common dso_local global i32 0, align 4
@HII2S_DIG_FILTER_MODULE_CFG__DACL_MIXER_IN2_MUTE = common dso_local global i32 0, align 4
@HII2S_MUX_TOP_MODULE_CFG = common dso_local global i32 0, align 4
@HII2S_MUX_TOP_MODULE_CFG__S2_OL_MIXER_IN1_MUTE = common dso_local global i32 0, align 4
@HII2S_MUX_TOP_MODULE_CFG__S2_OL_MIXER_IN2_MUTE = common dso_local global i32 0, align 4
@HII2S_MUX_TOP_MODULE_CFG__VOICE_DLINK_MIXER_IN1_MUTE = common dso_local global i32 0, align 4
@HII2S_MUX_TOP_MODULE_CFG__VOICE_DLINK_MIXER_IN2_MUTE = common dso_local global i32 0, align 4
@SND_SOC_DAIFMT_MASTER_MASK = common dso_local global i32 0, align 4
@HII2S_I2S_CFG = common dso_local global i32 0, align 4
@HII2S_I2S_CFG__S2_MST_SLV = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [53 x i8] c"Invalid i2s->fmt MASTER_MASK. This shouldn't happen\0A\00", align 1
@SND_SOC_DAIFMT_FORMAT_MASK = common dso_local global i32 0, align 4
@HII2S_FORMAT_I2S = common dso_local global i32 0, align 4
@HII2S_FORMAT_LEFT_JUST = common dso_local global i32 0, align 4
@HII2S_FORMAT_RIGHT_JUST = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [53 x i8] c"Invalid i2s->fmt FORMAT_MASK. This shouldn't happen\0A\00", align 1
@HII2S_I2S_CFG__S2_FUNC_MODE_MASK = common dso_local global i32 0, align 4
@HII2S_I2S_CFG__S2_FUNC_MODE_SHIFT = common dso_local global i32 0, align 4
@HII2S_CLK_SEL = common dso_local global i32 0, align 4
@HII2S_CLK_SEL__I2S_BT_FM_SEL = common dso_local global i32 0, align 4
@HII2S_CLK_SEL__EXT_12_288MHZ_SEL = common dso_local global i32 0, align 4
@SNDRV_PCM_STREAM_PLAYBACK = common dso_local global i64 0, align 8
@HII2S_ST_DL_CHANNEL = common dso_local global i64 0, align 8
@HII2S_STEREO_UPLINK_CHANNEL = common dso_local global i64 0, align 8
@HII2S_I2S_CFG__S2_FRAME_MODE = common dso_local global i32 0, align 4
@HII2S_I2S_CFG__S2_CODEC_IO_WORDLENGTH_MASK = common dso_local global i32 0, align 4
@HII2S_I2S_CFG__S2_CODEC_IO_WORDLENGTH_SHIFT = common dso_local global i32 0, align 4
@HII2S_I2S_CFG__S2_DIRECT_LOOP_MASK = common dso_local global i32 0, align 4
@HII2S_I2S_CFG__S2_DIRECT_LOOP_SHIFT = common dso_local global i32 0, align 4
@HII2S_FS_CFG = common dso_local global i32 0, align 4
@HII2S_FS_CFG__FS_S2_MASK = common dso_local global i32 0, align 4
@HII2S_FS_CFG__FS_S2_SHIFT = common dso_local global i32 0, align 4
@HII2S_FS_CFG__FS_DACLR_MASK = common dso_local global i32 0, align 4
@HII2S_FS_CFG__FS_DACLR_SHIFT = common dso_local global i32 0, align 4
@HII2S_FS_CFG__FS_ST_DL_R_MASK = common dso_local global i32 0, align 4
@HII2S_FS_CFG__FS_ST_DL_R_SHIFT = common dso_local global i32 0, align 4
@HII2S_FS_CFG__FS_ST_DL_L_MASK = common dso_local global i32 0, align 4
@HII2S_FS_CFG__FS_ST_DL_L_SHIFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_substream*, %struct.snd_pcm_hw_params*, %struct.snd_soc_dai*)* @hi6210_i2s_hw_params to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hi6210_i2s_hw_params(%struct.snd_pcm_substream* %0, %struct.snd_pcm_hw_params* %1, %struct.snd_soc_dai* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.snd_pcm_substream*, align 8
  %6 = alloca %struct.snd_pcm_hw_params*, align 8
  %7 = alloca %struct.snd_soc_dai*, align 8
  %8 = alloca %struct.hi6210_i2s*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.snd_dmaengine_dai_dma_data*, align 8
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %5, align 8
  store %struct.snd_pcm_hw_params* %1, %struct.snd_pcm_hw_params** %6, align 8
  store %struct.snd_soc_dai* %2, %struct.snd_soc_dai** %7, align 8
  %15 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %7, align 8
  %16 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call %struct.hi6210_i2s* @dev_get_drvdata(i32 %17)
  store %struct.hi6210_i2s* %18, %struct.hi6210_i2s** %8, align 8
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  store i32 0, i32* %12, align 4
  %19 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %6, align 8
  %20 = call i32 @params_format(%struct.snd_pcm_hw_params* %19)
  switch i32 %20, label %28 [
    i32 134, label %21
    i32 136, label %23
    i32 133, label %25
    i32 135, label %27
  ]

21:                                               ; preds = %3
  %22 = load i32, i32* @HII2S_I2S_CFG__S2_CODEC_DATA_FORMAT, align 4
  store i32 %22, i32* %11, align 4
  br label %23

23:                                               ; preds = %3, %21
  %24 = load i32, i32* @HII2S_BITS_16, align 4
  store i32 %24, i32* %9, align 4
  br label %35

25:                                               ; preds = %3
  %26 = load i32, i32* @HII2S_I2S_CFG__S2_CODEC_DATA_FORMAT, align 4
  store i32 %26, i32* %11, align 4
  br label %27

27:                                               ; preds = %3, %25
  store i32 137, i32* %9, align 4
  br label %35

28:                                               ; preds = %3
  %29 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %7, align 8
  %30 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = call i32 (i32, i8*, ...) @dev_err(i32 %31, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0))
  %33 = load i32, i32* @EINVAL, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %4, align 4
  br label %444

35:                                               ; preds = %27, %23
  %36 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %6, align 8
  %37 = call i32 @params_rate(%struct.snd_pcm_hw_params* %36)
  switch i32 %37, label %50 [
    i32 8000, label %38
    i32 16000, label %40
    i32 32000, label %42
    i32 48000, label %44
    i32 96000, label %46
    i32 192000, label %48
  ]

38:                                               ; preds = %35
  %39 = load i32, i32* @HII2S_FS_RATE_8KHZ, align 4
  store i32 %39, i32* %10, align 4
  br label %59

40:                                               ; preds = %35
  %41 = load i32, i32* @HII2S_FS_RATE_16KHZ, align 4
  store i32 %41, i32* %10, align 4
  br label %59

42:                                               ; preds = %35
  %43 = load i32, i32* @HII2S_FS_RATE_32KHZ, align 4
  store i32 %43, i32* %10, align 4
  br label %59

44:                                               ; preds = %35
  %45 = load i32, i32* @HII2S_FS_RATE_48KHZ, align 4
  store i32 %45, i32* %10, align 4
  br label %59

46:                                               ; preds = %35
  %47 = load i32, i32* @HII2S_FS_RATE_96KHZ, align 4
  store i32 %47, i32* %10, align 4
  br label %59

48:                                               ; preds = %35
  %49 = load i32, i32* @HII2S_FS_RATE_192KHZ, align 4
  store i32 %49, i32* %10, align 4
  br label %59

50:                                               ; preds = %35
  %51 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %7, align 8
  %52 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %6, align 8
  %55 = call i32 @params_rate(%struct.snd_pcm_hw_params* %54)
  %56 = call i32 (i32, i8*, ...) @dev_err(i32 %53, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0), i32 %55)
  %57 = load i32, i32* @EINVAL, align 4
  %58 = sub nsw i32 0, %57
  store i32 %58, i32* %4, align 4
  br label %444

59:                                               ; preds = %48, %46, %44, %42, %40, %38
  %60 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %6, align 8
  %61 = call i32 @params_channels(%struct.snd_pcm_hw_params* %60)
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %70, label %63

63:                                               ; preds = %59
  %64 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %7, align 8
  %65 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = call i32 (i32, i8*, ...) @dev_err(i32 %66, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0))
  %68 = load i32, i32* @EINVAL, align 4
  %69 = sub nsw i32 0, %68
  store i32 %69, i32* %4, align 4
  br label %444

70:                                               ; preds = %59
  %71 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %7, align 8
  %72 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %5, align 8
  %73 = call %struct.snd_dmaengine_dai_dma_data* @snd_soc_dai_get_dma_data(%struct.snd_soc_dai* %71, %struct.snd_pcm_substream* %72)
  store %struct.snd_dmaengine_dai_dma_data* %73, %struct.snd_dmaengine_dai_dma_data** %14, align 8
  %74 = load i32, i32* %9, align 4
  switch i32 %74, label %80 [
    i32 137, label %75
  ]

75:                                               ; preds = %70
  %76 = load %struct.hi6210_i2s*, %struct.hi6210_i2s** %8, align 8
  %77 = getelementptr inbounds %struct.hi6210_i2s, %struct.hi6210_i2s* %76, i32 0, i32 0
  store i32 32, i32* %77, align 8
  %78 = load %struct.snd_dmaengine_dai_dma_data*, %struct.snd_dmaengine_dai_dma_data** %14, align 8
  %79 = getelementptr inbounds %struct.snd_dmaengine_dai_dma_data, %struct.snd_dmaengine_dai_dma_data* %78, i32 0, i32 0
  store i32 3, i32* %79, align 8
  br label %85

80:                                               ; preds = %70
  %81 = load %struct.hi6210_i2s*, %struct.hi6210_i2s** %8, align 8
  %82 = getelementptr inbounds %struct.hi6210_i2s, %struct.hi6210_i2s* %81, i32 0, i32 0
  store i32 16, i32* %82, align 8
  %83 = load %struct.snd_dmaengine_dai_dma_data*, %struct.snd_dmaengine_dai_dma_data** %14, align 8
  %84 = getelementptr inbounds %struct.snd_dmaengine_dai_dma_data, %struct.snd_dmaengine_dai_dma_data* %83, i32 0, i32 0
  store i32 2, i32* %84, align 8
  br label %85

85:                                               ; preds = %80, %75
  %86 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %6, align 8
  %87 = call i32 @params_rate(%struct.snd_pcm_hw_params* %86)
  %88 = load %struct.hi6210_i2s*, %struct.hi6210_i2s** %8, align 8
  %89 = getelementptr inbounds %struct.hi6210_i2s, %struct.hi6210_i2s* %88, i32 0, i32 1
  store i32 %87, i32* %89, align 4
  %90 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %6, align 8
  %91 = call i32 @params_channels(%struct.snd_pcm_hw_params* %90)
  %92 = load %struct.hi6210_i2s*, %struct.hi6210_i2s** %8, align 8
  %93 = getelementptr inbounds %struct.hi6210_i2s, %struct.hi6210_i2s* %92, i32 0, i32 2
  store i32 %91, i32* %93, align 8
  %94 = load %struct.hi6210_i2s*, %struct.hi6210_i2s** %8, align 8
  %95 = getelementptr inbounds %struct.hi6210_i2s, %struct.hi6210_i2s* %94, i32 0, i32 2
  %96 = load i32, i32* %95, align 8
  %97 = load %struct.hi6210_i2s*, %struct.hi6210_i2s** %8, align 8
  %98 = getelementptr inbounds %struct.hi6210_i2s, %struct.hi6210_i2s* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 8
  %100 = mul nsw i32 %96, %99
  %101 = load %struct.hi6210_i2s*, %struct.hi6210_i2s** %8, align 8
  %102 = getelementptr inbounds %struct.hi6210_i2s, %struct.hi6210_i2s* %101, i32 0, i32 3
  store i32 %100, i32* %102, align 4
  %103 = load %struct.hi6210_i2s*, %struct.hi6210_i2s** %8, align 8
  %104 = load i32, i32* @HII2S_ST_DL_FIFO_TH_CFG, align 4
  %105 = call i32 @hi6210_read_reg(%struct.hi6210_i2s* %103, i32 %104)
  store i32 %105, i32* %13, align 4
  %106 = load i32, i32* @HII2S_ST_DL_FIFO_TH_CFG__ST_DL_R_AEMPTY_MASK, align 4
  %107 = load i32, i32* @HII2S_ST_DL_FIFO_TH_CFG__ST_DL_R_AEMPTY_SHIFT, align 4
  %108 = shl i32 %106, %107
  %109 = load i32, i32* @HII2S_ST_DL_FIFO_TH_CFG__ST_DL_R_AFULL_MASK, align 4
  %110 = load i32, i32* @HII2S_ST_DL_FIFO_TH_CFG__ST_DL_R_AFULL_SHIFT, align 4
  %111 = shl i32 %109, %110
  %112 = or i32 %108, %111
  %113 = load i32, i32* @HII2S_ST_DL_FIFO_TH_CFG__ST_DL_L_AEMPTY_MASK, align 4
  %114 = load i32, i32* @HII2S_ST_DL_FIFO_TH_CFG__ST_DL_L_AEMPTY_SHIFT, align 4
  %115 = shl i32 %113, %114
  %116 = or i32 %112, %115
  %117 = load i32, i32* @HII2S_ST_DL_FIFO_TH_CFG__ST_DL_L_AFULL_MASK, align 4
  %118 = load i32, i32* @HII2S_ST_DL_FIFO_TH_CFG__ST_DL_L_AFULL_SHIFT, align 4
  %119 = shl i32 %117, %118
  %120 = or i32 %116, %119
  %121 = xor i32 %120, -1
  %122 = load i32, i32* %13, align 4
  %123 = and i32 %122, %121
  store i32 %123, i32* %13, align 4
  %124 = load i32, i32* @HII2S_ST_DL_FIFO_TH_CFG__ST_DL_R_AEMPTY_SHIFT, align 4
  %125 = shl i32 16, %124
  %126 = load i32, i32* @HII2S_ST_DL_FIFO_TH_CFG__ST_DL_R_AFULL_SHIFT, align 4
  %127 = shl i32 30, %126
  %128 = or i32 %125, %127
  %129 = load i32, i32* @HII2S_ST_DL_FIFO_TH_CFG__ST_DL_L_AEMPTY_SHIFT, align 4
  %130 = shl i32 16, %129
  %131 = or i32 %128, %130
  %132 = load i32, i32* @HII2S_ST_DL_FIFO_TH_CFG__ST_DL_L_AFULL_SHIFT, align 4
  %133 = shl i32 30, %132
  %134 = or i32 %131, %133
  %135 = load i32, i32* %13, align 4
  %136 = or i32 %135, %134
  store i32 %136, i32* %13, align 4
  %137 = load %struct.hi6210_i2s*, %struct.hi6210_i2s** %8, align 8
  %138 = load i32, i32* @HII2S_ST_DL_FIFO_TH_CFG, align 4
  %139 = load i32, i32* %13, align 4
  %140 = call i32 @hi6210_write_reg(%struct.hi6210_i2s* %137, i32 %138, i32 %139)
  %141 = load %struct.hi6210_i2s*, %struct.hi6210_i2s** %8, align 8
  %142 = load i32, i32* @HII2S_IF_CLK_EN_CFG, align 4
  %143 = call i32 @hi6210_read_reg(%struct.hi6210_i2s* %141, i32 %142)
  store i32 %143, i32* %13, align 4
  %144 = call i32 @BIT(i32 19)
  %145 = call i32 @BIT(i32 18)
  %146 = or i32 %144, %145
  %147 = call i32 @BIT(i32 17)
  %148 = or i32 %146, %147
  %149 = load i32, i32* @HII2S_IF_CLK_EN_CFG__S2_IF_CLK_EN, align 4
  %150 = or i32 %148, %149
  %151 = load i32, i32* @HII2S_IF_CLK_EN_CFG__S2_OL_MIXER_EN, align 4
  %152 = or i32 %150, %151
  %153 = load i32, i32* @HII2S_IF_CLK_EN_CFG__S2_OL_SRC_EN, align 4
  %154 = or i32 %152, %153
  %155 = load i32, i32* @HII2S_IF_CLK_EN_CFG__ST_DL_R_EN, align 4
  %156 = or i32 %154, %155
  %157 = load i32, i32* @HII2S_IF_CLK_EN_CFG__ST_DL_L_EN, align 4
  %158 = or i32 %156, %157
  %159 = load i32, i32* %13, align 4
  %160 = or i32 %159, %158
  store i32 %160, i32* %13, align 4
  %161 = load %struct.hi6210_i2s*, %struct.hi6210_i2s** %8, align 8
  %162 = load i32, i32* @HII2S_IF_CLK_EN_CFG, align 4
  %163 = load i32, i32* %13, align 4
  %164 = call i32 @hi6210_write_reg(%struct.hi6210_i2s* %161, i32 %162, i32 %163)
  %165 = load %struct.hi6210_i2s*, %struct.hi6210_i2s** %8, align 8
  %166 = load i32, i32* @HII2S_DIG_FILTER_CLK_EN_CFG, align 4
  %167 = call i32 @hi6210_read_reg(%struct.hi6210_i2s* %165, i32 %166)
  store i32 %167, i32* %13, align 4
  %168 = load i32, i32* @HII2S_DIG_FILTER_CLK_EN_CFG__DACR_SDM_EN, align 4
  %169 = load i32, i32* @HII2S_DIG_FILTER_CLK_EN_CFG__DACR_HBF2I_EN, align 4
  %170 = or i32 %168, %169
  %171 = load i32, i32* @HII2S_DIG_FILTER_CLK_EN_CFG__DACR_AGC_EN, align 4
  %172 = or i32 %170, %171
  %173 = load i32, i32* @HII2S_DIG_FILTER_CLK_EN_CFG__DACL_SDM_EN, align 4
  %174 = or i32 %172, %173
  %175 = load i32, i32* @HII2S_DIG_FILTER_CLK_EN_CFG__DACL_HBF2I_EN, align 4
  %176 = or i32 %174, %175
  %177 = load i32, i32* @HII2S_DIG_FILTER_CLK_EN_CFG__DACL_AGC_EN, align 4
  %178 = or i32 %176, %177
  %179 = xor i32 %178, -1
  %180 = load i32, i32* %13, align 4
  %181 = and i32 %180, %179
  store i32 %181, i32* %13, align 4
  %182 = load i32, i32* @HII2S_DIG_FILTER_CLK_EN_CFG__DACR_MIXER_EN, align 4
  %183 = load i32, i32* @HII2S_DIG_FILTER_CLK_EN_CFG__DACL_MIXER_EN, align 4
  %184 = or i32 %182, %183
  %185 = load i32, i32* %13, align 4
  %186 = or i32 %185, %184
  store i32 %186, i32* %13, align 4
  %187 = load %struct.hi6210_i2s*, %struct.hi6210_i2s** %8, align 8
  %188 = load i32, i32* @HII2S_DIG_FILTER_CLK_EN_CFG, align 4
  %189 = load i32, i32* %13, align 4
  %190 = call i32 @hi6210_write_reg(%struct.hi6210_i2s* %187, i32 %188, i32 %189)
  %191 = load %struct.hi6210_i2s*, %struct.hi6210_i2s** %8, align 8
  %192 = load i32, i32* @HII2S_DIG_FILTER_MODULE_CFG, align 4
  %193 = call i32 @hi6210_read_reg(%struct.hi6210_i2s* %191, i32 %192)
  store i32 %193, i32* %13, align 4
  %194 = load i32, i32* @HII2S_DIG_FILTER_MODULE_CFG__DACR_MIXER_IN2_MUTE, align 4
  %195 = load i32, i32* @HII2S_DIG_FILTER_MODULE_CFG__DACL_MIXER_IN2_MUTE, align 4
  %196 = or i32 %194, %195
  %197 = xor i32 %196, -1
  %198 = load i32, i32* %13, align 4
  %199 = and i32 %198, %197
  store i32 %199, i32* %13, align 4
  %200 = load %struct.hi6210_i2s*, %struct.hi6210_i2s** %8, align 8
  %201 = load i32, i32* @HII2S_DIG_FILTER_MODULE_CFG, align 4
  %202 = load i32, i32* %13, align 4
  %203 = call i32 @hi6210_write_reg(%struct.hi6210_i2s* %200, i32 %201, i32 %202)
  %204 = load %struct.hi6210_i2s*, %struct.hi6210_i2s** %8, align 8
  %205 = load i32, i32* @HII2S_MUX_TOP_MODULE_CFG, align 4
  %206 = call i32 @hi6210_read_reg(%struct.hi6210_i2s* %204, i32 %205)
  store i32 %206, i32* %13, align 4
  %207 = load i32, i32* @HII2S_MUX_TOP_MODULE_CFG__S2_OL_MIXER_IN1_MUTE, align 4
  %208 = load i32, i32* @HII2S_MUX_TOP_MODULE_CFG__S2_OL_MIXER_IN2_MUTE, align 4
  %209 = or i32 %207, %208
  %210 = load i32, i32* @HII2S_MUX_TOP_MODULE_CFG__VOICE_DLINK_MIXER_IN1_MUTE, align 4
  %211 = or i32 %209, %210
  %212 = load i32, i32* @HII2S_MUX_TOP_MODULE_CFG__VOICE_DLINK_MIXER_IN2_MUTE, align 4
  %213 = or i32 %211, %212
  %214 = xor i32 %213, -1
  %215 = load i32, i32* %13, align 4
  %216 = and i32 %215, %214
  store i32 %216, i32* %13, align 4
  %217 = load %struct.hi6210_i2s*, %struct.hi6210_i2s** %8, align 8
  %218 = load i32, i32* @HII2S_MUX_TOP_MODULE_CFG, align 4
  %219 = load i32, i32* %13, align 4
  %220 = call i32 @hi6210_write_reg(%struct.hi6210_i2s* %217, i32 %218, i32 %219)
  %221 = load %struct.hi6210_i2s*, %struct.hi6210_i2s** %8, align 8
  %222 = getelementptr inbounds %struct.hi6210_i2s, %struct.hi6210_i2s* %221, i32 0, i32 4
  %223 = load i32, i32* %222, align 8
  %224 = load i32, i32* @SND_SOC_DAIFMT_MASTER_MASK, align 4
  %225 = and i32 %223, %224
  switch i32 %225, label %253 [
    i32 132, label %226
    i32 131, label %239
  ]

226:                                              ; preds = %85
  %227 = load %struct.hi6210_i2s*, %struct.hi6210_i2s** %8, align 8
  %228 = getelementptr inbounds %struct.hi6210_i2s, %struct.hi6210_i2s* %227, i32 0, i32 5
  store i32 0, i32* %228, align 4
  %229 = load %struct.hi6210_i2s*, %struct.hi6210_i2s** %8, align 8
  %230 = load i32, i32* @HII2S_I2S_CFG, align 4
  %231 = call i32 @hi6210_read_reg(%struct.hi6210_i2s* %229, i32 %230)
  store i32 %231, i32* %13, align 4
  %232 = load i32, i32* @HII2S_I2S_CFG__S2_MST_SLV, align 4
  %233 = load i32, i32* %13, align 4
  %234 = or i32 %233, %232
  store i32 %234, i32* %13, align 4
  %235 = load %struct.hi6210_i2s*, %struct.hi6210_i2s** %8, align 8
  %236 = load i32, i32* @HII2S_I2S_CFG, align 4
  %237 = load i32, i32* %13, align 4
  %238 = call i32 @hi6210_write_reg(%struct.hi6210_i2s* %235, i32 %236, i32 %237)
  br label %257

239:                                              ; preds = %85
  %240 = load %struct.hi6210_i2s*, %struct.hi6210_i2s** %8, align 8
  %241 = getelementptr inbounds %struct.hi6210_i2s, %struct.hi6210_i2s* %240, i32 0, i32 5
  store i32 1, i32* %241, align 4
  %242 = load %struct.hi6210_i2s*, %struct.hi6210_i2s** %8, align 8
  %243 = load i32, i32* @HII2S_I2S_CFG, align 4
  %244 = call i32 @hi6210_read_reg(%struct.hi6210_i2s* %242, i32 %243)
  store i32 %244, i32* %13, align 4
  %245 = load i32, i32* @HII2S_I2S_CFG__S2_MST_SLV, align 4
  %246 = xor i32 %245, -1
  %247 = load i32, i32* %13, align 4
  %248 = and i32 %247, %246
  store i32 %248, i32* %13, align 4
  %249 = load %struct.hi6210_i2s*, %struct.hi6210_i2s** %8, align 8
  %250 = load i32, i32* @HII2S_I2S_CFG, align 4
  %251 = load i32, i32* %13, align 4
  %252 = call i32 @hi6210_write_reg(%struct.hi6210_i2s* %249, i32 %250, i32 %251)
  br label %257

253:                                              ; preds = %85
  %254 = call i32 @WARN_ONCE(i32 1, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.3, i64 0, i64 0))
  %255 = load i32, i32* @EINVAL, align 4
  %256 = sub nsw i32 0, %255
  store i32 %256, i32* %4, align 4
  br label %444

257:                                              ; preds = %239, %226
  %258 = load %struct.hi6210_i2s*, %struct.hi6210_i2s** %8, align 8
  %259 = getelementptr inbounds %struct.hi6210_i2s, %struct.hi6210_i2s* %258, i32 0, i32 4
  %260 = load i32, i32* %259, align 8
  %261 = load i32, i32* @SND_SOC_DAIFMT_FORMAT_MASK, align 4
  %262 = and i32 %260, %261
  switch i32 %262, label %269 [
    i32 130, label %263
    i32 129, label %265
    i32 128, label %267
  ]

263:                                              ; preds = %257
  %264 = load i32, i32* @HII2S_FORMAT_I2S, align 4
  store i32 %264, i32* %12, align 4
  br label %273

265:                                              ; preds = %257
  %266 = load i32, i32* @HII2S_FORMAT_LEFT_JUST, align 4
  store i32 %266, i32* %12, align 4
  br label %273

267:                                              ; preds = %257
  %268 = load i32, i32* @HII2S_FORMAT_RIGHT_JUST, align 4
  store i32 %268, i32* %12, align 4
  br label %273

269:                                              ; preds = %257
  %270 = call i32 @WARN_ONCE(i32 1, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.4, i64 0, i64 0))
  %271 = load i32, i32* @EINVAL, align 4
  %272 = sub nsw i32 0, %271
  store i32 %272, i32* %4, align 4
  br label %444

273:                                              ; preds = %267, %265, %263
  %274 = load %struct.hi6210_i2s*, %struct.hi6210_i2s** %8, align 8
  %275 = load i32, i32* @HII2S_I2S_CFG, align 4
  %276 = call i32 @hi6210_read_reg(%struct.hi6210_i2s* %274, i32 %275)
  store i32 %276, i32* %13, align 4
  %277 = load i32, i32* @HII2S_I2S_CFG__S2_FUNC_MODE_MASK, align 4
  %278 = load i32, i32* @HII2S_I2S_CFG__S2_FUNC_MODE_SHIFT, align 4
  %279 = shl i32 %277, %278
  %280 = xor i32 %279, -1
  %281 = load i32, i32* %13, align 4
  %282 = and i32 %281, %280
  store i32 %282, i32* %13, align 4
  %283 = load i32, i32* %12, align 4
  %284 = load i32, i32* @HII2S_I2S_CFG__S2_FUNC_MODE_SHIFT, align 4
  %285 = shl i32 %283, %284
  %286 = load i32, i32* %13, align 4
  %287 = or i32 %286, %285
  store i32 %287, i32* %13, align 4
  %288 = load %struct.hi6210_i2s*, %struct.hi6210_i2s** %8, align 8
  %289 = load i32, i32* @HII2S_I2S_CFG, align 4
  %290 = load i32, i32* %13, align 4
  %291 = call i32 @hi6210_write_reg(%struct.hi6210_i2s* %288, i32 %289, i32 %290)
  %292 = load %struct.hi6210_i2s*, %struct.hi6210_i2s** %8, align 8
  %293 = load i32, i32* @HII2S_CLK_SEL, align 4
  %294 = call i32 @hi6210_read_reg(%struct.hi6210_i2s* %292, i32 %293)
  store i32 %294, i32* %13, align 4
  %295 = load i32, i32* @HII2S_CLK_SEL__I2S_BT_FM_SEL, align 4
  %296 = load i32, i32* @HII2S_CLK_SEL__EXT_12_288MHZ_SEL, align 4
  %297 = or i32 %295, %296
  %298 = xor i32 %297, -1
  %299 = load i32, i32* %13, align 4
  %300 = and i32 %299, %298
  store i32 %300, i32* %13, align 4
  %301 = load %struct.hi6210_i2s*, %struct.hi6210_i2s** %8, align 8
  %302 = load i32, i32* @HII2S_CLK_SEL, align 4
  %303 = load i32, i32* %13, align 4
  %304 = call i32 @hi6210_write_reg(%struct.hi6210_i2s* %301, i32 %302, i32 %303)
  %305 = load %struct.snd_dmaengine_dai_dma_data*, %struct.snd_dmaengine_dai_dma_data** %14, align 8
  %306 = getelementptr inbounds %struct.snd_dmaengine_dai_dma_data, %struct.snd_dmaengine_dai_dma_data* %305, i32 0, i32 1
  store i32 2, i32* %306, align 4
  %307 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %5, align 8
  %308 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %307, i32 0, i32 0
  %309 = load i64, i64* %308, align 8
  %310 = load i64, i64* @SNDRV_PCM_STREAM_PLAYBACK, align 8
  %311 = icmp eq i64 %309, %310
  br i1 %311, label %312, label %320

312:                                              ; preds = %273
  %313 = load %struct.hi6210_i2s*, %struct.hi6210_i2s** %8, align 8
  %314 = getelementptr inbounds %struct.hi6210_i2s, %struct.hi6210_i2s* %313, i32 0, i32 6
  %315 = load i64, i64* %314, align 8
  %316 = load i64, i64* @HII2S_ST_DL_CHANNEL, align 8
  %317 = add nsw i64 %315, %316
  %318 = load %struct.snd_dmaengine_dai_dma_data*, %struct.snd_dmaengine_dai_dma_data** %14, align 8
  %319 = getelementptr inbounds %struct.snd_dmaengine_dai_dma_data, %struct.snd_dmaengine_dai_dma_data* %318, i32 0, i32 2
  store i64 %317, i64* %319, align 8
  br label %328

320:                                              ; preds = %273
  %321 = load %struct.hi6210_i2s*, %struct.hi6210_i2s** %8, align 8
  %322 = getelementptr inbounds %struct.hi6210_i2s, %struct.hi6210_i2s* %321, i32 0, i32 6
  %323 = load i64, i64* %322, align 8
  %324 = load i64, i64* @HII2S_STEREO_UPLINK_CHANNEL, align 8
  %325 = add nsw i64 %323, %324
  %326 = load %struct.snd_dmaengine_dai_dma_data*, %struct.snd_dmaengine_dai_dma_data** %14, align 8
  %327 = getelementptr inbounds %struct.snd_dmaengine_dai_dma_data, %struct.snd_dmaengine_dai_dma_data* %326, i32 0, i32 2
  store i64 %325, i64* %327, align 8
  br label %328

328:                                              ; preds = %320, %312
  %329 = load %struct.hi6210_i2s*, %struct.hi6210_i2s** %8, align 8
  %330 = getelementptr inbounds %struct.hi6210_i2s, %struct.hi6210_i2s* %329, i32 0, i32 2
  %331 = load i32, i32* %330, align 8
  switch i32 %331, label %343 [
    i32 1, label %332
  ]

332:                                              ; preds = %328
  %333 = load %struct.hi6210_i2s*, %struct.hi6210_i2s** %8, align 8
  %334 = load i32, i32* @HII2S_I2S_CFG, align 4
  %335 = call i32 @hi6210_read_reg(%struct.hi6210_i2s* %333, i32 %334)
  store i32 %335, i32* %13, align 4
  %336 = load i32, i32* @HII2S_I2S_CFG__S2_FRAME_MODE, align 4
  %337 = load i32, i32* %13, align 4
  %338 = or i32 %337, %336
  store i32 %338, i32* %13, align 4
  %339 = load %struct.hi6210_i2s*, %struct.hi6210_i2s** %8, align 8
  %340 = load i32, i32* @HII2S_I2S_CFG, align 4
  %341 = load i32, i32* %13, align 4
  %342 = call i32 @hi6210_write_reg(%struct.hi6210_i2s* %339, i32 %340, i32 %341)
  br label %355

343:                                              ; preds = %328
  %344 = load %struct.hi6210_i2s*, %struct.hi6210_i2s** %8, align 8
  %345 = load i32, i32* @HII2S_I2S_CFG, align 4
  %346 = call i32 @hi6210_read_reg(%struct.hi6210_i2s* %344, i32 %345)
  store i32 %346, i32* %13, align 4
  %347 = load i32, i32* @HII2S_I2S_CFG__S2_FRAME_MODE, align 4
  %348 = xor i32 %347, -1
  %349 = load i32, i32* %13, align 4
  %350 = and i32 %349, %348
  store i32 %350, i32* %13, align 4
  %351 = load %struct.hi6210_i2s*, %struct.hi6210_i2s** %8, align 8
  %352 = load i32, i32* @HII2S_I2S_CFG, align 4
  %353 = load i32, i32* %13, align 4
  %354 = call i32 @hi6210_write_reg(%struct.hi6210_i2s* %351, i32 %352, i32 %353)
  br label %355

355:                                              ; preds = %343, %332
  %356 = load %struct.hi6210_i2s*, %struct.hi6210_i2s** %8, align 8
  %357 = load i32, i32* @HII2S_I2S_CFG, align 4
  %358 = call i32 @hi6210_read_reg(%struct.hi6210_i2s* %356, i32 %357)
  store i32 %358, i32* %13, align 4
  %359 = load i32, i32* @HII2S_I2S_CFG__S2_CODEC_DATA_FORMAT, align 4
  %360 = xor i32 %359, -1
  %361 = load i32, i32* %13, align 4
  %362 = and i32 %361, %360
  store i32 %362, i32* %13, align 4
  %363 = load i32, i32* @HII2S_I2S_CFG__S2_CODEC_IO_WORDLENGTH_MASK, align 4
  %364 = load i32, i32* @HII2S_I2S_CFG__S2_CODEC_IO_WORDLENGTH_SHIFT, align 4
  %365 = shl i32 %363, %364
  %366 = xor i32 %365, -1
  %367 = load i32, i32* %13, align 4
  %368 = and i32 %367, %366
  store i32 %368, i32* %13, align 4
  %369 = load i32, i32* @HII2S_I2S_CFG__S2_DIRECT_LOOP_MASK, align 4
  %370 = load i32, i32* @HII2S_I2S_CFG__S2_DIRECT_LOOP_SHIFT, align 4
  %371 = shl i32 %369, %370
  %372 = xor i32 %371, -1
  %373 = load i32, i32* %13, align 4
  %374 = and i32 %373, %372
  store i32 %374, i32* %13, align 4
  %375 = load i32, i32* %11, align 4
  %376 = load i32, i32* %13, align 4
  %377 = or i32 %376, %375
  store i32 %377, i32* %13, align 4
  %378 = load i32, i32* %9, align 4
  %379 = load i32, i32* @HII2S_I2S_CFG__S2_CODEC_IO_WORDLENGTH_SHIFT, align 4
  %380 = shl i32 %378, %379
  %381 = load i32, i32* %13, align 4
  %382 = or i32 %381, %380
  store i32 %382, i32* %13, align 4
  %383 = load %struct.hi6210_i2s*, %struct.hi6210_i2s** %8, align 8
  %384 = load i32, i32* @HII2S_I2S_CFG, align 4
  %385 = load i32, i32* %13, align 4
  %386 = call i32 @hi6210_write_reg(%struct.hi6210_i2s* %383, i32 %384, i32 %385)
  %387 = load %struct.hi6210_i2s*, %struct.hi6210_i2s** %8, align 8
  %388 = getelementptr inbounds %struct.hi6210_i2s, %struct.hi6210_i2s* %387, i32 0, i32 5
  %389 = load i32, i32* %388, align 4
  %390 = icmp ne i32 %389, 0
  br i1 %390, label %392, label %391

391:                                              ; preds = %355
  store i32 0, i32* %4, align 4
  br label %444

392:                                              ; preds = %355
  %393 = load %struct.hi6210_i2s*, %struct.hi6210_i2s** %8, align 8
  %394 = load i32, i32* @HII2S_FS_CFG, align 4
  %395 = call i32 @hi6210_read_reg(%struct.hi6210_i2s* %393, i32 %394)
  store i32 %395, i32* %13, align 4
  %396 = load i32, i32* @HII2S_FS_CFG__FS_S2_MASK, align 4
  %397 = load i32, i32* @HII2S_FS_CFG__FS_S2_SHIFT, align 4
  %398 = shl i32 %396, %397
  %399 = xor i32 %398, -1
  %400 = load i32, i32* %13, align 4
  %401 = and i32 %400, %399
  store i32 %401, i32* %13, align 4
  %402 = load i32, i32* @HII2S_FS_CFG__FS_DACLR_MASK, align 4
  %403 = load i32, i32* @HII2S_FS_CFG__FS_DACLR_SHIFT, align 4
  %404 = shl i32 %402, %403
  %405 = xor i32 %404, -1
  %406 = load i32, i32* %13, align 4
  %407 = and i32 %406, %405
  store i32 %407, i32* %13, align 4
  %408 = load i32, i32* @HII2S_FS_CFG__FS_ST_DL_R_MASK, align 4
  %409 = load i32, i32* @HII2S_FS_CFG__FS_ST_DL_R_SHIFT, align 4
  %410 = shl i32 %408, %409
  %411 = xor i32 %410, -1
  %412 = load i32, i32* %13, align 4
  %413 = and i32 %412, %411
  store i32 %413, i32* %13, align 4
  %414 = load i32, i32* @HII2S_FS_CFG__FS_ST_DL_L_MASK, align 4
  %415 = load i32, i32* @HII2S_FS_CFG__FS_ST_DL_L_SHIFT, align 4
  %416 = shl i32 %414, %415
  %417 = xor i32 %416, -1
  %418 = load i32, i32* %13, align 4
  %419 = and i32 %418, %417
  store i32 %419, i32* %13, align 4
  %420 = load i32, i32* %10, align 4
  %421 = load i32, i32* @HII2S_FS_CFG__FS_S2_SHIFT, align 4
  %422 = shl i32 %420, %421
  %423 = load i32, i32* %13, align 4
  %424 = or i32 %423, %422
  store i32 %424, i32* %13, align 4
  %425 = load i32, i32* %10, align 4
  %426 = load i32, i32* @HII2S_FS_CFG__FS_DACLR_SHIFT, align 4
  %427 = shl i32 %425, %426
  %428 = load i32, i32* %13, align 4
  %429 = or i32 %428, %427
  store i32 %429, i32* %13, align 4
  %430 = load i32, i32* %10, align 4
  %431 = load i32, i32* @HII2S_FS_CFG__FS_ST_DL_R_SHIFT, align 4
  %432 = shl i32 %430, %431
  %433 = load i32, i32* %13, align 4
  %434 = or i32 %433, %432
  store i32 %434, i32* %13, align 4
  %435 = load i32, i32* %10, align 4
  %436 = load i32, i32* @HII2S_FS_CFG__FS_ST_DL_L_SHIFT, align 4
  %437 = shl i32 %435, %436
  %438 = load i32, i32* %13, align 4
  %439 = or i32 %438, %437
  store i32 %439, i32* %13, align 4
  %440 = load %struct.hi6210_i2s*, %struct.hi6210_i2s** %8, align 8
  %441 = load i32, i32* @HII2S_FS_CFG, align 4
  %442 = load i32, i32* %13, align 4
  %443 = call i32 @hi6210_write_reg(%struct.hi6210_i2s* %440, i32 %441, i32 %442)
  store i32 0, i32* %4, align 4
  br label %444

444:                                              ; preds = %392, %391, %269, %253, %63, %50, %28
  %445 = load i32, i32* %4, align 4
  ret i32 %445
}

declare dso_local %struct.hi6210_i2s* @dev_get_drvdata(i32) #1

declare dso_local i32 @params_format(%struct.snd_pcm_hw_params*) #1

declare dso_local i32 @dev_err(i32, i8*, ...) #1

declare dso_local i32 @params_rate(%struct.snd_pcm_hw_params*) #1

declare dso_local i32 @params_channels(%struct.snd_pcm_hw_params*) #1

declare dso_local %struct.snd_dmaengine_dai_dma_data* @snd_soc_dai_get_dma_data(%struct.snd_soc_dai*, %struct.snd_pcm_substream*) #1

declare dso_local i32 @hi6210_read_reg(%struct.hi6210_i2s*, i32) #1

declare dso_local i32 @hi6210_write_reg(%struct.hi6210_i2s*, i32, i32) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @WARN_ONCE(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
