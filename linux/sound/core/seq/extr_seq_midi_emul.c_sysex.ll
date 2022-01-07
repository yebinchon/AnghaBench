; ModuleID = '/home/carl/AnghaBench/linux/sound/core/seq/extr_seq_midi_emul.c_sysex.c'
source_filename = "/home/carl/AnghaBench/linux/sound/core/seq/extr_seq_midi_emul.c_sysex.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_midi_op = type { i32 (i8*, i8*, i32, i32, %struct.snd_midi_channel_set*)* }
%struct.snd_midi_channel_set = type opaque
%struct.snd_midi_channel_set.0 = type { i64, i32, i8, i8, i8, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i8, i32* }

@sysex.gm_on_macro = internal global [4 x i8] c"~\7F\09\01", align 1
@sysex.xg_on_macro = internal global [7 x i8] c"C\10L\00\00~\00", align 1
@sysex.gs_pfx_macro = internal global [5 x i8] c"A\10B\12@", align 1
@SNDRV_MIDI_SYSEX_NOT_PARSED = common dso_local global i32 0, align 4
@SNDRV_MIDI_MODE_GS = common dso_local global i64 0, align 8
@SNDRV_MIDI_MODE_XG = common dso_local global i64 0, align 8
@SNDRV_MIDI_MODE_GM = common dso_local global i64 0, align 8
@SNDRV_MIDI_SYSEX_GM_ON = common dso_local global i32 0, align 4
@SNDRV_MIDI_SYSEX_GS_RESET = common dso_local global i32 0, align 4
@SNDRV_MIDI_SYSEX_GS_DRUM_CHANNEL = common dso_local global i32 0, align 4
@SNDRV_MIDI_SYSEX_GS_REVERB_MODE = common dso_local global i32 0, align 4
@SNDRV_MIDI_SYSEX_GS_CHORUS_MODE = common dso_local global i32 0, align 4
@SNDRV_MIDI_SYSEX_GS_MASTER_VOLUME = common dso_local global i32 0, align 4
@SNDRV_MIDI_SYSEX_XG_ON = common dso_local global i32 0, align 4
@MIDI_CTL_MSB_BANK = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.snd_midi_op*, i8*, i8*, i32, %struct.snd_midi_channel_set.0*)* @sysex to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sysex(%struct.snd_midi_op* %0, i8* %1, i8* %2, i32 %3, %struct.snd_midi_channel_set.0* %4) #0 {
  %6 = alloca %struct.snd_midi_op*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.snd_midi_channel_set.0*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.snd_midi_op* %0, %struct.snd_midi_op** %6, align 8
  store i8* %1, i8** %7, align 8
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  store %struct.snd_midi_channel_set.0* %4, %struct.snd_midi_channel_set.0** %10, align 8
  %15 = load i32, i32* @SNDRV_MIDI_SYSEX_NOT_PARSED, align 4
  store i32 %15, i32* %11, align 4
  %16 = load i32, i32* %9, align 4
  %17 = icmp sle i32 %16, 0
  br i1 %17, label %24, label %18

18:                                               ; preds = %5
  %19 = load i8*, i8** %8, align 8
  %20 = getelementptr inbounds i8, i8* %19, i64 0
  %21 = load i8, i8* %20, align 1
  %22 = zext i8 %21 to i32
  %23 = icmp ne i32 %22, 240
  br i1 %23, label %24, label %25

24:                                               ; preds = %18, %5
  br label %332

25:                                               ; preds = %18
  %26 = load i8*, i8** %8, align 8
  %27 = getelementptr inbounds i8, i8* %26, i32 1
  store i8* %27, i8** %8, align 8
  %28 = load i32, i32* %9, align 4
  %29 = add nsw i32 %28, -1
  store i32 %29, i32* %9, align 4
  %30 = load i32, i32* %9, align 4
  %31 = icmp sge i32 %30, 4
  br i1 %31, label %32, label %56

32:                                               ; preds = %25
  %33 = load i8*, i8** %8, align 8
  %34 = call i64 @memcmp(i8* %33, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @sysex.gm_on_macro, i64 0, i64 0), i32 4)
  %35 = icmp eq i64 %34, 0
  br i1 %35, label %36, label %56

36:                                               ; preds = %32
  %37 = load %struct.snd_midi_channel_set.0*, %struct.snd_midi_channel_set.0** %10, align 8
  %38 = getelementptr inbounds %struct.snd_midi_channel_set.0, %struct.snd_midi_channel_set.0* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = load i64, i64* @SNDRV_MIDI_MODE_GS, align 8
  %41 = icmp ne i64 %39, %40
  br i1 %41, label %42, label %55

