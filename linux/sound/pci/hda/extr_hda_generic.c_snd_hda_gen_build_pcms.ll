; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/hda/extr_hda_generic.c_snd_hda_gen_build_pcms.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/hda/extr_hda_generic.c_snd_hda_gen_build_pcms.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hda_codec = type { %struct.TYPE_7__, i32, %struct.hda_gen_spec* }
%struct.TYPE_7__ = type { i32 }
%struct.hda_gen_spec = type { i32, i64*, i32*, i64, i32*, %struct.hda_pcm**, i32, i32, i64, i64, i64, i32*, %struct.TYPE_6__, i32*, i64, i32, i32*, %struct.TYPE_5__, i32*, i32 }
%struct.hda_pcm = type { %struct.TYPE_8__*, i64 }
%struct.TYPE_8__ = type { i32, i32, i32 }
%struct.TYPE_6__ = type { i64, i64, i32, i32, i64* }
%struct.TYPE_5__ = type { i64, i32 }

@.str = private unnamed_addr constant [8 x i8] c" Analog\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@SNDRV_PCM_STREAM_PLAYBACK = common dso_local global i64 0, align 8
@pcm_analog_playback = common dso_local global i32 0, align 4
@AUTO_PIN_SPEAKER_OUT = common dso_local global i64 0, align 8
@snd_pcm_2_1_chmaps = common dso_local global i32 0, align 4
@SNDRV_PCM_STREAM_CAPTURE = common dso_local global i64 0, align 8
@dyn_adc_pcm_analog_capture = common dso_local global i32 0, align 4
@pcm_analog_capture = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [9 x i8] c" Digital\00", align 1
@HDA_PCM_TYPE_SPDIF = common dso_local global i64 0, align 8
@pcm_digital_playback = common dso_local global i32 0, align 4
@pcm_digital_capture = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [12 x i8] c" Alt Analog\00", align 1
@pcm_analog_alt_playback = common dso_local global i32 0, align 4
@pcm_null_stream = common dso_local global i32 0, align 4
@pcm_analog_alt_capture = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @snd_hda_gen_build_pcms(%struct.hda_codec* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.hda_codec*, align 8
  %4 = alloca %struct.hda_gen_spec*, align 8
  %5 = alloca %struct.hda_pcm*, align 8
  %6 = alloca i32, align 4
  store %struct.hda_codec* %0, %struct.hda_codec** %3, align 8
  %7 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %8 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %7, i32 0, i32 2
  %9 = load %struct.hda_gen_spec*, %struct.hda_gen_spec** %8, align 8
  store %struct.hda_gen_spec* %9, %struct.hda_gen_spec** %4, align 8
  %10 = load %struct.hda_gen_spec*, %struct.hda_gen_spec** %4, align 8
  %11 = getelementptr inbounds %struct.hda_gen_spec, %struct.hda_gen_spec* %10, i32 0, i32 9
  %12 = load i64, i64* %11, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %1
  br label %119

15:                                               ; preds = %1
  %16 = load %struct.hda_gen_spec*, %struct.hda_gen_spec** %4, align 8
  %17 = getelementptr inbounds %struct.hda_gen_spec, %struct.hda_gen_spec* %16, i32 0, i32 19
  %18 = load i32, i32* %17, align 8
  %19 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %20 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = call i32 @fill_pcm_stream_name(i32 %18, i32 4, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32 %22)
  %24 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %25 = load %struct.hda_gen_spec*, %struct.hda_gen_spec** %4, align 8
  %26 = getelementptr inbounds %struct.hda_gen_spec, %struct.hda_gen_spec* %25, i32 0, i32 19
  %27 = load i32, i32* %26, align 8
  %28 = call %struct.hda_pcm* @snd_hda_codec_pcm_new(%struct.hda_codec* %24, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32 %27)
  store %struct.hda_pcm* %28, %struct.hda_pcm** %5, align 8
  %29 = load %struct.hda_pcm*, %struct.hda_pcm** %5, align 8
  %30 = icmp ne %struct.hda_pcm* %29, null
  br i1 %30, label %34, label %31

31:                                               ; preds = %15
  %32 = load i32, i32* @ENOMEM, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %2, align 4
  br label %332

34:                                               ; preds = %15
  %35 = load %struct.hda_pcm*, %struct.hda_pcm** %5, align 8
  %36 = load %struct.hda_gen_spec*, %struct.hda_gen_spec** %4, align 8
  %37 = getelementptr inbounds %struct.hda_gen_spec, %struct.hda_gen_spec* %36, i32 0, i32 5
  %38 = load %struct.hda_pcm**, %struct.hda_pcm*** %37, align 8
  %39 = getelementptr inbounds %struct.hda_pcm*, %struct.hda_pcm** %38, i64 0
  store %struct.hda_pcm* %35, %struct.hda_pcm** %39, align 8
  %40 = load %struct.hda_gen_spec*, %struct.hda_gen_spec** %4, align 8
  %41 = getelementptr inbounds %struct.hda_gen_spec, %struct.hda_gen_spec* %40, i32 0, i32 12
  %42 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = icmp sgt i64 %43, 0
  br i1 %44, label %45, label %92

45:                                               ; preds = %34
  %46 = load %struct.hda_pcm*, %struct.hda_pcm** %5, align 8
  %47 = getelementptr inbounds %struct.hda_pcm, %struct.hda_pcm* %46, i32 0, i32 0
  %48 = load %struct.TYPE_8__*, %struct.TYPE_8__** %47, align 8
  %49 = load i64, i64* @SNDRV_PCM_STREAM_PLAYBACK, align 8
  %50 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %48, i64 %49
  %51 = load %struct.hda_gen_spec*, %struct.hda_gen_spec** %4, align 8
  %52 = getelementptr inbounds %struct.hda_gen_spec, %struct.hda_gen_spec* %51, i32 0, i32 18
  %53 = load i32*, i32** %52, align 8
  %54 = load %struct.hda_gen_spec*, %struct.hda_gen_spec** %4, align 8
  %55 = getelementptr inbounds %struct.hda_gen_spec, %struct.hda_gen_spec* %54, i32 0, i32 12
  %56 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %55, i32 0, i32 4
  %57 = load i64*, i64** %56, align 8
  %58 = getelementptr inbounds i64, i64* %57, i64 0
  %59 = load i64, i64* %58, align 8
  %60 = call i32 @setup_pcm_stream(%struct.TYPE_8__* %50, i32* @pcm_analog_playback, i32* %53, i64 %59)
  %61 = load %struct.hda_gen_spec*, %struct.hda_gen_spec** %4, align 8
  %62 = getelementptr inbounds %struct.hda_gen_spec, %struct.hda_gen_spec* %61, i32 0, i32 12
  %63 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %62, i32 0, i32 3
  %64 = load i32, i32* %63, align 4
  %65 = load %struct.hda_pcm*, %struct.hda_pcm** %5, align 8
  %66 = getelementptr inbounds %struct.hda_pcm, %struct.hda_pcm* %65, i32 0, i32 0
  %67 = load %struct.TYPE_8__*, %struct.TYPE_8__** %66, align 8
  %68 = load i64, i64* @SNDRV_PCM_STREAM_PLAYBACK, align 8
  %69 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %67, i64 %68
  %70 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %69, i32 0, i32 2
  store i32 %64, i32* %70, align 4
  %71 = load %struct.hda_gen_spec*, %struct.hda_gen_spec** %4, align 8
  %72 = getelementptr inbounds %struct.hda_gen_spec, %struct.hda_gen_spec* %71, i32 0, i32 17
  %73 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = load i64, i64* @AUTO_PIN_SPEAKER_OUT, align 8
  %76 = icmp eq i64 %74, %75
  br i1 %76, label %77, label %91

77:                                               ; preds = %45
  %78 = load %struct.hda_gen_spec*, %struct.hda_gen_spec** %4, align 8
  %79 = getelementptr inbounds %struct.hda_gen_spec, %struct.hda_gen_spec* %78, i32 0, i32 17
  %80 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 8
  %82 = icmp eq i32 %81, 2
  br i1 %82, label %83, label %91

83:                                               ; preds = %77
  %84 = load i32, i32* @snd_pcm_2_1_chmaps, align 4
  %85 = load %struct.hda_pcm*, %struct.hda_pcm** %5, align 8
  %86 = getelementptr inbounds %struct.hda_pcm, %struct.hda_pcm* %85, i32 0, i32 0
  %87 = load %struct.TYPE_8__*, %struct.TYPE_8__** %86, align 8
  %88 = load i64, i64* @SNDRV_PCM_STREAM_PLAYBACK, align 8
  %89 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %87, i64 %88
  %90 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %89, i32 0, i32 1
  store i32 %84, i32* %90, align 4
  br label %91

91:                                               ; preds = %83, %77, %45
  br label %92

92:                                               ; preds = %91, %34
  %93 = load %struct.hda_gen_spec*, %struct.hda_gen_spec** %4, align 8
  %94 = getelementptr inbounds %struct.hda_gen_spec, %struct.hda_gen_spec* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 8
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %118

97:                                               ; preds = %92
  %98 = load %struct.hda_pcm*, %struct.hda_pcm** %5, align 8
  %99 = getelementptr inbounds %struct.hda_pcm, %struct.hda_pcm* %98, i32 0, i32 0
  %100 = load %struct.TYPE_8__*, %struct.TYPE_8__** %99, align 8
  %101 = load i64, i64* @SNDRV_PCM_STREAM_CAPTURE, align 8
  %102 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %100, i64 %101
  %103 = load %struct.hda_gen_spec*, %struct.hda_gen_spec** %4, align 8
  %104 = getelementptr inbounds %struct.hda_gen_spec, %struct.hda_gen_spec* %103, i32 0, i32 8
  %105 = load i64, i64* %104, align 8
  %106 = icmp ne i64 %105, 0
  %107 = zext i1 %106 to i64
  %108 = select i1 %106, i32* @dyn_adc_pcm_analog_capture, i32* @pcm_analog_capture
  %109 = load %struct.hda_gen_spec*, %struct.hda_gen_spec** %4, align 8
  %110 = getelementptr inbounds %struct.hda_gen_spec, %struct.hda_gen_spec* %109, i32 0, i32 16
  %111 = load i32*, i32** %110, align 8
  %112 = load %struct.hda_gen_spec*, %struct.hda_gen_spec** %4, align 8
  %113 = getelementptr inbounds %struct.hda_gen_spec, %struct.hda_gen_spec* %112, i32 0, i32 1
  %114 = load i64*, i64** %113, align 8
  %115 = getelementptr inbounds i64, i64* %114, i64 0
  %116 = load i64, i64* %115, align 8
  %117 = call i32 @setup_pcm_stream(%struct.TYPE_8__* %102, i32* %108, i32* %111, i64 %116)
  br label %118

118:                                              ; preds = %97, %92
  br label %119

119:                                              ; preds = %118, %14
  %120 = load %struct.hda_gen_spec*, %struct.hda_gen_spec** %4, align 8
  %121 = getelementptr inbounds %struct.hda_gen_spec, %struct.hda_gen_spec* %120, i32 0, i32 12
  %122 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %121, i32 0, i32 1
  %123 = load i64, i64* %122, align 8
  %124 = icmp ne i64 %123, 0
  br i1 %124, label %130, label %125

125:                                              ; preds = %119
  %126 = load %struct.hda_gen_spec*, %struct.hda_gen_spec** %4, align 8
  %127 = getelementptr inbounds %struct.hda_gen_spec, %struct.hda_gen_spec* %126, i32 0, i32 10
  %128 = load i64, i64* %127, align 8
  %129 = icmp ne i64 %128, 0
  br i1 %129, label %130, label %214

130:                                              ; preds = %125, %119
  %131 = load %struct.hda_gen_spec*, %struct.hda_gen_spec** %4, align 8
  %132 = getelementptr inbounds %struct.hda_gen_spec, %struct.hda_gen_spec* %131, i32 0, i32 15
  %133 = load i32, i32* %132, align 8
  %134 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %135 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %134, i32 0, i32 0
  %136 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %135, i32 0, i32 0
  %137 = load i32, i32* %136, align 8
  %138 = call i32 @fill_pcm_stream_name(i32 %133, i32 4, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), i32 %137)
  %139 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %140 = load %struct.hda_gen_spec*, %struct.hda_gen_spec** %4, align 8
  %141 = getelementptr inbounds %struct.hda_gen_spec, %struct.hda_gen_spec* %140, i32 0, i32 15
  %142 = load i32, i32* %141, align 8
  %143 = call %struct.hda_pcm* @snd_hda_codec_pcm_new(%struct.hda_codec* %139, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32 %142)
  store %struct.hda_pcm* %143, %struct.hda_pcm** %5, align 8
  %144 = load %struct.hda_pcm*, %struct.hda_pcm** %5, align 8
  %145 = icmp ne %struct.hda_pcm* %144, null
  br i1 %145, label %149, label %146

