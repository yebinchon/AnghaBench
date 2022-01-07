; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/oxygen/extr_oxygen_pcm.c_oxygen_pcm_init.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/oxygen/extr_oxygen_pcm.c_oxygen_pcm_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.oxygen = type { i32, i32, %struct.TYPE_4__, i64 }
%struct.TYPE_4__ = type { i32 }
%struct.snd_pcm = type { i32, %struct.oxygen*, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }

@PLAYBACK_0_TO_I2S = common dso_local global i32 0, align 4
@CAPTURE_0_FROM_I2S_1 = common dso_local global i32 0, align 4
@CAPTURE_0_FROM_I2S_2 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [13 x i8] c"Multichannel\00", align 1
@SNDRV_PCM_STREAM_PLAYBACK = common dso_local global i64 0, align 8
@oxygen_multich_ops = common dso_local global i32 0, align 4
@SNDRV_PCM_STREAM_CAPTURE = common dso_local global i64 0, align 8
@oxygen_rec_a_ops = common dso_local global i32 0, align 4
@oxygen_rec_b_ops = common dso_local global i32 0, align 4
@SNDRV_DMA_TYPE_DEV = common dso_local global i32 0, align 4
@DEFAULT_BUFFER_BYTES_MULTICH = common dso_local global i32 0, align 4
@BUFFER_BYTES_MAX_MULTICH = common dso_local global i32 0, align 4
@DEFAULT_BUFFER_BYTES = common dso_local global i32 0, align 4
@BUFFER_BYTES_MAX = common dso_local global i32 0, align 4
@PLAYBACK_1_TO_SPDIF = common dso_local global i32 0, align 4
@CAPTURE_1_FROM_SPDIF = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [8 x i8] c"Digital\00", align 1
@oxygen_spdif_ops = common dso_local global i32 0, align 4
@oxygen_rec_c_ops = common dso_local global i32 0, align 4
@PLAYBACK_2_TO_AC97_1 = common dso_local global i32 0, align 4
@CAPTURE_2_FROM_AC97_1 = common dso_local global i32 0, align 4
@CAPTURE_2_FROM_I2S_2 = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [5 x i8] c"AC97\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"Analog2\00", align 1
@oxygen_ac97_ops = common dso_local global i32 0, align 4
@OXYGEN_REC_ROUTING = common dso_local global i32 0, align 4
@OXYGEN_REC_B_ROUTE_AC97_1 = common dso_local global i32 0, align 4
@OXYGEN_REC_B_ROUTE_MASK = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [12 x i8] c"Front Panel\00", align 1
@.str.5 = private unnamed_addr constant [9 x i8] c"Analog 2\00", align 1
@CAPTURE_3_FROM_I2S_3 = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [8 x i8] c"Analog3\00", align 1
@OXYGEN_REC_C_ROUTE_I2S_ADC_3 = common dso_local global i32 0, align 4
@OXYGEN_REC_C_ROUTE_MASK = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [9 x i8] c"Analog 3\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @oxygen_pcm_init(%struct.oxygen* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.oxygen*, align 8
  %4 = alloca %struct.snd_pcm*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.oxygen* %0, %struct.oxygen** %3, align 8
  %8 = load %struct.oxygen*, %struct.oxygen** %3, align 8
  %9 = getelementptr inbounds %struct.oxygen, %struct.oxygen* %8, i32 0, i32 2
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = load i32, i32* @PLAYBACK_0_TO_I2S, align 4
  %13 = and i32 %11, %12
  %14 = icmp ne i32 %13, 0
  %15 = xor i1 %14, true
  %16 = xor i1 %15, true
  %17 = zext i1 %16 to i32
  store i32 %17, i32* %5, align 4
  %18 = load %struct.oxygen*, %struct.oxygen** %3, align 8
  %19 = getelementptr inbounds %struct.oxygen, %struct.oxygen* %18, i32 0, i32 2
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = load i32, i32* @CAPTURE_0_FROM_I2S_1, align 4
  %23 = load i32, i32* @CAPTURE_0_FROM_I2S_2, align 4
  %24 = or i32 %22, %23
  %25 = and i32 %21, %24
  %26 = icmp ne i32 %25, 0
  %27 = xor i1 %26, true
  %28 = xor i1 %27, true
  %29 = zext i1 %28 to i32
  store i32 %29, i32* %6, align 4
  %30 = load i32, i32* %5, align 4
  %31 = load i32, i32* %6, align 4
  %32 = or i32 %30, %31
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %123

