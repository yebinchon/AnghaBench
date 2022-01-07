; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/rme9652/extr_hdspm.c_snd_hdspm_hw_params.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/rme9652/extr_hdspm.c_snd_hdspm_hw_params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_substream = type { i64, %struct.TYPE_5__*, %struct.TYPE_4__* }
%struct.TYPE_5__ = type { i64 }
%struct.TYPE_4__ = type { i64 }
%struct.snd_pcm_hw_params = type { i32 }
%struct.hdspm = type { i64, i64, i64, i32, i32*, i8*, i32*, i8*, i64, i32, %struct.TYPE_6__*, i32 }
%struct.TYPE_6__ = type { i32 }

@SNDRV_PCM_STREAM_PLAYBACK = common dso_local global i64 0, align 8
@SNDRV_PCM_HW_PARAM_RATE = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@SNDRV_PCM_HW_PARAM_PERIOD_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"err on hdspm_set_rate: %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [41 x i8] c"err on hdspm_set_interrupt_interval: %d\0A\00", align 1
@HDSPM_DMA_AREA_BYTES = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [37 x i8] c"err on snd_pcm_lib_malloc_pages: %d\0A\00", align 1
@HDSPM_pageAddressBufferOut = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [44 x i8] c"Allocated sample buffer for playback at %p\0A\00", align 1
@HDSPM_pageAddressBufferIn = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [43 x i8] c"Allocated sample buffer for capture at %p\0A\00", align 1
@AES32 = common dso_local global i64 0, align 8
@SNDRV_PCM_FORMAT_FLOAT_LE = common dso_local global i64 0, align 8
@HDSPe_FLOAT_FORMAT = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [44 x i8] c"Switching to native 32bit LE float format.\0A\00", align 1
@SNDRV_PCM_FORMAT_S32_LE = common dso_local global i64 0, align 8
@.str.6 = private unnamed_addr constant [46 x i8] c"Switching to native 32bit LE integer format.\0A\00", align 1
@HDSPM_controlRegister = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_substream*, %struct.snd_pcm_hw_params*)* @snd_hdspm_hw_params to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_hdspm_hw_params(%struct.snd_pcm_substream* %0, %struct.snd_pcm_hw_params* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.snd_pcm_substream*, align 8
  %5 = alloca %struct.snd_pcm_hw_params*, align 8
  %6 = alloca %struct.hdspm*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %4, align 8
  store %struct.snd_pcm_hw_params* %1, %struct.snd_pcm_hw_params** %5, align 8
  %13 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %4, align 8
  %14 = call %struct.hdspm* @snd_pcm_substream_chip(%struct.snd_pcm_substream* %13)
  store %struct.hdspm* %14, %struct.hdspm** %6, align 8
  %15 = load %struct.hdspm*, %struct.hdspm** %6, align 8
  %16 = getelementptr inbounds %struct.hdspm, %struct.hdspm* %15, i32 0, i32 11
  %17 = call i32 @spin_lock_irq(i32* %16)
  %18 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %4, align 8
  %19 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %18, i32 0, i32 2
  %20 = load %struct.TYPE_4__*, %struct.TYPE_4__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @SNDRV_PCM_STREAM_PLAYBACK, align 8
  %24 = icmp eq i64 %22, %23
  br i1 %24, label %25, label %32

25:                                               ; preds = %2
  %26 = load %struct.hdspm*, %struct.hdspm** %6, align 8
  %27 = getelementptr inbounds %struct.hdspm, %struct.hdspm* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  store i64 %28, i64* %9, align 8
  %29 = load %struct.hdspm*, %struct.hdspm** %6, align 8
  %30 = getelementptr inbounds %struct.hdspm, %struct.hdspm* %29, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  store i64 %31, i64* %10, align 8
  br label %39

32:                                               ; preds = %2
  %33 = load %struct.hdspm*, %struct.hdspm** %6, align 8
  %34 = getelementptr inbounds %struct.hdspm, %struct.hdspm* %33, i32 0, i32 1
  %35 = load i64, i64* %34, align 8
  store i64 %35, i64* %9, align 8
  %36 = load %struct.hdspm*, %struct.hdspm** %6, align 8
  %37 = getelementptr inbounds %struct.hdspm, %struct.hdspm* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  store i64 %38, i64* %10, align 8
  br label %39

39:                                               ; preds = %32, %25
  %40 = load i64, i64* %10, align 8
  %41 = icmp sgt i64 %40, 0
  br i1 %41, label %42, label %80

42:                                               ; preds = %39
  %43 = load i64, i64* %9, align 8
  %44 = load i64, i64* %10, align 8
  %45 = icmp ne i64 %43, %44
  br i1 %45, label %46, label %80

46:                                               ; preds = %42
  %47 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %5, align 8
  %48 = call i64 @params_rate(%struct.snd_pcm_hw_params* %47)
  %49 = load %struct.hdspm*, %struct.hdspm** %6, align 8
  %50 = getelementptr inbounds %struct.hdspm, %struct.hdspm* %49, i32 0, i32 2
  %51 = load i64, i64* %50, align 8
  %52 = icmp ne i64 %48, %51
  br i1 %52, label %53, label %62

53:                                               ; preds = %46
  %54 = load %struct.hdspm*, %struct.hdspm** %6, align 8
  %55 = getelementptr inbounds %struct.hdspm, %struct.hdspm* %54, i32 0, i32 11
  %56 = call i32 @spin_unlock_irq(i32* %55)
  %57 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %5, align 8
  %58 = load i32, i32* @SNDRV_PCM_HW_PARAM_RATE, align 4
  %59 = call i32 @_snd_pcm_hw_param_setempty(%struct.snd_pcm_hw_params* %57, i32 %58)
  %60 = load i32, i32* @EBUSY, align 4
  %61 = sub nsw i32 0, %60
  store i32 %61, i32* %3, align 4
  br label %311

62:                                               ; preds = %46
  %63 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %5, align 8
  %64 = call i32 @params_period_size(%struct.snd_pcm_hw_params* %63)
  %65 = load %struct.hdspm*, %struct.hdspm** %6, align 8
  %66 = getelementptr inbounds %struct.hdspm, %struct.hdspm* %65, i32 0, i32 3
  %67 = load i32, i32* %66, align 8
  %68 = sdiv i32 %67, 4
  %69 = icmp ne i32 %64, %68
  br i1 %69, label %70, label %79

70:                                               ; preds = %62
  %71 = load %struct.hdspm*, %struct.hdspm** %6, align 8
  %72 = getelementptr inbounds %struct.hdspm, %struct.hdspm* %71, i32 0, i32 11
  %73 = call i32 @spin_unlock_irq(i32* %72)
  %74 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %5, align 8
  %75 = load i32, i32* @SNDRV_PCM_HW_PARAM_PERIOD_SIZE, align 4
  %76 = call i32 @_snd_pcm_hw_param_setempty(%struct.snd_pcm_hw_params* %74, i32 %75)
  %77 = load i32, i32* @EBUSY, align 4
  %78 = sub nsw i32 0, %77
  store i32 %78, i32* %3, align 4
  br label %311

79:                                               ; preds = %62
  br label %80

80:                                               ; preds = %79, %42, %39
  %81 = load %struct.hdspm*, %struct.hdspm** %6, align 8
  %82 = getelementptr inbounds %struct.hdspm, %struct.hdspm* %81, i32 0, i32 11
  %83 = call i32 @spin_unlock_irq(i32* %82)
  %84 = load %struct.hdspm*, %struct.hdspm** %6, align 8
  %85 = getelementptr inbounds %struct.hdspm, %struct.hdspm* %84, i32 0, i32 11
  %86 = call i32 @spin_lock_irq(i32* %85)
  %87 = load %struct.hdspm*, %struct.hdspm** %6, align 8
  %88 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %5, align 8
  %89 = call i64 @params_rate(%struct.snd_pcm_hw_params* %88)
  %90 = call i32 @hdspm_set_rate(%struct.hdspm* %87, i64 %89, i32 0)
  store i32 %90, i32* %7, align 4
  %91 = load i32, i32* %7, align 4
  %92 = icmp slt i32 %91, 0
  br i1 %92, label %93, label %108

93:                                               ; preds = %80
  %94 = load %struct.hdspm*, %struct.hdspm** %6, align 8
  %95 = getelementptr inbounds %struct.hdspm, %struct.hdspm* %94, i32 0, i32 10
  %96 = load %struct.TYPE_6__*, %struct.TYPE_6__** %95, align 8
  %97 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 4
  %99 = load i32, i32* %7, align 4
  %100 = call i32 (i32, i8*, ...) @dev_info(i32 %98, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32 %99)
  %101 = load %struct.hdspm*, %struct.hdspm** %6, align 8
  %102 = getelementptr inbounds %struct.hdspm, %struct.hdspm* %101, i32 0, i32 11
  %103 = call i32 @spin_unlock_irq(i32* %102)
  %104 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %5, align 8
  %105 = load i32, i32* @SNDRV_PCM_HW_PARAM_RATE, align 4
  %106 = call i32 @_snd_pcm_hw_param_setempty(%struct.snd_pcm_hw_params* %104, i32 %105)
  %107 = load i32, i32* %7, align 4
  store i32 %107, i32* %3, align 4
  br label %311

108:                                              ; preds = %80
  %109 = load %struct.hdspm*, %struct.hdspm** %6, align 8
  %110 = getelementptr inbounds %struct.hdspm, %struct.hdspm* %109, i32 0, i32 11
  %111 = call i32 @spin_unlock_irq(i32* %110)
  %112 = load %struct.hdspm*, %struct.hdspm** %6, align 8
  %113 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %5, align 8
  %114 = call i32 @params_period_size(%struct.snd_pcm_hw_params* %113)
  %115 = call i32 @hdspm_set_interrupt_interval(%struct.hdspm* %112, i32 %114)
  store i32 %115, i32* %7, align 4
  %116 = load i32, i32* %7, align 4
  %117 = icmp slt i32 %116, 0
  br i1 %117, label %118, label %130

118:                                              ; preds = %108
  %119 = load %struct.hdspm*, %struct.hdspm** %6, align 8
  %120 = getelementptr inbounds %struct.hdspm, %struct.hdspm* %119, i32 0, i32 10
  %121 = load %struct.TYPE_6__*, %struct.TYPE_6__** %120, align 8
  %122 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 4
  %124 = load i32, i32* %7, align 4
  %125 = call i32 (i32, i8*, ...) @dev_info(i32 %123, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0), i32 %124)
  %126 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %5, align 8
  %127 = load i32, i32* @SNDRV_PCM_HW_PARAM_PERIOD_SIZE, align 4
  %128 = call i32 @_snd_pcm_hw_param_setempty(%struct.snd_pcm_hw_params* %126, i32 %127)
  %129 = load i32, i32* %7, align 4
  store i32 %129, i32* %3, align 4
  br label %311