42:                                               ; preds = %36
  %43 = load %struct.snd_midi_channel_set.0*, %struct.snd_midi_channel_set.0** %10, align 8
  %44 = getelementptr inbounds %struct.snd_midi_channel_set.0, %struct.snd_midi_channel_set.0* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = load i64, i64* @SNDRV_MIDI_MODE_XG, align 8
  %47 = icmp ne i64 %45, %46
  br i1 %47, label %48, label %55

48:                                               ; preds = %42
  %49 = load i64, i64* @SNDRV_MIDI_MODE_GM, align 8
  %50 = load %struct.snd_midi_channel_set.0*, %struct.snd_midi_channel_set.0** %10, align 8
  %51 = getelementptr inbounds %struct.snd_midi_channel_set.0, %struct.snd_midi_channel_set.0* %50, i32 0, i32 0
  store i64 %49, i64* %51, align 8
  %52 = load %struct.snd_midi_channel_set.0*, %struct.snd_midi_channel_set.0** %10, align 8
  %53 = call i32 @reset_all_channels(%struct.snd_midi_channel_set.0* %52)
  %54 = load i32, i32* @SNDRV_MIDI_SYSEX_GM_ON, align 4
  store i32 %54, i32* %11, align 4
  br label %55

55:                                               ; preds = %48, %42, %36
  br label %314

56:                                               ; preds = %32, %25
  %57 = load i32, i32* %9, align 4
  %58 = icmp sge i32 %57, 8
  br i1 %58, label %59, label %257

59:                                               ; preds = %56
  %60 = load i8*, i8** %8, align 8
  %61 = call i64 @memcmp(i8* %60, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @sysex.gs_pfx_macro, i64 0, i64 0), i32 5)
  %62 = icmp eq i64 %61, 0
  br i1 %62, label %63, label %257

63:                                               ; preds = %59
  %64 = load %struct.snd_midi_channel_set.0*, %struct.snd_midi_channel_set.0** %10, align 8
  %65 = getelementptr inbounds %struct.snd_midi_channel_set.0, %struct.snd_midi_channel_set.0* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = load i64, i64* @SNDRV_MIDI_MODE_GS, align 8
  %68 = icmp ne i64 %66, %67
  br i1 %68, label %69, label %79

69:                                               ; preds = %63
  %70 = load %struct.snd_midi_channel_set.0*, %struct.snd_midi_channel_set.0** %10, align 8
  %71 = getelementptr inbounds %struct.snd_midi_channel_set.0, %struct.snd_midi_channel_set.0* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = load i64, i64* @SNDRV_MIDI_MODE_XG, align 8
  %74 = icmp ne i64 %72, %73
  br i1 %74, label %75, label %79

75:                                               ; preds = %69
  %76 = load i64, i64* @SNDRV_MIDI_MODE_GS, align 8
  %77 = load %struct.snd_midi_channel_set.0*, %struct.snd_midi_channel_set.0** %10, align 8
  %78 = getelementptr inbounds %struct.snd_midi_channel_set.0, %struct.snd_midi_channel_set.0* %77, i32 0, i32 0
  store i64 %76, i64* %78, align 8
  br label %79

79:                                               ; preds = %75, %69, %63
  %80 = load i8*, i8** %8, align 8
  %81 = getelementptr inbounds i8, i8* %80, i64 5
  %82 = load i8, i8* %81, align 1
  %83 = zext i8 %82 to i32
  %84 = icmp eq i32 %83, 0
  br i1 %84, label %85, label %101

85:                                               ; preds = %79
  %86 = load i8*, i8** %8, align 8
  %87 = getelementptr inbounds i8, i8* %86, i64 6
  %88 = load i8, i8* %87, align 1
  %89 = zext i8 %88 to i32
  %90 = icmp eq i32 %89, 127
  br i1 %90, label %91, label %101

91:                                               ; preds = %85
  %92 = load i8*, i8** %8, align 8
  %93 = getelementptr inbounds i8, i8* %92, i64 7
  %94 = load i8, i8* %93, align 1
  %95 = zext i8 %94 to i32
  %96 = icmp eq i32 %95, 0
  br i1 %96, label %97, label %101

