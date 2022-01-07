; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/sof/intel/extr_hda-stream.c_hda_dsp_stream_hw_params.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/sof/intel/extr_hda-stream.c_hda_dsp_stream_hw_params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_sof_dev = type { i32 }
%struct.hdac_ext_stream = type { %struct.hdac_stream }
%struct.hdac_stream = type { i32, i32, i32, i32, i32, i64, i32, %struct.TYPE_3__, i64* }
%struct.TYPE_3__ = type { i64 }
%struct.snd_dma_buffer = type { i32 }
%struct.snd_pcm_hw_params = type { i32 }
%struct.hdac_bus = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64 }

@HDA_DSP_STREAM_RESET_TIMEOUT = common dso_local global i32 0, align 4
@SOF_HDA_SD_CTL_DMA_START = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"error: no stream available\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@HDA_DSP_PP_BAR = common dso_local global i32 0, align 4
@SOF_HDA_REG_PP_PPCTL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [33 x i8] c"error: no dma buffer allocated!\0A\00", align 1
@HDA_DSP_HDA_BAR = common dso_local global i32 0, align 4
@SOF_HDA_CL_DMA_SD_INT_MASK = common dso_local global i32 0, align 4
@HDA_DSP_REG_POLL_INTERVAL_US = common dso_local global i32 0, align 4
@HDA_DSP_STREAM_RUN_TIMEOUT = common dso_local global i32 0, align 4
@SOF_HDA_ADSP_REG_CL_SD_STS = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [28 x i8] c"error: stream reset failed\0A\00", align 1
@ETIMEDOUT = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [41 x i8] c"error: timeout waiting for stream reset\0A\00", align 1
@SOF_HDA_ADSP_REG_CL_SD_BDLPL = common dso_local global i32 0, align 4
@SOF_HDA_ADSP_REG_CL_SD_BDLPU = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [29 x i8] c"error: set up of BDL failed\0A\00", align 1
@SOF_HDA_CL_SD_CTL_STREAM_TAG_MASK = common dso_local global i32 0, align 4
@SOF_HDA_CL_SD_CTL_STREAM_TAG_SHIFT = common dso_local global i32 0, align 4
@SOF_HDA_ADSP_REG_CL_SD_CBL = common dso_local global i32 0, align 4
@SOF_HDA_ADSP_REG_CL_SD_FORMAT = common dso_local global i32 0, align 4
@SOF_HDA_ADSP_REG_CL_SD_LVI = common dso_local global i32 0, align 4
@SOF_HDA_ADSP_DPLBASE = common dso_local global i32 0, align 4
@SOF_HDA_ADSP_DPLBASE_ENABLE = common dso_local global i32 0, align 4
@SOF_HDA_ADSP_DPUBASE = common dso_local global i32 0, align 4
@SNDRV_PCM_STREAM_PLAYBACK = common dso_local global i64 0, align 8
@SOF_HDA_ADSP_REG_CL_SD_FIFOSIZE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @hda_dsp_stream_hw_params(%struct.snd_sof_dev* %0, %struct.hdac_ext_stream* %1, %struct.snd_dma_buffer* %2, %struct.snd_pcm_hw_params* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.snd_sof_dev*, align 8
  %7 = alloca %struct.hdac_ext_stream*, align 8
  %8 = alloca %struct.snd_dma_buffer*, align 8
  %9 = alloca %struct.snd_pcm_hw_params*, align 8
  %10 = alloca %struct.hdac_bus*, align 8
  %11 = alloca %struct.hdac_stream*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store %struct.snd_sof_dev* %0, %struct.snd_sof_dev** %6, align 8
  store %struct.hdac_ext_stream* %1, %struct.hdac_ext_stream** %7, align 8
  store %struct.snd_dma_buffer* %2, %struct.snd_dma_buffer** %8, align 8
  store %struct.snd_pcm_hw_params* %3, %struct.snd_pcm_hw_params** %9, align 8
  %19 = load %struct.snd_sof_dev*, %struct.snd_sof_dev** %6, align 8
  %20 = call %struct.hdac_bus* @sof_to_bus(%struct.snd_sof_dev* %19)
  store %struct.hdac_bus* %20, %struct.hdac_bus** %10, align 8
  %21 = load %struct.hdac_ext_stream*, %struct.hdac_ext_stream** %7, align 8
  %22 = getelementptr inbounds %struct.hdac_ext_stream, %struct.hdac_ext_stream* %21, i32 0, i32 0
  store %struct.hdac_stream* %22, %struct.hdac_stream** %11, align 8
  %23 = load %struct.hdac_stream*, %struct.hdac_stream** %11, align 8
  %24 = call i32 @SOF_STREAM_SD_OFFSET(%struct.hdac_stream* %23)
  store i32 %24, i32* %12, align 4
  %25 = load i32, i32* @HDA_DSP_STREAM_RESET_TIMEOUT, align 4
  store i32 %25, i32* %14, align 4
  %26 = load i32, i32* @SOF_HDA_SD_CTL_DMA_START, align 4
  store i32 %26, i32* %15, align 4
  %27 = load %struct.hdac_ext_stream*, %struct.hdac_ext_stream** %7, align 8
  %28 = icmp ne %struct.hdac_ext_stream* %27, null
  br i1 %28, label %36, label %29

29:                                               ; preds = %4
  %30 = load %struct.snd_sof_dev*, %struct.snd_sof_dev** %6, align 8
  %31 = getelementptr inbounds %struct.snd_sof_dev, %struct.snd_sof_dev* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @dev_err(i32 %32, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  %34 = load i32, i32* @ENODEV, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %5, align 4
  br label %353

36:                                               ; preds = %4
  %37 = load %struct.hdac_stream*, %struct.hdac_stream** %11, align 8
  %38 = getelementptr inbounds %struct.hdac_stream, %struct.hdac_stream* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = shl i32 1, %39
  store i32 %40, i32* %17, align 4
  %41 = load %struct.snd_sof_dev*, %struct.snd_sof_dev** %6, align 8
  %42 = load i32, i32* @HDA_DSP_PP_BAR, align 4
  %43 = load i32, i32* @SOF_HDA_REG_PP_PPCTL, align 4
  %44 = load i32, i32* %17, align 4
  %45 = load i32, i32* %17, align 4
  %46 = call i32 @snd_sof_dsp_update_bits(%struct.snd_sof_dev* %41, i32 %42, i32 %43, i32 %44, i32 %45)
  %47 = load %struct.snd_dma_buffer*, %struct.snd_dma_buffer** %8, align 8
  %48 = icmp ne %struct.snd_dma_buffer* %47, null
  br i1 %48, label %56, label %49

49:                                               ; preds = %36
  %50 = load %struct.snd_sof_dev*, %struct.snd_sof_dev** %6, align 8
  %51 = getelementptr inbounds %struct.snd_sof_dev, %struct.snd_sof_dev* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @dev_err(i32 %52, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0))
  %54 = load i32, i32* @ENODEV, align 4
  %55 = sub nsw i32 0, %54
  store i32 %55, i32* %5, align 4
  br label %353

56:                                               ; preds = %36
  %57 = load %struct.snd_sof_dev*, %struct.snd_sof_dev** %6, align 8
  %58 = load i32, i32* @HDA_DSP_HDA_BAR, align 4
  %59 = load i32, i32* %12, align 4
  %60 = load i32, i32* @SOF_HDA_CL_DMA_SD_INT_MASK, align 4
  %61 = load i32, i32* @SOF_HDA_SD_CTL_DMA_START, align 4
  %62 = or i32 %60, %61
  %63 = call i32 @snd_sof_dsp_update_bits(%struct.snd_sof_dev* %57, i32 %58, i32 %59, i32 %62, i32 0)
  %64 = load %struct.snd_sof_dev*, %struct.snd_sof_dev** %6, align 8
  %65 = load i32, i32* @HDA_DSP_HDA_BAR, align 4
  %66 = load i32, i32* %12, align 4
  %67 = load i32, i32* %18, align 4
  %68 = load i32, i32* %18, align 4
  %69 = load i32, i32* %15, align 4
  %70 = and i32 %68, %69
  %71 = icmp ne i32 %70, 0
  %72 = xor i1 %71, true
  %73 = zext i1 %72 to i32
  %74 = load i32, i32* @HDA_DSP_REG_POLL_INTERVAL_US, align 4
  %75 = load i32, i32* @HDA_DSP_STREAM_RUN_TIMEOUT, align 4
  %76 = call i32 @snd_sof_dsp_read_poll_timeout(%struct.snd_sof_dev* %64, i32 %65, i32 %66, i32 %67, i32 %73, i32 %74, i32 %75)
  store i32 %76, i32* %13, align 4
  %77 = load i32, i32* %13, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %81

79:                                               ; preds = %56
  %80 = load i32, i32* %13, align 4
  store i32 %80, i32* %5, align 4
  br label %353

81:                                               ; preds = %56
  %82 = load %struct.snd_sof_dev*, %struct.snd_sof_dev** %6, align 8
  %83 = load i32, i32* @HDA_DSP_HDA_BAR, align 4
  %84 = load i32, i32* %12, align 4
  %85 = load i32, i32* @SOF_HDA_ADSP_REG_CL_SD_STS, align 4
  %86 = add nsw i32 %84, %85
  %87 = load i32, i32* @SOF_HDA_CL_DMA_SD_INT_MASK, align 4
  %88 = load i32, i32* @SOF_HDA_CL_DMA_SD_INT_MASK, align 4
  %89 = call i32 @snd_sof_dsp_update_bits(%struct.snd_sof_dev* %82, i32 %83, i32 %86, i32 %87, i32 %88)
  %90 = load %struct.snd_sof_dev*, %struct.snd_sof_dev** %6, align 8
  %91 = load i32, i32* @HDA_DSP_HDA_BAR, align 4
  %92 = load i32, i32* %12, align 4
  %93 = call i32 @snd_sof_dsp_update_bits(%struct.snd_sof_dev* %90, i32 %91, i32 %92, i32 1, i32 1)
  %94 = call i32 @udelay(i32 3)
  br label %95

95:                                               ; preds = %105, %81
  %96 = load %struct.snd_sof_dev*, %struct.snd_sof_dev** %6, align 8
  %97 = load i32, i32* @HDA_DSP_HDA_BAR, align 4
  %98 = load i32, i32* %12, align 4
  %99 = call i32 @snd_sof_dsp_read(%struct.snd_sof_dev* %96, i32 %97, i32 %98)
  store i32 %99, i32* %16, align 4
  %100 = load i32, i32* %16, align 4
  %101 = and i32 %100, 1
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %104

103:                                              ; preds = %95
  br label %109

104:                                              ; preds = %95
  br label %105

105:                                              ; preds = %104
  %106 = load i32, i32* %14, align 4
  %107 = add nsw i32 %106, -1
  store i32 %107, i32* %14, align 4
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %95, label %109

109:                                              ; preds = %105, %103
  %110 = load i32, i32* %14, align 4
  %111 = icmp eq i32 %110, 0
  br i1 %111, label %112, label %119

112:                                              ; preds = %109
  %113 = load %struct.snd_sof_dev*, %struct.snd_sof_dev** %6, align 8
  %114 = getelementptr inbounds %struct.snd_sof_dev, %struct.snd_sof_dev* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 4
  %116 = call i32 @dev_err(i32 %115, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0))
  %117 = load i32, i32* @ETIMEDOUT, align 4
  %118 = sub nsw i32 0, %117
  store i32 %118, i32* %5, align 4
  br label %353