130:                                              ; preds = %108
  %131 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %4, align 8
  %132 = load i32, i32* @HDSPM_DMA_AREA_BYTES, align 4
  %133 = call i32 @snd_pcm_lib_malloc_pages(%struct.snd_pcm_substream* %131, i32 %132)
  store i32 %133, i32* %7, align 4
  %134 = load i32, i32* %7, align 4
  %135 = icmp slt i32 %134, 0
  br i1 %135, label %136, label %145

136:                                              ; preds = %130
  %137 = load %struct.hdspm*, %struct.hdspm** %6, align 8
  %138 = getelementptr inbounds %struct.hdspm, %struct.hdspm* %137, i32 0, i32 10
  %139 = load %struct.TYPE_6__*, %struct.TYPE_6__** %138, align 8
  %140 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %139, i32 0, i32 0
  %141 = load i32, i32* %140, align 4
  %142 = load i32, i32* %7, align 4
  %143 = call i32 (i32, i8*, ...) @dev_info(i32 %141, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.2, i64 0, i64 0), i32 %142)
  %144 = load i32, i32* %7, align 4
  store i32 %144, i32* %3, align 4
  br label %311

145:                                              ; preds = %130
  %146 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %4, align 8
  %147 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %146, i32 0, i32 0
  %148 = load i64, i64* %147, align 8
  %149 = load i64, i64* @SNDRV_PCM_STREAM_PLAYBACK, align 8
  %150 = icmp eq i64 %148, %149
  br i1 %150, label %151, label %198