146:                                              ; preds = %130
  %147 = load i32, i32* @ENOMEM, align 4
  %148 = sub nsw i32 0, %147
  store i32 %148, i32* %2, align 4
  br label %332

149:                                              ; preds = %130
  %150 = load %struct.hda_gen_spec*, %struct.hda_gen_spec** %4, align 8
  %151 = getelementptr inbounds %struct.hda_gen_spec, %struct.hda_gen_spec* %150, i32 0, i32 12
  %152 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %151, i32 0, i32 2
  %153 = load i32, i32* %152, align 8
  %154 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %155 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %154, i32 0, i32 1
  store i32 %153, i32* %155, align 4
  %156 = load %struct.hda_pcm*, %struct.hda_pcm** %5, align 8
  %157 = load %struct.hda_gen_spec*, %struct.hda_gen_spec** %4, align 8
  %158 = getelementptr inbounds %struct.hda_gen_spec, %struct.hda_gen_spec* %157, i32 0, i32 5
  %159 = load %struct.hda_pcm**, %struct.hda_pcm*** %158, align 8
  %160 = getelementptr inbounds %struct.hda_pcm*, %struct.hda_pcm** %159, i64 1
  store %struct.hda_pcm* %156, %struct.hda_pcm** %160, align 8
  %161 = load %struct.hda_gen_spec*, %struct.hda_gen_spec** %4, align 8
  %162 = getelementptr inbounds %struct.hda_gen_spec, %struct.hda_gen_spec* %161, i32 0, i32 14
  %163 = load i64, i64* %162, align 8
  %164 = icmp ne i64 %163, 0
  br i1 %164, label %165, label %171