34:                                               ; preds = %1
  %35 = load %struct.oxygen*, %struct.oxygen** %3, align 8
  %36 = getelementptr inbounds %struct.oxygen, %struct.oxygen* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* %5, align 4
  %39 = load i32, i32* %6, align 4
  %40 = call i32 @snd_pcm_new(i32 %37, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i32 0, i32 %38, i32 %39, %struct.snd_pcm** %4)
  store i32 %40, i32* %7, align 4
  %41 = load i32, i32* %7, align 4
  %42 = icmp slt i32 %41, 0
  br i1 %42, label %43, label %45

43:                                               ; preds = %34
  %44 = load i32, i32* %7, align 4
  store i32 %44, i32* %2, align 4
  br label %336

45:                                               ; preds = %34
  %46 = load i32, i32* %5, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %52

48:                                               ; preds = %45
  %49 = load %struct.snd_pcm*, %struct.snd_pcm** %4, align 8
  %50 = load i64, i64* @SNDRV_PCM_STREAM_PLAYBACK, align 8
  %51 = call i32 @snd_pcm_set_ops(%struct.snd_pcm* %49, i64 %50, i32* @oxygen_multich_ops)
  br label %52

52:                                               ; preds = %48, %45
  %53 = load %struct.oxygen*, %struct.oxygen** %3, align 8
  %54 = getelementptr inbounds %struct.oxygen, %struct.oxygen* %53, i32 0, i32 2
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = load i32, i32* @CAPTURE_0_FROM_I2S_1, align 4
  %58 = and i32 %56, %57
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %64

60:                                               ; preds = %52
  %61 = load %struct.snd_pcm*, %struct.snd_pcm** %4, align 8
  %62 = load i64, i64* @SNDRV_PCM_STREAM_CAPTURE, align 8
  %63 = call i32 @snd_pcm_set_ops(%struct.snd_pcm* %61, i64 %62, i32* @oxygen_rec_a_ops)
  br label %77

64:                                               ; preds = %52
  %65 = load %struct.oxygen*, %struct.oxygen** %3, align 8
  %66 = getelementptr inbounds %struct.oxygen, %struct.oxygen* %65, i32 0, i32 2
  %67 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = load i32, i32* @CAPTURE_0_FROM_I2S_2, align 4
  %70 = and i32 %68, %69
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %76

72:                                               ; preds = %64
  %73 = load %struct.snd_pcm*, %struct.snd_pcm** %4, align 8
  %74 = load i64, i64* @SNDRV_PCM_STREAM_CAPTURE, align 8
  %75 = call i32 @snd_pcm_set_ops(%struct.snd_pcm* %73, i64 %74, i32* @oxygen_rec_b_ops)
  br label %76

76:                                               ; preds = %72, %64
  br label %77