97:                                               ; preds = %91
  %98 = load i32, i32* @SNDRV_MIDI_SYSEX_GS_RESET, align 4
  store i32 %98, i32* %11, align 4
  %99 = load %struct.snd_midi_channel_set.0*, %struct.snd_midi_channel_set.0** %10, align 8
  %100 = call i32 @reset_all_channels(%struct.snd_midi_channel_set.0* %99)
  br label %256

101:                                              ; preds = %91, %85, %79
  %102 = load i8*, i8** %8, align 8
  %103 = getelementptr inbounds i8, i8* %102, i64 5
  %104 = load i8, i8* %103, align 1
  %105 = zext i8 %104 to i32
  %106 = and i32 %105, 240
  %107 = icmp eq i32 %106, 16
  br i1 %107, label %108, label %148

108:                                              ; preds = %101
  %109 = load i8*, i8** %8, align 8
  %110 = getelementptr inbounds i8, i8* %109, i64 6
  %111 = load i8, i8* %110, align 1
  %112 = zext i8 %111 to i32
  %113 = icmp eq i32 %112, 21
  br i1 %113, label %114, label %148

114:                                              ; preds = %108
  %115 = load i8*, i8** %8, align 8
  %116 = getelementptr inbounds i8, i8* %115, i64 5
  %117 = load i8, i8* %116, align 1
  %118 = call i32 @get_channel(i8 zeroext %117)
  store i32 %118, i32* %12, align 4
  %119 = load i32, i32* %12, align 4
  %120 = load %struct.snd_midi_channel_set.0*, %struct.snd_midi_channel_set.0** %10, align 8
  %121 = getelementptr inbounds %struct.snd_midi_channel_set.0, %struct.snd_midi_channel_set.0* %120, i32 0, i32 1
  %122 = load i32, i32* %121, align 8
  %123 = icmp slt i32 %119, %122
  br i1 %123, label %124, label %147

124:                                              ; preds = %114
  %125 = load i32, i32* @SNDRV_MIDI_SYSEX_GS_DRUM_CHANNEL, align 4
  store i32 %125, i32* %11, align 4
  %126 = load i8*, i8** %8, align 8
  %127 = getelementptr inbounds i8, i8* %126, i64 7
  %128 = load i8, i8* %127, align 1
  %129 = icmp ne i8 %128, 0
  br i1 %129, label %130, label %138

130:                                              ; preds = %124
  %131 = load %struct.snd_midi_channel_set.0*, %struct.snd_midi_channel_set.0** %10, align 8
  %132 = getelementptr inbounds %struct.snd_midi_channel_set.0, %struct.snd_midi_channel_set.0* %131, i32 0, i32 5
  %133 = load %struct.TYPE_2__*, %struct.TYPE_2__** %132, align 8
  %134 = load i32, i32* %12, align 4
  %135 = sext i32 %134 to i64
  %136 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %133, i64 %135
  %137 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %136, i32 0, i32 0
  store i32 1, i32* %137, align 8
  br label %146

138:                                              ; preds = %124
  %139 = load %struct.snd_midi_channel_set.0*, %struct.snd_midi_channel_set.0** %10, align 8
  %140 = getelementptr inbounds %struct.snd_midi_channel_set.0, %struct.snd_midi_channel_set.0* %139, i32 0, i32 5
  %141 = load %struct.TYPE_2__*, %struct.TYPE_2__** %140, align 8
  %142 = load i32, i32* %12, align 4
  %143 = sext i32 %142 to i64
  %144 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %141, i64 %143
  %145 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %144, i32 0, i32 0
  store i32 0, i32* %145, align 8
  br label %146

146:                                              ; preds = %138, %130
  br label %147

147:                                              ; preds = %146, %114
  br label %255

148:                                              ; preds = %108, %101
  %149 = load i8*, i8** %8, align 8
  %150 = getelementptr inbounds i8, i8* %149, i64 5
  %151 = load i8, i8* %150, align 1
  %152 = zext i8 %151 to i32
  %153 = and i32 %152, 240
  %154 = icmp eq i32 %153, 16
  br i1 %154, label %155, label %194

155:                                              ; preds = %148
  %156 = load i8*, i8** %8, align 8
  %157 = getelementptr inbounds i8, i8* %156, i64 6
  %158 = load i8, i8* %157, align 1
  %159 = zext i8 %158 to i32
  %160 = icmp eq i32 %159, 33
  br i1 %160, label %161, label %194

