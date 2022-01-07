; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/intel/haswell/extr_sst-haswell-pcm.c_hsw_pcm_hw_params.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/intel/haswell/extr_sst-haswell-pcm.c_hsw_pcm_hw_params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32 }
%struct.snd_pcm_substream = type { i64, %struct.snd_pcm_runtime*, %struct.snd_soc_pcm_runtime* }
%struct.snd_pcm_runtime = type { i32, i32 }
%struct.snd_soc_pcm_runtime = type { i32, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i64 }
%struct.snd_pcm_hw_params = type { i32 }
%struct.snd_soc_component = type { i32 }
%struct.hsw_priv_data = type { %struct.TYPE_4__**, %struct.hsw_pcm_data**, %struct.sst_hsw* }
%struct.TYPE_4__ = type { i32 }
%struct.hsw_pcm_data = type { i32, i32*, i32*, i32 }
%struct.sst_hsw = type { i32 }
%struct.sst_module = type { i32 }
%struct.sst_dsp = type { i32 }
%struct.snd_dma_buffer = type { i32 }

@DRV_NAME = common dso_local global i32 0, align 4
@mod_map = common dso_local global %struct.TYPE_6__* null, align 8
@.str = private unnamed_addr constant [31 x i8] c"error: reset stream failed %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [30 x i8] c"error: free stream failed %d\0A\00", align 1
@hsw_notify_pointer = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [32 x i8] c"error: failed to create stream\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@SNDRV_PCM_STREAM_PLAYBACK = common dso_local global i64 0, align 8
@SST_HSW_STREAM_PATH_SSP0_OUT = common dso_local global i32 0, align 4
@SST_HSW_STREAM_PATH_SSP0_IN = common dso_local global i32 0, align 4
@SST_HSW_STREAM_TYPE_SYSTEM = common dso_local global i32 0, align 4
@SST_HSW_MODULE_PCM_SYSTEM = common dso_local global i32 0, align 4
@SST_HSW_STREAM_TYPE_CAPTURE = common dso_local global i32 0, align 4
@SST_HSW_MODULE_PCM_CAPTURE = common dso_local global i32 0, align 4
@SST_HSW_STREAM_TYPE_RENDER = common dso_local global i32 0, align 4
@SST_HSW_MODULE_PCM = common dso_local global i32 0, align 4
@SST_HSW_STREAM_TYPE_LOOPBACK = common dso_local global i32 0, align 4
@SST_HSW_MODULE_PCM_REFERENCE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [26 x i8] c"error: invalid DAI ID %d\0A\00", align 1
@SST_HSW_STREAM_FORMAT_PCM_FORMAT = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [32 x i8] c"error: failed to set format %d\0A\00", align 1
@.str.5 = private unnamed_addr constant [30 x i8] c"error: could not set rate %d\0A\00", align 1
@SST_HSW_DEPTH_16BIT = common dso_local global i32 0, align 4
@SST_HSW_DEPTH_32BIT = common dso_local global i32 0, align 4
@SST_HSW_DEPTH_8BIT = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [26 x i8] c"error: invalid format %d\0A\00", align 1
@.str.7 = private unnamed_addr constant [30 x i8] c"error: could not set bits %d\0A\00", align 1
@SST_HSW_CHANNEL_CONFIG_STEREO = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [34 x i8] c"error: could not set channels %d\0A\00", align 1
@.str.9 = private unnamed_addr constant [47 x i8] c"error: could not allocate %d bytes for PCM %d\0A\00", align 1
@SST_HSW_INTERLEAVING_PER_CHANNEL = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@PAGE_SHIFT = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [36 x i8] c"error: failed to set DMA buffer %d\0A\00", align 1
@.str.11 = private unnamed_addr constant [36 x i8] c"error: failed to get module config\0A\00", align 1
@.str.12 = private unnamed_addr constant [35 x i8] c"error: failed to commit stream %d\0A\00", align 1
@.str.13 = private unnamed_addr constant [27 x i8] c"error: failed to pause %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_substream*, %struct.snd_pcm_hw_params*)* @hsw_pcm_hw_params to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hsw_pcm_hw_params(%struct.snd_pcm_substream* %0, %struct.snd_pcm_hw_params* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.snd_pcm_substream*, align 8
  %5 = alloca %struct.snd_pcm_hw_params*, align 8
  %6 = alloca %struct.snd_soc_pcm_runtime*, align 8
  %7 = alloca %struct.snd_pcm_runtime*, align 8
  %8 = alloca %struct.snd_soc_component*, align 8
  %9 = alloca %struct.hsw_priv_data*, align 8
  %10 = alloca %struct.hsw_pcm_data*, align 8
  %11 = alloca %struct.sst_hsw*, align 8
  %12 = alloca %struct.sst_module*, align 8
  %13 = alloca %struct.sst_dsp*, align 8
  %14 = alloca %struct.snd_dma_buffer*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %4, align 8
  store %struct.snd_pcm_hw_params* %1, %struct.snd_pcm_hw_params** %5, align 8
  %25 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %4, align 8
  %26 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %25, i32 0, i32 2
  %27 = load %struct.snd_soc_pcm_runtime*, %struct.snd_soc_pcm_runtime** %26, align 8
  store %struct.snd_soc_pcm_runtime* %27, %struct.snd_soc_pcm_runtime** %6, align 8
  %28 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %4, align 8
  %29 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %28, i32 0, i32 1
  %30 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %29, align 8
  store %struct.snd_pcm_runtime* %30, %struct.snd_pcm_runtime** %7, align 8
  %31 = load %struct.snd_soc_pcm_runtime*, %struct.snd_soc_pcm_runtime** %6, align 8
  %32 = load i32, i32* @DRV_NAME, align 4
  %33 = call %struct.snd_soc_component* @snd_soc_rtdcom_lookup(%struct.snd_soc_pcm_runtime* %31, i32 %32)
  store %struct.snd_soc_component* %33, %struct.snd_soc_component** %8, align 8
  %34 = load %struct.snd_soc_component*, %struct.snd_soc_component** %8, align 8
  %35 = call %struct.hsw_priv_data* @snd_soc_component_get_drvdata(%struct.snd_soc_component* %34)
  store %struct.hsw_priv_data* %35, %struct.hsw_priv_data** %9, align 8
  %36 = load %struct.hsw_priv_data*, %struct.hsw_priv_data** %9, align 8
  %37 = getelementptr inbounds %struct.hsw_priv_data, %struct.hsw_priv_data* %36, i32 0, i32 2
  %38 = load %struct.sst_hsw*, %struct.sst_hsw** %37, align 8
  store %struct.sst_hsw* %38, %struct.sst_hsw** %11, align 8
  %39 = load %struct.TYPE_6__*, %struct.TYPE_6__** @mod_map, align 8
  %40 = load %struct.snd_soc_pcm_runtime*, %struct.snd_soc_pcm_runtime** %6, align 8
  %41 = getelementptr inbounds %struct.snd_soc_pcm_runtime, %struct.snd_soc_pcm_runtime* %40, i32 0, i32 1
  %42 = load %struct.TYPE_5__*, %struct.TYPE_5__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %39, i64 %44
  %46 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  store i32 %47, i32* %24, align 4
  %48 = load %struct.hsw_priv_data*, %struct.hsw_priv_data** %9, align 8
  %49 = getelementptr inbounds %struct.hsw_priv_data, %struct.hsw_priv_data* %48, i32 0, i32 1
  %50 = load %struct.hsw_pcm_data**, %struct.hsw_pcm_data*** %49, align 8
  %51 = load i32, i32* %24, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds %struct.hsw_pcm_data*, %struct.hsw_pcm_data** %50, i64 %52
  %54 = load %struct.hsw_pcm_data*, %struct.hsw_pcm_data** %53, align 8
  %55 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %4, align 8
  %56 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = getelementptr inbounds %struct.hsw_pcm_data, %struct.hsw_pcm_data* %54, i64 %57
  store %struct.hsw_pcm_data* %58, %struct.hsw_pcm_data** %10, align 8
  %59 = load %struct.hsw_pcm_data*, %struct.hsw_pcm_data** %10, align 8
  %60 = getelementptr inbounds %struct.hsw_pcm_data, %struct.hsw_pcm_data* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %118