151:                                              ; preds = %145
  store i32 0, i32* %8, align 4
  br label %152

152:                                              ; preds = %177, %151
  %153 = load i32, i32* %8, align 4
  %154 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %5, align 8
  %155 = call i32 @params_channels(%struct.snd_pcm_hw_params* %154)
  %156 = icmp slt i32 %153, %155
  br i1 %156, label %157, label %180

157:                                              ; preds = %152
  %158 = load %struct.hdspm*, %struct.hdspm** %6, align 8
  %159 = getelementptr inbounds %struct.hdspm, %struct.hdspm* %158, i32 0, i32 4
  %160 = load i32*, i32** %159, align 8
  %161 = load i32, i32* %8, align 4
  %162 = sext i32 %161 to i64
  %163 = getelementptr inbounds i32, i32* %160, i64 %162
  %164 = load i32, i32* %163, align 4
  store i32 %164, i32* %11, align 4
  %165 = load i32, i32* %11, align 4
  %166 = icmp slt i32 %165, 0
  br i1 %166, label %167, label %168

167:                                              ; preds = %157
  br label %177

168:                                              ; preds = %157
  %169 = load %struct.hdspm*, %struct.hdspm** %6, align 8
  %170 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %4, align 8
  %171 = load i32, i32* @HDSPM_pageAddressBufferOut, align 4
  %172 = load i32, i32* %11, align 4
  %173 = call i32 @hdspm_set_channel_dma_addr(%struct.hdspm* %169, %struct.snd_pcm_substream* %170, i32 %171, i32 %172)
  %174 = load %struct.hdspm*, %struct.hdspm** %6, align 8
  %175 = load i32, i32* %11, align 4
  %176 = call i32 @snd_hdspm_enable_out(%struct.hdspm* %174, i32 %175, i32 1)
  br label %177

