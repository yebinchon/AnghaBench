; ModuleID = '/home/carl/AnghaBench/linux/sound/drivers/opl3/extr_opl3_synth.c_snd_opl3_set_voice.c'
source_filename = "/home/carl/AnghaBench/linux/sound/drivers/opl3/extr_opl3_synth.c_snd_opl3_set_voice.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_opl3 = type { i64, i32 (%struct.snd_opl3*, i16, i8)* }
%struct.snd_dm_fm_voice = type { i32, i32, i8, i32, i8, i32, i8, i32, i8, i32, i8, i64, i64, i64, i64, i64, i64, i64 }

@EINVAL = common dso_local global i32 0, align 4
@SNDRV_DM_FM_MODE_OPL3 = common dso_local global i64 0, align 8
@MAX_OPL3_VOICES = common dso_local global i32 0, align 4
@MAX_OPL2_VOICES = common dso_local global i32 0, align 4
@OPL3_LEFT = common dso_local global i16 0, align 2
@OPL3_RIGHT = common dso_local global i16 0, align 2
@snd_opl3_regmap = common dso_local global i8** null, align 8
@OPL3_TREMOLO_ON = common dso_local global i8 0, align 1
@OPL3_VIBRATO_ON = common dso_local global i8 0, align 1
@OPL3_SUSTAIN_ON = common dso_local global i8 0, align 1
@OPL3_KSR = common dso_local global i8 0, align 1
@OPL3_MULTIPLE_MASK = common dso_local global i8 0, align 1
@OPL3_REG_AM_VIB = common dso_local global i8 0, align 1
@OPL3_KSL_MASK = common dso_local global i32 0, align 4
@OPL3_TOTAL_LEVEL_MASK = common dso_local global i8 0, align 1
@OPL3_REG_KSL_LEVEL = common dso_local global i8 0, align 1
@OPL3_ATTACK_MASK = common dso_local global i32 0, align 4
@OPL3_DECAY_MASK = common dso_local global i8 0, align 1
@OPL3_REG_ATTACK_DECAY = common dso_local global i8 0, align 1
@OPL3_SUSTAIN_MASK = common dso_local global i32 0, align 4
@OPL3_RELEASE_MASK = common dso_local global i8 0, align 1
@OPL3_REG_SUSTAIN_RELEASE = common dso_local global i8 0, align 1
@OPL3_FEEDBACK_MASK = common dso_local global i32 0, align 4
@OPL3_CONNECTION_BIT = common dso_local global i8 0, align 1
@OPL3_VOICE_TO_LEFT = common dso_local global i8 0, align 1
@OPL3_VOICE_TO_RIGHT = common dso_local global i8 0, align 1
@OPL3_REG_FEEDBACK_CONNECTION = common dso_local global i8 0, align 1
@OPL3_WAVE_SELECT_MASK = common dso_local global i8 0, align 1
@OPL3_REG_WAVE_SELECT = common dso_local global i8 0, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_opl3*, %struct.snd_dm_fm_voice*)* @snd_opl3_set_voice to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_opl3_set_voice(%struct.snd_opl3* %0, %struct.snd_dm_fm_voice* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.snd_opl3*, align 8
  %5 = alloca %struct.snd_dm_fm_voice*, align 8
  %6 = alloca i16, align 2
  %7 = alloca i8, align 1
  %8 = alloca i8, align 1
  %9 = alloca i8, align 1
  %10 = alloca i16, align 2
  %11 = alloca i8, align 1
  store %struct.snd_opl3* %0, %struct.snd_opl3** %4, align 8
  store %struct.snd_dm_fm_voice* %1, %struct.snd_dm_fm_voice** %5, align 8
  %12 = load %struct.snd_dm_fm_voice*, %struct.snd_dm_fm_voice** %5, align 8
  %13 = getelementptr inbounds %struct.snd_dm_fm_voice, %struct.snd_dm_fm_voice* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = icmp sgt i32 %14, 1
  br i1 %15, label %16, label %19

16:                                               ; preds = %2
  %17 = load i32, i32* @EINVAL, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %3, align 4
  br label %344

19:                                               ; preds = %2
  %20 = load %struct.snd_dm_fm_voice*, %struct.snd_dm_fm_voice** %5, align 8
  %21 = getelementptr inbounds %struct.snd_dm_fm_voice, %struct.snd_dm_fm_voice* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.snd_opl3*, %struct.snd_opl3** %4, align 8
  %24 = getelementptr inbounds %struct.snd_opl3, %struct.snd_opl3* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @SNDRV_DM_FM_MODE_OPL3, align 8
  %27 = icmp eq i64 %25, %26
  br i1 %27, label %28, label %30

28:                                               ; preds = %19
  %29 = load i32, i32* @MAX_OPL3_VOICES, align 4
  br label %32

30:                                               ; preds = %19
  %31 = load i32, i32* @MAX_OPL2_VOICES, align 4
  br label %32

32:                                               ; preds = %30, %28
  %33 = phi i32 [ %29, %28 ], [ %31, %30 ]
  %34 = icmp sge i32 %22, %33
  br i1 %34, label %35, label %38

35:                                               ; preds = %32
  %36 = load i32, i32* @EINVAL, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %3, align 4
  br label %344

38:                                               ; preds = %32
  %39 = load %struct.snd_dm_fm_voice*, %struct.snd_dm_fm_voice** %5, align 8
  %40 = getelementptr inbounds %struct.snd_dm_fm_voice, %struct.snd_dm_fm_voice* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* @MAX_OPL2_VOICES, align 4
  %43 = icmp slt i32 %41, %42
  br i1 %43, label %44, label %50

44:                                               ; preds = %38
  %45 = load i16, i16* @OPL3_LEFT, align 2
  store i16 %45, i16* %6, align 2
  %46 = load %struct.snd_dm_fm_voice*, %struct.snd_dm_fm_voice** %5, align 8
  %47 = getelementptr inbounds %struct.snd_dm_fm_voice, %struct.snd_dm_fm_voice* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = trunc i32 %48 to i8
  store i8 %49, i8* %8, align 1
  br label %58

50:                                               ; preds = %38
  %51 = load i16, i16* @OPL3_RIGHT, align 2
  store i16 %51, i16* %6, align 2
  %52 = load %struct.snd_dm_fm_voice*, %struct.snd_dm_fm_voice** %5, align 8
  %53 = getelementptr inbounds %struct.snd_dm_fm_voice, %struct.snd_dm_fm_voice* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = load i32, i32* @MAX_OPL2_VOICES, align 4
  %56 = sub nsw i32 %54, %55
  %57 = trunc i32 %56 to i8
  store i8 %57, i8* %8, align 1
  br label %58

58:                                               ; preds = %50, %44
  %59 = load i8, i8* %8, align 1
  %60 = load i32, i32* @MAX_OPL2_VOICES, align 4
  %61 = call zeroext i8 @array_index_nospec(i8 zeroext %59, i32 %60)
  store i8 %61, i8* %8, align 1
  %62 = load %struct.snd_dm_fm_voice*, %struct.snd_dm_fm_voice** %5, align 8
  %63 = getelementptr inbounds %struct.snd_dm_fm_voice, %struct.snd_dm_fm_voice* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = trunc i32 %64 to i8
  %66 = call zeroext i8 @array_index_nospec(i8 zeroext %65, i32 4)
  store i8 %66, i8* %9, align 1
  %67 = load i8**, i8*** @snd_opl3_regmap, align 8
  %68 = load i8, i8* %8, align 1
  %69 = zext i8 %68 to i64
  %70 = getelementptr inbounds i8*, i8** %67, i64 %69
  %71 = load i8*, i8** %70, align 8
  %72 = load i8, i8* %9, align 1
  %73 = zext i8 %72 to i64
  %74 = getelementptr inbounds i8, i8* %71, i64 %73
  %75 = load i8, i8* %74, align 1
  store i8 %75, i8* %7, align 1
  store i8 0, i8* %11, align 1
  %76 = load %struct.snd_dm_fm_voice*, %struct.snd_dm_fm_voice** %5, align 8
  %77 = getelementptr inbounds %struct.snd_dm_fm_voice, %struct.snd_dm_fm_voice* %76, i32 0, i32 17
  %78 = load i64, i64* %77, align 8
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %87

80:                                               ; preds = %58
  %81 = load i8, i8* @OPL3_TREMOLO_ON, align 1
  %82 = zext i8 %81 to i32
  %83 = load i8, i8* %11, align 1
  %84 = zext i8 %83 to i32
  %85 = or i32 %84, %82
  %86 = trunc i32 %85 to i8
  store i8 %86, i8* %11, align 1
  br label %87

87:                                               ; preds = %80, %58
  %88 = load %struct.snd_dm_fm_voice*, %struct.snd_dm_fm_voice** %5, align 8
  %89 = getelementptr inbounds %struct.snd_dm_fm_voice, %struct.snd_dm_fm_voice* %88, i32 0, i32 16
  %90 = load i64, i64* %89, align 8
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %92, label %99

92:                                               ; preds = %87
  %93 = load i8, i8* @OPL3_VIBRATO_ON, align 1
  %94 = zext i8 %93 to i32
  %95 = load i8, i8* %11, align 1
  %96 = zext i8 %95 to i32
  %97 = or i32 %96, %94
  %98 = trunc i32 %97 to i8
  store i8 %98, i8* %11, align 1
  br label %99

99:                                               ; preds = %92, %87
  %100 = load %struct.snd_dm_fm_voice*, %struct.snd_dm_fm_voice** %5, align 8
  %101 = getelementptr inbounds %struct.snd_dm_fm_voice, %struct.snd_dm_fm_voice* %100, i32 0, i32 15
  %102 = load i64, i64* %101, align 8
  %103 = icmp ne i64 %102, 0
  br i1 %103, label %104, label %111

104:                                              ; preds = %99
  %105 = load i8, i8* @OPL3_SUSTAIN_ON, align 1
  %106 = zext i8 %105 to i32
  %107 = load i8, i8* %11, align 1
  %108 = zext i8 %107 to i32
  %109 = or i32 %108, %106
  %110 = trunc i32 %109 to i8
  store i8 %110, i8* %11, align 1
  br label %111

111:                                              ; preds = %104, %99
  %112 = load %struct.snd_dm_fm_voice*, %struct.snd_dm_fm_voice** %5, align 8
  %113 = getelementptr inbounds %struct.snd_dm_fm_voice, %struct.snd_dm_fm_voice* %112, i32 0, i32 14
  %114 = load i64, i64* %113, align 8
  %115 = icmp ne i64 %114, 0
  br i1 %115, label %116, label %123

116:                                              ; preds = %111
  %117 = load i8, i8* @OPL3_KSR, align 1
  %118 = zext i8 %117 to i32
  %119 = load i8, i8* %11, align 1
  %120 = zext i8 %119 to i32
  %121 = or i32 %120, %118
  %122 = trunc i32 %121 to i8
  store i8 %122, i8* %11, align 1
  br label %123

123:                                              ; preds = %116, %111
  %124 = load %struct.snd_dm_fm_voice*, %struct.snd_dm_fm_voice** %5, align 8
  %125 = getelementptr inbounds %struct.snd_dm_fm_voice, %struct.snd_dm_fm_voice* %124, i32 0, i32 2
  %126 = load i8, i8* %125, align 8
  %127 = zext i8 %126 to i32
  %128 = load i8, i8* @OPL3_MULTIPLE_MASK, align 1
  %129 = zext i8 %128 to i32
  %130 = and i32 %127, %129
  %131 = load i8, i8* %11, align 1
  %132 = zext i8 %131 to i32
  %133 = or i32 %132, %130
  %134 = trunc i32 %133 to i8
  store i8 %134, i8* %11, align 1
  %135 = load i16, i16* %6, align 2
  %136 = zext i16 %135 to i32
  %137 = load i8, i8* @OPL3_REG_AM_VIB, align 1
  %138 = zext i8 %137 to i32
  %139 = load i8, i8* %7, align 1
  %140 = zext i8 %139 to i32
  %141 = add nsw i32 %138, %140
  %142 = or i32 %136, %141
  %143 = trunc i32 %142 to i16
  store i16 %143, i16* %10, align 2
  %144 = load %struct.snd_opl3*, %struct.snd_opl3** %4, align 8
  %145 = getelementptr inbounds %struct.snd_opl3, %struct.snd_opl3* %144, i32 0, i32 1
  %146 = load i32 (%struct.snd_opl3*, i16, i8)*, i32 (%struct.snd_opl3*, i16, i8)** %145, align 8
  %147 = load %struct.snd_opl3*, %struct.snd_opl3** %4, align 8
  %148 = load i16, i16* %10, align 2
  %149 = load i8, i8* %11, align 1
  %150 = call i32 %146(%struct.snd_opl3* %147, i16 zeroext %148, i8 zeroext %149)
  %151 = load %struct.snd_dm_fm_voice*, %struct.snd_dm_fm_voice** %5, align 8
  %152 = getelementptr inbounds %struct.snd_dm_fm_voice, %struct.snd_dm_fm_voice* %151, i32 0, i32 3
  %153 = load i32, i32* %152, align 4
  %154 = shl i32 %153, 6
  %155 = load i32, i32* @OPL3_KSL_MASK, align 4
  %156 = and i32 %154, %155
  %157 = trunc i32 %156 to i8
  store i8 %157, i8* %11, align 1
  %158 = load %struct.snd_dm_fm_voice*, %struct.snd_dm_fm_voice** %5, align 8
  %159 = getelementptr inbounds %struct.snd_dm_fm_voice, %struct.snd_dm_fm_voice* %158, i32 0, i32 4
  %160 = load i8, i8* %159, align 8
  %161 = zext i8 %160 to i32
  %162 = xor i32 %161, -1
  %163 = load i8, i8* @OPL3_TOTAL_LEVEL_MASK, align 1
  %164 = zext i8 %163 to i32
  %165 = and i32 %162, %164
  %166 = load i8, i8* %11, align 1
  %167 = zext i8 %166 to i32
  %168 = or i32 %167, %165
  %169 = trunc i32 %168 to i8
  store i8 %169, i8* %11, align 1
  %170 = load i16, i16* %6, align 2
  %171 = zext i16 %170 to i32
  %172 = load i8, i8* @OPL3_REG_KSL_LEVEL, align 1
  %173 = zext i8 %172 to i32
  %174 = load i8, i8* %7, align 1
  %175 = zext i8 %174 to i32
  %176 = add nsw i32 %173, %175
  %177 = or i32 %171, %176
  %178 = trunc i32 %177 to i16
  store i16 %178, i16* %10, align 2
  %179 = load %struct.snd_opl3*, %struct.snd_opl3** %4, align 8
  %180 = getelementptr inbounds %struct.snd_opl3, %struct.snd_opl3* %179, i32 0, i32 1
  %181 = load i32 (%struct.snd_opl3*, i16, i8)*, i32 (%struct.snd_opl3*, i16, i8)** %180, align 8
  %182 = load %struct.snd_opl3*, %struct.snd_opl3** %4, align 8
  %183 = load i16, i16* %10, align 2
  %184 = load i8, i8* %11, align 1
  %185 = call i32 %181(%struct.snd_opl3* %182, i16 zeroext %183, i8 zeroext %184)
  %186 = load %struct.snd_dm_fm_voice*, %struct.snd_dm_fm_voice** %5, align 8
  %187 = getelementptr inbounds %struct.snd_dm_fm_voice, %struct.snd_dm_fm_voice* %186, i32 0, i32 5
  %188 = load i32, i32* %187, align 4
  %189 = shl i32 %188, 4
  %190 = load i32, i32* @OPL3_ATTACK_MASK, align 4
  %191 = and i32 %189, %190
  %192 = trunc i32 %191 to i8
  store i8 %192, i8* %11, align 1
  %193 = load %struct.snd_dm_fm_voice*, %struct.snd_dm_fm_voice** %5, align 8
  %194 = getelementptr inbounds %struct.snd_dm_fm_voice, %struct.snd_dm_fm_voice* %193, i32 0, i32 6
  %195 = load i8, i8* %194, align 8
  %196 = zext i8 %195 to i32
  %197 = load i8, i8* @OPL3_DECAY_MASK, align 1
  %198 = zext i8 %197 to i32
  %199 = and i32 %196, %198
  %200 = load i8, i8* %11, align 1
  %201 = zext i8 %200 to i32
  %202 = or i32 %201, %199
  %203 = trunc i32 %202 to i8
  store i8 %203, i8* %11, align 1
  %204 = load i16, i16* %6, align 2
  %205 = zext i16 %204 to i32
  %206 = load i8, i8* @OPL3_REG_ATTACK_DECAY, align 1
  %207 = zext i8 %206 to i32
  %208 = load i8, i8* %7, align 1
  %209 = zext i8 %208 to i32
  %210 = add nsw i32 %207, %209
  %211 = or i32 %205, %210
  %212 = trunc i32 %211 to i16
  store i16 %212, i16* %10, align 2
  %213 = load %struct.snd_opl3*, %struct.snd_opl3** %4, align 8
  %214 = getelementptr inbounds %struct.snd_opl3, %struct.snd_opl3* %213, i32 0, i32 1
  %215 = load i32 (%struct.snd_opl3*, i16, i8)*, i32 (%struct.snd_opl3*, i16, i8)** %214, align 8
  %216 = load %struct.snd_opl3*, %struct.snd_opl3** %4, align 8
  %217 = load i16, i16* %10, align 2
  %218 = load i8, i8* %11, align 1
  %219 = call i32 %215(%struct.snd_opl3* %216, i16 zeroext %217, i8 zeroext %218)
  %220 = load %struct.snd_dm_fm_voice*, %struct.snd_dm_fm_voice** %5, align 8
  %221 = getelementptr inbounds %struct.snd_dm_fm_voice, %struct.snd_dm_fm_voice* %220, i32 0, i32 7
  %222 = load i32, i32* %221, align 4
  %223 = shl i32 %222, 4
  %224 = load i32, i32* @OPL3_SUSTAIN_MASK, align 4
  %225 = and i32 %223, %224
  %226 = trunc i32 %225 to i8
  store i8 %226, i8* %11, align 1
  %227 = load %struct.snd_dm_fm_voice*, %struct.snd_dm_fm_voice** %5, align 8
  %228 = getelementptr inbounds %struct.snd_dm_fm_voice, %struct.snd_dm_fm_voice* %227, i32 0, i32 8
  %229 = load i8, i8* %228, align 8
  %230 = zext i8 %229 to i32
  %231 = load i8, i8* @OPL3_RELEASE_MASK, align 1
  %232 = zext i8 %231 to i32
  %233 = and i32 %230, %232
  %234 = load i8, i8* %11, align 1
  %235 = zext i8 %234 to i32
  %236 = or i32 %235, %233
  %237 = trunc i32 %236 to i8
  store i8 %237, i8* %11, align 1
  %238 = load i16, i16* %6, align 2
  %239 = zext i16 %238 to i32
  %240 = load i8, i8* @OPL3_REG_SUSTAIN_RELEASE, align 1
  %241 = zext i8 %240 to i32
  %242 = load i8, i8* %7, align 1
  %243 = zext i8 %242 to i32
  %244 = add nsw i32 %241, %243
  %245 = or i32 %239, %244
  %246 = trunc i32 %245 to i16
  store i16 %246, i16* %10, align 2
  %247 = load %struct.snd_opl3*, %struct.snd_opl3** %4, align 8
  %248 = getelementptr inbounds %struct.snd_opl3, %struct.snd_opl3* %247, i32 0, i32 1
  %249 = load i32 (%struct.snd_opl3*, i16, i8)*, i32 (%struct.snd_opl3*, i16, i8)** %248, align 8
  %250 = load %struct.snd_opl3*, %struct.snd_opl3** %4, align 8
  %251 = load i16, i16* %10, align 2
  %252 = load i8, i8* %11, align 1
  %253 = call i32 %249(%struct.snd_opl3* %250, i16 zeroext %251, i8 zeroext %252)
  %254 = load %struct.snd_dm_fm_voice*, %struct.snd_dm_fm_voice** %5, align 8
  %255 = getelementptr inbounds %struct.snd_dm_fm_voice, %struct.snd_dm_fm_voice* %254, i32 0, i32 9
  %256 = load i32, i32* %255, align 4
  %257 = shl i32 %256, 1
  %258 = load i32, i32* @OPL3_FEEDBACK_MASK, align 4
  %259 = and i32 %257, %258
  %260 = trunc i32 %259 to i8
  store i8 %260, i8* %11, align 1
  %261 = load %struct.snd_dm_fm_voice*, %struct.snd_dm_fm_voice** %5, align 8
  %262 = getelementptr inbounds %struct.snd_dm_fm_voice, %struct.snd_dm_fm_voice* %261, i32 0, i32 13
  %263 = load i64, i64* %262, align 8
  %264 = icmp ne i64 %263, 0
  br i1 %264, label %265, label %272

265:                                              ; preds = %123
  %266 = load i8, i8* @OPL3_CONNECTION_BIT, align 1
  %267 = zext i8 %266 to i32
  %268 = load i8, i8* %11, align 1
  %269 = zext i8 %268 to i32
  %270 = or i32 %269, %267
  %271 = trunc i32 %270 to i8
  store i8 %271, i8* %11, align 1
  br label %272

272:                                              ; preds = %265, %123
  %273 = load %struct.snd_opl3*, %struct.snd_opl3** %4, align 8
  %274 = getelementptr inbounds %struct.snd_opl3, %struct.snd_opl3* %273, i32 0, i32 0
  %275 = load i64, i64* %274, align 8
  %276 = load i64, i64* @SNDRV_DM_FM_MODE_OPL3, align 8
  %277 = icmp eq i64 %275, %276
  br i1 %277, label %278, label %303

278:                                              ; preds = %272
  %279 = load %struct.snd_dm_fm_voice*, %struct.snd_dm_fm_voice** %5, align 8
  %280 = getelementptr inbounds %struct.snd_dm_fm_voice, %struct.snd_dm_fm_voice* %279, i32 0, i32 12
  %281 = load i64, i64* %280, align 8
  %282 = icmp ne i64 %281, 0
  br i1 %282, label %283, label %290

283:                                              ; preds = %278
  %284 = load i8, i8* @OPL3_VOICE_TO_LEFT, align 1
  %285 = zext i8 %284 to i32
  %286 = load i8, i8* %11, align 1
  %287 = zext i8 %286 to i32
  %288 = or i32 %287, %285
  %289 = trunc i32 %288 to i8
  store i8 %289, i8* %11, align 1
  br label %290

290:                                              ; preds = %283, %278
  %291 = load %struct.snd_dm_fm_voice*, %struct.snd_dm_fm_voice** %5, align 8
  %292 = getelementptr inbounds %struct.snd_dm_fm_voice, %struct.snd_dm_fm_voice* %291, i32 0, i32 11
  %293 = load i64, i64* %292, align 8
  %294 = icmp ne i64 %293, 0
  br i1 %294, label %295, label %302

295:                                              ; preds = %290
  %296 = load i8, i8* @OPL3_VOICE_TO_RIGHT, align 1
  %297 = zext i8 %296 to i32
  %298 = load i8, i8* %11, align 1
  %299 = zext i8 %298 to i32
  %300 = or i32 %299, %297
  %301 = trunc i32 %300 to i8
  store i8 %301, i8* %11, align 1
  br label %302

302:                                              ; preds = %295, %290
  br label %303

303:                                              ; preds = %302, %272
  %304 = load i16, i16* %6, align 2
  %305 = zext i16 %304 to i32
  %306 = load i8, i8* @OPL3_REG_FEEDBACK_CONNECTION, align 1
  %307 = zext i8 %306 to i32
  %308 = load i8, i8* %8, align 1
  %309 = zext i8 %308 to i32
  %310 = add nsw i32 %307, %309
  %311 = or i32 %305, %310
  %312 = trunc i32 %311 to i16
  store i16 %312, i16* %10, align 2
  %313 = load %struct.snd_opl3*, %struct.snd_opl3** %4, align 8
  %314 = getelementptr inbounds %struct.snd_opl3, %struct.snd_opl3* %313, i32 0, i32 1
  %315 = load i32 (%struct.snd_opl3*, i16, i8)*, i32 (%struct.snd_opl3*, i16, i8)** %314, align 8
  %316 = load %struct.snd_opl3*, %struct.snd_opl3** %4, align 8
  %317 = load i16, i16* %10, align 2
  %318 = load i8, i8* %11, align 1
  %319 = call i32 %315(%struct.snd_opl3* %316, i16 zeroext %317, i8 zeroext %318)
  %320 = load %struct.snd_dm_fm_voice*, %struct.snd_dm_fm_voice** %5, align 8
  %321 = getelementptr inbounds %struct.snd_dm_fm_voice, %struct.snd_dm_fm_voice* %320, i32 0, i32 10
  %322 = load i8, i8* %321, align 8
  %323 = zext i8 %322 to i32
  %324 = load i8, i8* @OPL3_WAVE_SELECT_MASK, align 1
  %325 = zext i8 %324 to i32
  %326 = and i32 %323, %325
  %327 = trunc i32 %326 to i8
  store i8 %327, i8* %11, align 1
  %328 = load i16, i16* %6, align 2
  %329 = zext i16 %328 to i32
  %330 = load i8, i8* @OPL3_REG_WAVE_SELECT, align 1
  %331 = zext i8 %330 to i32
  %332 = load i8, i8* %7, align 1
  %333 = zext i8 %332 to i32
  %334 = add nsw i32 %331, %333
  %335 = or i32 %329, %334
  %336 = trunc i32 %335 to i16
  store i16 %336, i16* %10, align 2
  %337 = load %struct.snd_opl3*, %struct.snd_opl3** %4, align 8
  %338 = getelementptr inbounds %struct.snd_opl3, %struct.snd_opl3* %337, i32 0, i32 1
  %339 = load i32 (%struct.snd_opl3*, i16, i8)*, i32 (%struct.snd_opl3*, i16, i8)** %338, align 8
  %340 = load %struct.snd_opl3*, %struct.snd_opl3** %4, align 8
  %341 = load i16, i16* %10, align 2
  %342 = load i8, i8* %11, align 1
  %343 = call i32 %339(%struct.snd_opl3* %340, i16 zeroext %341, i8 zeroext %342)
  store i32 0, i32* %3, align 4
  br label %344

344:                                              ; preds = %303, %35, %16
  %345 = load i32, i32* %3, align 4
  ret i32 %345
}

declare dso_local zeroext i8 @array_index_nospec(i8 zeroext, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
