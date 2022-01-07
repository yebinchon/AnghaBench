; ModuleID = '/home/carl/AnghaBench/linux/sound/isa/sb/extr_sb8_main.c_snd_sb8_playback_prepare.c'
source_filename = "/home/carl/AnghaBench/linux/sound/isa/sb/extr_sb8_main.c_snd_sb8_playback_prepare.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_substream = type { %struct.snd_pcm_runtime* }
%struct.snd_pcm_runtime = type { i32, i32, i32*, i32, i32, i32 }
%struct.snd_sb = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@SNDRV_PCM_FORMAT_S16_LE = common dso_local global i32 0, align 4
@SB_MODE_CAPTURE_16 = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@SB_MODE_PLAYBACK_16 = common dso_local global i32 0, align 4
@SB_DSP_LO_OUTPUT_AUTO = common dso_local global i8* null, align 8
@EINVAL = common dso_local global i32 0, align 4
@SB_DSP_HI_OUTPUT_AUTO = common dso_local global i8* null, align 8
@SB_DSP_OUTPUT = common dso_local global i32 0, align 4
@SB_DSP_STEREO_16BIT = common dso_local global i8 0, align 1
@SB_DSP_MONO_16BIT = common dso_local global i8 0, align 1
@SB_DSP_STEREO_8BIT = common dso_local global i8 0, align 1
@SB_DSP_MONO_8BIT = common dso_local global i8 0, align 1
@SB_MODE_PLAYBACK_8 = common dso_local global i32 0, align 4
@SB_DSP_SPEAKER_ON = common dso_local global i32 0, align 4
@SB_DSP_STEREO_SW = common dso_local global i32 0, align 4
@SB_DSP_DMA8_EXIT = common dso_local global i32 0, align 4
@DMA_MODE_WRITE = common dso_local global i32 0, align 4
@SB_DSP_SAMPLE_RATE = common dso_local global i32 0, align 4
@SB_DSP_PLAYBACK_FILT = common dso_local global i32 0, align 4
@SB_DSP_BLOCK_SIZE = common dso_local global i32 0, align 4
@DMA_AUTOINIT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_substream*)* @snd_sb8_playback_prepare to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_sb8_playback_prepare(%struct.snd_pcm_substream* %0) #0 {
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
  %21 = load i32, i32* %20, align 8
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
  %30 = load i32, i32* %29, align 4
  switch i32 %30, label %104 [
    i32 129, label %31
    i32 128, label %59
    i32 130, label %86
    i32 131, label %95
    i32 132, label %100
  ]

31:                                               ; preds = %1
  %32 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %6, align 8
  %33 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %32, i32 0, i32 5
  %34 = load i32, i32* %33, align 8
  %35 = load i32, i32* @SNDRV_PCM_FORMAT_S16_LE, align 4
  %36 = icmp eq i32 %34, %35
  br i1 %36, label %37, label %54

37:                                               ; preds = %31
  %38 = load %struct.snd_sb*, %struct.snd_sb** %5, align 8
  %39 = getelementptr inbounds %struct.snd_sb, %struct.snd_sb* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* @SB_MODE_CAPTURE_16, align 4
  %42 = and i32 %40, %41
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %47

44:                                               ; preds = %37
  %45 = load i32, i32* @EBUSY, align 4
  %46 = sub nsw i32 0, %45
  store i32 %46, i32* %2, align 4
  br label %297

47:                                               ; preds = %37
  %48 = load i32, i32* @SB_MODE_PLAYBACK_16, align 4
  %49 = load %struct.snd_sb*, %struct.snd_sb** %5, align 8
  %50 = getelementptr inbounds %struct.snd_sb, %struct.snd_sb* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = or i32 %51, %48
  store i32 %52, i32* %50, align 4
  br label %53

53:                                               ; preds = %47
  br label %54

54:                                               ; preds = %53, %31
  %55 = load i8*, i8** @SB_DSP_LO_OUTPUT_AUTO, align 8
  %56 = ptrtoint i8* %55 to i32
  %57 = load %struct.snd_sb*, %struct.snd_sb** %5, align 8
  %58 = getelementptr inbounds %struct.snd_sb, %struct.snd_sb* %57, i32 0, i32 2
  store i32 %56, i32* %58, align 4
  br label %107