177:                                              ; preds = %168, %167
  %178 = load i32, i32* %8, align 4
  %179 = add nsw i32 %178, 1
  store i32 %179, i32* %8, align 4
  br label %152

180:                                              ; preds = %152
  %181 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %4, align 8
  %182 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %181, i32 0, i32 1
  %183 = load %struct.TYPE_5__*, %struct.TYPE_5__** %182, align 8
  %184 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %183, i32 0, i32 0
  %185 = load i64, i64* %184, align 8
  %186 = inttoptr i64 %185 to i8*
  %187 = load %struct.hdspm*, %struct.hdspm** %6, align 8
  %188 = getelementptr inbounds %struct.hdspm, %struct.hdspm* %187, i32 0, i32 5
  store i8* %186, i8** %188, align 8
  %189 = load %struct.hdspm*, %struct.hdspm** %6, align 8
  %190 = getelementptr inbounds %struct.hdspm, %struct.hdspm* %189, i32 0, i32 10
  %191 = load %struct.TYPE_6__*, %struct.TYPE_6__** %190, align 8
  %192 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %191, i32 0, i32 0
  %193 = load i32, i32* %192, align 4
  %194 = load %struct.hdspm*, %struct.hdspm** %6, align 8
  %195 = getelementptr inbounds %struct.hdspm, %struct.hdspm* %194, i32 0, i32 5
  %196 = load i8*, i8** %195, align 8
  %197 = call i32 @dev_dbg(i32 %193, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.3, i64 0, i64 0), i8* %196)
  br label %245

198:                                              ; preds = %145
  store i32 0, i32* %8, align 4
  br label %199

199:                                              ; preds = %224, %198
  %200 = load i32, i32* %8, align 4
  %201 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %5, align 8
  %202 = call i32 @params_channels(%struct.snd_pcm_hw_params* %201)
  %203 = icmp slt i32 %200, %202
  br i1 %203, label %204, label %227

204:                                              ; preds = %199
  %205 = load %struct.hdspm*, %struct.hdspm** %6, align 8
  %206 = getelementptr inbounds %struct.hdspm, %struct.hdspm* %205, i32 0, i32 6
  %207 = load i32*, i32** %206, align 8
  %208 = load i32, i32* %8, align 4
  %209 = sext i32 %208 to i64
  %210 = getelementptr inbounds i32, i32* %207, i64 %209
  %211 = load i32, i32* %210, align 4
  store i32 %211, i32* %12, align 4
  %212 = load i32, i32* %12, align 4
  %213 = icmp slt i32 %212, 0
  br i1 %213, label %214, label %215

214:                                              ; preds = %204
  br label %224