165:                                              ; preds = %149
  %166 = load %struct.hda_gen_spec*, %struct.hda_gen_spec** %4, align 8
  %167 = getelementptr inbounds %struct.hda_gen_spec, %struct.hda_gen_spec* %166, i32 0, i32 14
  %168 = load i64, i64* %167, align 8
  %169 = load %struct.hda_pcm*, %struct.hda_pcm** %5, align 8
  %170 = getelementptr inbounds %struct.hda_pcm, %struct.hda_pcm* %169, i32 0, i32 1
  store i64 %168, i64* %170, align 8
  br label %175

171:                                              ; preds = %149
  %172 = load i64, i64* @HDA_PCM_TYPE_SPDIF, align 8
  %173 = load %struct.hda_pcm*, %struct.hda_pcm** %5, align 8
  %174 = getelementptr inbounds %struct.hda_pcm, %struct.hda_pcm* %173, i32 0, i32 1
  store i64 %172, i64* %174, align 8
  br label %175

175:                                              ; preds = %171, %165
  %176 = load %struct.hda_gen_spec*, %struct.hda_gen_spec** %4, align 8
  %177 = getelementptr inbounds %struct.hda_gen_spec, %struct.hda_gen_spec* %176, i32 0, i32 12
  %178 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %177, i32 0, i32 1
  %179 = load i64, i64* %178, align 8
  %180 = icmp ne i64 %179, 0
  br i1 %180, label %181, label %195