63:                                               ; preds = %2
  %64 = load %struct.sst_hsw*, %struct.sst_hsw** %11, align 8
  %65 = load %struct.hsw_pcm_data*, %struct.hsw_pcm_data** %10, align 8
  %66 = getelementptr inbounds %struct.hsw_pcm_data, %struct.hsw_pcm_data* %65, i32 0, i32 1
  %67 = load i32*, i32** %66, align 8
  %68 = call i32 @sst_hsw_stream_reset(%struct.sst_hsw* %64, i32* %67)
  store i32 %68, i32* %23, align 4
  %69 = load i32, i32* %23, align 4
  %70 = icmp slt i32 %69, 0
  br i1 %70, label %71, label %77

71:                                               ; preds = %63
  %72 = load %struct.snd_soc_pcm_runtime*, %struct.snd_soc_pcm_runtime** %6, align 8
  %73 = getelementptr inbounds %struct.snd_soc_pcm_runtime, %struct.snd_soc_pcm_runtime* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = load i32, i32* %23, align 4
  %76 = call i32 @dev_dbg(i32 %74, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %75)
  br label %77

77:                                               ; preds = %71, %63
  %78 = load %struct.sst_hsw*, %struct.sst_hsw** %11, align 8
  %79 = load %struct.hsw_pcm_data*, %struct.hsw_pcm_data** %10, align 8
  %80 = getelementptr inbounds %struct.hsw_pcm_data, %struct.hsw_pcm_data* %79, i32 0, i32 1
  %81 = load i32*, i32** %80, align 8
  %82 = call i32 @sst_hsw_stream_free(%struct.sst_hsw* %78, i32* %81)
  store i32 %82, i32* %23, align 4
  %83 = load i32, i32* %23, align 4
  %84 = icmp slt i32 %83, 0
  br i1 %84, label %85, label %92

85:                                               ; preds = %77
  %86 = load %struct.snd_soc_pcm_runtime*, %struct.snd_soc_pcm_runtime** %6, align 8
  %87 = getelementptr inbounds %struct.snd_soc_pcm_runtime, %struct.snd_soc_pcm_runtime* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 8
  %89 = load i32, i32* %23, align 4
  %90 = call i32 @dev_dbg(i32 %88, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i32 %89)
  %91 = load i32, i32* %23, align 4
  store i32 %91, i32* %3, align 4
  br label %469

92:                                               ; preds = %77
  %93 = load %struct.hsw_pcm_data*, %struct.hsw_pcm_data** %10, align 8
  %94 = getelementptr inbounds %struct.hsw_pcm_data, %struct.hsw_pcm_data* %93, i32 0, i32 0
  store i32 0, i32* %94, align 8
  %95 = load %struct.sst_hsw*, %struct.sst_hsw** %11, align 8
  %96 = load %struct.snd_soc_pcm_runtime*, %struct.snd_soc_pcm_runtime** %6, align 8
  %97 = getelementptr inbounds %struct.snd_soc_pcm_runtime, %struct.snd_soc_pcm_runtime* %96, i32 0, i32 1
  %98 = load %struct.TYPE_5__*, %struct.TYPE_5__** %97, align 8
  %99 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %98, i32 0, i32 0
  %100 = load i64, i64* %99, align 8
  %101 = load i32, i32* @hsw_notify_pointer, align 4
  %102 = load %struct.hsw_pcm_data*, %struct.hsw_pcm_data** %10, align 8
  %103 = call i32* @sst_hsw_stream_new(%struct.sst_hsw* %95, i64 %100, i32 %101, %struct.hsw_pcm_data* %102)
  %104 = load %struct.hsw_pcm_data*, %struct.hsw_pcm_data** %10, align 8
  %105 = getelementptr inbounds %struct.hsw_pcm_data, %struct.hsw_pcm_data* %104, i32 0, i32 1
  store i32* %103, i32** %105, align 8
  %106 = load %struct.hsw_pcm_data*, %struct.hsw_pcm_data** %10, align 8
  %107 = getelementptr inbounds %struct.hsw_pcm_data, %struct.hsw_pcm_data* %106, i32 0, i32 1
  %108 = load i32*, i32** %107, align 8
  %109 = icmp eq i32* %108, null
  br i1 %109, label %110, label %117