215:                                              ; preds = %204
  %216 = load %struct.hdspm*, %struct.hdspm** %6, align 8
  %217 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %4, align 8
  %218 = load i32, i32* @HDSPM_pageAddressBufferIn, align 4
  %219 = load i32, i32* %12, align 4
  %220 = call i32 @hdspm_set_channel_dma_addr(%struct.hdspm* %216, %struct.snd_pcm_substream* %217, i32 %218, i32 %219)
  %221 = load %struct.hdspm*, %struct.hdspm** %6, align 8
  %222 = load i32, i32* %12, align 4
  %223 = call i32 @snd_hdspm_enable_in(%struct.hdspm* %221, i32 %222, i32 1)
  br label %224

224:                                              ; preds = %215, %214
  %225 = load i32, i32* %8, align 4
  %226 = add nsw i32 %225, 1
  store i32 %226, i32* %8, align 4
  br label %199

227:                                              ; preds = %199
  %228 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %4, align 8
  %229 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %228, i32 0, i32 1
  %230 = load %struct.TYPE_5__*, %struct.TYPE_5__** %229, align 8
  %231 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %230, i32 0, i32 0
  %232 = load i64, i64* %231, align 8
  %233 = inttoptr i64 %232 to i8*
  %234 = load %struct.hdspm*, %struct.hdspm** %6, align 8
  %235 = getelementptr inbounds %struct.hdspm, %struct.hdspm* %234, i32 0, i32 7
  store i8* %233, i8** %235, align 8
  %236 = load %struct.hdspm*, %struct.hdspm** %6, align 8
  %237 = getelementptr inbounds %struct.hdspm, %struct.hdspm* %236, i32 0, i32 10
  %238 = load %struct.TYPE_6__*, %struct.TYPE_6__** %237, align 8
  %239 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %238, i32 0, i32 0
  %240 = load i32, i32* %239, align 4
  %241 = load %struct.hdspm*, %struct.hdspm** %6, align 8
  %242 = getelementptr inbounds %struct.hdspm, %struct.hdspm* %241, i32 0, i32 7
  %243 = load i8*, i8** %242, align 8
  %244 = call i32 @dev_dbg(i32 %240, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.4, i64 0, i64 0), i8* %243)
  br label %245

245:                                              ; preds = %227, %180
  %246 = load %struct.hdspm*, %struct.hdspm** %6, align 8
  %247 = getelementptr inbounds %struct.hdspm, %struct.hdspm* %246, i32 0, i32 8
  %248 = load i64, i64* %247, align 8
  %249 = load i64, i64* @AES32, align 8
  %250 = icmp eq i64 %248, %249
  br i1 %250, label %251, label %252

251:                                              ; preds = %245
  store i32 0, i32* %3, align 4
  br label %311

252:                                              ; preds = %245
  %253 = load i64, i64* @SNDRV_PCM_FORMAT_FLOAT_LE, align 8
  %254 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %5, align 8
  %255 = call i64 @params_format(%struct.snd_pcm_hw_params* %254)
  %256 = icmp eq i64 %253, %255
  br i1 %256, label %257, label %277

257:                                              ; preds = %252
  %258 = load %struct.hdspm*, %struct.hdspm** %6, align 8
  %259 = getelementptr inbounds %struct.hdspm, %struct.hdspm* %258, i32 0, i32 9
  %260 = load i32, i32* %259, align 8
  %261 = load i32, i32* @HDSPe_FLOAT_FORMAT, align 4
  %262 = and i32 %260, %261
  %263 = icmp ne i32 %262, 0
  br i1 %263, label %271, label %264

264:                                              ; preds = %257
  %265 = load %struct.hdspm*, %struct.hdspm** %6, align 8
  %266 = getelementptr inbounds %struct.hdspm, %struct.hdspm* %265, i32 0, i32 10
  %267 = load %struct.TYPE_6__*, %struct.TYPE_6__** %266, align 8
  %268 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %267, i32 0, i32 0
  %269 = load i32, i32* %268, align 4
  %270 = call i32 (i32, i8*, ...) @dev_info(i32 %269, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.5, i64 0, i64 0))
  br label %271

271:                                              ; preds = %264, %257
  %272 = load i32, i32* @HDSPe_FLOAT_FORMAT, align 4
  %273 = load %struct.hdspm*, %struct.hdspm** %6, align 8
  %274 = getelementptr inbounds %struct.hdspm, %struct.hdspm* %273, i32 0, i32 9
  %275 = load i32, i32* %274, align 8
  %276 = or i32 %275, %272
  store i32 %276, i32* %274, align 8
  br label %304

