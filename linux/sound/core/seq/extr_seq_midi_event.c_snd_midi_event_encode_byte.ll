; ModuleID = '/home/carl/AnghaBench/linux/sound/core/seq/extr_seq_midi_event.c_snd_midi_event_encode_byte.c'
source_filename = "/home/carl/AnghaBench/linux/sound/core/seq/extr_seq_midi_event.c_snd_midi_event_encode_byte.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64, i64, i32 (%struct.snd_midi_event*, %struct.snd_seq_event*)* }
%struct.snd_midi_event = type { i8, i8*, i32, i64, i32, i32 }
%struct.snd_seq_event = type { i64, %struct.TYPE_5__, i32 }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i8* }

@MIDI_CMD_COMMON_CLOCK = common dso_local global i8 0, align 1
@status_event = common dso_local global %struct.TYPE_6__* null, align 8
@ST_SPECIAL = common dso_local global i8 0, align 1
@SNDRV_SEQ_EVENT_LENGTH_MASK = common dso_local global i32 0, align 4
@SNDRV_SEQ_EVENT_LENGTH_FIXED = common dso_local global i32 0, align 4
@SNDRV_SEQ_EVENT_NONE = common dso_local global i64 0, align 8
@MIDI_CMD_COMMON_SYSEX_END = common dso_local global i8 0, align 1
@ST_SYSEX = common dso_local global i8 0, align 1
@ST_INVALID = common dso_local global i8 0, align 1
@SNDRV_SEQ_EVENT_LENGTH_VARIABLE = common dso_local global i32 0, align 4
@SNDRV_SEQ_EVENT_SYSEX = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @snd_midi_event_encode_byte(%struct.snd_midi_event* %0, i8 zeroext %1, %struct.snd_seq_event* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.snd_midi_event*, align 8
  %6 = alloca i8, align 1
  %7 = alloca %struct.snd_seq_event*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  store %struct.snd_midi_event* %0, %struct.snd_midi_event** %5, align 8
  store i8 %1, i8* %6, align 1
  store %struct.snd_seq_event* %2, %struct.snd_seq_event** %7, align 8
  store i32 0, i32* %8, align 4
  %10 = load i8, i8* %6, align 1
  %11 = zext i8 %10 to i32
  %12 = load i8, i8* @MIDI_CMD_COMMON_CLOCK, align 1
  %13 = zext i8 %12 to i32
  %14 = icmp sge i32 %11, %13
  br i1 %14, label %15, label %46

15:                                               ; preds = %3
  %16 = load %struct.TYPE_6__*, %struct.TYPE_6__** @status_event, align 8
  %17 = load i8, i8* @ST_SPECIAL, align 1
  %18 = zext i8 %17 to i32
  %19 = load i8, i8* %6, align 1
  %20 = zext i8 %19 to i32
  %21 = add nsw i32 %18, %20
  %22 = sub nsw i32 %21, 240
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %16, i64 %23
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load %struct.snd_seq_event*, %struct.snd_seq_event** %7, align 8
  %28 = getelementptr inbounds %struct.snd_seq_event, %struct.snd_seq_event* %27, i32 0, i32 0
  store i64 %26, i64* %28, align 8
  %29 = load i32, i32* @SNDRV_SEQ_EVENT_LENGTH_MASK, align 4
  %30 = xor i32 %29, -1
  %31 = load %struct.snd_seq_event*, %struct.snd_seq_event** %7, align 8
  %32 = getelementptr inbounds %struct.snd_seq_event, %struct.snd_seq_event* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 8
  %34 = and i32 %33, %30
  store i32 %34, i32* %32, align 8
  %35 = load i32, i32* @SNDRV_SEQ_EVENT_LENGTH_FIXED, align 4
  %36 = load %struct.snd_seq_event*, %struct.snd_seq_event** %7, align 8
  %37 = getelementptr inbounds %struct.snd_seq_event, %struct.snd_seq_event* %36, i32 0, i32 2
  %38 = load i32, i32* %37, align 8
  %39 = or i32 %38, %35
  store i32 %39, i32* %37, align 8
  %40 = load %struct.snd_seq_event*, %struct.snd_seq_event** %7, align 8
  %41 = getelementptr inbounds %struct.snd_seq_event, %struct.snd_seq_event* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = load i64, i64* @SNDRV_SEQ_EVENT_NONE, align 8
  %44 = icmp ne i64 %42, %43
  %45 = zext i1 %44 to i32
  store i32 %45, i32* %4, align 4
  br label %291

46:                                               ; preds = %3
  %47 = load %struct.snd_midi_event*, %struct.snd_midi_event** %5, align 8
  %48 = getelementptr inbounds %struct.snd_midi_event, %struct.snd_midi_event* %47, i32 0, i32 5
  %49 = load i64, i64* %9, align 8
  %50 = call i32 @spin_lock_irqsave(i32* %48, i64 %49)
  %51 = load i8, i8* %6, align 1
  %52 = zext i8 %51 to i32
  %53 = and i32 %52, 128
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %110

55:                                               ; preds = %46
  %56 = load i8, i8* %6, align 1
  %57 = zext i8 %56 to i32
  %58 = load i8, i8* @MIDI_CMD_COMMON_SYSEX_END, align 1
  %59 = zext i8 %58 to i32
  %60 = icmp ne i32 %57, %59
  br i1 %60, label %69, label %61

61:                                               ; preds = %55
  %62 = load %struct.snd_midi_event*, %struct.snd_midi_event** %5, align 8
  %63 = getelementptr inbounds %struct.snd_midi_event, %struct.snd_midi_event* %62, i32 0, i32 0
  %64 = load i8, i8* %63, align 8
  %65 = zext i8 %64 to i32
  %66 = load i8, i8* @ST_SYSEX, align 1
  %67 = zext i8 %66 to i32
  %68 = icmp ne i32 %65, %67
  br i1 %68, label %69, label %110

69:                                               ; preds = %61, %55
  %70 = load i8, i8* %6, align 1
  %71 = load %struct.snd_midi_event*, %struct.snd_midi_event** %5, align 8
  %72 = getelementptr inbounds %struct.snd_midi_event, %struct.snd_midi_event* %71, i32 0, i32 1
  %73 = load i8*, i8** %72, align 8
  %74 = getelementptr inbounds i8, i8* %73, i64 0
  store i8 %70, i8* %74, align 1
  %75 = load i8, i8* %6, align 1
  %76 = zext i8 %75 to i32
  %77 = and i32 %76, 240
  %78 = icmp eq i32 %77, 240
  br i1 %78, label %79, label %89

79:                                               ; preds = %69
  %80 = load i8, i8* %6, align 1
  %81 = zext i8 %80 to i32
  %82 = and i32 %81, 15
  %83 = load i8, i8* @ST_SPECIAL, align 1
  %84 = zext i8 %83 to i32
  %85 = add nsw i32 %82, %84
  %86 = trunc i32 %85 to i8
  %87 = load %struct.snd_midi_event*, %struct.snd_midi_event** %5, align 8
  %88 = getelementptr inbounds %struct.snd_midi_event, %struct.snd_midi_event* %87, i32 0, i32 0
  store i8 %86, i8* %88, align 8
  br label %97

89:                                               ; preds = %69
  %90 = load i8, i8* %6, align 1
  %91 = zext i8 %90 to i32
  %92 = ashr i32 %91, 4
  %93 = and i32 %92, 7
  %94 = trunc i32 %93 to i8
  %95 = load %struct.snd_midi_event*, %struct.snd_midi_event** %5, align 8
  %96 = getelementptr inbounds %struct.snd_midi_event, %struct.snd_midi_event* %95, i32 0, i32 0
  store i8 %94, i8* %96, align 8
  br label %97

97:                                               ; preds = %89, %79
  %98 = load %struct.snd_midi_event*, %struct.snd_midi_event** %5, align 8
  %99 = getelementptr inbounds %struct.snd_midi_event, %struct.snd_midi_event* %98, i32 0, i32 2
  store i32 1, i32* %99, align 8
  %100 = load %struct.TYPE_6__*, %struct.TYPE_6__** @status_event, align 8
  %101 = load %struct.snd_midi_event*, %struct.snd_midi_event** %5, align 8
  %102 = getelementptr inbounds %struct.snd_midi_event, %struct.snd_midi_event* %101, i32 0, i32 0
  %103 = load i8, i8* %102, align 8
  %104 = zext i8 %103 to i64
  %105 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %100, i64 %104
  %106 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %105, i32 0, i32 1
  %107 = load i64, i64* %106, align 8
  %108 = load %struct.snd_midi_event*, %struct.snd_midi_event** %5, align 8
  %109 = getelementptr inbounds %struct.snd_midi_event, %struct.snd_midi_event* %108, i32 0, i32 3
  store i64 %107, i64* %109, align 8
  br label %159

110:                                              ; preds = %61, %46
  %111 = load %struct.snd_midi_event*, %struct.snd_midi_event** %5, align 8
  %112 = getelementptr inbounds %struct.snd_midi_event, %struct.snd_midi_event* %111, i32 0, i32 3
  %113 = load i64, i64* %112, align 8
  %114 = icmp sgt i64 %113, 0
  br i1 %114, label %115, label %139

115:                                              ; preds = %110
  %116 = load i8, i8* %6, align 1
  %117 = load %struct.snd_midi_event*, %struct.snd_midi_event** %5, align 8
  %118 = getelementptr inbounds %struct.snd_midi_event, %struct.snd_midi_event* %117, i32 0, i32 1
  %119 = load i8*, i8** %118, align 8
  %120 = load %struct.snd_midi_event*, %struct.snd_midi_event** %5, align 8
  %121 = getelementptr inbounds %struct.snd_midi_event, %struct.snd_midi_event* %120, i32 0, i32 2
  %122 = load i32, i32* %121, align 8
  %123 = add nsw i32 %122, 1
  store i32 %123, i32* %121, align 8
  %124 = sext i32 %122 to i64
  %125 = getelementptr inbounds i8, i8* %119, i64 %124
  store i8 %116, i8* %125, align 1
  %126 = load %struct.snd_midi_event*, %struct.snd_midi_event** %5, align 8
  %127 = getelementptr inbounds %struct.snd_midi_event, %struct.snd_midi_event* %126, i32 0, i32 0
  %128 = load i8, i8* %127, align 8
  %129 = zext i8 %128 to i32
  %130 = load i8, i8* @ST_SYSEX, align 1
  %131 = zext i8 %130 to i32
  %132 = icmp ne i32 %129, %131
  br i1 %132, label %133, label %138

133:                                              ; preds = %115
  %134 = load %struct.snd_midi_event*, %struct.snd_midi_event** %5, align 8
  %135 = getelementptr inbounds %struct.snd_midi_event, %struct.snd_midi_event* %134, i32 0, i32 3
  %136 = load i64, i64* %135, align 8
  %137 = add nsw i64 %136, -1
  store i64 %137, i64* %135, align 8
  br label %138

138:                                              ; preds = %133, %115
  br label %158

139:                                              ; preds = %110
  %140 = load i8, i8* %6, align 1
  %141 = load %struct.snd_midi_event*, %struct.snd_midi_event** %5, align 8
  %142 = getelementptr inbounds %struct.snd_midi_event, %struct.snd_midi_event* %141, i32 0, i32 1
  %143 = load i8*, i8** %142, align 8
  %144 = getelementptr inbounds i8, i8* %143, i64 1
  store i8 %140, i8* %144, align 1
  %145 = load %struct.TYPE_6__*, %struct.TYPE_6__** @status_event, align 8
  %146 = load %struct.snd_midi_event*, %struct.snd_midi_event** %5, align 8
  %147 = getelementptr inbounds %struct.snd_midi_event, %struct.snd_midi_event* %146, i32 0, i32 0
  %148 = load i8, i8* %147, align 8
  %149 = zext i8 %148 to i64
  %150 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %145, i64 %149
  %151 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %150, i32 0, i32 1
  %152 = load i64, i64* %151, align 8
  %153 = sub nsw i64 %152, 1
  %154 = load %struct.snd_midi_event*, %struct.snd_midi_event** %5, align 8
  %155 = getelementptr inbounds %struct.snd_midi_event, %struct.snd_midi_event* %154, i32 0, i32 3
  store i64 %153, i64* %155, align 8
  %156 = load %struct.snd_midi_event*, %struct.snd_midi_event** %5, align 8
  %157 = getelementptr inbounds %struct.snd_midi_event, %struct.snd_midi_event* %156, i32 0, i32 2
  store i32 2, i32* %157, align 8
  br label %158

158:                                              ; preds = %139, %138
  br label %159

159:                                              ; preds = %158, %97
  %160 = load %struct.snd_midi_event*, %struct.snd_midi_event** %5, align 8
  %161 = getelementptr inbounds %struct.snd_midi_event, %struct.snd_midi_event* %160, i32 0, i32 3
  %162 = load i64, i64* %161, align 8
  %163 = icmp eq i64 %162, 0
  br i1 %163, label %164, label %220

164:                                              ; preds = %159
  %165 = load %struct.TYPE_6__*, %struct.TYPE_6__** @status_event, align 8
  %166 = load %struct.snd_midi_event*, %struct.snd_midi_event** %5, align 8
  %167 = getelementptr inbounds %struct.snd_midi_event, %struct.snd_midi_event* %166, i32 0, i32 0
  %168 = load i8, i8* %167, align 8
  %169 = zext i8 %168 to i64
  %170 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %165, i64 %169
  %171 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %170, i32 0, i32 0
  %172 = load i64, i64* %171, align 8
  %173 = load %struct.snd_seq_event*, %struct.snd_seq_event** %7, align 8
  %174 = getelementptr inbounds %struct.snd_seq_event, %struct.snd_seq_event* %173, i32 0, i32 0
  store i64 %172, i64* %174, align 8
  %175 = load i32, i32* @SNDRV_SEQ_EVENT_LENGTH_MASK, align 4
  %176 = xor i32 %175, -1
  %177 = load %struct.snd_seq_event*, %struct.snd_seq_event** %7, align 8
  %178 = getelementptr inbounds %struct.snd_seq_event, %struct.snd_seq_event* %177, i32 0, i32 2
  %179 = load i32, i32* %178, align 8
  %180 = and i32 %179, %176
  store i32 %180, i32* %178, align 8
  %181 = load i32, i32* @SNDRV_SEQ_EVENT_LENGTH_FIXED, align 4
  %182 = load %struct.snd_seq_event*, %struct.snd_seq_event** %7, align 8
  %183 = getelementptr inbounds %struct.snd_seq_event, %struct.snd_seq_event* %182, i32 0, i32 2
  %184 = load i32, i32* %183, align 8
  %185 = or i32 %184, %181
  store i32 %185, i32* %183, align 8
  %186 = load %struct.TYPE_6__*, %struct.TYPE_6__** @status_event, align 8
  %187 = load %struct.snd_midi_event*, %struct.snd_midi_event** %5, align 8
  %188 = getelementptr inbounds %struct.snd_midi_event, %struct.snd_midi_event* %187, i32 0, i32 0
  %189 = load i8, i8* %188, align 8
  %190 = zext i8 %189 to i64
  %191 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %186, i64 %190
  %192 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %191, i32 0, i32 2
  %193 = load i32 (%struct.snd_midi_event*, %struct.snd_seq_event*)*, i32 (%struct.snd_midi_event*, %struct.snd_seq_event*)** %192, align 8
  %194 = icmp ne i32 (%struct.snd_midi_event*, %struct.snd_seq_event*)* %193, null
  br i1 %194, label %195, label %207

195:                                              ; preds = %164
  %196 = load %struct.TYPE_6__*, %struct.TYPE_6__** @status_event, align 8
  %197 = load %struct.snd_midi_event*, %struct.snd_midi_event** %5, align 8
  %198 = getelementptr inbounds %struct.snd_midi_event, %struct.snd_midi_event* %197, i32 0, i32 0
  %199 = load i8, i8* %198, align 8
  %200 = zext i8 %199 to i64
  %201 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %196, i64 %200
  %202 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %201, i32 0, i32 2
  %203 = load i32 (%struct.snd_midi_event*, %struct.snd_seq_event*)*, i32 (%struct.snd_midi_event*, %struct.snd_seq_event*)** %202, align 8
  %204 = load %struct.snd_midi_event*, %struct.snd_midi_event** %5, align 8
  %205 = load %struct.snd_seq_event*, %struct.snd_seq_event** %7, align 8
  %206 = call i32 %203(%struct.snd_midi_event* %204, %struct.snd_seq_event* %205)
  br label %207

207:                                              ; preds = %195, %164
  %208 = load %struct.snd_midi_event*, %struct.snd_midi_event** %5, align 8
  %209 = getelementptr inbounds %struct.snd_midi_event, %struct.snd_midi_event* %208, i32 0, i32 0
  %210 = load i8, i8* %209, align 8
  %211 = zext i8 %210 to i32
  %212 = load i8, i8* @ST_SPECIAL, align 1
  %213 = zext i8 %212 to i32
  %214 = icmp sge i32 %211, %213
  br i1 %214, label %215, label %219

215:                                              ; preds = %207
  %216 = load i8, i8* @ST_INVALID, align 1
  %217 = load %struct.snd_midi_event*, %struct.snd_midi_event** %5, align 8
  %218 = getelementptr inbounds %struct.snd_midi_event, %struct.snd_midi_event* %217, i32 0, i32 0
  store i8 %216, i8* %218, align 8
  br label %219

219:                                              ; preds = %215, %207
  store i32 1, i32* %8, align 4
  br label %285

220:                                              ; preds = %159
  %221 = load %struct.snd_midi_event*, %struct.snd_midi_event** %5, align 8
  %222 = getelementptr inbounds %struct.snd_midi_event, %struct.snd_midi_event* %221, i32 0, i32 0
  %223 = load i8, i8* %222, align 8
  %224 = zext i8 %223 to i32
  %225 = load i8, i8* @ST_SYSEX, align 1
  %226 = zext i8 %225 to i32
  %227 = icmp eq i32 %224, %226
  br i1 %227, label %228, label %284

228:                                              ; preds = %220
  %229 = load i8, i8* %6, align 1
  %230 = zext i8 %229 to i32
  %231 = load i8, i8* @MIDI_CMD_COMMON_SYSEX_END, align 1
  %232 = zext i8 %231 to i32
  %233 = icmp eq i32 %230, %232
  br i1 %233, label %242, label %234

234:                                              ; preds = %228
  %235 = load %struct.snd_midi_event*, %struct.snd_midi_event** %5, align 8
  %236 = getelementptr inbounds %struct.snd_midi_event, %struct.snd_midi_event* %235, i32 0, i32 2
  %237 = load i32, i32* %236, align 8
  %238 = load %struct.snd_midi_event*, %struct.snd_midi_event** %5, align 8
  %239 = getelementptr inbounds %struct.snd_midi_event, %struct.snd_midi_event* %238, i32 0, i32 4
  %240 = load i32, i32* %239, align 8
  %241 = icmp sge i32 %237, %240
  br i1 %241, label %242, label %283

242:                                              ; preds = %234, %228
  %243 = load i32, i32* @SNDRV_SEQ_EVENT_LENGTH_MASK, align 4
  %244 = xor i32 %243, -1
  %245 = load %struct.snd_seq_event*, %struct.snd_seq_event** %7, align 8
  %246 = getelementptr inbounds %struct.snd_seq_event, %struct.snd_seq_event* %245, i32 0, i32 2
  %247 = load i32, i32* %246, align 8
  %248 = and i32 %247, %244
  store i32 %248, i32* %246, align 8
  %249 = load i32, i32* @SNDRV_SEQ_EVENT_LENGTH_VARIABLE, align 4
  %250 = load %struct.snd_seq_event*, %struct.snd_seq_event** %7, align 8
  %251 = getelementptr inbounds %struct.snd_seq_event, %struct.snd_seq_event* %250, i32 0, i32 2
  %252 = load i32, i32* %251, align 8
  %253 = or i32 %252, %249
  store i32 %253, i32* %251, align 8
  %254 = load i64, i64* @SNDRV_SEQ_EVENT_SYSEX, align 8
  %255 = load %struct.snd_seq_event*, %struct.snd_seq_event** %7, align 8
  %256 = getelementptr inbounds %struct.snd_seq_event, %struct.snd_seq_event* %255, i32 0, i32 0
  store i64 %254, i64* %256, align 8
  %257 = load %struct.snd_midi_event*, %struct.snd_midi_event** %5, align 8
  %258 = getelementptr inbounds %struct.snd_midi_event, %struct.snd_midi_event* %257, i32 0, i32 2
  %259 = load i32, i32* %258, align 8
  %260 = load %struct.snd_seq_event*, %struct.snd_seq_event** %7, align 8
  %261 = getelementptr inbounds %struct.snd_seq_event, %struct.snd_seq_event* %260, i32 0, i32 1
  %262 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %261, i32 0, i32 0
  %263 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %262, i32 0, i32 0
  store i32 %259, i32* %263, align 8
  %264 = load %struct.snd_midi_event*, %struct.snd_midi_event** %5, align 8
  %265 = getelementptr inbounds %struct.snd_midi_event, %struct.snd_midi_event* %264, i32 0, i32 1
  %266 = load i8*, i8** %265, align 8
  %267 = load %struct.snd_seq_event*, %struct.snd_seq_event** %7, align 8
  %268 = getelementptr inbounds %struct.snd_seq_event, %struct.snd_seq_event* %267, i32 0, i32 1
  %269 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %268, i32 0, i32 0
  %270 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %269, i32 0, i32 1
  store i8* %266, i8** %270, align 8
  %271 = load i8, i8* %6, align 1
  %272 = zext i8 %271 to i32
  %273 = load i8, i8* @MIDI_CMD_COMMON_SYSEX_END, align 1
  %274 = zext i8 %273 to i32
  %275 = icmp ne i32 %272, %274
  br i1 %275, label %276, label %279

276:                                              ; preds = %242
  %277 = load %struct.snd_midi_event*, %struct.snd_midi_event** %5, align 8
  %278 = getelementptr inbounds %struct.snd_midi_event, %struct.snd_midi_event* %277, i32 0, i32 2
  store i32 0, i32* %278, align 8
  br label %282

279:                                              ; preds = %242
  %280 = load %struct.snd_midi_event*, %struct.snd_midi_event** %5, align 8
  %281 = call i32 @reset_encode(%struct.snd_midi_event* %280)
  br label %282

282:                                              ; preds = %279, %276
  store i32 1, i32* %8, align 4
  br label %283

283:                                              ; preds = %282, %234
  br label %284

284:                                              ; preds = %283, %220
  br label %285

285:                                              ; preds = %284, %219
  %286 = load %struct.snd_midi_event*, %struct.snd_midi_event** %5, align 8
  %287 = getelementptr inbounds %struct.snd_midi_event, %struct.snd_midi_event* %286, i32 0, i32 5
  %288 = load i64, i64* %9, align 8
  %289 = call i32 @spin_unlock_irqrestore(i32* %287, i64 %288)
  %290 = load i32, i32* %8, align 4
  store i32 %290, i32* %4, align 4
  br label %291

291:                                              ; preds = %285, %15
  %292 = load i32, i32* %4, align 4
  ret i32 %292
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @reset_encode(%struct.snd_midi_event*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