161:                                              ; preds = %155
  %162 = load i8*, i8** %8, align 8
  %163 = getelementptr inbounds i8, i8* %162, i64 5
  %164 = load i8, i8* %163, align 1
  %165 = call i32 @get_channel(i8 zeroext %164)
  store i32 %165, i32* %13, align 4
  %166 = load i32, i32* %13, align 4
  %167 = load %struct.snd_midi_channel_set.0*, %struct.snd_midi_channel_set.0** %10, align 8
  %168 = getelementptr inbounds %struct.snd_midi_channel_set.0, %struct.snd_midi_channel_set.0* %167, i32 0, i32 1
  %169 = load i32, i32* %168, align 8
  %170 = icmp slt i32 %166, %169
  br i1 %170, label %171, label %193

171:                                              ; preds = %161
  %172 = load %struct.snd_midi_channel_set.0*, %struct.snd_midi_channel_set.0** %10, align 8
  %173 = getelementptr inbounds %struct.snd_midi_channel_set.0, %struct.snd_midi_channel_set.0* %172, i32 0, i32 5
  %174 = load %struct.TYPE_2__*, %struct.TYPE_2__** %173, align 8
  %175 = load i32, i32* %13, align 4
  %176 = sext i32 %175 to i64
  %177 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %174, i64 %176
  %178 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %177, i32 0, i32 0
  %179 = load i32, i32* %178, align 8
  %180 = icmp ne i32 %179, 0
  br i1 %180, label %193, label %181

181:                                              ; preds = %171
  %182 = load i32, i32* @SNDRV_MIDI_SYSEX_GS_DRUM_CHANNEL, align 4
  store i32 %182, i32* %11, align 4
  %183 = load i8*, i8** %8, align 8
  %184 = getelementptr inbounds i8, i8* %183, i64 7
  %185 = load i8, i8* %184, align 1
  %186 = load %struct.snd_midi_channel_set.0*, %struct.snd_midi_channel_set.0** %10, align 8
  %187 = getelementptr inbounds %struct.snd_midi_channel_set.0, %struct.snd_midi_channel_set.0* %186, i32 0, i32 5
  %188 = load %struct.TYPE_2__*, %struct.TYPE_2__** %187, align 8
  %189 = load i32, i32* %13, align 4
  %190 = sext i32 %189 to i64
  %191 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %188, i64 %190
  %192 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %191, i32 0, i32 1
  store i8 %185, i8* %192, align 4
  br label %193

193:                                              ; preds = %181, %171, %161
  br label %254

194:                                              ; preds = %155, %148
  %195 = load i8*, i8** %8, align 8
  %196 = getelementptr inbounds i8, i8* %195, i64 5
  %197 = load i8, i8* %196, align 1
  %198 = zext i8 %197 to i32
  %199 = icmp eq i32 %198, 1
  br i1 %199, label %200, label %213

200:                                              ; preds = %194
  %201 = load i8*, i8** %8, align 8
  %202 = getelementptr inbounds i8, i8* %201, i64 6
  %203 = load i8, i8* %202, align 1
  %204 = zext i8 %203 to i32
  %205 = icmp eq i32 %204, 48
  br i1 %205, label %206, label %213

206:                                              ; preds = %200
  %207 = load i32, i32* @SNDRV_MIDI_SYSEX_GS_REVERB_MODE, align 4
  store i32 %207, i32* %11, align 4
  %208 = load i8*, i8** %8, align 8
  %209 = getelementptr inbounds i8, i8* %208, i64 7
  %210 = load i8, i8* %209, align 1
  %211 = load %struct.snd_midi_channel_set.0*, %struct.snd_midi_channel_set.0** %10, align 8
  %212 = getelementptr inbounds %struct.snd_midi_channel_set.0, %struct.snd_midi_channel_set.0* %211, i32 0, i32 2
  store i8 %210, i8* %212, align 4
  br label %253

213:                                              ; preds = %200, %194
  %214 = load i8*, i8** %8, align 8
  %215 = getelementptr inbounds i8, i8* %214, i64 5
  %216 = load i8, i8* %215, align 1
  %217 = zext i8 %216 to i32
  %218 = icmp eq i32 %217, 1
  br i1 %218, label %219, label %232

219:                                              ; preds = %213
  %220 = load i8*, i8** %8, align 8
  %221 = getelementptr inbounds i8, i8* %220, i64 6
  %222 = load i8, i8* %221, align 1
  %223 = zext i8 %222 to i32
  %224 = icmp eq i32 %223, 56
  br i1 %224, label %225, label %232