59:                                               ; preds = %1
  %60 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %6, align 8
  %61 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
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
  br label %297

80:                                               ; preds = %72
  %81 = load i8*, i8** @SB_DSP_HI_OUTPUT_AUTO, align 8
  %82 = ptrtoint i8* %81 to i32
  %83 = load %struct.snd_sb*, %struct.snd_sb** %5, align 8
  %84 = getelementptr inbounds %struct.snd_sb, %struct.snd_sb* %83, i32 0, i32 2
  store i32 %82, i32* %84, align 4
  br label %107

85:                                               ; preds = %59
  br label %86

86:                                               ; preds = %1, %85
  %87 = load i32, i32* %8, align 4
  %88 = icmp ugt i32 %87, 23000
  br i1 %88, label %89, label %94

89:                                               ; preds = %86
  %90 = load i8*, i8** @SB_DSP_HI_OUTPUT_AUTO, align 8
  %91 = ptrtoint i8* %90 to i32
  %92 = load %struct.snd_sb*, %struct.snd_sb** %5, align 8
  %93 = getelementptr inbounds %struct.snd_sb, %struct.snd_sb* %92, i32 0, i32 2
  store i32 %91, i32* %93, align 4
  br label %107

94:                                               ; preds = %86
  br label %95

95:                                               ; preds = %1, %94
  %96 = load i8*, i8** @SB_DSP_LO_OUTPUT_AUTO, align 8
  %97 = ptrtoint i8* %96 to i32
  %98 = load %struct.snd_sb*, %struct.snd_sb** %5, align 8
  %99 = getelementptr inbounds %struct.snd_sb, %struct.snd_sb* %98, i32 0, i32 2
  store i32 %97, i32* %99, align 4
  br label %107

100:                                              ; preds = %1
  %101 = load i32, i32* @SB_DSP_OUTPUT, align 4
  %102 = load %struct.snd_sb*, %struct.snd_sb** %5, align 8
  %103 = getelementptr inbounds %struct.snd_sb, %struct.snd_sb* %102, i32 0, i32 2
  store i32 %101, i32* %103, align 4
  br label %107

104:                                              ; preds = %1
  %105 = load i32, i32* @EINVAL, align 4
  %106 = sub nsw i32 0, %105
  store i32 %106, i32* %2, align 4
  br label %297

107:                                              ; preds = %100, %95, %89, %80, %54
  %108 = load %struct.snd_sb*, %struct.snd_sb** %5, align 8
  %109 = getelementptr inbounds %struct.snd_sb, %struct.snd_sb* %108, i32 0, i32 1
  %110 = load i32, i32* %109, align 4
  %111 = load i32, i32* @SB_MODE_PLAYBACK_16, align 4
  %112 = and i32 %110, %111
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %114, label %130

114:                                              ; preds = %107
  %115 = load i8, i8* %12, align 1
  %116 = zext i8 %115 to i32
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %118, label %121

118:                                              ; preds = %114
  %119 = load i8, i8* @SB_DSP_STEREO_16BIT, align 1
  %120 = zext i8 %119 to i32
  br label %124

121:                                              ; preds = %114
  %122 = load i8, i8* @SB_DSP_MONO_16BIT, align 1
  %123 = zext i8 %122 to i32
  br label %124

124:                                              ; preds = %121, %118
  %125 = phi i32 [ %120, %118 ], [ %123, %121 ]
  %126 = trunc i32 %125 to i8
  store i8 %126, i8* %11, align 1
  %127 = load %struct.snd_sb*, %struct.snd_sb** %5, align 8
  %128 = getelementptr inbounds %struct.snd_sb, %struct.snd_sb* %127, i32 0, i32 3
  %129 = load i32, i32* %128, align 4
  store i32 %129, i32* %13, align 4
  br label %151

130:                                              ; preds = %107
  %131 = load i8, i8* %12, align 1
  %132 = zext i8 %131 to i32
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %134, label %137

134:                                              ; preds = %130
  %135 = load i8, i8* @SB_DSP_STEREO_8BIT, align 1
  %136 = zext i8 %135 to i32
  br label %140

