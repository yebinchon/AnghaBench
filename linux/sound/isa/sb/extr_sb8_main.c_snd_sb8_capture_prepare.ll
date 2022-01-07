; ModuleID = '/home/carl/AnghaBench/linux/sound/isa/sb/extr_sb8_main.c_snd_sb8_capture_prepare.c'
source_filename = "/home/carl/AnghaBench/linux/sound/isa/sb/extr_sb8_main.c_snd_sb8_capture_prepare.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_substream = type { %struct.snd_pcm_runtime* }
%struct.snd_pcm_runtime = type { i32, i32, i32, i32, i32 }
%struct.snd_sb = type { i32, i32, i64, i32, i32, i32, i32, i32, i32, i32 }

@SNDRV_PCM_FORMAT_S16_LE = common dso_local global i32 0, align 4
@SB_MODE_PLAYBACK_16 = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@SB_MODE_CAPTURE_16 = common dso_local global i32 0, align 4
@SB_DSP_LO_INPUT_AUTO = common dso_local global i8* null, align 8
@EINVAL = common dso_local global i32 0, align 4
@SB_DSP_HI_INPUT_AUTO = common dso_local global i8* null, align 8
@SB_DSP_INPUT = common dso_local global i64 0, align 8
@SB_DSP_STEREO_16BIT = common dso_local global i8 0, align 1
@SB_DSP_MONO_16BIT = common dso_local global i8 0, align 1
@SB_DSP_STEREO_8BIT = common dso_local global i32 0, align 4
@SB_DSP_MONO_8BIT = common dso_local global i32 0, align 4
@SB_MODE_CAPTURE_8 = common dso_local global i32 0, align 4
@SB_DSP_SPEAKER_OFF = common dso_local global i32 0, align 4
@SB_DSP_SAMPLE_RATE = common dso_local global i32 0, align 4
@SB_DSP_CAPTURE_FILT = common dso_local global i32 0, align 4
@SB_DSP_BLOCK_SIZE = common dso_local global i32 0, align 4
@DMA_MODE_READ = common dso_local global i32 0, align 4
@DMA_AUTOINIT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_substream*)* @snd_sb8_capture_prepare to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_sb8_capture_prepare(%struct.snd_pcm_substream* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.snd_pcm_substream*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.snd_sb*, align 8
  %6 = alloca %struct.snd_pcm_runtime*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8, align 1
  %12 = alloca i8, align 1
  %13 = alloca i32, align 4
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %3, align 8
  %14 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %15 = call %struct.snd_sb* @snd_pcm_substream_chip(%struct.snd_pcm_substream* %14)
  store %struct.snd_sb* %15, %struct.snd_sb** %5, align 8
  %16 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %17 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %16, i32 0, i32 0
  %18 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %17, align 8
  store %struct.snd_pcm_runtime* %18, %struct.snd_pcm_runtime** %6, align 8
  %19 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %6, align 8
  %20 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = icmp sgt i32 %21, 1
  %23 = zext i1 %22 to i32
  %24 = trunc i32 %23 to i8
  store i8 %24, i8* %12, align 1
  %25 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %6, align 8
  %26 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  store i32 %27, i32* %8, align 4
  %28 = load %struct.snd_sb*, %struct.snd_sb** %5, align 8
  %29 = getelementptr inbounds %struct.snd_sb, %struct.snd_sb* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  switch i32 %30, label %115 [
    i32 129, label %31
    i32 128, label %59
    i32 130, label %97
    i32 131, label %106
    i32 132, label %111
  ]

31:                                               ; preds = %1
  %32 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %6, align 8
  %33 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %32, i32 0, i32 4
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* @SNDRV_PCM_FORMAT_S16_LE, align 4
  %36 = icmp eq i32 %34, %35
  br i1 %36, label %37, label %54

37:                                               ; preds = %31
  %38 = load %struct.snd_sb*, %struct.snd_sb** %5, align 8
  %39 = getelementptr inbounds %struct.snd_sb, %struct.snd_sb* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* @SB_MODE_PLAYBACK_16, align 4
  %42 = and i32 %40, %41
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %47

44:                                               ; preds = %37
  %45 = load i32, i32* @EBUSY, align 4
  %46 = sub nsw i32 0, %45
  store i32 %46, i32* %2, align 4
  br label %275

47:                                               ; preds = %37
  %48 = load i32, i32* @SB_MODE_CAPTURE_16, align 4
  %49 = load %struct.snd_sb*, %struct.snd_sb** %5, align 8
  %50 = getelementptr inbounds %struct.snd_sb, %struct.snd_sb* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = or i32 %51, %48
  store i32 %52, i32* %50, align 4
  br label %53

53:                                               ; preds = %47
  br label %54

54:                                               ; preds = %53, %31
  %55 = load i8*, i8** @SB_DSP_LO_INPUT_AUTO, align 8
  %56 = ptrtoint i8* %55 to i64
  %57 = load %struct.snd_sb*, %struct.snd_sb** %5, align 8
  %58 = getelementptr inbounds %struct.snd_sb, %struct.snd_sb* %57, i32 0, i32 2
  store i64 %56, i64* %58, align 8
  br label %118

59:                                               ; preds = %1
  %60 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %6, align 8
  %61 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = icmp sgt i32 %62, 1
  br i1 %63, label %64, label %85

64:                                               ; preds = %59
  %65 = load i32, i32* %8, align 4
  %66 = call i32 @SB8_RATE(i32 11025)
  %67 = icmp ne i32 %65, %66
  br i1 %67, label %68, label %72

68:                                               ; preds = %64
  %69 = load i32, i32* %8, align 4
  %70 = call i32 @SB8_RATE(i32 22050)
  %71 = icmp ne i32 %69, %70
  br label %72

72:                                               ; preds = %68, %64
  %73 = phi i1 [ false, %64 ], [ %71, %68 ]
  %74 = zext i1 %73 to i32
  %75 = call i32 @snd_BUG_ON(i32 %74)
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %80

77:                                               ; preds = %72
  %78 = load i32, i32* @EINVAL, align 4
  %79 = sub nsw i32 0, %78
  store i32 %79, i32* %2, align 4
  br label %275

80:                                               ; preds = %72
  %81 = load i8*, i8** @SB_DSP_HI_INPUT_AUTO, align 8
  %82 = ptrtoint i8* %81 to i64
  %83 = load %struct.snd_sb*, %struct.snd_sb** %5, align 8
  %84 = getelementptr inbounds %struct.snd_sb, %struct.snd_sb* %83, i32 0, i32 2
  store i64 %82, i64* %84, align 8
  br label %118

85:                                               ; preds = %59
  %86 = load i32, i32* %8, align 4
  %87 = icmp ugt i32 %86, 23000
  br i1 %87, label %88, label %90

88:                                               ; preds = %85
  %89 = load i8*, i8** @SB_DSP_HI_INPUT_AUTO, align 8
  br label %92

90:                                               ; preds = %85
  %91 = load i8*, i8** @SB_DSP_LO_INPUT_AUTO, align 8
  br label %92

92:                                               ; preds = %90, %88
  %93 = phi i8* [ %89, %88 ], [ %91, %90 ]
  %94 = ptrtoint i8* %93 to i64
  %95 = load %struct.snd_sb*, %struct.snd_sb** %5, align 8
  %96 = getelementptr inbounds %struct.snd_sb, %struct.snd_sb* %95, i32 0, i32 2
  store i64 %94, i64* %96, align 8
  br label %118

97:                                               ; preds = %1
  %98 = load i32, i32* %8, align 4
  %99 = icmp ugt i32 %98, 13000
  br i1 %99, label %100, label %105

100:                                              ; preds = %97
  %101 = load i8*, i8** @SB_DSP_HI_INPUT_AUTO, align 8
  %102 = ptrtoint i8* %101 to i64
  %103 = load %struct.snd_sb*, %struct.snd_sb** %5, align 8
  %104 = getelementptr inbounds %struct.snd_sb, %struct.snd_sb* %103, i32 0, i32 2
  store i64 %102, i64* %104, align 8
  br label %118

105:                                              ; preds = %97
  br label %106

106:                                              ; preds = %1, %105
  %107 = load i8*, i8** @SB_DSP_LO_INPUT_AUTO, align 8
  %108 = ptrtoint i8* %107 to i64
  %109 = load %struct.snd_sb*, %struct.snd_sb** %5, align 8
  %110 = getelementptr inbounds %struct.snd_sb, %struct.snd_sb* %109, i32 0, i32 2
  store i64 %108, i64* %110, align 8
  br label %118

111:                                              ; preds = %1
  %112 = load i64, i64* @SB_DSP_INPUT, align 8
  %113 = load %struct.snd_sb*, %struct.snd_sb** %5, align 8
  %114 = getelementptr inbounds %struct.snd_sb, %struct.snd_sb* %113, i32 0, i32 2
  store i64 %112, i64* %114, align 8
  br label %118

115:                                              ; preds = %1
  %116 = load i32, i32* @EINVAL, align 4
  %117 = sub nsw i32 0, %116
  store i32 %117, i32* %2, align 4
  br label %275

118:                                              ; preds = %111, %106, %100, %92, %80, %54
  %119 = load %struct.snd_sb*, %struct.snd_sb** %5, align 8
  %120 = getelementptr inbounds %struct.snd_sb, %struct.snd_sb* %119, i32 0, i32 1
  %121 = load i32, i32* %120, align 4
  %122 = load i32, i32* @SB_MODE_CAPTURE_16, align 4
  %123 = and i32 %121, %122
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %125, label %141

125:                                              ; preds = %118
  %126 = load i8, i8* %12, align 1
  %127 = zext i8 %126 to i32
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %129, label %132

129:                                              ; preds = %125
  %130 = load i8, i8* @SB_DSP_STEREO_16BIT, align 1
  %131 = zext i8 %130 to i32
  br label %135

132:                                              ; preds = %125
  %133 = load i8, i8* @SB_DSP_MONO_16BIT, align 1
  %134 = zext i8 %133 to i32
  br label %135

135:                                              ; preds = %132, %129
  %136 = phi i32 [ %131, %129 ], [ %134, %132 ]
  %137 = trunc i32 %136 to i8
  store i8 %137, i8* %11, align 1
  %138 = load %struct.snd_sb*, %struct.snd_sb** %5, align 8
  %139 = getelementptr inbounds %struct.snd_sb, %struct.snd_sb* %138, i32 0, i32 3
  %140 = load i32, i32* %139, align 8
  store i32 %140, i32* %13, align 4
  br label %160

141:                                              ; preds = %118
  %142 = load i8, i8* %12, align 1
  %143 = zext i8 %142 to i32
  %144 = icmp ne i32 %143, 0
  br i1 %144, label %145, label %147

145:                                              ; preds = %141
  %146 = load i32, i32* @SB_DSP_STEREO_8BIT, align 4
  br label %149

147:                                              ; preds = %141
  %148 = load i32, i32* @SB_DSP_MONO_8BIT, align 4
  br label %149

149:                                              ; preds = %147, %145
  %150 = phi i32 [ %146, %145 ], [ %148, %147 ]
  %151 = trunc i32 %150 to i8
  store i8 %151, i8* %11, align 1
  %152 = load i32, i32* @SB_MODE_CAPTURE_8, align 4
  %153 = load %struct.snd_sb*, %struct.snd_sb** %5, align 8
  %154 = getelementptr inbounds %struct.snd_sb, %struct.snd_sb* %153, i32 0, i32 1
  %155 = load i32, i32* %154, align 4
  %156 = or i32 %155, %152
  store i32 %156, i32* %154, align 4
  %157 = load %struct.snd_sb*, %struct.snd_sb** %5, align 8
  %158 = getelementptr inbounds %struct.snd_sb, %struct.snd_sb* %157, i32 0, i32 4
  %159 = load i32, i32* %158, align 4
  store i32 %159, i32* %13, align 4
  br label %160

160:                                              ; preds = %149, %135
  %161 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %162 = call i32 @snd_pcm_lib_buffer_bytes(%struct.snd_pcm_substream* %161)
  %163 = load %struct.snd_sb*, %struct.snd_sb** %5, align 8
  %164 = getelementptr inbounds %struct.snd_sb, %struct.snd_sb* %163, i32 0, i32 5
  store i32 %162, i32* %164, align 8
  store i32 %162, i32* %9, align 4
  %165 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %166 = call i32 @snd_pcm_lib_period_bytes(%struct.snd_pcm_substream* %165)
  %167 = load %struct.snd_sb*, %struct.snd_sb** %5, align 8
  %168 = getelementptr inbounds %struct.snd_sb, %struct.snd_sb* %167, i32 0, i32 6
  store i32 %166, i32* %168, align 4
  store i32 %166, i32* %10, align 4
  %169 = load %struct.snd_sb*, %struct.snd_sb** %5, align 8
  %170 = getelementptr inbounds %struct.snd_sb, %struct.snd_sb* %169, i32 0, i32 8
  %171 = load i64, i64* %4, align 8
  %172 = call i32 @spin_lock_irqsave(i32* %170, i64 %171)
  %173 = load %struct.snd_sb*, %struct.snd_sb** %5, align 8
  %174 = load i32, i32* @SB_DSP_SPEAKER_OFF, align 4
  %175 = call i32 @snd_sbdsp_command(%struct.snd_sb* %173, i32 %174)
  %176 = load %struct.snd_sb*, %struct.snd_sb** %5, align 8
  %177 = getelementptr inbounds %struct.snd_sb, %struct.snd_sb* %176, i32 0, i32 0
  %178 = load i32, i32* %177, align 8
  %179 = icmp eq i32 %178, 129
  br i1 %179, label %180, label %185

180:                                              ; preds = %160
  %181 = load %struct.snd_sb*, %struct.snd_sb** %5, align 8
  %182 = load i8, i8* %11, align 1
  %183 = zext i8 %182 to i32
  %184 = call i32 @snd_sbdsp_command(%struct.snd_sb* %181, i32 %183)
  br label %193

185:                                              ; preds = %160
  %186 = load i8, i8* %12, align 1
  %187 = icmp ne i8 %186, 0
  br i1 %187, label %188, label %192

188:                                              ; preds = %185
  %189 = load %struct.snd_sb*, %struct.snd_sb** %5, align 8
  %190 = load i32, i32* @SB_DSP_STEREO_8BIT, align 4
  %191 = call i32 @snd_sbdsp_command(%struct.snd_sb* %189, i32 %190)
  br label %192

192:                                              ; preds = %188, %185
  br label %193

193:                                              ; preds = %192, %180
  %194 = load %struct.snd_sb*, %struct.snd_sb** %5, align 8
  %195 = load i32, i32* @SB_DSP_SAMPLE_RATE, align 4
  %196 = call i32 @snd_sbdsp_command(%struct.snd_sb* %194, i32 %195)
  %197 = load i8, i8* %12, align 1
  %198 = icmp ne i8 %197, 0
  br i1 %198, label %199, label %224

199:                                              ; preds = %193
  %200 = load %struct.snd_sb*, %struct.snd_sb** %5, align 8
  %201 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %6, align 8
  %202 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %201, i32 0, i32 2
  %203 = load i32, i32* %202, align 4
  %204 = sdiv i32 %203, 2
  %205 = sub nsw i32 256, %204
  %206 = call i32 @snd_sbdsp_command(%struct.snd_sb* %200, i32 %205)
  %207 = load %struct.snd_sb*, %struct.snd_sb** %5, align 8
  %208 = getelementptr inbounds %struct.snd_sb, %struct.snd_sb* %207, i32 0, i32 9
  %209 = call i32 @spin_lock(i32* %208)
  %210 = load %struct.snd_sb*, %struct.snd_sb** %5, align 8
  %211 = load i32, i32* @SB_DSP_CAPTURE_FILT, align 4
  %212 = call i32 @snd_sbmixer_read(%struct.snd_sb* %210, i32 %211)
  store i32 %212, i32* %7, align 4
  %213 = load %struct.snd_sb*, %struct.snd_sb** %5, align 8
  %214 = load i32, i32* @SB_DSP_CAPTURE_FILT, align 4
  %215 = load i32, i32* %7, align 4
  %216 = or i32 %215, 32
  %217 = call i32 @snd_sbmixer_write(%struct.snd_sb* %213, i32 %214, i32 %216)
  %218 = load %struct.snd_sb*, %struct.snd_sb** %5, align 8
  %219 = getelementptr inbounds %struct.snd_sb, %struct.snd_sb* %218, i32 0, i32 9
  %220 = call i32 @spin_unlock(i32* %219)
  %221 = load i32, i32* %7, align 4
  %222 = load %struct.snd_sb*, %struct.snd_sb** %5, align 8
  %223 = getelementptr inbounds %struct.snd_sb, %struct.snd_sb* %222, i32 0, i32 7
  store i32 %221, i32* %223, align 8
  br label %231

224:                                              ; preds = %193
  %225 = load %struct.snd_sb*, %struct.snd_sb** %5, align 8
  %226 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %6, align 8
  %227 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %226, i32 0, i32 2
  %228 = load i32, i32* %227, align 4
  %229 = sub nsw i32 256, %228
  %230 = call i32 @snd_sbdsp_command(%struct.snd_sb* %225, i32 %229)
  br label %231

231:                                              ; preds = %224, %199
  %232 = load %struct.snd_sb*, %struct.snd_sb** %5, align 8
  %233 = getelementptr inbounds %struct.snd_sb, %struct.snd_sb* %232, i32 0, i32 2
  %234 = load i64, i64* %233, align 8
  %235 = load i64, i64* @SB_DSP_INPUT, align 8
  %236 = icmp ne i64 %234, %235
  br i1 %236, label %237, label %261

237:                                              ; preds = %231
  %238 = load %struct.snd_sb*, %struct.snd_sb** %5, align 8
  %239 = getelementptr inbounds %struct.snd_sb, %struct.snd_sb* %238, i32 0, i32 1
  %240 = load i32, i32* %239, align 4
  %241 = load i32, i32* @SB_MODE_PLAYBACK_16, align 4
  %242 = and i32 %240, %241
  %243 = icmp ne i32 %242, 0
  br i1 %243, label %244, label %247

244:                                              ; preds = %237
  %245 = load i32, i32* %10, align 4
  %246 = udiv i32 %245, 2
  store i32 %246, i32* %10, align 4
  br label %247

247:                                              ; preds = %244, %237
  %248 = load i32, i32* %10, align 4
  %249 = add i32 %248, -1
  store i32 %249, i32* %10, align 4
  %250 = load %struct.snd_sb*, %struct.snd_sb** %5, align 8
  %251 = load i32, i32* @SB_DSP_BLOCK_SIZE, align 4
  %252 = call i32 @snd_sbdsp_command(%struct.snd_sb* %250, i32 %251)
  %253 = load %struct.snd_sb*, %struct.snd_sb** %5, align 8
  %254 = load i32, i32* %10, align 4
  %255 = and i32 %254, 255
  %256 = call i32 @snd_sbdsp_command(%struct.snd_sb* %253, i32 %255)
  %257 = load %struct.snd_sb*, %struct.snd_sb** %5, align 8
  %258 = load i32, i32* %10, align 4
  %259 = lshr i32 %258, 8
  %260 = call i32 @snd_sbdsp_command(%struct.snd_sb* %257, i32 %259)
  br label %261

261:                                              ; preds = %247, %231
  %262 = load %struct.snd_sb*, %struct.snd_sb** %5, align 8
  %263 = getelementptr inbounds %struct.snd_sb, %struct.snd_sb* %262, i32 0, i32 8
  %264 = load i64, i64* %4, align 8
  %265 = call i32 @spin_unlock_irqrestore(i32* %263, i64 %264)
  %266 = load i32, i32* %13, align 4
  %267 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %6, align 8
  %268 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %267, i32 0, i32 3
  %269 = load i32, i32* %268, align 4
  %270 = load i32, i32* %9, align 4
  %271 = load i32, i32* @DMA_MODE_READ, align 4
  %272 = load i32, i32* @DMA_AUTOINIT, align 4
  %273 = or i32 %271, %272
  %274 = call i32 @snd_dma_program(i32 %266, i32 %269, i32 %270, i32 %273)
  store i32 0, i32* %2, align 4
  br label %275

275:                                              ; preds = %261, %115, %77, %44
  %276 = load i32, i32* %2, align 4
  ret i32 %276
}

declare dso_local %struct.snd_sb* @snd_pcm_substream_chip(%struct.snd_pcm_substream*) #1

declare dso_local i32 @snd_BUG_ON(i32) #1

declare dso_local i32 @SB8_RATE(i32) #1

declare dso_local i32 @snd_pcm_lib_buffer_bytes(%struct.snd_pcm_substream*) #1

declare dso_local i32 @snd_pcm_lib_period_bytes(%struct.snd_pcm_substream*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @snd_sbdsp_command(%struct.snd_sb*, i32) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @snd_sbmixer_read(%struct.snd_sb*, i32) #1

declare dso_local i32 @snd_sbmixer_write(%struct.snd_sb*, i32, i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @snd_dma_program(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