277:                                              ; preds = %252
  %278 = load i64, i64* @SNDRV_PCM_FORMAT_S32_LE, align 8
  %279 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %5, align 8
  %280 = call i64 @params_format(%struct.snd_pcm_hw_params* %279)
  %281 = icmp eq i64 %278, %280
  br i1 %281, label %282, label %303

282:                                              ; preds = %277
  %283 = load %struct.hdspm*, %struct.hdspm** %6, align 8
  %284 = getelementptr inbounds %struct.hdspm, %struct.hdspm* %283, i32 0, i32 9
  %285 = load i32, i32* %284, align 8
  %286 = load i32, i32* @HDSPe_FLOAT_FORMAT, align 4
  %287 = and i32 %285, %286
  %288 = icmp ne i32 %287, 0
  br i1 %288, label %289, label %296

289:                                              ; preds = %282
  %290 = load %struct.hdspm*, %struct.hdspm** %6, align 8
  %291 = getelementptr inbounds %struct.hdspm, %struct.hdspm* %290, i32 0, i32 10
  %292 = load %struct.TYPE_6__*, %struct.TYPE_6__** %291, align 8
  %293 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %292, i32 0, i32 0
  %294 = load i32, i32* %293, align 4
  %295 = call i32 (i32, i8*, ...) @dev_info(i32 %294, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.6, i64 0, i64 0))
  br label %296

296:                                              ; preds = %289, %282
  %297 = load i32, i32* @HDSPe_FLOAT_FORMAT, align 4
  %298 = xor i32 %297, -1
  %299 = load %struct.hdspm*, %struct.hdspm** %6, align 8
  %300 = getelementptr inbounds %struct.hdspm, %struct.hdspm* %299, i32 0, i32 9
  %301 = load i32, i32* %300, align 8
  %302 = and i32 %301, %298
  store i32 %302, i32* %300, align 8
  br label %303

303:                                              ; preds = %296, %277
  br label %304

304:                                              ; preds = %303, %271
  %305 = load %struct.hdspm*, %struct.hdspm** %6, align 8
  %306 = load i32, i32* @HDSPM_controlRegister, align 4
  %307 = load %struct.hdspm*, %struct.hdspm** %6, align 8
  %308 = getelementptr inbounds %struct.hdspm, %struct.hdspm* %307, i32 0, i32 9
  %309 = load i32, i32* %308, align 8
  %310 = call i32 @hdspm_write(%struct.hdspm* %305, i32 %306, i32 %309)
  store i32 0, i32* %3, align 4
  br label %311

311:                                              ; preds = %304, %251, %136, %118, %93, %70, %53
  %312 = load i32, i32* %3, align 4
  ret i32 %312
}

declare dso_local %struct.hdspm* @snd_pcm_substream_chip(%struct.snd_pcm_substream*) #1

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i64 @params_rate(%struct.snd_pcm_hw_params*) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

declare dso_local i32 @_snd_pcm_hw_param_setempty(%struct.snd_pcm_hw_params*, i32) #1

declare dso_local i32 @params_period_size(%struct.snd_pcm_hw_params*) #1

declare dso_local i32 @hdspm_set_rate(%struct.hdspm*, i64, i32) #1

declare dso_local i32 @dev_info(i32, i8*, ...) #1

declare dso_local i32 @hdspm_set_interrupt_interval(%struct.hdspm*, i32) #1

declare dso_local i32 @snd_pcm_lib_malloc_pages(%struct.snd_pcm_substream*, i32) #1

declare dso_local i32 @params_channels(%struct.snd_pcm_hw_params*) #1

declare dso_local i32 @hdspm_set_channel_dma_addr(%struct.hdspm*, %struct.snd_pcm_substream*, i32, i32) #1

declare dso_local i32 @snd_hdspm_enable_out(%struct.hdspm*, i32, i32) #1

declare dso_local i32 @dev_dbg(i32, i8*, i8*) #1

declare dso_local i32 @snd_hdspm_enable_in(%struct.hdspm*, i32, i32) #1

declare dso_local i64 @params_format(%struct.snd_pcm_hw_params*) #1

declare dso_local i32 @hdspm_write(%struct.hdspm*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