225:                                              ; preds = %219
  %226 = load i32, i32* @SNDRV_MIDI_SYSEX_GS_CHORUS_MODE, align 4
  store i32 %226, i32* %11, align 4
  %227 = load i8*, i8** %8, align 8
  %228 = getelementptr inbounds i8, i8* %227, i64 7
  %229 = load i8, i8* %228, align 1
  %230 = load %struct.snd_midi_channel_set.0*, %struct.snd_midi_channel_set.0** %10, align 8
  %231 = getelementptr inbounds %struct.snd_midi_channel_set.0, %struct.snd_midi_channel_set.0* %230, i32 0, i32 3
  store i8 %229, i8* %231, align 1
  br label %252

232:                                              ; preds = %219, %213
  %233 = load i8*, i8** %8, align 8
  %234 = getelementptr inbounds i8, i8* %233, i64 5
  %235 = load i8, i8* %234, align 1
  %236 = zext i8 %235 to i32
  %237 = icmp eq i32 %236, 0
  br i1 %237, label %238, label %251

238:                                              ; preds = %232
  %239 = load i8*, i8** %8, align 8
  %240 = getelementptr inbounds i8, i8* %239, i64 6
  %241 = load i8, i8* %240, align 1
  %242 = zext i8 %241 to i32
  %243 = icmp eq i32 %242, 4
  br i1 %243, label %244, label %251

244:                                              ; preds = %238
  %245 = load i32, i32* @SNDRV_MIDI_SYSEX_GS_MASTER_VOLUME, align 4
  store i32 %245, i32* %11, align 4
  %246 = load i8*, i8** %8, align 8
  %247 = getelementptr inbounds i8, i8* %246, i64 7
  %248 = load i8, i8* %247, align 1
  %249 = load %struct.snd_midi_channel_set.0*, %struct.snd_midi_channel_set.0** %10, align 8
  %250 = getelementptr inbounds %struct.snd_midi_channel_set.0, %struct.snd_midi_channel_set.0* %249, i32 0, i32 4
  store i8 %248, i8* %250, align 2
  br label %251

251:                                              ; preds = %244, %238, %232
  br label %252

252:                                              ; preds = %251, %225
  br label %253

253:                                              ; preds = %252, %206
  br label %254

254:                                              ; preds = %253, %193
  br label %255

255:                                              ; preds = %254, %147
  br label %256

256:                                              ; preds = %255, %97
  br label %313

257:                                              ; preds = %59, %56
  %258 = load i32, i32* %9, align 4
  %259 = icmp sge i32 %258, 7
  br i1 %259, label %260, label %312

260:                                              ; preds = %257
  %261 = load i8*, i8** %8, align 8
  %262 = call i64 @memcmp(i8* %261, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @sysex.xg_on_macro, i64 0, i64 0), i32 7)
  %263 = icmp eq i64 %262, 0
  br i1 %263, label %264, label %312

264:                                              ; preds = %260
  %265 = load i64, i64* @SNDRV_MIDI_MODE_XG, align 8
  %266 = load %struct.snd_midi_channel_set.0*, %struct.snd_midi_channel_set.0** %10, align 8
  %267 = getelementptr inbounds %struct.snd_midi_channel_set.0, %struct.snd_midi_channel_set.0* %266, i32 0, i32 0
  store i64 %265, i64* %267, align 8
  %268 = load i32, i32* @SNDRV_MIDI_SYSEX_XG_ON, align 4
  store i32 %268, i32* %11, align 4
  store i32 0, i32* %14, align 4
  br label %269

269:                                              ; preds = %308, %264
  %270 = load i32, i32* %14, align 4
  %271 = load %struct.snd_midi_channel_set.0*, %struct.snd_midi_channel_set.0** %10, align 8
  %272 = getelementptr inbounds %struct.snd_midi_channel_set.0, %struct.snd_midi_channel_set.0* %271, i32 0, i32 1
  %273 = load i32, i32* %272, align 8
  %274 = icmp slt i32 %270, %273
  br i1 %274, label %275, label %311

275:                                              ; preds = %269
  %276 = load %struct.snd_midi_channel_set.0*, %struct.snd_midi_channel_set.0** %10, align 8
  %277 = getelementptr inbounds %struct.snd_midi_channel_set.0, %struct.snd_midi_channel_set.0* %276, i32 0, i32 5
  %278 = load %struct.TYPE_2__*, %struct.TYPE_2__** %277, align 8
  %279 = load i32, i32* %14, align 4
  %280 = sext i32 %279 to i64
  %281 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %278, i64 %280
  %282 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %281, i32 0, i32 0
  %283 = load i32, i32* %282, align 8
  %284 = icmp ne i32 %283, 0
  br i1 %284, label %285, label %296