77:                                               ; preds = %76, %60
  %78 = load %struct.oxygen*, %struct.oxygen** %3, align 8
  %79 = load %struct.snd_pcm*, %struct.snd_pcm** %4, align 8
  %80 = getelementptr inbounds %struct.snd_pcm, %struct.snd_pcm* %79, i32 0, i32 1
  store %struct.oxygen* %78, %struct.oxygen** %80, align 8
  %81 = load %struct.snd_pcm*, %struct.snd_pcm** %4, align 8
  %82 = getelementptr inbounds %struct.snd_pcm, %struct.snd_pcm* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 8
  %84 = call i32 @strcpy(i32 %83, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  %85 = load i32, i32* %5, align 4
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %103

87:                                               ; preds = %77
  %88 = load %struct.snd_pcm*, %struct.snd_pcm** %4, align 8
  %89 = getelementptr inbounds %struct.snd_pcm, %struct.snd_pcm* %88, i32 0, i32 2
  %90 = load %struct.TYPE_3__*, %struct.TYPE_3__** %89, align 8
  %91 = load i64, i64* @SNDRV_PCM_STREAM_PLAYBACK, align 8
  %92 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %90, i64 %91
  %93 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 4
  %95 = load i32, i32* @SNDRV_DMA_TYPE_DEV, align 4
  %96 = load %struct.oxygen*, %struct.oxygen** %3, align 8
  %97 = getelementptr inbounds %struct.oxygen, %struct.oxygen* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 8
  %99 = call i32 @snd_dma_pci_data(i32 %98)
  %100 = load i32, i32* @DEFAULT_BUFFER_BYTES_MULTICH, align 4
  %101 = load i32, i32* @BUFFER_BYTES_MAX_MULTICH, align 4
  %102 = call i32 @snd_pcm_lib_preallocate_pages(i32 %94, i32 %95, i32 %99, i32 %100, i32 %101)
  br label %103

103:                                              ; preds = %87, %77
  %104 = load i32, i32* %6, align 4
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %122

106:                                              ; preds = %103
  %107 = load %struct.snd_pcm*, %struct.snd_pcm** %4, align 8
  %108 = getelementptr inbounds %struct.snd_pcm, %struct.snd_pcm* %107, i32 0, i32 2
  %109 = load %struct.TYPE_3__*, %struct.TYPE_3__** %108, align 8
  %110 = load i64, i64* @SNDRV_PCM_STREAM_CAPTURE, align 8
  %111 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %109, i64 %110
  %112 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 4
  %114 = load i32, i32* @SNDRV_DMA_TYPE_DEV, align 4
  %115 = load %struct.oxygen*, %struct.oxygen** %3, align 8
  %116 = getelementptr inbounds %struct.oxygen, %struct.oxygen* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 8
  %118 = call i32 @snd_dma_pci_data(i32 %117)
  %119 = load i32, i32* @DEFAULT_BUFFER_BYTES, align 4
  %120 = load i32, i32* @BUFFER_BYTES_MAX, align 4
  %121 = call i32 @snd_pcm_lib_preallocate_pages(i32 %113, i32 %114, i32 %118, i32 %119, i32 %120)
  br label %122

122:                                              ; preds = %106, %103
  br label %123

123:                                              ; preds = %122, %1
  %124 = load %struct.oxygen*, %struct.oxygen** %3, align 8
  %125 = getelementptr inbounds %struct.oxygen, %struct.oxygen* %124, i32 0, i32 2
  %126 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 8
  %128 = load i32, i32* @PLAYBACK_1_TO_SPDIF, align 4
  %129 = and i32 %127, %128
  %130 = icmp ne i32 %129, 0
  %131 = xor i1 %130, true
  %132 = xor i1 %131, true
  %133 = zext i1 %132 to i32
  store i32 %133, i32* %5, align 4
  %134 = load %struct.oxygen*, %struct.oxygen** %3, align 8
  %135 = getelementptr inbounds %struct.oxygen, %struct.oxygen* %134, i32 0, i32 2
  %136 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %135, i32 0, i32 0
  %137 = load i32, i32* %136, align 8
  %138 = load i32, i32* @CAPTURE_1_FROM_SPDIF, align 4
  %139 = and i32 %137, %138
  %140 = icmp ne i32 %139, 0
  %141 = xor i1 %140, true
  %142 = xor i1 %141, true
  %143 = zext i1 %142 to i32
  store i32 %143, i32* %6, align 4
  %144 = load i32, i32* %5, align 4
  %145 = load i32, i32* %6, align 4
  %146 = or i32 %144, %145
  %147 = icmp ne i32 %146, 0
  br i1 %147, label %148, label %190

148:                                              ; preds = %123
  %149 = load %struct.oxygen*, %struct.oxygen** %3, align 8
  %150 = getelementptr inbounds %struct.oxygen, %struct.oxygen* %149, i32 0, i32 1
  %151 = load i32, i32* %150, align 4
  %152 = load i32, i32* %5, align 4
  %153 = load i32, i32* %6, align 4
  %154 = call i32 @snd_pcm_new(i32 %151, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i32 1, i32 %152, i32 %153, %struct.snd_pcm** %4)
  store i32 %154, i32* %7, align 4
  %155 = load i32, i32* %7, align 4
  %156 = icmp slt i32 %155, 0
  br i1 %156, label %157, label %159

157:                                              ; preds = %148
  %158 = load i32, i32* %7, align 4
  store i32 %158, i32* %2, align 4
  br label %336

159:                                              ; preds = %148
  %160 = load i32, i32* %5, align 4
  %161 = icmp ne i32 %160, 0
  br i1 %161, label %162, label %166

162:                                              ; preds = %159
  %163 = load %struct.snd_pcm*, %struct.snd_pcm** %4, align 8
  %164 = load i64, i64* @SNDRV_PCM_STREAM_PLAYBACK, align 8
  %165 = call i32 @snd_pcm_set_ops(%struct.snd_pcm* %163, i64 %164, i32* @oxygen_spdif_ops)
  br label %166

166:                                              ; preds = %162, %159
  %167 = load i32, i32* %6, align 4
  %168 = icmp ne i32 %167, 0
  br i1 %168, label %169, label %173

169:                                              ; preds = %166
  %170 = load %struct.snd_pcm*, %struct.snd_pcm** %4, align 8
  %171 = load i64, i64* @SNDRV_PCM_STREAM_CAPTURE, align 8
  %172 = call i32 @snd_pcm_set_ops(%struct.snd_pcm* %170, i64 %171, i32* @oxygen_rec_c_ops)
  br label %173

173:                                              ; preds = %169, %166
  %174 = load %struct.oxygen*, %struct.oxygen** %3, align 8
  %175 = load %struct.snd_pcm*, %struct.snd_pcm** %4, align 8
  %176 = getelementptr inbounds %struct.snd_pcm, %struct.snd_pcm* %175, i32 0, i32 1
  store %struct.oxygen* %174, %struct.oxygen** %176, align 8
  %177 = load %struct.snd_pcm*, %struct.snd_pcm** %4, align 8
  %178 = getelementptr inbounds %struct.snd_pcm, %struct.snd_pcm* %177, i32 0, i32 0
  %179 = load i32, i32* %178, align 8
  %180 = call i32 @strcpy(i32 %179, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0))
  %181 = load %struct.snd_pcm*, %struct.snd_pcm** %4, align 8
  %182 = load i32, i32* @SNDRV_DMA_TYPE_DEV, align 4
  %183 = load %struct.oxygen*, %struct.oxygen** %3, align 8
  %184 = getelementptr inbounds %struct.oxygen, %struct.oxygen* %183, i32 0, i32 0
  %185 = load i32, i32* %184, align 8
  %186 = call i32 @snd_dma_pci_data(i32 %185)
  %187 = load i32, i32* @DEFAULT_BUFFER_BYTES, align 4
  %188 = load i32, i32* @BUFFER_BYTES_MAX, align 4
  %189 = call i32 @snd_pcm_lib_preallocate_pages_for_all(%struct.snd_pcm* %181, i32 %182, i32 %186, i32 %187, i32 %188)
  br label %190