110:                                              ; preds = %92
  %111 = load %struct.snd_soc_pcm_runtime*, %struct.snd_soc_pcm_runtime** %6, align 8
  %112 = getelementptr inbounds %struct.snd_soc_pcm_runtime, %struct.snd_soc_pcm_runtime* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 8
  %114 = call i32 (i32, i8*, ...) @dev_err(i32 %113, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0))
  %115 = load i32, i32* @EINVAL, align 4
  %116 = sub nsw i32 0, %115
  store i32 %116, i32* %3, align 4
  br label %469

117:                                              ; preds = %92
  br label %118

118:                                              ; preds = %117, %2
  %119 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %4, align 8
  %120 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %119, i32 0, i32 0
  %121 = load i64, i64* %120, align 8
  %122 = load i64, i64* @SNDRV_PCM_STREAM_PLAYBACK, align 8
  %123 = icmp eq i64 %121, %122
  br i1 %123, label %124, label %126

124:                                              ; preds = %118
  %125 = load i32, i32* @SST_HSW_STREAM_PATH_SSP0_OUT, align 4
  store i32 %125, i32* %16, align 4
  br label %128

126:                                              ; preds = %118
  %127 = load i32, i32* @SST_HSW_STREAM_PATH_SSP0_IN, align 4
  store i32 %127, i32* %16, align 4
  br label %128

128:                                              ; preds = %126, %124
  %129 = load %struct.snd_soc_pcm_runtime*, %struct.snd_soc_pcm_runtime** %6, align 8
  %130 = getelementptr inbounds %struct.snd_soc_pcm_runtime, %struct.snd_soc_pcm_runtime* %129, i32 0, i32 1
  %131 = load %struct.TYPE_5__*, %struct.TYPE_5__** %130, align 8
  %132 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %131, i32 0, i32 0
  %133 = load i64, i64* %132, align 8
  switch i64 %133, label %154 [
    i64 0, label %134
    i64 1, label %147
    i64 2, label %147
    i64 3, label %150
  ]

134:                                              ; preds = %128
  %135 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %4, align 8
  %136 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %135, i32 0, i32 0
  %137 = load i64, i64* %136, align 8
  %138 = load i64, i64* @SNDRV_PCM_STREAM_PLAYBACK, align 8
  %139 = icmp eq i64 %137, %138
  br i1 %139, label %140, label %143

140:                                              ; preds = %134
  %141 = load i32, i32* @SST_HSW_STREAM_TYPE_SYSTEM, align 4
  store i32 %141, i32* %15, align 4
  %142 = load i32, i32* @SST_HSW_MODULE_PCM_SYSTEM, align 4
  store i32 %142, i32* %21, align 4
  br label %146

143:                                              ; preds = %134
  %144 = load i32, i32* @SST_HSW_STREAM_TYPE_CAPTURE, align 4
  store i32 %144, i32* %15, align 4
  %145 = load i32, i32* @SST_HSW_MODULE_PCM_CAPTURE, align 4
  store i32 %145, i32* %21, align 4
  br label %146

146:                                              ; preds = %143, %140
  br label %166

147:                                              ; preds = %128, %128
  %148 = load i32, i32* @SST_HSW_STREAM_TYPE_RENDER, align 4
  store i32 %148, i32* %15, align 4
  %149 = load i32, i32* @SST_HSW_MODULE_PCM, align 4
  store i32 %149, i32* %21, align 4
  br label %166

150:                                              ; preds = %128
  %151 = load i32, i32* @SST_HSW_STREAM_TYPE_LOOPBACK, align 4
  store i32 %151, i32* %15, align 4
  %152 = load i32, i32* @SST_HSW_STREAM_PATH_SSP0_OUT, align 4
  store i32 %152, i32* %16, align 4
  %153 = load i32, i32* @SST_HSW_MODULE_PCM_REFERENCE, align 4
  store i32 %153, i32* %21, align 4
  br label %166

154:                                              ; preds = %128
  %155 = load %struct.snd_soc_pcm_runtime*, %struct.snd_soc_pcm_runtime** %6, align 8
  %156 = getelementptr inbounds %struct.snd_soc_pcm_runtime, %struct.snd_soc_pcm_runtime* %155, i32 0, i32 0
  %157 = load i32, i32* %156, align 8
  %158 = load %struct.snd_soc_pcm_runtime*, %struct.snd_soc_pcm_runtime** %6, align 8
  %159 = getelementptr inbounds %struct.snd_soc_pcm_runtime, %struct.snd_soc_pcm_runtime* %158, i32 0, i32 1
  %160 = load %struct.TYPE_5__*, %struct.TYPE_5__** %159, align 8
  %161 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %160, i32 0, i32 0
  %162 = load i64, i64* %161, align 8
  %163 = call i32 (i32, i8*, ...) @dev_err(i32 %157, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0), i64 %162)
  %164 = load i32, i32* @EINVAL, align 4
  %165 = sub nsw i32 0, %164
  store i32 %165, i32* %3, align 4
  br label %469