119:                                              ; preds = %109
  %120 = load i32, i32* @HDA_DSP_STREAM_RESET_TIMEOUT, align 4
  store i32 %120, i32* %14, align 4
  %121 = load %struct.snd_sof_dev*, %struct.snd_sof_dev** %6, align 8
  %122 = load i32, i32* @HDA_DSP_HDA_BAR, align 4
  %123 = load i32, i32* %12, align 4
  %124 = call i32 @snd_sof_dsp_update_bits(%struct.snd_sof_dev* %121, i32 %122, i32 %123, i32 1, i32 0)
  %125 = call i32 @udelay(i32 3)
  br label %126

126:                                              ; preds = %136, %119
  %127 = load %struct.snd_sof_dev*, %struct.snd_sof_dev** %6, align 8
  %128 = load i32, i32* @HDA_DSP_HDA_BAR, align 4
  %129 = load i32, i32* %12, align 4
  %130 = call i32 @snd_sof_dsp_read(%struct.snd_sof_dev* %127, i32 %128, i32 %129)
  store i32 %130, i32* %16, align 4
  %131 = load i32, i32* %16, align 4
  %132 = and i32 %131, 1
  %133 = icmp eq i32 %132, 0
  br i1 %133, label %134, label %135

134:                                              ; preds = %126
  br label %140