190:                                              ; preds = %173, %123
  %191 = load %struct.oxygen*, %struct.oxygen** %3, align 8
  %192 = getelementptr inbounds %struct.oxygen, %struct.oxygen* %191, i32 0, i32 3
  %193 = load i64, i64* %192, align 8
  %194 = icmp ne i64 %193, 0
  br i1 %194, label %195, label %216

195:                                              ; preds = %190
  %196 = load %struct.oxygen*, %struct.oxygen** %3, align 8
  %197 = getelementptr inbounds %struct.oxygen, %struct.oxygen* %196, i32 0, i32 2
  %198 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %197, i32 0, i32 0
  %199 = load i32, i32* %198, align 8
  %200 = load i32, i32* @PLAYBACK_2_TO_AC97_1, align 4
  %201 = and i32 %199, %200
  %202 = icmp ne i32 %201, 0
  %203 = xor i1 %202, true
  %204 = xor i1 %203, true
  %205 = zext i1 %204 to i32
  store i32 %205, i32* %5, align 4
  %206 = load %struct.oxygen*, %struct.oxygen** %3, align 8
  %207 = getelementptr inbounds %struct.oxygen, %struct.oxygen* %206, i32 0, i32 2
  %208 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %207, i32 0, i32 0
  %209 = load i32, i32* %208, align 8
  %210 = load i32, i32* @CAPTURE_2_FROM_AC97_1, align 4
  %211 = and i32 %209, %210
  %212 = icmp ne i32 %211, 0
  %213 = xor i1 %212, true
  %214 = xor i1 %213, true
  %215 = zext i1 %214 to i32
  store i32 %215, i32* %6, align 4
  br label %227