166:                                              ; preds = %150, %147, %146
  %167 = load %struct.sst_hsw*, %struct.sst_hsw** %11, align 8
  %168 = load %struct.hsw_pcm_data*, %struct.hsw_pcm_data** %10, align 8
  %169 = getelementptr inbounds %struct.hsw_pcm_data, %struct.hsw_pcm_data* %168, i32 0, i32 1
  %170 = load i32*, i32** %169, align 8
  %171 = load i32, i32* %16, align 4
  %172 = load i32, i32* %15, align 4
  %173 = load i32, i32* @SST_HSW_STREAM_FORMAT_PCM_FORMAT, align 4
  %174 = call i32 @sst_hsw_stream_format(%struct.sst_hsw* %167, i32* %170, i32 %171, i32 %172, i32 %173)
  store i32 %174, i32* %23, align 4
  %175 = load i32, i32* %23, align 4
  %176 = icmp slt i32 %175, 0
  br i1 %176, label %177, label %184

177:                                              ; preds = %166
  %178 = load %struct.snd_soc_pcm_runtime*, %struct.snd_soc_pcm_runtime** %6, align 8
  %179 = getelementptr inbounds %struct.snd_soc_pcm_runtime, %struct.snd_soc_pcm_runtime* %178, i32 0, i32 0
  %180 = load i32, i32* %179, align 8
  %181 = load i32, i32* %23, align 4
  %182 = call i32 (i32, i8*, ...) @dev_err(i32 %180, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.4, i64 0, i64 0), i32 %181)
  %183 = load i32, i32* %23, align 4
  store i32 %183, i32* %3, align 4
  br label %469

184:                                              ; preds = %166
  %185 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %5, align 8
  %186 = call i32 @params_rate(%struct.snd_pcm_hw_params* %185)
  store i32 %186, i32* %17, align 4
  %187 = load %struct.sst_hsw*, %struct.sst_hsw** %11, align 8
  %188 = load %struct.hsw_pcm_data*, %struct.hsw_pcm_data** %10, align 8
  %189 = getelementptr inbounds %struct.hsw_pcm_data, %struct.hsw_pcm_data* %188, i32 0, i32 1
  %190 = load i32*, i32** %189, align 8
  %191 = load i32, i32* %17, align 4
  %192 = call i32 @sst_hsw_stream_set_rate(%struct.sst_hsw* %187, i32* %190, i32 %191)
  store i32 %192, i32* %23, align 4
  %193 = load i32, i32* %23, align 4
  %194 = icmp slt i32 %193, 0
  br i1 %194, label %195, label %202

195:                                              ; preds = %184
  %196 = load %struct.snd_soc_pcm_runtime*, %struct.snd_soc_pcm_runtime** %6, align 8
  %197 = getelementptr inbounds %struct.snd_soc_pcm_runtime, %struct.snd_soc_pcm_runtime* %196, i32 0, i32 0
  %198 = load i32, i32* %197, align 8
  %199 = load i32, i32* %17, align 4
  %200 = call i32 (i32, i8*, ...) @dev_err(i32 %198, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.5, i64 0, i64 0), i32 %199)
  %201 = load i32, i32* %23, align 4
  store i32 %201, i32* %3, align 4
  br label %469

202:                                              ; preds = %184
  %203 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %5, align 8
  %204 = call i32 @params_format(%struct.snd_pcm_hw_params* %203)
  switch i32 %204, label %233 [
    i32 131, label %205
    i32 130, label %212
    i32 128, label %219
    i32 129, label %226
  ]

205:                                              ; preds = %202
  %206 = load i32, i32* @SST_HSW_DEPTH_16BIT, align 4
  store i32 %206, i32* %18, align 4
  %207 = load %struct.sst_hsw*, %struct.sst_hsw** %11, align 8
  %208 = load %struct.hsw_pcm_data*, %struct.hsw_pcm_data** %10, align 8
  %209 = getelementptr inbounds %struct.hsw_pcm_data, %struct.hsw_pcm_data* %208, i32 0, i32 1
  %210 = load i32*, i32** %209, align 8
  %211 = call i32 @sst_hsw_stream_set_valid(%struct.sst_hsw* %207, i32* %210, i32 16)
  br label %242

212:                                              ; preds = %202
  %213 = load i32, i32* @SST_HSW_DEPTH_32BIT, align 4
  store i32 %213, i32* %18, align 4
  %214 = load %struct.sst_hsw*, %struct.sst_hsw** %11, align 8
  %215 = load %struct.hsw_pcm_data*, %struct.hsw_pcm_data** %10, align 8
  %216 = getelementptr inbounds %struct.hsw_pcm_data, %struct.hsw_pcm_data* %215, i32 0, i32 1
  %217 = load i32*, i32** %216, align 8
  %218 = call i32 @sst_hsw_stream_set_valid(%struct.sst_hsw* %214, i32* %217, i32 24)
  br label %242

219:                                              ; preds = %202
  %220 = load i32, i32* @SST_HSW_DEPTH_8BIT, align 4
  store i32 %220, i32* %18, align 4
  %221 = load %struct.sst_hsw*, %struct.sst_hsw** %11, align 8
  %222 = load %struct.hsw_pcm_data*, %struct.hsw_pcm_data** %10, align 8
  %223 = getelementptr inbounds %struct.hsw_pcm_data, %struct.hsw_pcm_data* %222, i32 0, i32 1
  %224 = load i32*, i32** %223, align 8
  %225 = call i32 @sst_hsw_stream_set_valid(%struct.sst_hsw* %221, i32* %224, i32 8)
  br label %242

226:                                              ; preds = %202
  %227 = load i32, i32* @SST_HSW_DEPTH_32BIT, align 4
  store i32 %227, i32* %18, align 4
  %228 = load %struct.sst_hsw*, %struct.sst_hsw** %11, align 8
  %229 = load %struct.hsw_pcm_data*, %struct.hsw_pcm_data** %10, align 8
  %230 = getelementptr inbounds %struct.hsw_pcm_data, %struct.hsw_pcm_data* %229, i32 0, i32 1
  %231 = load i32*, i32** %230, align 8
  %232 = call i32 @sst_hsw_stream_set_valid(%struct.sst_hsw* %228, i32* %231, i32 32)
  br label %242