137:                                              ; preds = %130
  %138 = load i8, i8* @SB_DSP_MONO_8BIT, align 1
  %139 = zext i8 %138 to i32
  br label %140

140:                                              ; preds = %137, %134
  %141 = phi i32 [ %136, %134 ], [ %139, %137 ]
  %142 = trunc i32 %141 to i8
  store i8 %142, i8* %11, align 1
  %143 = load i32, i32* @SB_MODE_PLAYBACK_8, align 4
  %144 = load %struct.snd_sb*, %struct.snd_sb** %5, align 8
  %145 = getelementptr inbounds %struct.snd_sb, %struct.snd_sb* %144, i32 0, i32 1
  %146 = load i32, i32* %145, align 4
  %147 = or i32 %146, %143
  store i32 %147, i32* %145, align 4
  %148 = load %struct.snd_sb*, %struct.snd_sb** %5, align 8
  %149 = getelementptr inbounds %struct.snd_sb, %struct.snd_sb* %148, i32 0, i32 4
  %150 = load i32, i32* %149, align 4
  store i32 %150, i32* %13, align 4
  br label %151

151:                                              ; preds = %140, %124
  %152 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %153 = call i32 @snd_pcm_lib_buffer_bytes(%struct.snd_pcm_substream* %152)
  %154 = load %struct.snd_sb*, %struct.snd_sb** %5, align 8
  %155 = getelementptr inbounds %struct.snd_sb, %struct.snd_sb* %154, i32 0, i32 5
  store i32 %153, i32* %155, align 4
  store i32 %153, i32* %9, align 4
  %156 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %157 = call i32 @snd_pcm_lib_period_bytes(%struct.snd_pcm_substream* %156)
  %158 = load %struct.snd_sb*, %struct.snd_sb** %5, align 8
  %159 = getelementptr inbounds %struct.snd_sb, %struct.snd_sb* %158, i32 0, i32 6
  store i32 %157, i32* %159, align 4
  store i32 %157, i32* %10, align 4
  %160 = load %struct.snd_sb*, %struct.snd_sb** %5, align 8
  %161 = getelementptr inbounds %struct.snd_sb, %struct.snd_sb* %160, i32 0, i32 8
  %162 = load i64, i64* %4, align 8
  %163 = call i32 @spin_lock_irqsave(i32* %161, i64 %162)
  %164 = load %struct.snd_sb*, %struct.snd_sb** %5, align 8
  %165 = load i32, i32* @SB_DSP_SPEAKER_ON, align 4
  %166 = call i32 @snd_sbdsp_command(%struct.snd_sb* %164, i32 %165)
  %167 = load %struct.snd_sb*, %struct.snd_sb** %5, align 8
  %168 = getelementptr inbounds %struct.snd_sb, %struct.snd_sb* %167, i32 0, i32 0
  %169 = load i32, i32* %168, align 4
  %170 = icmp eq i32 %169, 129
  br i1 %170, label %171, label %176

171:                                              ; preds = %151
  %172 = load %struct.snd_sb*, %struct.snd_sb** %5, align 8
  %173 = load i8, i8* %11, align 1
  %174 = zext i8 %173 to i32
  %175 = call i32 @snd_sbdsp_command(%struct.snd_sb* %172, i32 %174)
  br label %215

176:                                              ; preds = %151
  %177 = load i8, i8* %12, align 1
  %178 = icmp ne i8 %177, 0
  br i1 %178, label %179, label %214