216:                                              ; preds = %190
  store i32 0, i32* %5, align 4
  %217 = load %struct.oxygen*, %struct.oxygen** %3, align 8
  %218 = getelementptr inbounds %struct.oxygen, %struct.oxygen* %217, i32 0, i32 2
  %219 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %218, i32 0, i32 0
  %220 = load i32, i32* %219, align 8
  %221 = load i32, i32* @CAPTURE_2_FROM_I2S_2, align 4
  %222 = and i32 %220, %221
  %223 = icmp ne i32 %222, 0
  %224 = xor i1 %223, true
  %225 = xor i1 %224, true
  %226 = zext i1 %225 to i32
  store i32 %226, i32* %6, align 4
  br label %227

227:                                              ; preds = %216, %195
  %228 = load i32, i32* %5, align 4
  %229 = load i32, i32* %6, align 4
  %230 = or i32 %228, %229
  %231 = icmp ne i32 %230, 0
  br i1 %231, label %232, label %287

232:                                              ; preds = %227
  %233 = load %struct.oxygen*, %struct.oxygen** %3, align 8
  %234 = getelementptr inbounds %struct.oxygen, %struct.oxygen* %233, i32 0, i32 1
  %235 = load i32, i32* %234, align 4
  %236 = load i32, i32* %5, align 4
  %237 = icmp ne i32 %236, 0
  %238 = zext i1 %237 to i64
  %239 = select i1 %237, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0)
  %240 = load i32, i32* %5, align 4
  %241 = load i32, i32* %6, align 4
  %242 = call i32 @snd_pcm_new(i32 %235, i8* %239, i32 2, i32 %240, i32 %241, %struct.snd_pcm** %4)
  store i32 %242, i32* %7, align 4
  %243 = load i32, i32* %7, align 4
  %244 = icmp slt i32 %243, 0
  br i1 %244, label %245, label %247

245:                                              ; preds = %232
  %246 = load i32, i32* %7, align 4
  store i32 %246, i32* %2, align 4
  br label %336

247:                                              ; preds = %232
  %248 = load i32, i32* %5, align 4
  %249 = icmp ne i32 %248, 0
  br i1 %249, label %250, label %259