233:                                              ; preds = %202
  %234 = load %struct.snd_soc_pcm_runtime*, %struct.snd_soc_pcm_runtime** %6, align 8
  %235 = getelementptr inbounds %struct.snd_soc_pcm_runtime, %struct.snd_soc_pcm_runtime* %234, i32 0, i32 0
  %236 = load i32, i32* %235, align 8
  %237 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %5, align 8
  %238 = call i32 @params_format(%struct.snd_pcm_hw_params* %237)
  %239 = call i32 (i32, i8*, ...) @dev_err(i32 %236, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.6, i64 0, i64 0), i32 %238)
  %240 = load i32, i32* @EINVAL, align 4
  %241 = sub nsw i32 0, %240
  store i32 %241, i32* %3, align 4
  br label %469

242:                                              ; preds = %226, %219, %212, %205
  %243 = load %struct.sst_hsw*, %struct.sst_hsw** %11, align 8
  %244 = load %struct.hsw_pcm_data*, %struct.hsw_pcm_data** %10, align 8
  %245 = getelementptr inbounds %struct.hsw_pcm_data, %struct.hsw_pcm_data* %244, i32 0, i32 1
  %246 = load i32*, i32** %245, align 8
  %247 = load i32, i32* %18, align 4
  %248 = call i32 @sst_hsw_stream_set_bits(%struct.sst_hsw* %243, i32* %246, i32 %247)
  store i32 %248, i32* %23, align 4
  %249 = load i32, i32* %23, align 4
  %250 = icmp slt i32 %249, 0
  br i1 %250, label %251, label %258

251:                                              ; preds = %242
  %252 = load %struct.snd_soc_pcm_runtime*, %struct.snd_soc_pcm_runtime** %6, align 8
  %253 = getelementptr inbounds %struct.snd_soc_pcm_runtime, %struct.snd_soc_pcm_runtime* %252, i32 0, i32 0
  %254 = load i32, i32* %253, align 8
  %255 = load i32, i32* %18, align 4
  %256 = call i32 (i32, i8*, ...) @dev_err(i32 %254, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.7, i64 0, i64 0), i32 %255)
  %257 = load i32, i32* %23, align 4
  store i32 %257, i32* %3, align 4
  br label %469

258:                                              ; preds = %242
  %259 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %5, align 8
  %260 = call i32 @params_channels(%struct.snd_pcm_hw_params* %259)
  store i32 %260, i32* %22, align 4
  %261 = load i32, i32* @SST_HSW_CHANNEL_CONFIG_STEREO, align 4
  %262 = call i32 @create_channel_map(i32 %261)
  store i32 %262, i32* %19, align 4
  %263 = load %struct.sst_hsw*, %struct.sst_hsw** %11, align 8
  %264 = load %struct.hsw_pcm_data*, %struct.hsw_pcm_data** %10, align 8
  %265 = getelementptr inbounds %struct.hsw_pcm_data, %struct.hsw_pcm_data* %264, i32 0, i32 1
  %266 = load i32*, i32** %265, align 8
  %267 = load i32, i32* %19, align 4
  %268 = load i32, i32* @SST_HSW_CHANNEL_CONFIG_STEREO, align 4
  %269 = call i32 @sst_hsw_stream_set_map_config(%struct.sst_hsw* %263, i32* %266, i32 %267, i32 %268)
  %270 = load %struct.sst_hsw*, %struct.sst_hsw** %11, align 8
  %271 = load %struct.hsw_pcm_data*, %struct.hsw_pcm_data** %10, align 8
  %272 = getelementptr inbounds %struct.hsw_pcm_data, %struct.hsw_pcm_data* %271, i32 0, i32 1
  %273 = load i32*, i32** %272, align 8
  %274 = load i32, i32* %22, align 4
  %275 = call i32 @sst_hsw_stream_set_channels(%struct.sst_hsw* %270, i32* %273, i32 %274)
  store i32 %275, i32* %23, align 4
  %276 = load i32, i32* %23, align 4
  %277 = icmp slt i32 %276, 0
  br i1 %277, label %278, label %285

278:                                              ; preds = %258
  %279 = load %struct.snd_soc_pcm_runtime*, %struct.snd_soc_pcm_runtime** %6, align 8
  %280 = getelementptr inbounds %struct.snd_soc_pcm_runtime, %struct.snd_soc_pcm_runtime* %279, i32 0, i32 0
  %281 = load i32, i32* %280, align 8
  %282 = load i32, i32* %22, align 4
  %283 = call i32 (i32, i8*, ...) @dev_err(i32 %281, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.8, i64 0, i64 0), i32 %282)
  %284 = load i32, i32* %23, align 4
  store i32 %284, i32* %3, align 4
  br label %469

285:                                              ; preds = %258
  %286 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %4, align 8
  %287 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %5, align 8
  %288 = call i32 @params_buffer_bytes(%struct.snd_pcm_hw_params* %287)
  %289 = call i32 @snd_pcm_lib_malloc_pages(%struct.snd_pcm_substream* %286, i32 %288)
  store i32 %289, i32* %23, align 4
  %290 = load i32, i32* %23, align 4
  %291 = icmp slt i32 %290, 0
  br i1 %291, label %292, label %301

292:                                              ; preds = %285
  %293 = load %struct.snd_soc_pcm_runtime*, %struct.snd_soc_pcm_runtime** %6, align 8
  %294 = getelementptr inbounds %struct.snd_soc_pcm_runtime, %struct.snd_soc_pcm_runtime* %293, i32 0, i32 0
  %295 = load i32, i32* %294, align 8
  %296 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %5, align 8
  %297 = call i32 @params_buffer_bytes(%struct.snd_pcm_hw_params* %296)
  %298 = load i32, i32* %23, align 4
  %299 = call i32 (i32, i8*, ...) @dev_err(i32 %295, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.9, i64 0, i64 0), i32 %297, i32 %298)
  %300 = load i32, i32* %23, align 4
  store i32 %300, i32* %3, align 4
  br label %469