135:                                              ; preds = %126
  br label %136

136:                                              ; preds = %135
  %137 = load i32, i32* %14, align 4
  %138 = add nsw i32 %137, -1
  store i32 %138, i32* %14, align 4
  %139 = icmp ne i32 %138, 0
  br i1 %139, label %126, label %140

140:                                              ; preds = %136, %134
  %141 = load i32, i32* %14, align 4
  %142 = icmp eq i32 %141, 0
  br i1 %142, label %143, label %150

143:                                              ; preds = %140
  %144 = load %struct.snd_sof_dev*, %struct.snd_sof_dev** %6, align 8
  %145 = getelementptr inbounds %struct.snd_sof_dev, %struct.snd_sof_dev* %144, i32 0, i32 0
  %146 = load i32, i32* %145, align 4
  %147 = call i32 @dev_err(i32 %146, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.3, i64 0, i64 0))
  %148 = load i32, i32* @ETIMEDOUT, align 4
  %149 = sub nsw i32 0, %148
  store i32 %149, i32* %5, align 4
  br label %353

150:                                              ; preds = %140
  %151 = load %struct.hdac_stream*, %struct.hdac_stream** %11, align 8
  %152 = getelementptr inbounds %struct.hdac_stream, %struct.hdac_stream* %151, i32 0, i32 8
  %153 = load i64*, i64** %152, align 8
  %154 = icmp ne i64* %153, null
  br i1 %154, label %155, label %159