285:                                              ; preds = %275
  %286 = load %struct.snd_midi_channel_set.0*, %struct.snd_midi_channel_set.0** %10, align 8
  %287 = getelementptr inbounds %struct.snd_midi_channel_set.0, %struct.snd_midi_channel_set.0* %286, i32 0, i32 5
  %288 = load %struct.TYPE_2__*, %struct.TYPE_2__** %287, align 8
  %289 = load i32, i32* %14, align 4
  %290 = sext i32 %289 to i64
  %291 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %288, i64 %290
  %292 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %291, i32 0, i32 2
  %293 = load i32*, i32** %292, align 8
  %294 = load i64, i64* @MIDI_CTL_MSB_BANK, align 8
  %295 = getelementptr inbounds i32, i32* %293, i64 %294
  store i32 127, i32* %295, align 4
  br label %307

296:                                              ; preds = %275
  %297 = load %struct.snd_midi_channel_set.0*, %struct.snd_midi_channel_set.0** %10, align 8
  %298 = getelementptr inbounds %struct.snd_midi_channel_set.0, %struct.snd_midi_channel_set.0* %297, i32 0, i32 5
  %299 = load %struct.TYPE_2__*, %struct.TYPE_2__** %298, align 8
  %300 = load i32, i32* %14, align 4
  %301 = sext i32 %300 to i64
  %302 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %299, i64 %301
  %303 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %302, i32 0, i32 2
  %304 = load i32*, i32** %303, align 8
  %305 = load i64, i64* @MIDI_CTL_MSB_BANK, align 8
  %306 = getelementptr inbounds i32, i32* %304, i64 %305
  store i32 0, i32* %306, align 4
  br label %307

307:                                              ; preds = %296, %285
  br label %308

308:                                              ; preds = %307
  %309 = load i32, i32* %14, align 4
  %310 = add nsw i32 %309, 1
  store i32 %310, i32* %14, align 4
  br label %269

311:                                              ; preds = %269
  br label %312

312:                                              ; preds = %311, %260, %257
  br label %313

313:                                              ; preds = %312, %256
  br label %314

314:                                              ; preds = %313, %55
  %315 = load %struct.snd_midi_op*, %struct.snd_midi_op** %6, align 8
  %316 = getelementptr inbounds %struct.snd_midi_op, %struct.snd_midi_op* %315, i32 0, i32 0
  %317 = load i32 (i8*, i8*, i32, i32, %struct.snd_midi_channel_set*)*, i32 (i8*, i8*, i32, i32, %struct.snd_midi_channel_set*)** %316, align 8
  %318 = icmp ne i32 (i8*, i8*, i32, i32, %struct.snd_midi_channel_set*)* %317, null
  br i1 %318, label %319, label %332

319:                                              ; preds = %314
  %320 = load %struct.snd_midi_op*, %struct.snd_midi_op** %6, align 8
  %321 = getelementptr inbounds %struct.snd_midi_op, %struct.snd_midi_op* %320, i32 0, i32 0
  %322 = load i32 (i8*, i8*, i32, i32, %struct.snd_midi_channel_set*)*, i32 (i8*, i8*, i32, i32, %struct.snd_midi_channel_set*)** %321, align 8
  %323 = load i8*, i8** %7, align 8
  %324 = load i8*, i8** %8, align 8
  %325 = getelementptr inbounds i8, i8* %324, i64 -1
  %326 = load i32, i32* %9, align 4
  %327 = add nsw i32 %326, 1
  %328 = load i32, i32* %11, align 4
  %329 = load %struct.snd_midi_channel_set.0*, %struct.snd_midi_channel_set.0** %10, align 8
  %330 = bitcast %struct.snd_midi_channel_set.0* %329 to %struct.snd_midi_channel_set*
  %331 = call i32 %322(i8* %323, i8* %325, i32 %327, i32 %328, %struct.snd_midi_channel_set* %330)
  br label %332

332:                                              ; preds = %24, %319, %314
  ret void
}

declare dso_local i64 @memcmp(i8*, i8*, i32) #1

declare dso_local i32 @reset_all_channels(%struct.snd_midi_channel_set.0*) #1

declare dso_local i32 @get_channel(i8 zeroext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