181:                                              ; preds = %175
  %182 = load %struct.hda_pcm*, %struct.hda_pcm** %5, align 8
  %183 = getelementptr inbounds %struct.hda_pcm, %struct.hda_pcm* %182, i32 0, i32 0
  %184 = load %struct.TYPE_8__*, %struct.TYPE_8__** %183, align 8
  %185 = load i64, i64* @SNDRV_PCM_STREAM_PLAYBACK, align 8
  %186 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %184, i64 %185
  %187 = load %struct.hda_gen_spec*, %struct.hda_gen_spec** %4, align 8
  %188 = getelementptr inbounds %struct.hda_gen_spec, %struct.hda_gen_spec* %187, i32 0, i32 13
  %189 = load i32*, i32** %188, align 8
  %190 = load %struct.hda_gen_spec*, %struct.hda_gen_spec** %4, align 8
  %191 = getelementptr inbounds %struct.hda_gen_spec, %struct.hda_gen_spec* %190, i32 0, i32 12
  %192 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %191, i32 0, i32 1
  %193 = load i64, i64* %192, align 8
  %194 = call i32 @setup_pcm_stream(%struct.TYPE_8__* %186, i32* @pcm_digital_playback, i32* %189, i64 %193)
  br label %195

195:                                              ; preds = %181, %175
  %196 = load %struct.hda_gen_spec*, %struct.hda_gen_spec** %4, align 8
  %197 = getelementptr inbounds %struct.hda_gen_spec, %struct.hda_gen_spec* %196, i32 0, i32 10
  %198 = load i64, i64* %197, align 8
  %199 = icmp ne i64 %198, 0
  br i1 %199, label %200, label %213