155:                                              ; preds = %150
  %156 = load %struct.hdac_stream*, %struct.hdac_stream** %11, align 8
  %157 = getelementptr inbounds %struct.hdac_stream, %struct.hdac_stream* %156, i32 0, i32 8
  %158 = load i64*, i64** %157, align 8
  store i64 0, i64* %158, align 8
  br label %159

159:                                              ; preds = %155, %150
  %160 = load %struct.snd_sof_dev*, %struct.snd_sof_dev** %6, align 8
  %161 = load i32, i32* @HDA_DSP_HDA_BAR, align 4
  %162 = load i32, i32* %12, align 4
  %163 = load i32, i32* @SOF_HDA_ADSP_REG_CL_SD_BDLPL, align 4
  %164 = add nsw i32 %162, %163
  %165 = call i32 @snd_sof_dsp_write(%struct.snd_sof_dev* %160, i32 %161, i32 %164, i32 0)
  %166 = load %struct.snd_sof_dev*, %struct.snd_sof_dev** %6, align 8
  %167 = load i32, i32* @HDA_DSP_HDA_BAR, align 4
  %168 = load i32, i32* %12, align 4
  %169 = load i32, i32* @SOF_HDA_ADSP_REG_CL_SD_BDLPU, align 4
  %170 = add nsw i32 %168, %169
  %171 = call i32 @snd_sof_dsp_write(%struct.snd_sof_dev* %166, i32 %167, i32 %170, i32 0)
  %172 = load %struct.snd_sof_dev*, %struct.snd_sof_dev** %6, align 8
  %173 = load i32, i32* @HDA_DSP_HDA_BAR, align 4
  %174 = load i32, i32* %12, align 4
  %175 = load i32, i32* @SOF_HDA_CL_DMA_SD_INT_MASK, align 4
  %176 = load i32, i32* @SOF_HDA_SD_CTL_DMA_START, align 4
  %177 = or i32 %175, %176
  %178 = call i32 @snd_sof_dsp_update_bits(%struct.snd_sof_dev* %172, i32 %173, i32 %174, i32 %177, i32 0)
  %179 = load %struct.snd_sof_dev*, %struct.snd_sof_dev** %6, align 8
  %180 = load i32, i32* @HDA_DSP_HDA_BAR, align 4
  %181 = load i32, i32* %12, align 4
  %182 = load i32, i32* %18, align 4
  %183 = load i32, i32* %18, align 4
  %184 = load i32, i32* %15, align 4
  %185 = and i32 %183, %184
  %186 = icmp ne i32 %185, 0
  %187 = xor i1 %186, true
  %188 = zext i1 %187 to i32
  %189 = load i32, i32* @HDA_DSP_REG_POLL_INTERVAL_US, align 4
  %190 = load i32, i32* @HDA_DSP_STREAM_RUN_TIMEOUT, align 4
  %191 = call i32 @snd_sof_dsp_read_poll_timeout(%struct.snd_sof_dev* %179, i32 %180, i32 %181, i32 %182, i32 %188, i32 %189, i32 %190)
  store i32 %191, i32* %13, align 4
  %192 = load i32, i32* %13, align 4
  %193 = icmp ne i32 %192, 0
  br i1 %193, label %194, label %196