250:                                              ; preds = %247
  %251 = load %struct.snd_pcm*, %struct.snd_pcm** %4, align 8
  %252 = load i64, i64* @SNDRV_PCM_STREAM_PLAYBACK, align 8
  %253 = call i32 @snd_pcm_set_ops(%struct.snd_pcm* %251, i64 %252, i32* @oxygen_ac97_ops)
  %254 = load %struct.oxygen*, %struct.oxygen** %3, align 8
  %255 = load i32, i32* @OXYGEN_REC_ROUTING, align 4
  %256 = load i32, i32* @OXYGEN_REC_B_ROUTE_AC97_1, align 4
  %257 = load i32, i32* @OXYGEN_REC_B_ROUTE_MASK, align 4
  %258 = call i32 @oxygen_write8_masked(%struct.oxygen* %254, i32 %255, i32 %256, i32 %257)
  br label %259

259:                                              ; preds = %250, %247
  %260 = load i32, i32* %6, align 4
  %261 = icmp ne i32 %260, 0
  br i1 %261, label %262, label %266

262:                                              ; preds = %259
  %263 = load %struct.snd_pcm*, %struct.snd_pcm** %4, align 8
  %264 = load i64, i64* @SNDRV_PCM_STREAM_CAPTURE, align 8
  %265 = call i32 @snd_pcm_set_ops(%struct.snd_pcm* %263, i64 %264, i32* @oxygen_rec_b_ops)
  br label %266

266:                                              ; preds = %262, %259
  %267 = load %struct.oxygen*, %struct.oxygen** %3, align 8
  %268 = load %struct.snd_pcm*, %struct.snd_pcm** %4, align 8
  %269 = getelementptr inbounds %struct.snd_pcm, %struct.snd_pcm* %268, i32 0, i32 1
  store %struct.oxygen* %267, %struct.oxygen** %269, align 8
  %270 = load %struct.snd_pcm*, %struct.snd_pcm** %4, align 8
  %271 = getelementptr inbounds %struct.snd_pcm, %struct.snd_pcm* %270, i32 0, i32 0
  %272 = load i32, i32* %271, align 8
  %273 = load i32, i32* %5, align 4
  %274 = icmp ne i32 %273, 0
  %275 = zext i1 %274 to i64
  %276 = select i1 %274, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i64 0, i64 0)
  %277 = call i32 @strcpy(i32 %272, i8* %276)
  %278 = load %struct.snd_pcm*, %struct.snd_pcm** %4, align 8
  %279 = load i32, i32* @SNDRV_DMA_TYPE_DEV, align 4
  %280 = load %struct.oxygen*, %struct.oxygen** %3, align 8
  %281 = getelementptr inbounds %struct.oxygen, %struct.oxygen* %280, i32 0, i32 0
  %282 = load i32, i32* %281, align 8
  %283 = call i32 @snd_dma_pci_data(i32 %282)
  %284 = load i32, i32* @DEFAULT_BUFFER_BYTES, align 4
  %285 = load i32, i32* @BUFFER_BYTES_MAX, align 4
  %286 = call i32 @snd_pcm_lib_preallocate_pages_for_all(%struct.snd_pcm* %278, i32 %279, i32 %283, i32 %284, i32 %285)
  br label %287

287:                                              ; preds = %266, %227
  %288 = load %struct.oxygen*, %struct.oxygen** %3, align 8
  %289 = getelementptr inbounds %struct.oxygen, %struct.oxygen* %288, i32 0, i32 2
  %290 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %289, i32 0, i32 0
  %291 = load i32, i32* %290, align 8
  %292 = load i32, i32* @CAPTURE_3_FROM_I2S_3, align 4
  %293 = and i32 %291, %292
  %294 = icmp ne i32 %293, 0
  %295 = xor i1 %294, true
  %296 = xor i1 %295, true
  %297 = zext i1 %296 to i32
  store i32 %297, i32* %6, align 4
  %298 = load i32, i32* %6, align 4
  %299 = icmp ne i32 %298, 0
  br i1 %299, label %300, label %335