200:                                              ; preds = %195
  %201 = load %struct.hda_pcm*, %struct.hda_pcm** %5, align 8
  %202 = getelementptr inbounds %struct.hda_pcm, %struct.hda_pcm* %201, i32 0, i32 0
  %203 = load %struct.TYPE_8__*, %struct.TYPE_8__** %202, align 8
  %204 = load i64, i64* @SNDRV_PCM_STREAM_CAPTURE, align 8
  %205 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %203, i64 %204
  %206 = load %struct.hda_gen_spec*, %struct.hda_gen_spec** %4, align 8
  %207 = getelementptr inbounds %struct.hda_gen_spec, %struct.hda_gen_spec* %206, i32 0, i32 11
  %208 = load i32*, i32** %207, align 8
  %209 = load %struct.hda_gen_spec*, %struct.hda_gen_spec** %4, align 8
  %210 = getelementptr inbounds %struct.hda_gen_spec, %struct.hda_gen_spec* %209, i32 0, i32 10
  %211 = load i64, i64* %210, align 8
  %212 = call i32 @setup_pcm_stream(%struct.TYPE_8__* %205, i32* @pcm_digital_capture, i32* %208, i64 %211)
  br label %213

213:                                              ; preds = %200, %195
  br label %214

214:                                              ; preds = %213, %125
  %215 = load %struct.hda_gen_spec*, %struct.hda_gen_spec** %4, align 8
  %216 = getelementptr inbounds %struct.hda_gen_spec, %struct.hda_gen_spec* %215, i32 0, i32 9
  %217 = load i64, i64* %216, align 8
  %218 = icmp ne i64 %217, 0
  br i1 %218, label %219, label %220

219:                                              ; preds = %214
  store i32 0, i32* %2, align 4
  br label %332

220:                                              ; preds = %214
  %221 = load %struct.hda_gen_spec*, %struct.hda_gen_spec** %4, align 8
  %222 = getelementptr inbounds %struct.hda_gen_spec, %struct.hda_gen_spec* %221, i32 0, i32 0
  %223 = load i32, i32* %222, align 8
  %224 = icmp sgt i32 %223, 1
  br i1 %224, label %225, label %236

225:                                              ; preds = %220
  %226 = load %struct.hda_gen_spec*, %struct.hda_gen_spec** %4, align 8
  %227 = getelementptr inbounds %struct.hda_gen_spec, %struct.hda_gen_spec* %226, i32 0, i32 8
  %228 = load i64, i64* %227, align 8
  %229 = icmp ne i64 %228, 0
  br i1 %229, label %236, label %230

230:                                              ; preds = %225
  %231 = load %struct.hda_gen_spec*, %struct.hda_gen_spec** %4, align 8
  %232 = getelementptr inbounds %struct.hda_gen_spec, %struct.hda_gen_spec* %231, i32 0, i32 7
  %233 = load i32, i32* %232, align 4
  %234 = icmp ne i32 %233, 0
  %235 = xor i1 %234, true
  br label %236