194:                                              ; preds = %159
  %195 = load i32, i32* %13, align 4
  store i32 %195, i32* %5, align 4
  br label %353

196:                                              ; preds = %159
  %197 = load %struct.snd_sof_dev*, %struct.snd_sof_dev** %6, align 8
  %198 = load i32, i32* @HDA_DSP_HDA_BAR, align 4
  %199 = load i32, i32* %12, align 4
  %200 = load i32, i32* @SOF_HDA_ADSP_REG_CL_SD_STS, align 4
  %201 = add nsw i32 %199, %200
  %202 = load i32, i32* @SOF_HDA_CL_DMA_SD_INT_MASK, align 4
  %203 = load i32, i32* @SOF_HDA_CL_DMA_SD_INT_MASK, align 4
  %204 = call i32 @snd_sof_dsp_update_bits(%struct.snd_sof_dev* %197, i32 %198, i32 %201, i32 %202, i32 %203)
  %205 = load %struct.hdac_stream*, %struct.hdac_stream** %11, align 8
  %206 = getelementptr inbounds %struct.hdac_stream, %struct.hdac_stream* %205, i32 0, i32 1
  store i32 0, i32* %206, align 4
  %207 = load %struct.snd_sof_dev*, %struct.snd_sof_dev** %6, align 8
  %208 = load %struct.snd_dma_buffer*, %struct.snd_dma_buffer** %8, align 8
  %209 = load %struct.hdac_stream*, %struct.hdac_stream** %11, align 8
  %210 = call i32 @hda_dsp_stream_setup_bdl(%struct.snd_sof_dev* %207, %struct.snd_dma_buffer* %208, %struct.hdac_stream* %209)
  store i32 %210, i32* %13, align 4
  %211 = load i32, i32* %13, align 4
  %212 = icmp slt i32 %211, 0
  br i1 %212, label %213, label %219

213:                                              ; preds = %196
  %214 = load %struct.snd_sof_dev*, %struct.snd_sof_dev** %6, align 8
  %215 = getelementptr inbounds %struct.snd_sof_dev, %struct.snd_sof_dev* %214, i32 0, i32 0
  %216 = load i32, i32* %215, align 4
  %217 = call i32 @dev_err(i32 %216, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.4, i64 0, i64 0))
  %218 = load i32, i32* %13, align 4
  store i32 %218, i32* %5, align 4
  br label %353