301:                                              ; preds = %285
  %302 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %4, align 8
  %303 = call %struct.snd_dma_buffer* @snd_pcm_get_dma_buf(%struct.snd_pcm_substream* %302)
  store %struct.snd_dma_buffer* %303, %struct.snd_dma_buffer** %14, align 8
  %304 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %4, align 8
  %305 = load %struct.hsw_priv_data*, %struct.hsw_priv_data** %9, align 8
  %306 = load %struct.snd_soc_pcm_runtime*, %struct.snd_soc_pcm_runtime** %6, align 8
  %307 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %7, align 8
  %308 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %307, i32 0, i32 1
  %309 = load i32, i32* %308, align 4
  %310 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %7, align 8
  %311 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %310, i32 0, i32 0
  %312 = load i32, i32* %311, align 4
  %313 = load %struct.snd_soc_pcm_runtime*, %struct.snd_soc_pcm_runtime** %6, align 8
  %314 = getelementptr inbounds %struct.snd_soc_pcm_runtime, %struct.snd_soc_pcm_runtime* %313, i32 0, i32 1
  %315 = load %struct.TYPE_5__*, %struct.TYPE_5__** %314, align 8
  %316 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %315, i32 0, i32 0
  %317 = load i64, i64* %316, align 8
  %318 = call i32 @create_adsp_page_table(%struct.snd_pcm_substream* %304, %struct.hsw_priv_data* %305, %struct.snd_soc_pcm_runtime* %306, i32 %309, i32 %312, i64 %317)
  store i32 %318, i32* %23, align 4
  %319 = load i32, i32* %23, align 4
  %320 = icmp slt i32 %319, 0
  br i1 %320, label %321, label %323

321:                                              ; preds = %301
  %322 = load i32, i32* %23, align 4
  store i32 %322, i32* %3, align 4
  br label %469

323:                                              ; preds = %301
  %324 = load %struct.sst_hsw*, %struct.sst_hsw** %11, align 8
  %325 = load %struct.hsw_pcm_data*, %struct.hsw_pcm_data** %10, align 8
  %326 = getelementptr inbounds %struct.hsw_pcm_data, %struct.hsw_pcm_data* %325, i32 0, i32 1
  %327 = load i32*, i32** %326, align 8
  %328 = load i32, i32* @SST_HSW_INTERLEAVING_PER_CHANNEL, align 4
  %329 = call i32 @sst_hsw_stream_set_style(%struct.sst_hsw* %324, i32* %327, i32 %328)
  %330 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %7, align 8
  %331 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %330, i32 0, i32 0
  %332 = load i32, i32* %331, align 4
  %333 = load i32, i32* @PAGE_SIZE, align 4
  %334 = srem i32 %332, %333
  %335 = icmp ne i32 %334, 0
  br i1 %335, label %336, label %343

336:                                              ; preds = %323
  %337 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %7, align 8
  %338 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %337, i32 0, i32 0
  %339 = load i32, i32* %338, align 4
  %340 = load i32, i32* @PAGE_SIZE, align 4
  %341 = sdiv i32 %339, %340
  %342 = add nsw i32 %341, 1
  store i32 %342, i32* %20, align 4
  br label %349

343:                                              ; preds = %323
  %344 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %7, align 8
  %345 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %344, i32 0, i32 0
  %346 = load i32, i32* %345, align 4
  %347 = load i32, i32* @PAGE_SIZE, align 4
  %348 = sdiv i32 %346, %347
  store i32 %348, i32* %20, align 4
  br label %349

349:                                              ; preds = %343, %336
  %350 = load %struct.sst_hsw*, %struct.sst_hsw** %11, align 8
  %351 = load %struct.hsw_pcm_data*, %struct.hsw_pcm_data** %10, align 8
  %352 = getelementptr inbounds %struct.hsw_pcm_data, %struct.hsw_pcm_data* %351, i32 0, i32 1
  %353 = load i32*, i32** %352, align 8
  %354 = load %struct.hsw_priv_data*, %struct.hsw_priv_data** %9, align 8
  %355 = getelementptr inbounds %struct.hsw_priv_data, %struct.hsw_priv_data* %354, i32 0, i32 0
  %356 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %355, align 8
  %357 = load %struct.snd_soc_pcm_runtime*, %struct.snd_soc_pcm_runtime** %6, align 8
  %358 = getelementptr inbounds %struct.snd_soc_pcm_runtime, %struct.snd_soc_pcm_runtime* %357, i32 0, i32 1
  %359 = load %struct.TYPE_5__*, %struct.TYPE_5__** %358, align 8
  %360 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %359, i32 0, i32 0
  %361 = load i64, i64* %360, align 8
  %362 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %356, i64 %361
  %363 = load %struct.TYPE_4__*, %struct.TYPE_4__** %362, align 8
  %364 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %4, align 8
  %365 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %364, i32 0, i32 0
  %366 = load i64, i64* %365, align 8
  %367 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %363, i64 %366
  %368 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %367, i32 0, i32 0
  %369 = load i32, i32* %368, align 4
  %370 = load i32, i32* %20, align 4
  %371 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %7, align 8
  %372 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %371, i32 0, i32 0
  %373 = load i32, i32* %372, align 4
  %374 = load %struct.snd_dma_buffer*, %struct.snd_dma_buffer** %14, align 8
  %375 = call i32 @snd_sgbuf_get_addr(%struct.snd_dma_buffer* %374, i32 0)
  %376 = load i32, i32* @PAGE_SHIFT, align 4
  %377 = ashr i32 %375, %376
  %378 = call i32 @sst_hsw_stream_buffer(%struct.sst_hsw* %350, i32* %353, i32 %369, i32 %370, i32 %373, i32 0, i32 %377)
  store i32 %378, i32* %23, align 4
  %379 = load i32, i32* %23, align 4
  %380 = icmp slt i32 %379, 0
  br i1 %380, label %381, label %388