236:                                              ; preds = %230, %225, %220
  %237 = phi i1 [ false, %225 ], [ false, %220 ], [ %235, %230 ]
  %238 = zext i1 %237 to i32
  store i32 %238, i32* %6, align 4
  %239 = load %struct.hda_gen_spec*, %struct.hda_gen_spec** %4, align 8
  %240 = getelementptr inbounds %struct.hda_gen_spec, %struct.hda_gen_spec* %239, i32 0, i32 3
  %241 = load i64, i64* %240, align 8
  %242 = icmp ne i64 %241, 0
  br i1 %242, label %246, label %243

243:                                              ; preds = %236
  %244 = load i32, i32* %6, align 4
  %245 = icmp ne i32 %244, 0
  br i1 %245, label %246, label %331

246:                                              ; preds = %243, %236
  %247 = load %struct.hda_gen_spec*, %struct.hda_gen_spec** %4, align 8
  %248 = getelementptr inbounds %struct.hda_gen_spec, %struct.hda_gen_spec* %247, i32 0, i32 6
  %249 = load i32, i32* %248, align 8
  %250 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %251 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %250, i32 0, i32 0
  %252 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %251, i32 0, i32 0
  %253 = load i32, i32* %252, align 8
  %254 = call i32 @fill_pcm_stream_name(i32 %249, i32 4, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0), i32 %253)
  %255 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %256 = load %struct.hda_gen_spec*, %struct.hda_gen_spec** %4, align 8
  %257 = getelementptr inbounds %struct.hda_gen_spec, %struct.hda_gen_spec* %256, i32 0, i32 6
  %258 = load i32, i32* %257, align 8
  %259 = call %struct.hda_pcm* @snd_hda_codec_pcm_new(%struct.hda_codec* %255, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32 %258)
  store %struct.hda_pcm* %259, %struct.hda_pcm** %5, align 8
  %260 = load %struct.hda_pcm*, %struct.hda_pcm** %5, align 8
  %261 = icmp ne %struct.hda_pcm* %260, null
  br i1 %261, label %265, label %262

262:                                              ; preds = %246
  %263 = load i32, i32* @ENOMEM, align 4
  %264 = sub nsw i32 0, %263
  store i32 %264, i32* %2, align 4
  br label %332

265:                                              ; preds = %246
  %266 = load %struct.hda_pcm*, %struct.hda_pcm** %5, align 8
  %267 = load %struct.hda_gen_spec*, %struct.hda_gen_spec** %4, align 8
  %268 = getelementptr inbounds %struct.hda_gen_spec, %struct.hda_gen_spec* %267, i32 0, i32 5
  %269 = load %struct.hda_pcm**, %struct.hda_pcm*** %268, align 8
  %270 = getelementptr inbounds %struct.hda_pcm*, %struct.hda_pcm** %269, i64 2
  store %struct.hda_pcm* %266, %struct.hda_pcm** %270, align 8
  %271 = load %struct.hda_gen_spec*, %struct.hda_gen_spec** %4, align 8
  %272 = getelementptr inbounds %struct.hda_gen_spec, %struct.hda_gen_spec* %271, i32 0, i32 3
  %273 = load i64, i64* %272, align 8
  %274 = icmp ne i64 %273, 0
  br i1 %274, label %275, label %288

275:                                              ; preds = %265
  %276 = load %struct.hda_pcm*, %struct.hda_pcm** %5, align 8
  %277 = getelementptr inbounds %struct.hda_pcm, %struct.hda_pcm* %276, i32 0, i32 0
  %278 = load %struct.TYPE_8__*, %struct.TYPE_8__** %277, align 8
  %279 = load i64, i64* @SNDRV_PCM_STREAM_PLAYBACK, align 8
  %280 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %278, i64 %279
  %281 = load %struct.hda_gen_spec*, %struct.hda_gen_spec** %4, align 8
  %282 = getelementptr inbounds %struct.hda_gen_spec, %struct.hda_gen_spec* %281, i32 0, i32 4
  %283 = load i32*, i32** %282, align 8
  %284 = load %struct.hda_gen_spec*, %struct.hda_gen_spec** %4, align 8
  %285 = getelementptr inbounds %struct.hda_gen_spec, %struct.hda_gen_spec* %284, i32 0, i32 3
  %286 = load i64, i64* %285, align 8
  %287 = call i32 @setup_pcm_stream(%struct.TYPE_8__* %280, i32* @pcm_analog_alt_playback, i32* %283, i64 %286)
  br label %295