219:                                              ; preds = %196
  %220 = load %struct.snd_sof_dev*, %struct.snd_sof_dev** %6, align 8
  %221 = load i32, i32* @HDA_DSP_HDA_BAR, align 4
  %222 = load i32, i32* %12, align 4
  %223 = load i32, i32* @SOF_HDA_CL_SD_CTL_STREAM_TAG_MASK, align 4
  %224 = load %struct.hdac_stream*, %struct.hdac_stream** %11, align 8
  %225 = getelementptr inbounds %struct.hdac_stream, %struct.hdac_stream* %224, i32 0, i32 2
  %226 = load i32, i32* %225, align 8
  %227 = load i32, i32* @SOF_HDA_CL_SD_CTL_STREAM_TAG_SHIFT, align 4
  %228 = shl i32 %226, %227
  %229 = call i32 @snd_sof_dsp_update_bits(%struct.snd_sof_dev* %220, i32 %221, i32 %222, i32 %223, i32 %228)
  %230 = load %struct.snd_sof_dev*, %struct.snd_sof_dev** %6, align 8
  %231 = load i32, i32* @HDA_DSP_HDA_BAR, align 4
  %232 = load i32, i32* %12, align 4
  %233 = load i32, i32* @SOF_HDA_ADSP_REG_CL_SD_CBL, align 4
  %234 = add nsw i32 %232, %233
  %235 = load %struct.hdac_stream*, %struct.hdac_stream** %11, align 8
  %236 = getelementptr inbounds %struct.hdac_stream, %struct.hdac_stream* %235, i32 0, i32 3
  %237 = load i32, i32* %236, align 4
  %238 = call i32 @snd_sof_dsp_write(%struct.snd_sof_dev* %230, i32 %231, i32 %234, i32 %237)
  %239 = load %struct.snd_sof_dev*, %struct.snd_sof_dev** %6, align 8
  %240 = load i32, i32* @HDA_DSP_PP_BAR, align 4
  %241 = load i32, i32* @SOF_HDA_REG_PP_PPCTL, align 4
  %242 = load i32, i32* %17, align 4
  %243 = call i32 @snd_sof_dsp_update_bits(%struct.snd_sof_dev* %239, i32 %240, i32 %241, i32 %242, i32 0)
  %244 = load %struct.snd_sof_dev*, %struct.snd_sof_dev** %6, align 8
  %245 = load i32, i32* @HDA_DSP_HDA_BAR, align 4
  %246 = load i32, i32* %12, align 4
  %247 = load i32, i32* @SOF_HDA_ADSP_REG_CL_SD_FORMAT, align 4
  %248 = add nsw i32 %246, %247
  %249 = load %struct.hdac_stream*, %struct.hdac_stream** %11, align 8
  %250 = getelementptr inbounds %struct.hdac_stream, %struct.hdac_stream* %249, i32 0, i32 4
  %251 = load i32, i32* %250, align 8
  %252 = call i32 @snd_sof_dsp_update_bits(%struct.snd_sof_dev* %244, i32 %245, i32 %248, i32 65535, i32 %251)
  %253 = load %struct.snd_sof_dev*, %struct.snd_sof_dev** %6, align 8
  %254 = load i32, i32* @HDA_DSP_PP_BAR, align 4
  %255 = load i32, i32* @SOF_HDA_REG_PP_PPCTL, align 4
  %256 = load i32, i32* %17, align 4
  %257 = load i32, i32* %17, align 4
  %258 = call i32 @snd_sof_dsp_update_bits(%struct.snd_sof_dev* %253, i32 %254, i32 %255, i32 %256, i32 %257)
  %259 = load %struct.snd_sof_dev*, %struct.snd_sof_dev** %6, align 8
  %260 = load i32, i32* @HDA_DSP_HDA_BAR, align 4
  %261 = load i32, i32* %12, align 4
  %262 = load i32, i32* @SOF_HDA_ADSP_REG_CL_SD_LVI, align 4
  %263 = add nsw i32 %261, %262
  %264 = load %struct.hdac_stream*, %struct.hdac_stream** %11, align 8
  %265 = getelementptr inbounds %struct.hdac_stream, %struct.hdac_stream* %264, i32 0, i32 1
  %266 = load i32, i32* %265, align 4
  %267 = sub nsw i32 %266, 1
  %268 = call i32 @snd_sof_dsp_update_bits(%struct.snd_sof_dev* %259, i32 %260, i32 %263, i32 65535, i32 %267)
  %269 = load %struct.snd_sof_dev*, %struct.snd_sof_dev** %6, align 8
  %270 = load i32, i32* @HDA_DSP_HDA_BAR, align 4
  %271 = load i32, i32* %12, align 4
  %272 = load i32, i32* @SOF_HDA_ADSP_REG_CL_SD_BDLPL, align 4
  %273 = add nsw i32 %271, %272
  %274 = load %struct.hdac_stream*, %struct.hdac_stream** %11, align 8
  %275 = getelementptr inbounds %struct.hdac_stream, %struct.hdac_stream* %274, i32 0, i32 7
  %276 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %275, i32 0, i32 0
  %277 = load i64, i64* %276, align 8
  %278 = trunc i64 %277 to i32
  %279 = call i32 @snd_sof_dsp_write(%struct.snd_sof_dev* %269, i32 %270, i32 %273, i32 %278)
  %280 = load %struct.snd_sof_dev*, %struct.snd_sof_dev** %6, align 8
  %281 = load i32, i32* @HDA_DSP_HDA_BAR, align 4
  %282 = load i32, i32* %12, align 4
  %283 = load i32, i32* @SOF_HDA_ADSP_REG_CL_SD_BDLPU, align 4
  %284 = add nsw i32 %282, %283
  %285 = load %struct.hdac_stream*, %struct.hdac_stream** %11, align 8
  %286 = getelementptr inbounds %struct.hdac_stream, %struct.hdac_stream* %285, i32 0, i32 7
  %287 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %286, i32 0, i32 0
  %288 = load i64, i64* %287, align 8
  %289 = call i32 @upper_32_bits(i64 %288)
  %290 = call i32 @snd_sof_dsp_write(%struct.snd_sof_dev* %280, i32 %281, i32 %284, i32 %289)
  %291 = load %struct.snd_sof_dev*, %struct.snd_sof_dev** %6, align 8
  %292 = load i32, i32* @HDA_DSP_HDA_BAR, align 4
  %293 = load i32, i32* @SOF_HDA_ADSP_DPLBASE, align 4
  %294 = call i32 @snd_sof_dsp_read(%struct.snd_sof_dev* %291, i32 %292, i32 %293)
  %295 = load i32, i32* @SOF_HDA_ADSP_DPLBASE_ENABLE, align 4
  %296 = and i32 %294, %295
  %297 = icmp ne i32 %296, 0
  br i1 %297, label %319, label %298