179:                                              ; preds = %176
  %180 = load %struct.snd_sb*, %struct.snd_sb** %5, align 8
  %181 = getelementptr inbounds %struct.snd_sb, %struct.snd_sb* %180, i32 0, i32 9
  %182 = call i32 @spin_lock(i32* %181)
  %183 = load %struct.snd_sb*, %struct.snd_sb** %5, align 8
  %184 = load i32, i32* @SB_DSP_STEREO_SW, align 4
  %185 = call i32 @snd_sbmixer_read(%struct.snd_sb* %183, i32 %184)
  store i32 %185, i32* %7, align 4
  %186 = load %struct.snd_sb*, %struct.snd_sb** %5, align 8
  %187 = load i32, i32* @SB_DSP_STEREO_SW, align 4
  %188 = load i32, i32* %7, align 4
  %189 = or i32 %188, 2
  %190 = call i32 @snd_sbmixer_write(%struct.snd_sb* %186, i32 %187, i32 %189)
  %191 = load %struct.snd_sb*, %struct.snd_sb** %5, align 8
  %192 = getelementptr inbounds %struct.snd_sb, %struct.snd_sb* %191, i32 0, i32 9
  %193 = call i32 @spin_unlock(i32* %192)
  %194 = load %struct.snd_sb*, %struct.snd_sb** %5, align 8
  %195 = load i32, i32* @SB_DSP_DMA8_EXIT, align 4
  %196 = call i32 @snd_sbdsp_command(%struct.snd_sb* %194, i32 %195)
  %197 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %6, align 8
  %198 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %197, i32 0, i32 2
  %199 = load i32*, i32** %198, align 8
  %200 = getelementptr inbounds i32, i32* %199, i64 0
  store i32 128, i32* %200, align 4
  %201 = load i32, i32* %13, align 4
  %202 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %6, align 8
  %203 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %202, i32 0, i32 4
  %204 = load i32, i32* %203, align 4
  %205 = load i32, i32* @DMA_MODE_WRITE, align 4
  %206 = call i32 @snd_dma_program(i32 %201, i32 %204, i32 1, i32 %205)
  %207 = load %struct.snd_sb*, %struct.snd_sb** %5, align 8
  %208 = load i32, i32* @SB_DSP_OUTPUT, align 4
  %209 = call i32 @snd_sbdsp_command(%struct.snd_sb* %207, i32 %208)
  %210 = load %struct.snd_sb*, %struct.snd_sb** %5, align 8
  %211 = call i32 @snd_sbdsp_command(%struct.snd_sb* %210, i32 0)
  %212 = load %struct.snd_sb*, %struct.snd_sb** %5, align 8
  %213 = call i32 @snd_sbdsp_command(%struct.snd_sb* %212, i32 0)
  br label %214

214:                                              ; preds = %179, %176
  br label %215

215:                                              ; preds = %214, %171
  %216 = load %struct.snd_sb*, %struct.snd_sb** %5, align 8
  %217 = load i32, i32* @SB_DSP_SAMPLE_RATE, align 4
  %218 = call i32 @snd_sbdsp_command(%struct.snd_sb* %216, i32 %217)
  %219 = load i8, i8* %12, align 1
  %220 = icmp ne i8 %219, 0
  br i1 %220, label %221, label %246

221:                                              ; preds = %215
  %222 = load %struct.snd_sb*, %struct.snd_sb** %5, align 8
  %223 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %6, align 8
  %224 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %223, i32 0, i32 3
  %225 = load i32, i32* %224, align 8
  %226 = sdiv i32 %225, 2
  %227 = sub nsw i32 256, %226
  %228 = call i32 @snd_sbdsp_command(%struct.snd_sb* %222, i32 %227)
  %229 = load %struct.snd_sb*, %struct.snd_sb** %5, align 8
  %230 = getelementptr inbounds %struct.snd_sb, %struct.snd_sb* %229, i32 0, i32 9
  %231 = call i32 @spin_lock(i32* %230)
  %232 = load %struct.snd_sb*, %struct.snd_sb** %5, align 8
  %233 = load i32, i32* @SB_DSP_PLAYBACK_FILT, align 4
  %234 = call i32 @snd_sbmixer_read(%struct.snd_sb* %232, i32 %233)
  store i32 %234, i32* %7, align 4
  %235 = load %struct.snd_sb*, %struct.snd_sb** %5, align 8
  %236 = load i32, i32* @SB_DSP_PLAYBACK_FILT, align 4
  %237 = load i32, i32* %7, align 4
  %238 = or i32 %237, 32
  %239 = call i32 @snd_sbmixer_write(%struct.snd_sb* %235, i32 %236, i32 %238)
  %240 = load %struct.snd_sb*, %struct.snd_sb** %5, align 8
  %241 = getelementptr inbounds %struct.snd_sb, %struct.snd_sb* %240, i32 0, i32 9
  %242 = call i32 @spin_unlock(i32* %241)
  %243 = load i32, i32* %7, align 4
  %244 = load %struct.snd_sb*, %struct.snd_sb** %5, align 8
  %245 = getelementptr inbounds %struct.snd_sb, %struct.snd_sb* %244, i32 0, i32 7
  store i32 %243, i32* %245, align 4
  br label %253