300:                                              ; preds = %287
  %301 = load %struct.oxygen*, %struct.oxygen** %3, align 8
  %302 = getelementptr inbounds %struct.oxygen, %struct.oxygen* %301, i32 0, i32 1
  %303 = load i32, i32* %302, align 4
  %304 = load i32, i32* %6, align 4
  %305 = call i32 @snd_pcm_new(i32 %303, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i64 0, i64 0), i32 3, i32 0, i32 %304, %struct.snd_pcm** %4)
  store i32 %305, i32* %7, align 4
  %306 = load i32, i32* %7, align 4
  %307 = icmp slt i32 %306, 0
  br i1 %307, label %308, label %310

308:                                              ; preds = %300
  %309 = load i32, i32* %7, align 4
  store i32 %309, i32* %2, align 4
  br label %336

310:                                              ; preds = %300
  %311 = load %struct.snd_pcm*, %struct.snd_pcm** %4, align 8
  %312 = load i64, i64* @SNDRV_PCM_STREAM_CAPTURE, align 8
  %313 = call i32 @snd_pcm_set_ops(%struct.snd_pcm* %311, i64 %312, i32* @oxygen_rec_c_ops)
  %314 = load %struct.oxygen*, %struct.oxygen** %3, align 8
  %315 = load i32, i32* @OXYGEN_REC_ROUTING, align 4
  %316 = load i32, i32* @OXYGEN_REC_C_ROUTE_I2S_ADC_3, align 4
  %317 = load i32, i32* @OXYGEN_REC_C_ROUTE_MASK, align 4
  %318 = call i32 @oxygen_write8_masked(%struct.oxygen* %314, i32 %315, i32 %316, i32 %317)
  %319 = load %struct.oxygen*, %struct.oxygen** %3, align 8
  %320 = load %struct.snd_pcm*, %struct.snd_pcm** %4, align 8
  %321 = getelementptr inbounds %struct.snd_pcm, %struct.snd_pcm* %320, i32 0, i32 1
  store %struct.oxygen* %319, %struct.oxygen** %321, align 8
  %322 = load %struct.snd_pcm*, %struct.snd_pcm** %4, align 8
  %323 = getelementptr inbounds %struct.snd_pcm, %struct.snd_pcm* %322, i32 0, i32 0
  %324 = load i32, i32* %323, align 8
  %325 = call i32 @strcpy(i32 %324, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.7, i64 0, i64 0))
  %326 = load %struct.snd_pcm*, %struct.snd_pcm** %4, align 8
  %327 = load i32, i32* @SNDRV_DMA_TYPE_DEV, align 4
  %328 = load %struct.oxygen*, %struct.oxygen** %3, align 8
  %329 = getelementptr inbounds %struct.oxygen, %struct.oxygen* %328, i32 0, i32 0
  %330 = load i32, i32* %329, align 8
  %331 = call i32 @snd_dma_pci_data(i32 %330)
  %332 = load i32, i32* @DEFAULT_BUFFER_BYTES, align 4
  %333 = load i32, i32* @BUFFER_BYTES_MAX, align 4
  %334 = call i32 @snd_pcm_lib_preallocate_pages_for_all(%struct.snd_pcm* %326, i32 %327, i32 %331, i32 %332, i32 %333)
  br label %335

335:                                              ; preds = %310, %287
  store i32 0, i32* %2, align 4
  br label %336

336:                                              ; preds = %335, %308, %245, %157, %43
  %337 = load i32, i32* %2, align 4
  ret i32 %337
}

declare dso_local i32 @snd_pcm_new(i32, i8*, i32, i32, i32, %struct.snd_pcm**) #1

declare dso_local i32 @snd_pcm_set_ops(%struct.snd_pcm*, i64, i32*) #1

declare dso_local i32 @strcpy(i32, i8*) #1

declare dso_local i32 @snd_pcm_lib_preallocate_pages(i32, i32, i32, i32, i32) #1

declare dso_local i32 @snd_dma_pci_data(i32) #1

declare dso_local i32 @snd_pcm_lib_preallocate_pages_for_all(%struct.snd_pcm*, i32, i32, i32, i32) #1

declare dso_local i32 @oxygen_write8_masked(%struct.oxygen*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