298:                                              ; preds = %219
  %299 = load %struct.snd_sof_dev*, %struct.snd_sof_dev** %6, align 8
  %300 = load i32, i32* @HDA_DSP_HDA_BAR, align 4
  %301 = load i32, i32* @SOF_HDA_ADSP_DPUBASE, align 4
  %302 = load %struct.hdac_bus*, %struct.hdac_bus** %10, align 8
  %303 = getelementptr inbounds %struct.hdac_bus, %struct.hdac_bus* %302, i32 0, i32 0
  %304 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %303, i32 0, i32 0
  %305 = load i64, i64* %304, align 8
  %306 = call i32 @upper_32_bits(i64 %305)
  %307 = call i32 @snd_sof_dsp_write(%struct.snd_sof_dev* %299, i32 %300, i32 %301, i32 %306)
  %308 = load %struct.snd_sof_dev*, %struct.snd_sof_dev** %6, align 8
  %309 = load i32, i32* @HDA_DSP_HDA_BAR, align 4
  %310 = load i32, i32* @SOF_HDA_ADSP_DPLBASE, align 4
  %311 = load %struct.hdac_bus*, %struct.hdac_bus** %10, align 8
  %312 = getelementptr inbounds %struct.hdac_bus, %struct.hdac_bus* %311, i32 0, i32 0
  %313 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %312, i32 0, i32 0
  %314 = load i64, i64* %313, align 8
  %315 = trunc i64 %314 to i32
  %316 = load i32, i32* @SOF_HDA_ADSP_DPLBASE_ENABLE, align 4
  %317 = or i32 %315, %316
  %318 = call i32 @snd_sof_dsp_write(%struct.snd_sof_dev* %308, i32 %309, i32 %310, i32 %317)
  br label %319