381:                                              ; preds = %349
  %382 = load %struct.snd_soc_pcm_runtime*, %struct.snd_soc_pcm_runtime** %6, align 8
  %383 = getelementptr inbounds %struct.snd_soc_pcm_runtime, %struct.snd_soc_pcm_runtime* %382, i32 0, i32 0
  %384 = load i32, i32* %383, align 8
  %385 = load i32, i32* %23, align 4
  %386 = call i32 (i32, i8*, ...) @dev_err(i32 %384, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.10, i64 0, i64 0), i32 %385)
  %387 = load i32, i32* %23, align 4
  store i32 %387, i32* %3, align 4
  br label %469

388:                                              ; preds = %349
  %389 = load %struct.sst_hsw*, %struct.sst_hsw** %11, align 8
  %390 = call %struct.sst_dsp* @sst_hsw_get_dsp(%struct.sst_hsw* %389)
  store %struct.sst_dsp* %390, %struct.sst_dsp** %13, align 8
  %391 = load %struct.sst_dsp*, %struct.sst_dsp** %13, align 8
  %392 = load i32, i32* %21, align 4
  %393 = call %struct.sst_module* @sst_module_get_from_id(%struct.sst_dsp* %391, i32 %392)
  store %struct.sst_module* %393, %struct.sst_module** %12, align 8
  %394 = load %struct.sst_module*, %struct.sst_module** %12, align 8
  %395 = icmp eq %struct.sst_module* %394, null
  br i1 %395, label %396, label %403

396:                                              ; preds = %388
  %397 = load %struct.snd_soc_pcm_runtime*, %struct.snd_soc_pcm_runtime** %6, align 8
  %398 = getelementptr inbounds %struct.snd_soc_pcm_runtime, %struct.snd_soc_pcm_runtime* %397, i32 0, i32 0
  %399 = load i32, i32* %398, align 8
  %400 = call i32 (i32, i8*, ...) @dev_err(i32 %399, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.11, i64 0, i64 0))
  %401 = load i32, i32* @EINVAL, align 4
  %402 = sub nsw i32 0, %401
  store i32 %402, i32* %3, align 4
  br label %469

403:                                              ; preds = %388
  %404 = load %struct.sst_hsw*, %struct.sst_hsw** %11, align 8
  %405 = load %struct.hsw_pcm_data*, %struct.hsw_pcm_data** %10, align 8
  %406 = getelementptr inbounds %struct.hsw_pcm_data, %struct.hsw_pcm_data* %405, i32 0, i32 1
  %407 = load i32*, i32** %406, align 8
  %408 = load %struct.hsw_pcm_data*, %struct.hsw_pcm_data** %10, align 8
  %409 = getelementptr inbounds %struct.hsw_pcm_data, %struct.hsw_pcm_data* %408, i32 0, i32 3
  %410 = load i32, i32* %409, align 8
  %411 = call i32 @sst_hsw_stream_set_module_info(%struct.sst_hsw* %404, i32* %407, i32 %410)
  %412 = load %struct.sst_hsw*, %struct.sst_hsw** %11, align 8
  %413 = load %struct.hsw_pcm_data*, %struct.hsw_pcm_data** %10, align 8
  %414 = getelementptr inbounds %struct.hsw_pcm_data, %struct.hsw_pcm_data* %413, i32 0, i32 1
  %415 = load i32*, i32** %414, align 8
  %416 = call i32 @sst_hsw_stream_commit(%struct.sst_hsw* %412, i32* %415)
  store i32 %416, i32* %23, align 4
  %417 = load i32, i32* %23, align 4
  %418 = icmp slt i32 %417, 0
  br i1 %418, label %419, label %426

419:                                              ; preds = %403
  %420 = load %struct.snd_soc_pcm_runtime*, %struct.snd_soc_pcm_runtime** %6, align 8
  %421 = getelementptr inbounds %struct.snd_soc_pcm_runtime, %struct.snd_soc_pcm_runtime* %420, i32 0, i32 0
  %422 = load i32, i32* %421, align 8
  %423 = load i32, i32* %23, align 4
  %424 = call i32 (i32, i8*, ...) @dev_err(i32 %422, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.12, i64 0, i64 0), i32 %423)
  %425 = load i32, i32* %23, align 4
  store i32 %425, i32* %3, align 4
  br label %469

426:                                              ; preds = %403
  %427 = load %struct.hsw_pcm_data*, %struct.hsw_pcm_data** %10, align 8
  %428 = getelementptr inbounds %struct.hsw_pcm_data, %struct.hsw_pcm_data* %427, i32 0, i32 0
  %429 = load i32, i32* %428, align 8
  %430 = icmp ne i32 %429, 0
  br i1 %430, label %454, label %431

431:                                              ; preds = %426
  %432 = load %struct.sst_hsw*, %struct.sst_hsw** %11, align 8
  %433 = load %struct.hsw_pcm_data*, %struct.hsw_pcm_data** %10, align 8
  %434 = getelementptr inbounds %struct.hsw_pcm_data, %struct.hsw_pcm_data* %433, i32 0, i32 1
  %435 = load i32*, i32** %434, align 8
  %436 = load %struct.hsw_pcm_data*, %struct.hsw_pcm_data** %10, align 8
  %437 = getelementptr inbounds %struct.hsw_pcm_data, %struct.hsw_pcm_data* %436, i32 0, i32 2
  %438 = load i32*, i32** %437, align 8
  %439 = getelementptr inbounds i32, i32* %438, i64 0
  %440 = load i32, i32* %439, align 4
  %441 = call i32 @sst_hsw_stream_set_volume(%struct.sst_hsw* %432, i32* %435, i32 0, i32 0, i32 %440)
  %442 = load %struct.sst_hsw*, %struct.sst_hsw** %11, align 8
  %443 = load %struct.hsw_pcm_data*, %struct.hsw_pcm_data** %10, align 8
  %444 = getelementptr inbounds %struct.hsw_pcm_data, %struct.hsw_pcm_data* %443, i32 0, i32 1
  %445 = load i32*, i32** %444, align 8
  %446 = load %struct.hsw_pcm_data*, %struct.hsw_pcm_data** %10, align 8
  %447 = getelementptr inbounds %struct.hsw_pcm_data, %struct.hsw_pcm_data* %446, i32 0, i32 2
  %448 = load i32*, i32** %447, align 8
  %449 = getelementptr inbounds i32, i32* %448, i64 1
  %450 = load i32, i32* %449, align 4
  %451 = call i32 @sst_hsw_stream_set_volume(%struct.sst_hsw* %442, i32* %445, i32 0, i32 1, i32 %450)
  %452 = load %struct.hsw_pcm_data*, %struct.hsw_pcm_data** %10, align 8
  %453 = getelementptr inbounds %struct.hsw_pcm_data, %struct.hsw_pcm_data* %452, i32 0, i32 0
  store i32 1, i32* %453, align 8
  br label %454