246:                                              ; preds = %215
  %247 = load %struct.snd_sb*, %struct.snd_sb** %5, align 8
  %248 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %6, align 8
  %249 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %248, i32 0, i32 3
  %250 = load i32, i32* %249, align 8
  %251 = sub nsw i32 256, %250
  %252 = call i32 @snd_sbdsp_command(%struct.snd_sb* %247, i32 %251)
  br label %253

253:                                              ; preds = %246, %221
  %254 = load %struct.snd_sb*, %struct.snd_sb** %5, align 8
  %255 = getelementptr inbounds %struct.snd_sb, %struct.snd_sb* %254, i32 0, i32 2
  %256 = load i32, i32* %255, align 4
  %257 = load i32, i32* @SB_DSP_OUTPUT, align 4
  %258 = icmp ne i32 %256, %257
  br i1 %258, label %259, label %283

259:                                              ; preds = %253
  %260 = load %struct.snd_sb*, %struct.snd_sb** %5, align 8
  %261 = getelementptr inbounds %struct.snd_sb, %struct.snd_sb* %260, i32 0, i32 1
  %262 = load i32, i32* %261, align 4
  %263 = load i32, i32* @SB_MODE_PLAYBACK_16, align 4
  %264 = and i32 %262, %263
  %265 = icmp ne i32 %264, 0
  br i1 %265, label %266, label %269

266:                                              ; preds = %259
  %267 = load i32, i32* %10, align 4
  %268 = udiv i32 %267, 2
  store i32 %268, i32* %10, align 4
  br label %269

269:                                              ; preds = %266, %259
  %270 = load i32, i32* %10, align 4
  %271 = add i32 %270, -1
  store i32 %271, i32* %10, align 4
  %272 = load %struct.snd_sb*, %struct.snd_sb** %5, align 8
  %273 = load i32, i32* @SB_DSP_BLOCK_SIZE, align 4
  %274 = call i32 @snd_sbdsp_command(%struct.snd_sb* %272, i32 %273)
  %275 = load %struct.snd_sb*, %struct.snd_sb** %5, align 8
  %276 = load i32, i32* %10, align 4
  %277 = and i32 %276, 255
  %278 = call i32 @snd_sbdsp_command(%struct.snd_sb* %275, i32 %277)
  %279 = load %struct.snd_sb*, %struct.snd_sb** %5, align 8
  %280 = load i32, i32* %10, align 4
  %281 = lshr i32 %280, 8
  %282 = call i32 @snd_sbdsp_command(%struct.snd_sb* %279, i32 %281)
  br label %283

283:                                              ; preds = %269, %253
  %284 = load %struct.snd_sb*, %struct.snd_sb** %5, align 8
  %285 = getelementptr inbounds %struct.snd_sb, %struct.snd_sb* %284, i32 0, i32 8
  %286 = load i64, i64* %4, align 8
  %287 = call i32 @spin_unlock_irqrestore(i32* %285, i64 %286)
  %288 = load i32, i32* %13, align 4
  %289 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %6, align 8
  %290 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %289, i32 0, i32 4
  %291 = load i32, i32* %290, align 4
  %292 = load i32, i32* %9, align 4
  %293 = load i32, i32* @DMA_MODE_WRITE, align 4
  %294 = load i32, i32* @DMA_AUTOINIT, align 4
  %295 = or i32 %293, %294
  %296 = call i32 @snd_dma_program(i32 %288, i32 %291, i32 %292, i32 %295)
  store i32 0, i32* %2, align 4
  br label %297

297:                                              ; preds = %283, %104, %77, %44
  %298 = load i32, i32* %2, align 4
  ret i32 %298
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

declare dso_local i32 @snd_dma_program(i32, i32, i32, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