319:                                              ; preds = %298, %219
  %320 = load %struct.snd_sof_dev*, %struct.snd_sof_dev** %6, align 8
  %321 = load i32, i32* @HDA_DSP_HDA_BAR, align 4
  %322 = load i32, i32* %12, align 4
  %323 = load i32, i32* @SOF_HDA_CL_DMA_SD_INT_MASK, align 4
  %324 = load i32, i32* @SOF_HDA_CL_DMA_SD_INT_MASK, align 4
  %325 = call i32 @snd_sof_dsp_update_bits(%struct.snd_sof_dev* %320, i32 %321, i32 %322, i32 %323, i32 %324)
  %326 = load %struct.hdac_stream*, %struct.hdac_stream** %11, align 8
  %327 = getelementptr inbounds %struct.hdac_stream, %struct.hdac_stream* %326, i32 0, i32 5
  %328 = load i64, i64* %327, align 8
  %329 = load i64, i64* @SNDRV_PCM_STREAM_PLAYBACK, align 8
  %330 = icmp eq i64 %328, %329
  br i1 %330, label %331, label %348

331:                                              ; preds = %319
  %332 = load %struct.snd_sof_dev*, %struct.snd_sof_dev** %6, align 8
  %333 = load i32, i32* @HDA_DSP_HDA_BAR, align 4
  %334 = load i32, i32* %12, align 4
  %335 = load i32, i32* @SOF_HDA_ADSP_REG_CL_SD_FIFOSIZE, align 4
  %336 = add nsw i32 %334, %335
  %337 = call i32 @snd_sof_dsp_read(%struct.snd_sof_dev* %332, i32 %333, i32 %336)
  %338 = load %struct.hdac_stream*, %struct.hdac_stream** %11, align 8
  %339 = getelementptr inbounds %struct.hdac_stream, %struct.hdac_stream* %338, i32 0, i32 6
  store i32 %337, i32* %339, align 8
  %340 = load %struct.hdac_stream*, %struct.hdac_stream** %11, align 8
  %341 = getelementptr inbounds %struct.hdac_stream, %struct.hdac_stream* %340, i32 0, i32 6
  %342 = load i32, i32* %341, align 8
  %343 = and i32 %342, 65535
  store i32 %343, i32* %341, align 8
  %344 = load %struct.hdac_stream*, %struct.hdac_stream** %11, align 8
  %345 = getelementptr inbounds %struct.hdac_stream, %struct.hdac_stream* %344, i32 0, i32 6
  %346 = load i32, i32* %345, align 8
  %347 = add nsw i32 %346, 1
  store i32 %347, i32* %345, align 8
  br label %351

348:                                              ; preds = %319
  %349 = load %struct.hdac_stream*, %struct.hdac_stream** %11, align 8
  %350 = getelementptr inbounds %struct.hdac_stream, %struct.hdac_stream* %349, i32 0, i32 6
  store i32 0, i32* %350, align 8
  br label %351

351:                                              ; preds = %348, %331
  %352 = load i32, i32* %13, align 4
  store i32 %352, i32* %5, align 4
  br label %353

353:                                              ; preds = %351, %213, %194, %143, %112, %79, %49, %29
  %354 = load i32, i32* %5, align 4
  ret i32 %354
}

declare dso_local %struct.hdac_bus* @sof_to_bus(%struct.snd_sof_dev*) #1

declare dso_local i32 @SOF_STREAM_SD_OFFSET(%struct.hdac_stream*) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @snd_sof_dsp_update_bits(%struct.snd_sof_dev*, i32, i32, i32, i32) #1

declare dso_local i32 @snd_sof_dsp_read_poll_timeout(%struct.snd_sof_dev*, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @snd_sof_dsp_read(%struct.snd_sof_dev*, i32, i32) #1

declare dso_local i32 @snd_sof_dsp_write(%struct.snd_sof_dev*, i32, i32, i32) #1

declare dso_local i32 @hda_dsp_stream_setup_bdl(%struct.snd_sof_dev*, %struct.snd_dma_buffer*, %struct.hdac_stream*) #1

declare dso_local i32 @upper_32_bits(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