454:                                              ; preds = %431, %426
  %455 = load %struct.sst_hsw*, %struct.sst_hsw** %11, align 8
  %456 = load %struct.hsw_pcm_data*, %struct.hsw_pcm_data** %10, align 8
  %457 = getelementptr inbounds %struct.hsw_pcm_data, %struct.hsw_pcm_data* %456, i32 0, i32 1
  %458 = load i32*, i32** %457, align 8
  %459 = call i32 @sst_hsw_stream_pause(%struct.sst_hsw* %455, i32* %458, i32 1)
  store i32 %459, i32* %23, align 4
  %460 = load i32, i32* %23, align 4
  %461 = icmp slt i32 %460, 0
  br i1 %461, label %462, label %468

462:                                              ; preds = %454
  %463 = load %struct.snd_soc_pcm_runtime*, %struct.snd_soc_pcm_runtime** %6, align 8
  %464 = getelementptr inbounds %struct.snd_soc_pcm_runtime, %struct.snd_soc_pcm_runtime* %463, i32 0, i32 0
  %465 = load i32, i32* %464, align 8
  %466 = load i32, i32* %23, align 4
  %467 = call i32 (i32, i8*, ...) @dev_err(i32 %465, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.13, i64 0, i64 0), i32 %466)
  br label %468

468:                                              ; preds = %462, %454
  store i32 0, i32* %3, align 4
  br label %469

469:                                              ; preds = %468, %419, %396, %381, %321, %292, %278, %251, %233, %195, %177, %154, %110, %85
  %470 = load i32, i32* %3, align 4
  ret i32 %470
}

declare dso_local %struct.snd_soc_component* @snd_soc_rtdcom_lookup(%struct.snd_soc_pcm_runtime*, i32) #1

declare dso_local %struct.hsw_priv_data* @snd_soc_component_get_drvdata(%struct.snd_soc_component*) #1

declare dso_local i32 @sst_hsw_stream_reset(%struct.sst_hsw*, i32*) #1

declare dso_local i32 @dev_dbg(i32, i8*, i32) #1

declare dso_local i32 @sst_hsw_stream_free(%struct.sst_hsw*, i32*) #1

declare dso_local i32* @sst_hsw_stream_new(%struct.sst_hsw*, i64, i32, %struct.hsw_pcm_data*) #1

declare dso_local i32 @dev_err(i32, i8*, ...) #1

declare dso_local i32 @sst_hsw_stream_format(%struct.sst_hsw*, i32*, i32, i32, i32) #1

declare dso_local i32 @params_rate(%struct.snd_pcm_hw_params*) #1

declare dso_local i32 @sst_hsw_stream_set_rate(%struct.sst_hsw*, i32*, i32) #1

declare dso_local i32 @params_format(%struct.snd_pcm_hw_params*) #1

declare dso_local i32 @sst_hsw_stream_set_valid(%struct.sst_hsw*, i32*, i32) #1

declare dso_local i32 @sst_hsw_stream_set_bits(%struct.sst_hsw*, i32*, i32) #1

declare dso_local i32 @params_channels(%struct.snd_pcm_hw_params*) #1

declare dso_local i32 @create_channel_map(i32) #1

declare dso_local i32 @sst_hsw_stream_set_map_config(%struct.sst_hsw*, i32*, i32, i32) #1

declare dso_local i32 @sst_hsw_stream_set_channels(%struct.sst_hsw*, i32*, i32) #1

declare dso_local i32 @snd_pcm_lib_malloc_pages(%struct.snd_pcm_substream*, i32) #1

declare dso_local i32 @params_buffer_bytes(%struct.snd_pcm_hw_params*) #1

declare dso_local %struct.snd_dma_buffer* @snd_pcm_get_dma_buf(%struct.snd_pcm_substream*) #1

declare dso_local i32 @create_adsp_page_table(%struct.snd_pcm_substream*, %struct.hsw_priv_data*, %struct.snd_soc_pcm_runtime*, i32, i32, i64) #1

declare dso_local i32 @sst_hsw_stream_set_style(%struct.sst_hsw*, i32*, i32) #1

declare dso_local i32 @sst_hsw_stream_buffer(%struct.sst_hsw*, i32*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @snd_sgbuf_get_addr(%struct.snd_dma_buffer*, i32) #1

declare dso_local %struct.sst_dsp* @sst_hsw_get_dsp(%struct.sst_hsw*) #1

declare dso_local %struct.sst_module* @sst_module_get_from_id(%struct.sst_dsp*, i32) #1

declare dso_local i32 @sst_hsw_stream_set_module_info(%struct.sst_hsw*, i32*, i32) #1

declare dso_local i32 @sst_hsw_stream_commit(%struct.sst_hsw*, i32*) #1

declare dso_local i32 @sst_hsw_stream_set_volume(%struct.sst_hsw*, i32*, i32, i32, i32) #1

declare dso_local i32 @sst_hsw_stream_pause(%struct.sst_hsw*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