288:                                              ; preds = %265
  %289 = load %struct.hda_pcm*, %struct.hda_pcm** %5, align 8
  %290 = getelementptr inbounds %struct.hda_pcm, %struct.hda_pcm* %289, i32 0, i32 0
  %291 = load %struct.TYPE_8__*, %struct.TYPE_8__** %290, align 8
  %292 = load i64, i64* @SNDRV_PCM_STREAM_PLAYBACK, align 8
  %293 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %291, i64 %292
  %294 = call i32 @setup_pcm_stream(%struct.TYPE_8__* %293, i32* @pcm_null_stream, i32* null, i64 0)
  br label %295

295:                                              ; preds = %288, %275
  %296 = load i32, i32* %6, align 4
  %297 = icmp ne i32 %296, 0
  br i1 %297, label %298, label %323

298:                                              ; preds = %295
  %299 = load %struct.hda_pcm*, %struct.hda_pcm** %5, align 8
  %300 = getelementptr inbounds %struct.hda_pcm, %struct.hda_pcm* %299, i32 0, i32 0
  %301 = load %struct.TYPE_8__*, %struct.TYPE_8__** %300, align 8
  %302 = load i64, i64* @SNDRV_PCM_STREAM_CAPTURE, align 8
  %303 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %301, i64 %302
  %304 = load %struct.hda_gen_spec*, %struct.hda_gen_spec** %4, align 8
  %305 = getelementptr inbounds %struct.hda_gen_spec, %struct.hda_gen_spec* %304, i32 0, i32 2
  %306 = load i32*, i32** %305, align 8
  %307 = load %struct.hda_gen_spec*, %struct.hda_gen_spec** %4, align 8
  %308 = getelementptr inbounds %struct.hda_gen_spec, %struct.hda_gen_spec* %307, i32 0, i32 1
  %309 = load i64*, i64** %308, align 8
  %310 = getelementptr inbounds i64, i64* %309, i64 1
  %311 = load i64, i64* %310, align 8
  %312 = call i32 @setup_pcm_stream(%struct.TYPE_8__* %303, i32* @pcm_analog_alt_capture, i32* %306, i64 %311)
  %313 = load %struct.hda_gen_spec*, %struct.hda_gen_spec** %4, align 8
  %314 = getelementptr inbounds %struct.hda_gen_spec, %struct.hda_gen_spec* %313, i32 0, i32 0
  %315 = load i32, i32* %314, align 8
  %316 = sub nsw i32 %315, 1
  %317 = load %struct.hda_pcm*, %struct.hda_pcm** %5, align 8
  %318 = getelementptr inbounds %struct.hda_pcm, %struct.hda_pcm* %317, i32 0, i32 0
  %319 = load %struct.TYPE_8__*, %struct.TYPE_8__** %318, align 8
  %320 = load i64, i64* @SNDRV_PCM_STREAM_CAPTURE, align 8
  %321 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %319, i64 %320
  %322 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %321, i32 0, i32 0
  store i32 %316, i32* %322, align 4
  br label %330

323:                                              ; preds = %295
  %324 = load %struct.hda_pcm*, %struct.hda_pcm** %5, align 8
  %325 = getelementptr inbounds %struct.hda_pcm, %struct.hda_pcm* %324, i32 0, i32 0
  %326 = load %struct.TYPE_8__*, %struct.TYPE_8__** %325, align 8
  %327 = load i64, i64* @SNDRV_PCM_STREAM_CAPTURE, align 8
  %328 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %326, i64 %327
  %329 = call i32 @setup_pcm_stream(%struct.TYPE_8__* %328, i32* @pcm_null_stream, i32* null, i64 0)
  br label %330

330:                                              ; preds = %323, %298
  br label %331

331:                                              ; preds = %330, %243
  store i32 0, i32* %2, align 4
  br label %332

332:                                              ; preds = %331, %262, %219, %146, %31
  %333 = load i32, i32* %2, align 4
  ret i32 %333
}

declare dso_local i32 @fill_pcm_stream_name(i32, i32, i8*, i32) #1

declare dso_local %struct.hda_pcm* @snd_hda_codec_pcm_new(%struct.hda_codec*, i8*, i32) #1

declare dso_local i32 @setup_pcm_stream(%struct.TYPE_8__*, i32*, i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
