; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/amd/extr_acp-pcm-dma.c_acp_dma_hw_params.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/amd/extr_acp-pcm-dma.c_acp_dma_hw_params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_substream = type { i64, %struct.TYPE_2__, %struct.snd_pcm_runtime*, %struct.snd_soc_pcm_runtime* }
%struct.TYPE_2__ = type { i32, i64 }
%struct.snd_pcm_runtime = type { i32, %struct.audio_substream_data* }
%struct.audio_substream_data = type { i32, i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8*, i32, i32, i32 }
%struct.snd_soc_pcm_runtime = type { %struct.snd_soc_card* }
%struct.snd_soc_card = type { i32 }
%struct.snd_pcm_hw_params = type { i32 }
%struct.snd_soc_component = type { i32 }
%struct.audio_drv_data = type { i64, %struct.snd_pcm_substream*, %struct.snd_pcm_substream*, %struct.snd_pcm_substream*, %struct.snd_pcm_substream*, i32 }
%struct.acp_platform_info = type { i32, i32, i32 }

@DRV_NAME = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@SNDRV_PCM_STREAM_PLAYBACK = common dso_local global i64 0, align 8
@mmACP_I2S_16BIT_RESOLUTION_EN = common dso_local global i32 0, align 4
@ACP_I2S_BT_16BIT_RESOLUTION_EN = common dso_local global i32 0, align 4
@ACP_I2S_SP_16BIT_RESOLUTION_EN = common dso_local global i32 0, align 4
@ACP_I2S_MIC_16BIT_RESOLUTION_EN = common dso_local global i32 0, align 4
@ACP_ST_BT_PLAYBACK_PTE_OFFSET = common dso_local global i8* null, align 8
@SYSRAM_TO_ACP_BT_INSTANCE_CH_NUM = common dso_local global i32 0, align 4
@ACP_TO_I2S_DMA_BT_INSTANCE_CH_NUM = common dso_local global i32 0, align 4
@ACP_SRAM_BANK_3_ADDRESS = common dso_local global i32 0, align 4
@TO_BLUETOOTH = common dso_local global i32 0, align 4
@PLAYBACK_START_DMA_DESCR_CH8 = common dso_local global i32 0, align 4
@PLAYBACK_START_DMA_DESCR_CH9 = common dso_local global i32 0, align 4
@mmACP_I2S_BT_TRANSMIT_BYTE_CNT_HIGH = common dso_local global i32 0, align 4
@mmACP_I2S_BT_TRANSMIT_BYTE_CNT_LOW = common dso_local global i32 0, align 4
@ACP_ST_PLAYBACK_PTE_OFFSET = common dso_local global i8* null, align 8
@ACP_PLAYBACK_PTE_OFFSET = common dso_local global i8* null, align 8
@SYSRAM_TO_ACP_CH_NUM = common dso_local global i32 0, align 4
@ACP_TO_I2S_DMA_CH_NUM = common dso_local global i32 0, align 4
@ACP_SRAM_BANK_1_ADDRESS = common dso_local global i32 0, align 4
@TO_ACP_I2S_1 = common dso_local global i32 0, align 4
@PLAYBACK_START_DMA_DESCR_CH12 = common dso_local global i32 0, align 4
@PLAYBACK_START_DMA_DESCR_CH13 = common dso_local global i32 0, align 4
@mmACP_I2S_TRANSMIT_BYTE_CNT_HIGH = common dso_local global i32 0, align 4
@mmACP_I2S_TRANSMIT_BYTE_CNT_LOW = common dso_local global i32 0, align 4
@ACP_ST_BT_CAPTURE_PTE_OFFSET = common dso_local global i8* null, align 8
@I2S_TO_ACP_DMA_BT_INSTANCE_CH_NUM = common dso_local global i32 0, align 4
@ACP_TO_SYSRAM_BT_INSTANCE_CH_NUM = common dso_local global i32 0, align 4
@ACP_SRAM_BANK_4_ADDRESS = common dso_local global i32 0, align 4
@FROM_BLUETOOTH = common dso_local global i32 0, align 4
@CAPTURE_START_DMA_DESCR_CH10 = common dso_local global i32 0, align 4
@CAPTURE_START_DMA_DESCR_CH11 = common dso_local global i32 0, align 4
@mmACP_I2S_BT_RECEIVE_BYTE_CNT_HIGH = common dso_local global i32 0, align 4
@mmACP_I2S_BT_RECEIVE_BYTE_CNT_LOW = common dso_local global i32 0, align 4
@mmACP_DMA_CUR_DSCR_11 = common dso_local global i32 0, align 4
@ACP_CAPTURE_PTE_OFFSET = common dso_local global i8* null, align 8
@I2S_TO_ACP_DMA_CH_NUM = common dso_local global i32 0, align 4
@ACP_TO_SYSRAM_CH_NUM = common dso_local global i32 0, align 4
@ACP_ST_CAPTURE_PTE_OFFSET = common dso_local global i8* null, align 8
@ACP_SRAM_BANK_2_ADDRESS = common dso_local global i32 0, align 4
@ACP_SRAM_BANK_5_ADDRESS = common dso_local global i32 0, align 4
@FROM_ACP_I2S_1 = common dso_local global i32 0, align 4
@CAPTURE_START_DMA_DESCR_CH14 = common dso_local global i32 0, align 4
@CAPTURE_START_DMA_DESCR_CH15 = common dso_local global i32 0, align 4
@mmACP_I2S_RECEIVED_BYTE_CNT_HIGH = common dso_local global i32 0, align 4
@mmACP_I2S_RECEIVED_BYTE_CNT_LOW = common dso_local global i32 0, align 4
@mmACP_DMA_CUR_DSCR_15 = common dso_local global i32 0, align 4
@PAGE_SHIFT = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_substream*, %struct.snd_pcm_hw_params*)* @acp_dma_hw_params to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @acp_dma_hw_params(%struct.snd_pcm_substream* %0, %struct.snd_pcm_hw_params* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.snd_pcm_substream*, align 8
  %5 = alloca %struct.snd_pcm_hw_params*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.snd_pcm_runtime*, align 8
  %10 = alloca %struct.audio_substream_data*, align 8
  %11 = alloca %struct.snd_soc_pcm_runtime*, align 8
  %12 = alloca %struct.snd_soc_component*, align 8
  %13 = alloca %struct.audio_drv_data*, align 8
  %14 = alloca %struct.snd_soc_card*, align 8
  %15 = alloca %struct.acp_platform_info*, align 8
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %4, align 8
  store %struct.snd_pcm_hw_params* %1, %struct.snd_pcm_hw_params** %5, align 8
  store i32 0, i32* %8, align 4
  %16 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %4, align 8
  %17 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %16, i32 0, i32 3
  %18 = load %struct.snd_soc_pcm_runtime*, %struct.snd_soc_pcm_runtime** %17, align 8
  store %struct.snd_soc_pcm_runtime* %18, %struct.snd_soc_pcm_runtime** %11, align 8
  %19 = load %struct.snd_soc_pcm_runtime*, %struct.snd_soc_pcm_runtime** %11, align 8
  %20 = load i32, i32* @DRV_NAME, align 4
  %21 = call %struct.snd_soc_component* @snd_soc_rtdcom_lookup(%struct.snd_soc_pcm_runtime* %19, i32 %20)
  store %struct.snd_soc_component* %21, %struct.snd_soc_component** %12, align 8
  %22 = load %struct.snd_soc_component*, %struct.snd_soc_component** %12, align 8
  %23 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call %struct.audio_drv_data* @dev_get_drvdata(i32 %24)
  store %struct.audio_drv_data* %25, %struct.audio_drv_data** %13, align 8
  %26 = load %struct.snd_soc_pcm_runtime*, %struct.snd_soc_pcm_runtime** %11, align 8
  %27 = getelementptr inbounds %struct.snd_soc_pcm_runtime, %struct.snd_soc_pcm_runtime* %26, i32 0, i32 0
  %28 = load %struct.snd_soc_card*, %struct.snd_soc_card** %27, align 8
  store %struct.snd_soc_card* %28, %struct.snd_soc_card** %14, align 8
  %29 = load %struct.snd_soc_card*, %struct.snd_soc_card** %14, align 8
  %30 = call %struct.acp_platform_info* @snd_soc_card_get_drvdata(%struct.snd_soc_card* %29)
  store %struct.acp_platform_info* %30, %struct.acp_platform_info** %15, align 8
  %31 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %4, align 8
  %32 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %31, i32 0, i32 2
  %33 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %32, align 8
  store %struct.snd_pcm_runtime* %33, %struct.snd_pcm_runtime** %9, align 8
  %34 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %9, align 8
  %35 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %34, i32 0, i32 1
  %36 = load %struct.audio_substream_data*, %struct.audio_substream_data** %35, align 8
  store %struct.audio_substream_data* %36, %struct.audio_substream_data** %10, align 8
  %37 = load %struct.audio_substream_data*, %struct.audio_substream_data** %10, align 8
  %38 = icmp ne %struct.audio_substream_data* %37, null
  %39 = xor i1 %38, true
  %40 = zext i1 %39 to i32
  %41 = call i64 @WARN_ON(i32 %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %46

43:                                               ; preds = %2
  %44 = load i32, i32* @EINVAL, align 4
  %45 = sub nsw i32 0, %44
  store i32 %45, i32* %3, align 4
  br label %362

46:                                               ; preds = %2
  %47 = load %struct.acp_platform_info*, %struct.acp_platform_info** %15, align 8
  %48 = icmp ne %struct.acp_platform_info* %47, null
  br i1 %48, label %49, label %73

49:                                               ; preds = %46
  %50 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %4, align 8
  %51 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = load i64, i64* @SNDRV_PCM_STREAM_PLAYBACK, align 8
  %54 = icmp eq i64 %52, %53
  br i1 %54, label %55, label %61

55:                                               ; preds = %49
  %56 = load %struct.acp_platform_info*, %struct.acp_platform_info** %15, align 8
  %57 = getelementptr inbounds %struct.acp_platform_info, %struct.acp_platform_info* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = load %struct.audio_substream_data*, %struct.audio_substream_data** %10, align 8
  %60 = getelementptr inbounds %struct.audio_substream_data, %struct.audio_substream_data* %59, i32 0, i32 0
  store i32 %58, i32* %60, align 8
  br label %72

61:                                               ; preds = %49
  %62 = load %struct.acp_platform_info*, %struct.acp_platform_info** %15, align 8
  %63 = getelementptr inbounds %struct.acp_platform_info, %struct.acp_platform_info* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = load %struct.audio_substream_data*, %struct.audio_substream_data** %10, align 8
  %66 = getelementptr inbounds %struct.audio_substream_data, %struct.audio_substream_data* %65, i32 0, i32 0
  store i32 %64, i32* %66, align 8
  %67 = load %struct.acp_platform_info*, %struct.acp_platform_info** %15, align 8
  %68 = getelementptr inbounds %struct.acp_platform_info, %struct.acp_platform_info* %67, i32 0, i32 2
  %69 = load i32, i32* %68, align 4
  %70 = load %struct.audio_substream_data*, %struct.audio_substream_data** %10, align 8
  %71 = getelementptr inbounds %struct.audio_substream_data, %struct.audio_substream_data* %70, i32 0, i32 17
  store i32 %69, i32* %71, align 8
  br label %72

72:                                               ; preds = %61, %55
  br label %73

73:                                               ; preds = %72, %46
  %74 = load %struct.audio_drv_data*, %struct.audio_drv_data** %13, align 8
  %75 = getelementptr inbounds %struct.audio_drv_data, %struct.audio_drv_data* %74, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  %77 = icmp eq i64 %76, 130
  br i1 %77, label %78, label %124

78:                                               ; preds = %73
  %79 = load %struct.audio_drv_data*, %struct.audio_drv_data** %13, align 8
  %80 = getelementptr inbounds %struct.audio_drv_data, %struct.audio_drv_data* %79, i32 0, i32 5
  %81 = load i32, i32* %80, align 8
  %82 = load i32, i32* @mmACP_I2S_16BIT_RESOLUTION_EN, align 4
  %83 = call i32 @acp_reg_read(i32 %81, i32 %82)
  store i32 %83, i32* %8, align 4
  %84 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %4, align 8
  %85 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %84, i32 0, i32 0
  %86 = load i64, i64* %85, align 8
  %87 = load i64, i64* @SNDRV_PCM_STREAM_PLAYBACK, align 8
  %88 = icmp eq i64 %86, %87
  br i1 %88, label %89, label %103

89:                                               ; preds = %78
  %90 = load %struct.audio_substream_data*, %struct.audio_substream_data** %10, align 8
  %91 = getelementptr inbounds %struct.audio_substream_data, %struct.audio_substream_data* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 8
  switch i32 %92, label %98 [
    i32 129, label %93
    i32 128, label %97
  ]

93:                                               ; preds = %89
  %94 = load i32, i32* @ACP_I2S_BT_16BIT_RESOLUTION_EN, align 4
  %95 = load i32, i32* %8, align 4
  %96 = or i32 %95, %94
  store i32 %96, i32* %8, align 4
  br label %102

97:                                               ; preds = %89
  br label %98

98:                                               ; preds = %89, %97
  %99 = load i32, i32* @ACP_I2S_SP_16BIT_RESOLUTION_EN, align 4
  %100 = load i32, i32* %8, align 4
  %101 = or i32 %100, %99
  store i32 %101, i32* %8, align 4
  br label %102

102:                                              ; preds = %98, %93
  br label %117

103:                                              ; preds = %78
  %104 = load %struct.audio_substream_data*, %struct.audio_substream_data** %10, align 8
  %105 = getelementptr inbounds %struct.audio_substream_data, %struct.audio_substream_data* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 8
  switch i32 %106, label %112 [
    i32 129, label %107
    i32 128, label %111
  ]

107:                                              ; preds = %103
  %108 = load i32, i32* @ACP_I2S_BT_16BIT_RESOLUTION_EN, align 4
  %109 = load i32, i32* %8, align 4
  %110 = or i32 %109, %108
  store i32 %110, i32* %8, align 4
  br label %116

111:                                              ; preds = %103
  br label %112

112:                                              ; preds = %103, %111
  %113 = load i32, i32* @ACP_I2S_MIC_16BIT_RESOLUTION_EN, align 4
  %114 = load i32, i32* %8, align 4
  %115 = or i32 %114, %113
  store i32 %115, i32* %8, align 4
  br label %116

116:                                              ; preds = %112, %107
  br label %117

117:                                              ; preds = %116, %102
  %118 = load i32, i32* %8, align 4
  %119 = load %struct.audio_drv_data*, %struct.audio_drv_data** %13, align 8
  %120 = getelementptr inbounds %struct.audio_drv_data, %struct.audio_drv_data* %119, i32 0, i32 5
  %121 = load i32, i32* %120, align 8
  %122 = load i32, i32* @mmACP_I2S_16BIT_RESOLUTION_EN, align 4
  %123 = call i32 @acp_reg_write(i32 %118, i32 %121, i32 %122)
  br label %124

124:                                              ; preds = %117, %73
  %125 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %4, align 8
  %126 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %125, i32 0, i32 0
  %127 = load i64, i64* %126, align 8
  %128 = load i64, i64* @SNDRV_PCM_STREAM_PLAYBACK, align 8
  %129 = icmp eq i64 %127, %128
  br i1 %129, label %130, label %207

130:                                              ; preds = %124
  %131 = load %struct.audio_substream_data*, %struct.audio_substream_data** %10, align 8
  %132 = getelementptr inbounds %struct.audio_substream_data, %struct.audio_substream_data* %131, i32 0, i32 0
  %133 = load i32, i32* %132, align 8
  switch i32 %133, label %166 [
    i32 129, label %134
    i32 128, label %165
  ]

134:                                              ; preds = %130
  %135 = load i8*, i8** @ACP_ST_BT_PLAYBACK_PTE_OFFSET, align 8
  %136 = load %struct.audio_substream_data*, %struct.audio_substream_data** %10, align 8
  %137 = getelementptr inbounds %struct.audio_substream_data, %struct.audio_substream_data* %136, i32 0, i32 14
  store i8* %135, i8** %137, align 8
  %138 = load i32, i32* @SYSRAM_TO_ACP_BT_INSTANCE_CH_NUM, align 4
  %139 = load %struct.audio_substream_data*, %struct.audio_substream_data** %10, align 8
  %140 = getelementptr inbounds %struct.audio_substream_data, %struct.audio_substream_data* %139, i32 0, i32 16
  store i32 %138, i32* %140, align 4
  %141 = load i32, i32* @ACP_TO_I2S_DMA_BT_INSTANCE_CH_NUM, align 4
  %142 = load %struct.audio_substream_data*, %struct.audio_substream_data** %10, align 8
  %143 = getelementptr inbounds %struct.audio_substream_data, %struct.audio_substream_data* %142, i32 0, i32 15
  store i32 %141, i32* %143, align 8
  %144 = load i32, i32* @ACP_SRAM_BANK_3_ADDRESS, align 4
  %145 = load %struct.audio_substream_data*, %struct.audio_substream_data** %10, align 8
  %146 = getelementptr inbounds %struct.audio_substream_data, %struct.audio_substream_data* %145, i32 0, i32 13
  store i32 %144, i32* %146, align 8
  %147 = load i32, i32* @TO_BLUETOOTH, align 4
  %148 = load %struct.audio_substream_data*, %struct.audio_substream_data** %10, align 8
  %149 = getelementptr inbounds %struct.audio_substream_data, %struct.audio_substream_data* %148, i32 0, i32 12
  store i32 %147, i32* %149, align 4
  %150 = load i32, i32* @PLAYBACK_START_DMA_DESCR_CH8, align 4
  %151 = load %struct.audio_substream_data*, %struct.audio_substream_data** %10, align 8
  %152 = getelementptr inbounds %struct.audio_substream_data, %struct.audio_substream_data* %151, i32 0, i32 11
  store i32 %150, i32* %152, align 8
  %153 = load i32, i32* @PLAYBACK_START_DMA_DESCR_CH9, align 4
  %154 = load %struct.audio_substream_data*, %struct.audio_substream_data** %10, align 8
  %155 = getelementptr inbounds %struct.audio_substream_data, %struct.audio_substream_data* %154, i32 0, i32 10
  store i32 %153, i32* %155, align 4
  %156 = load i32, i32* @mmACP_I2S_BT_TRANSMIT_BYTE_CNT_HIGH, align 4
  %157 = load %struct.audio_substream_data*, %struct.audio_substream_data** %10, align 8
  %158 = getelementptr inbounds %struct.audio_substream_data, %struct.audio_substream_data* %157, i32 0, i32 9
  store i32 %156, i32* %158, align 8
  %159 = load i32, i32* @mmACP_I2S_BT_TRANSMIT_BYTE_CNT_LOW, align 4
  %160 = load %struct.audio_substream_data*, %struct.audio_substream_data** %10, align 8
  %161 = getelementptr inbounds %struct.audio_substream_data, %struct.audio_substream_data* %160, i32 0, i32 8
  store i32 %159, i32* %161, align 4
  %162 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %4, align 8
  %163 = load %struct.audio_drv_data*, %struct.audio_drv_data** %13, align 8
  %164 = getelementptr inbounds %struct.audio_drv_data, %struct.audio_drv_data* %163, i32 0, i32 4
  store %struct.snd_pcm_substream* %162, %struct.snd_pcm_substream** %164, align 8
  br label %206

165:                                              ; preds = %130
  br label %166

166:                                              ; preds = %130, %165
  %167 = load %struct.audio_drv_data*, %struct.audio_drv_data** %13, align 8
  %168 = getelementptr inbounds %struct.audio_drv_data, %struct.audio_drv_data* %167, i32 0, i32 0
  %169 = load i64, i64* %168, align 8
  switch i64 %169, label %174 [
    i64 130, label %170
  ]

170:                                              ; preds = %166
  %171 = load i8*, i8** @ACP_ST_PLAYBACK_PTE_OFFSET, align 8
  %172 = load %struct.audio_substream_data*, %struct.audio_substream_data** %10, align 8
  %173 = getelementptr inbounds %struct.audio_substream_data, %struct.audio_substream_data* %172, i32 0, i32 14
  store i8* %171, i8** %173, align 8
  br label %178

174:                                              ; preds = %166
  %175 = load i8*, i8** @ACP_PLAYBACK_PTE_OFFSET, align 8
  %176 = load %struct.audio_substream_data*, %struct.audio_substream_data** %10, align 8
  %177 = getelementptr inbounds %struct.audio_substream_data, %struct.audio_substream_data* %176, i32 0, i32 14
  store i8* %175, i8** %177, align 8
  br label %178

178:                                              ; preds = %174, %170
  %179 = load i32, i32* @SYSRAM_TO_ACP_CH_NUM, align 4
  %180 = load %struct.audio_substream_data*, %struct.audio_substream_data** %10, align 8
  %181 = getelementptr inbounds %struct.audio_substream_data, %struct.audio_substream_data* %180, i32 0, i32 16
  store i32 %179, i32* %181, align 4
  %182 = load i32, i32* @ACP_TO_I2S_DMA_CH_NUM, align 4
  %183 = load %struct.audio_substream_data*, %struct.audio_substream_data** %10, align 8
  %184 = getelementptr inbounds %struct.audio_substream_data, %struct.audio_substream_data* %183, i32 0, i32 15
  store i32 %182, i32* %184, align 8
  %185 = load i32, i32* @ACP_SRAM_BANK_1_ADDRESS, align 4
  %186 = load %struct.audio_substream_data*, %struct.audio_substream_data** %10, align 8
  %187 = getelementptr inbounds %struct.audio_substream_data, %struct.audio_substream_data* %186, i32 0, i32 13
  store i32 %185, i32* %187, align 8
  %188 = load i32, i32* @TO_ACP_I2S_1, align 4
  %189 = load %struct.audio_substream_data*, %struct.audio_substream_data** %10, align 8
  %190 = getelementptr inbounds %struct.audio_substream_data, %struct.audio_substream_data* %189, i32 0, i32 12
  store i32 %188, i32* %190, align 4
  %191 = load i32, i32* @PLAYBACK_START_DMA_DESCR_CH12, align 4
  %192 = load %struct.audio_substream_data*, %struct.audio_substream_data** %10, align 8
  %193 = getelementptr inbounds %struct.audio_substream_data, %struct.audio_substream_data* %192, i32 0, i32 11
  store i32 %191, i32* %193, align 8
  %194 = load i32, i32* @PLAYBACK_START_DMA_DESCR_CH13, align 4
  %195 = load %struct.audio_substream_data*, %struct.audio_substream_data** %10, align 8
  %196 = getelementptr inbounds %struct.audio_substream_data, %struct.audio_substream_data* %195, i32 0, i32 10
  store i32 %194, i32* %196, align 4
  %197 = load i32, i32* @mmACP_I2S_TRANSMIT_BYTE_CNT_HIGH, align 4
  %198 = load %struct.audio_substream_data*, %struct.audio_substream_data** %10, align 8
  %199 = getelementptr inbounds %struct.audio_substream_data, %struct.audio_substream_data* %198, i32 0, i32 9
  store i32 %197, i32* %199, align 8
  %200 = load i32, i32* @mmACP_I2S_TRANSMIT_BYTE_CNT_LOW, align 4
  %201 = load %struct.audio_substream_data*, %struct.audio_substream_data** %10, align 8
  %202 = getelementptr inbounds %struct.audio_substream_data, %struct.audio_substream_data* %201, i32 0, i32 8
  store i32 %200, i32* %202, align 4
  %203 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %4, align 8
  %204 = load %struct.audio_drv_data*, %struct.audio_drv_data** %13, align 8
  %205 = getelementptr inbounds %struct.audio_drv_data, %struct.audio_drv_data* %204, i32 0, i32 3
  store %struct.snd_pcm_substream* %203, %struct.snd_pcm_substream** %205, align 8
  br label %206

206:                                              ; preds = %178, %134
  br label %296

207:                                              ; preds = %124
  %208 = load %struct.audio_substream_data*, %struct.audio_substream_data** %10, align 8
  %209 = getelementptr inbounds %struct.audio_substream_data, %struct.audio_substream_data* %208, i32 0, i32 0
  %210 = load i32, i32* %209, align 8
  switch i32 %210, label %246 [
    i32 129, label %211
    i32 128, label %245
  ]

211:                                              ; preds = %207
  %212 = load i8*, i8** @ACP_ST_BT_CAPTURE_PTE_OFFSET, align 8
  %213 = load %struct.audio_substream_data*, %struct.audio_substream_data** %10, align 8
  %214 = getelementptr inbounds %struct.audio_substream_data, %struct.audio_substream_data* %213, i32 0, i32 14
  store i8* %212, i8** %214, align 8
  %215 = load i32, i32* @I2S_TO_ACP_DMA_BT_INSTANCE_CH_NUM, align 4
  %216 = load %struct.audio_substream_data*, %struct.audio_substream_data** %10, align 8
  %217 = getelementptr inbounds %struct.audio_substream_data, %struct.audio_substream_data* %216, i32 0, i32 16
  store i32 %215, i32* %217, align 4
  %218 = load i32, i32* @ACP_TO_SYSRAM_BT_INSTANCE_CH_NUM, align 4
  %219 = load %struct.audio_substream_data*, %struct.audio_substream_data** %10, align 8
  %220 = getelementptr inbounds %struct.audio_substream_data, %struct.audio_substream_data* %219, i32 0, i32 15
  store i32 %218, i32* %220, align 8
  %221 = load i32, i32* @ACP_SRAM_BANK_4_ADDRESS, align 4
  %222 = load %struct.audio_substream_data*, %struct.audio_substream_data** %10, align 8
  %223 = getelementptr inbounds %struct.audio_substream_data, %struct.audio_substream_data* %222, i32 0, i32 13
  store i32 %221, i32* %223, align 8
  %224 = load i32, i32* @FROM_BLUETOOTH, align 4
  %225 = load %struct.audio_substream_data*, %struct.audio_substream_data** %10, align 8
  %226 = getelementptr inbounds %struct.audio_substream_data, %struct.audio_substream_data* %225, i32 0, i32 12
  store i32 %224, i32* %226, align 4
  %227 = load i32, i32* @CAPTURE_START_DMA_DESCR_CH10, align 4
  %228 = load %struct.audio_substream_data*, %struct.audio_substream_data** %10, align 8
  %229 = getelementptr inbounds %struct.audio_substream_data, %struct.audio_substream_data* %228, i32 0, i32 11
  store i32 %227, i32* %229, align 8
  %230 = load i32, i32* @CAPTURE_START_DMA_DESCR_CH11, align 4
  %231 = load %struct.audio_substream_data*, %struct.audio_substream_data** %10, align 8
  %232 = getelementptr inbounds %struct.audio_substream_data, %struct.audio_substream_data* %231, i32 0, i32 10
  store i32 %230, i32* %232, align 4
  %233 = load i32, i32* @mmACP_I2S_BT_RECEIVE_BYTE_CNT_HIGH, align 4
  %234 = load %struct.audio_substream_data*, %struct.audio_substream_data** %10, align 8
  %235 = getelementptr inbounds %struct.audio_substream_data, %struct.audio_substream_data* %234, i32 0, i32 9
  store i32 %233, i32* %235, align 8
  %236 = load i32, i32* @mmACP_I2S_BT_RECEIVE_BYTE_CNT_LOW, align 4
  %237 = load %struct.audio_substream_data*, %struct.audio_substream_data** %10, align 8
  %238 = getelementptr inbounds %struct.audio_substream_data, %struct.audio_substream_data* %237, i32 0, i32 8
  store i32 %236, i32* %238, align 4
  %239 = load i32, i32* @mmACP_DMA_CUR_DSCR_11, align 4
  %240 = load %struct.audio_substream_data*, %struct.audio_substream_data** %10, align 8
  %241 = getelementptr inbounds %struct.audio_substream_data, %struct.audio_substream_data* %240, i32 0, i32 7
  store i32 %239, i32* %241, align 8
  %242 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %4, align 8
  %243 = load %struct.audio_drv_data*, %struct.audio_drv_data** %13, align 8
  %244 = getelementptr inbounds %struct.audio_drv_data, %struct.audio_drv_data* %243, i32 0, i32 2
  store %struct.snd_pcm_substream* %242, %struct.snd_pcm_substream** %244, align 8
  br label %295

245:                                              ; preds = %207
  br label %246

246:                                              ; preds = %207, %245
  %247 = load i8*, i8** @ACP_CAPTURE_PTE_OFFSET, align 8
  %248 = load %struct.audio_substream_data*, %struct.audio_substream_data** %10, align 8
  %249 = getelementptr inbounds %struct.audio_substream_data, %struct.audio_substream_data* %248, i32 0, i32 14
  store i8* %247, i8** %249, align 8
  %250 = load i32, i32* @I2S_TO_ACP_DMA_CH_NUM, align 4
  %251 = load %struct.audio_substream_data*, %struct.audio_substream_data** %10, align 8
  %252 = getelementptr inbounds %struct.audio_substream_data, %struct.audio_substream_data* %251, i32 0, i32 16
  store i32 %250, i32* %252, align 4
  %253 = load i32, i32* @ACP_TO_SYSRAM_CH_NUM, align 4
  %254 = load %struct.audio_substream_data*, %struct.audio_substream_data** %10, align 8
  %255 = getelementptr inbounds %struct.audio_substream_data, %struct.audio_substream_data* %254, i32 0, i32 15
  store i32 %253, i32* %255, align 8
  %256 = load %struct.audio_drv_data*, %struct.audio_drv_data** %13, align 8
  %257 = getelementptr inbounds %struct.audio_drv_data, %struct.audio_drv_data* %256, i32 0, i32 0
  %258 = load i64, i64* %257, align 8
  switch i64 %258, label %266 [
    i64 130, label %259
  ]

259:                                              ; preds = %246
  %260 = load i8*, i8** @ACP_ST_CAPTURE_PTE_OFFSET, align 8
  %261 = load %struct.audio_substream_data*, %struct.audio_substream_data** %10, align 8
  %262 = getelementptr inbounds %struct.audio_substream_data, %struct.audio_substream_data* %261, i32 0, i32 14
  store i8* %260, i8** %262, align 8
  %263 = load i32, i32* @ACP_SRAM_BANK_2_ADDRESS, align 4
  %264 = load %struct.audio_substream_data*, %struct.audio_substream_data** %10, align 8
  %265 = getelementptr inbounds %struct.audio_substream_data, %struct.audio_substream_data* %264, i32 0, i32 13
  store i32 %263, i32* %265, align 8
  br label %273

266:                                              ; preds = %246
  %267 = load i8*, i8** @ACP_CAPTURE_PTE_OFFSET, align 8
  %268 = load %struct.audio_substream_data*, %struct.audio_substream_data** %10, align 8
  %269 = getelementptr inbounds %struct.audio_substream_data, %struct.audio_substream_data* %268, i32 0, i32 14
  store i8* %267, i8** %269, align 8
  %270 = load i32, i32* @ACP_SRAM_BANK_5_ADDRESS, align 4
  %271 = load %struct.audio_substream_data*, %struct.audio_substream_data** %10, align 8
  %272 = getelementptr inbounds %struct.audio_substream_data, %struct.audio_substream_data* %271, i32 0, i32 13
  store i32 %270, i32* %272, align 8
  br label %273

273:                                              ; preds = %266, %259
  %274 = load i32, i32* @FROM_ACP_I2S_1, align 4
  %275 = load %struct.audio_substream_data*, %struct.audio_substream_data** %10, align 8
  %276 = getelementptr inbounds %struct.audio_substream_data, %struct.audio_substream_data* %275, i32 0, i32 12
  store i32 %274, i32* %276, align 4
  %277 = load i32, i32* @CAPTURE_START_DMA_DESCR_CH14, align 4
  %278 = load %struct.audio_substream_data*, %struct.audio_substream_data** %10, align 8
  %279 = getelementptr inbounds %struct.audio_substream_data, %struct.audio_substream_data* %278, i32 0, i32 11
  store i32 %277, i32* %279, align 8
  %280 = load i32, i32* @CAPTURE_START_DMA_DESCR_CH15, align 4
  %281 = load %struct.audio_substream_data*, %struct.audio_substream_data** %10, align 8
  %282 = getelementptr inbounds %struct.audio_substream_data, %struct.audio_substream_data* %281, i32 0, i32 10
  store i32 %280, i32* %282, align 4
  %283 = load i32, i32* @mmACP_I2S_RECEIVED_BYTE_CNT_HIGH, align 4
  %284 = load %struct.audio_substream_data*, %struct.audio_substream_data** %10, align 8
  %285 = getelementptr inbounds %struct.audio_substream_data, %struct.audio_substream_data* %284, i32 0, i32 9
  store i32 %283, i32* %285, align 8
  %286 = load i32, i32* @mmACP_I2S_RECEIVED_BYTE_CNT_LOW, align 4
  %287 = load %struct.audio_substream_data*, %struct.audio_substream_data** %10, align 8
  %288 = getelementptr inbounds %struct.audio_substream_data, %struct.audio_substream_data* %287, i32 0, i32 8
  store i32 %286, i32* %288, align 4
  %289 = load i32, i32* @mmACP_DMA_CUR_DSCR_15, align 4
  %290 = load %struct.audio_substream_data*, %struct.audio_substream_data** %10, align 8
  %291 = getelementptr inbounds %struct.audio_substream_data, %struct.audio_substream_data* %290, i32 0, i32 7
  store i32 %289, i32* %291, align 8
  %292 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %4, align 8
  %293 = load %struct.audio_drv_data*, %struct.audio_drv_data** %13, align 8
  %294 = getelementptr inbounds %struct.audio_drv_data, %struct.audio_drv_data* %293, i32 0, i32 1
  store %struct.snd_pcm_substream* %292, %struct.snd_pcm_substream** %294, align 8
  br label %295

295:                                              ; preds = %273, %211
  br label %296

296:                                              ; preds = %295, %206
  %297 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %5, align 8
  %298 = call i32 @params_buffer_bytes(%struct.snd_pcm_hw_params* %297)
  store i32 %298, i32* %7, align 4
  %299 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %4, align 8
  %300 = load i32, i32* %7, align 4
  %301 = call i32 @snd_pcm_lib_malloc_pages(%struct.snd_pcm_substream* %299, i32 %300)
  store i32 %301, i32* %6, align 4
  %302 = load i32, i32* %6, align 4
  %303 = icmp slt i32 %302, 0
  br i1 %303, label %304, label %306

304:                                              ; preds = %296
  %305 = load i32, i32* %6, align 4
  store i32 %305, i32* %3, align 4
  br label %362

306:                                              ; preds = %296
  %307 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %4, align 8
  %308 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %307, i32 0, i32 2
  %309 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %308, align 8
  %310 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %309, i32 0, i32 0
  %311 = load i32, i32* %310, align 8
  %312 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %5, align 8
  %313 = call i32 @params_buffer_bytes(%struct.snd_pcm_hw_params* %312)
  %314 = call i32 @memset(i32 %311, i32 0, i32 %313)
  %315 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %4, align 8
  %316 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %315, i32 0, i32 1
  %317 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %316, i32 0, i32 1
  %318 = load i64, i64* %317, align 8
  %319 = icmp ne i64 %318, 0
  br i1 %319, label %320, label %357

320:                                              ; preds = %306
  %321 = load %struct.audio_substream_data*, %struct.audio_substream_data** %10, align 8
  %322 = getelementptr inbounds %struct.audio_substream_data, %struct.audio_substream_data* %321, i32 0, i32 3
  %323 = load i32, i32* %322, align 8
  %324 = call i32 @acp_set_sram_bank_state(i32 %323, i32 0, i32 1)
  %325 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %4, align 8
  %326 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %325, i32 0, i32 1
  %327 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %326, i32 0, i32 0
  %328 = load i32, i32* %327, align 8
  %329 = load %struct.audio_substream_data*, %struct.audio_substream_data** %10, align 8
  %330 = getelementptr inbounds %struct.audio_substream_data, %struct.audio_substream_data* %329, i32 0, i32 6
  store i32 %328, i32* %330, align 4
  %331 = load i32, i32* %7, align 4
  %332 = call i32 @get_order(i32 %331)
  %333 = load %struct.audio_substream_data*, %struct.audio_substream_data** %10, align 8
  %334 = getelementptr inbounds %struct.audio_substream_data, %struct.audio_substream_data* %333, i32 0, i32 5
  store i32 %332, i32* %334, align 8
  %335 = load i32, i32* %7, align 4
  %336 = load %struct.audio_substream_data*, %struct.audio_substream_data** %10, align 8
  %337 = getelementptr inbounds %struct.audio_substream_data, %struct.audio_substream_data* %336, i32 0, i32 4
  store i32 %335, i32* %337, align 4
  %338 = load i32, i32* %7, align 4
  %339 = call i32 @PAGE_ALIGN(i32 %338)
  %340 = load i32, i32* @PAGE_SHIFT, align 4
  %341 = ashr i32 %339, %340
  %342 = load %struct.audio_substream_data*, %struct.audio_substream_data** %10, align 8
  %343 = getelementptr inbounds %struct.audio_substream_data, %struct.audio_substream_data* %342, i32 0, i32 1
  store i32 %341, i32* %343, align 4
  %344 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %4, align 8
  %345 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %344, i32 0, i32 0
  %346 = load i64, i64* %345, align 8
  %347 = load %struct.audio_substream_data*, %struct.audio_substream_data** %10, align 8
  %348 = getelementptr inbounds %struct.audio_substream_data, %struct.audio_substream_data* %347, i32 0, i32 2
  store i64 %346, i64* %348, align 8
  %349 = load %struct.audio_substream_data*, %struct.audio_substream_data** %10, align 8
  %350 = getelementptr inbounds %struct.audio_substream_data, %struct.audio_substream_data* %349, i32 0, i32 3
  %351 = load i32, i32* %350, align 8
  %352 = load %struct.audio_substream_data*, %struct.audio_substream_data** %10, align 8
  %353 = load %struct.audio_drv_data*, %struct.audio_drv_data** %13, align 8
  %354 = getelementptr inbounds %struct.audio_drv_data, %struct.audio_drv_data* %353, i32 0, i32 0
  %355 = load i64, i64* %354, align 8
  %356 = call i32 @config_acp_dma(i32 %351, %struct.audio_substream_data* %352, i64 %355)
  store i32 0, i32* %6, align 4
  br label %360

357:                                              ; preds = %306
  %358 = load i32, i32* @ENOMEM, align 4
  %359 = sub nsw i32 0, %358
  store i32 %359, i32* %6, align 4
  br label %360

360:                                              ; preds = %357, %320
  %361 = load i32, i32* %6, align 4
  store i32 %361, i32* %3, align 4
  br label %362

362:                                              ; preds = %360, %304, %43
  %363 = load i32, i32* %3, align 4
  ret i32 %363
}

declare dso_local %struct.snd_soc_component* @snd_soc_rtdcom_lookup(%struct.snd_soc_pcm_runtime*, i32) #1

declare dso_local %struct.audio_drv_data* @dev_get_drvdata(i32) #1

declare dso_local %struct.acp_platform_info* @snd_soc_card_get_drvdata(%struct.snd_soc_card*) #1

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local i32 @acp_reg_read(i32, i32) #1

declare dso_local i32 @acp_reg_write(i32, i32, i32) #1

declare dso_local i32 @params_buffer_bytes(%struct.snd_pcm_hw_params*) #1

declare dso_local i32 @snd_pcm_lib_malloc_pages(%struct.snd_pcm_substream*, i32) #1

declare dso_local i32 @memset(i32, i32, i32) #1

declare dso_local i32 @acp_set_sram_bank_state(i32, i32, i32) #1

declare dso_local i32 @get_order(i32) #1

declare dso_local i32 @PAGE_ALIGN(i32) #1

declare dso_local i32 @config_acp_dma(i32, %struct.audio_substream_data*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
