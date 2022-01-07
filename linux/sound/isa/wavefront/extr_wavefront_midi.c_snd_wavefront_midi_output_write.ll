; ModuleID = '/home/carl/AnghaBench/linux/sound/isa/wavefront/extr_wavefront_midi.c_snd_wavefront_midi_output_write.c'
source_filename = "/home/carl/AnghaBench/linux/sound/isa/wavefront/extr_wavefront_midi.c_snd_wavefront_midi_output_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i64, i32*, i64, i32, i32, i32, i32** }

@MPU401_MODE_OUTPUT = common dso_local global i32 0, align 4
@WF_INTERNAL_SWITCH = common dso_local global i8 0, align 1
@WF_EXTERNAL_SWITCH = common dso_local global i8 0, align 1
@MPU401_MODE_OUTPUT_TRIGGER = common dso_local global i32 0, align 4
@internal_mpu = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_9__*)* @snd_wavefront_midi_output_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @snd_wavefront_midi_output_write(%struct.TYPE_9__* %0) #0 {
  %2 = alloca %struct.TYPE_9__*, align 8
  %3 = alloca %struct.TYPE_8__*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i8, align 1
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %2, align 8
  %10 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %11 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %11, i32 0, i32 0
  store %struct.TYPE_8__* %12, %struct.TYPE_8__** %3, align 8
  store i32 256, i32* %7, align 4
  store i32 1, i32* %8, align 4
  %13 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %14 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %13, i32 0, i32 6
  %15 = load i32**, i32*** %14, align 8
  %16 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %17 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = getelementptr inbounds i32*, i32** %15, i64 %18
  %20 = load i32*, i32** %19, align 8
  %21 = icmp eq i32* %20, null
  br i1 %21, label %22, label %23

22:                                               ; preds = %1
  br label %144

23:                                               ; preds = %1
  br label %24

24:                                               ; preds = %138, %23
  %25 = load i32, i32* %7, align 4
  %26 = icmp sgt i32 %25, 0
  br i1 %26, label %27, label %143

27:                                               ; preds = %24
  store i32 30000, i32* %9, align 4
  br label %28

28:                                               ; preds = %37, %27
  %29 = load i32, i32* %9, align 4
  %30 = icmp sgt i32 %29, 0
  br i1 %30, label %31, label %40

31:                                               ; preds = %28
  %32 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %33 = call i64 @output_ready(%struct.TYPE_8__* %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %31
  br label %40

36:                                               ; preds = %31
  br label %37

37:                                               ; preds = %36
  %38 = load i32, i32* %9, align 4
  %39 = add nsw i32 %38, -1
  store i32 %39, i32* %9, align 4
  br label %28

40:                                               ; preds = %35, %28
  %41 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %42 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %41, i32 0, i32 3
  %43 = load i64, i64* %5, align 8
  %44 = call i32 @spin_lock_irqsave(i32* %42, i64 %43)
  %45 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %46 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %45, i32 0, i32 1
  %47 = load i32*, i32** %46, align 8
  %48 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %49 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = getelementptr inbounds i32, i32* %47, i64 %50
  %52 = load i32, i32* %51, align 4
  %53 = load i32, i32* @MPU401_MODE_OUTPUT, align 4
  %54 = and i32 %52, %53
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %56, label %61

56:                                               ; preds = %40
  %57 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %58 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %57, i32 0, i32 3
  %59 = load i64, i64* %5, align 8
  %60 = call i32 @spin_unlock_irqrestore(i32* %58, i64 %59)
  br label %144

61:                                               ; preds = %40
  %62 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %63 = call i64 @output_ready(%struct.TYPE_8__* %62)
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %133

65:                                               ; preds = %61
  %66 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %67 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %66, i32 0, i32 6
  %68 = load i32**, i32*** %67, align 8
  %69 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %70 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = getelementptr inbounds i32*, i32** %68, i64 %71
  %73 = load i32*, i32** %72, align 8
  %74 = call i32 @snd_rawmidi_transmit(i32* %73, i8* %6, i32 1)
  %75 = icmp eq i32 %74, 1
  br i1 %75, label %76, label %100

76:                                               ; preds = %65
  %77 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %78 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %77, i32 0, i32 5
  %79 = load i32, i32* %78, align 8
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %93

81:                                               ; preds = %76
  %82 = load i8, i8* %6, align 1
  %83 = zext i8 %82 to i32
  %84 = load i8, i8* @WF_INTERNAL_SWITCH, align 1
  %85 = zext i8 %84 to i32
  %86 = icmp ne i32 %83, %85
  br i1 %86, label %87, label %97

87:                                               ; preds = %81
  %88 = load i8, i8* %6, align 1
  %89 = zext i8 %88 to i32
  %90 = load i8, i8* @WF_EXTERNAL_SWITCH, align 1
  %91 = zext i8 %90 to i32
  %92 = icmp ne i32 %89, %91
  br i1 %92, label %93, label %97

93:                                               ; preds = %87, %76
  %94 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %95 = load i8, i8* %6, align 1
  %96 = call i32 @write_data(%struct.TYPE_8__* %94, i8 zeroext %95)
  br label %97

97:                                               ; preds = %93, %87, %81
  %98 = load i32, i32* %7, align 4
  %99 = add nsw i32 %98, -1
  store i32 %99, i32* %7, align 4
  br label %132

100:                                              ; preds = %65
  %101 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %102 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %101, i32 0, i32 2
  %103 = load i64, i64* %102, align 8
  %104 = icmp ne i64 %103, 0
  br i1 %104, label %105, label %116

105:                                              ; preds = %100
  %106 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %107 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %106, i32 0, i32 2
  %108 = load i64, i64* %107, align 8
  %109 = add nsw i64 %108, -1
  store i64 %109, i64* %107, align 8
  %110 = icmp sle i64 %109, 0
  br i1 %110, label %111, label %115

111:                                              ; preds = %105
  %112 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %113 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %112, i32 0, i32 4
  %114 = call i32 @del_timer(i32* %113)
  br label %115

115:                                              ; preds = %111, %105
  br label %116

116:                                              ; preds = %115, %100
  %117 = load i32, i32* @MPU401_MODE_OUTPUT_TRIGGER, align 4
  %118 = xor i32 %117, -1
  %119 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %120 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %119, i32 0, i32 1
  %121 = load i32*, i32** %120, align 8
  %122 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %123 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %122, i32 0, i32 0
  %124 = load i64, i64* %123, align 8
  %125 = getelementptr inbounds i32, i32* %121, i64 %124
  %126 = load i32, i32* %125, align 4
  %127 = and i32 %126, %118
  store i32 %127, i32* %125, align 4
  %128 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %129 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %128, i32 0, i32 3
  %130 = load i64, i64* %5, align 8
  %131 = call i32 @spin_unlock_irqrestore(i32* %129, i64 %130)
  br label %144

132:                                              ; preds = %97
  br label %138

133:                                              ; preds = %61
  %134 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %135 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %134, i32 0, i32 3
  %136 = load i64, i64* %5, align 8
  %137 = call i32 @spin_unlock_irqrestore(i32* %135, i64 %136)
  br label %321

138:                                              ; preds = %132
  %139 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %140 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %139, i32 0, i32 3
  %141 = load i64, i64* %5, align 8
  %142 = call i32 @spin_unlock_irqrestore(i32* %140, i64 %141)
  br label %24

143:                                              ; preds = %24
  br label %144

144:                                              ; preds = %143, %116, %56, %22
  %145 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %146 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %145, i32 0, i32 6
  %147 = load i32**, i32*** %146, align 8
  %148 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %149 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %148, i32 0, i32 0
  %150 = load i64, i64* %149, align 8
  %151 = icmp ne i64 %150, 0
  %152 = xor i1 %151, true
  %153 = zext i1 %152 to i32
  %154 = sext i32 %153 to i64
  %155 = getelementptr inbounds i32*, i32** %147, i64 %154
  %156 = load i32*, i32** %155, align 8
  %157 = icmp eq i32* %156, null
  br i1 %157, label %158, label %159

158:                                              ; preds = %144
  br label %321

159:                                              ; preds = %144
  br label %160

160:                                              ; preds = %316, %159
  %161 = load i32, i32* %7, align 4
  %162 = icmp sgt i32 %161, 0
  br i1 %162, label %163, label %321

163:                                              ; preds = %160
  store i32 30000, i32* %9, align 4
  br label %164

164:                                              ; preds = %173, %163
  %165 = load i32, i32* %9, align 4
  %166 = icmp sgt i32 %165, 0
  br i1 %166, label %167, label %176

167:                                              ; preds = %164
  %168 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %169 = call i64 @output_ready(%struct.TYPE_8__* %168)
  %170 = icmp ne i64 %169, 0
  br i1 %170, label %171, label %172

171:                                              ; preds = %167
  br label %176

172:                                              ; preds = %167
  br label %173

173:                                              ; preds = %172
  %174 = load i32, i32* %9, align 4
  %175 = add nsw i32 %174, -1
  store i32 %175, i32* %9, align 4
  br label %164

176:                                              ; preds = %171, %164
  %177 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %178 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %177, i32 0, i32 3
  %179 = load i64, i64* %5, align 8
  %180 = call i32 @spin_lock_irqsave(i32* %178, i64 %179)
  %181 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %182 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %181, i32 0, i32 5
  %183 = load i32, i32* %182, align 8
  %184 = icmp ne i32 %183, 0
  br i1 %184, label %186, label %185

185:                                              ; preds = %176
  store i32 0, i32* %8, align 4
  br label %186

186:                                              ; preds = %185, %176
  %187 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %188 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %187, i32 0, i32 0
  %189 = load i64, i64* %188, align 8
  %190 = load i32, i32* %8, align 4
  %191 = sext i32 %190 to i64
  %192 = xor i64 %189, %191
  store i64 %192, i64* %4, align 8
  store i32 0, i32* %8, align 4
  %193 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %194 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %193, i32 0, i32 1
  %195 = load i32*, i32** %194, align 8
  %196 = load i64, i64* %4, align 8
  %197 = getelementptr inbounds i32, i32* %195, i64 %196
  %198 = load i32, i32* %197, align 4
  %199 = load i32, i32* @MPU401_MODE_OUTPUT, align 4
  %200 = and i32 %198, %199
  %201 = icmp eq i32 %200, 0
  br i1 %201, label %202, label %207

202:                                              ; preds = %186
  %203 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %204 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %203, i32 0, i32 3
  %205 = load i64, i64* %5, align 8
  %206 = call i32 @spin_unlock_irqrestore(i32* %204, i64 %205)
  br label %321

207:                                              ; preds = %186
  %208 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %209 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %208, i32 0, i32 6
  %210 = load i32**, i32*** %209, align 8
  %211 = load i64, i64* %4, align 8
  %212 = getelementptr inbounds i32*, i32** %210, i64 %211
  %213 = load i32*, i32** %212, align 8
  %214 = call i64 @snd_rawmidi_transmit_empty(i32* %213)
  %215 = icmp ne i64 %214, 0
  br i1 %215, label %216, label %217

216:                                              ; preds = %207
  br label %279

217:                                              ; preds = %207
  %218 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %219 = call i64 @output_ready(%struct.TYPE_8__* %218)
  %220 = icmp ne i64 %219, 0
  br i1 %220, label %221, label %311

221:                                              ; preds = %217
  %222 = load i64, i64* %4, align 8
  %223 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %224 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %223, i32 0, i32 0
  %225 = load i64, i64* %224, align 8
  %226 = icmp ne i64 %222, %225
  br i1 %226, label %227, label %245

227:                                              ; preds = %221
  %228 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %229 = load i64, i64* %4, align 8
  %230 = load i64, i64* @internal_mpu, align 8
  %231 = icmp eq i64 %229, %230
  br i1 %231, label %232, label %235

232:                                              ; preds = %227
  %233 = load i8, i8* @WF_INTERNAL_SWITCH, align 1
  %234 = zext i8 %233 to i32
  br label %238

235:                                              ; preds = %227
  %236 = load i8, i8* @WF_EXTERNAL_SWITCH, align 1
  %237 = zext i8 %236 to i32
  br label %238

238:                                              ; preds = %235, %232
  %239 = phi i32 [ %234, %232 ], [ %237, %235 ]
  %240 = trunc i32 %239 to i8
  %241 = call i32 @write_data(%struct.TYPE_8__* %228, i8 zeroext %240)
  %242 = load i64, i64* %4, align 8
  %243 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %244 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %243, i32 0, i32 0
  store i64 %242, i64* %244, align 8
  br label %310

245:                                              ; preds = %221
  %246 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %247 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %246, i32 0, i32 6
  %248 = load i32**, i32*** %247, align 8
  %249 = load i64, i64* %4, align 8
  %250 = getelementptr inbounds i32*, i32** %248, i64 %249
  %251 = load i32*, i32** %250, align 8
  %252 = call i32 @snd_rawmidi_transmit(i32* %251, i8* %6, i32 1)
  %253 = icmp eq i32 %252, 1
  br i1 %253, label %254, label %278

254:                                              ; preds = %245
  %255 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %256 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %255, i32 0, i32 5
  %257 = load i32, i32* %256, align 8
  %258 = icmp ne i32 %257, 0
  br i1 %258, label %259, label %271

259:                                              ; preds = %254
  %260 = load i8, i8* %6, align 1
  %261 = zext i8 %260 to i32
  %262 = load i8, i8* @WF_INTERNAL_SWITCH, align 1
  %263 = zext i8 %262 to i32
  %264 = icmp ne i32 %261, %263
  br i1 %264, label %265, label %275

265:                                              ; preds = %259
  %266 = load i8, i8* %6, align 1
  %267 = zext i8 %266 to i32
  %268 = load i8, i8* @WF_EXTERNAL_SWITCH, align 1
  %269 = zext i8 %268 to i32
  %270 = icmp ne i32 %267, %269
  br i1 %270, label %271, label %275

271:                                              ; preds = %265, %254
  %272 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %273 = load i8, i8* %6, align 1
  %274 = call i32 @write_data(%struct.TYPE_8__* %272, i8 zeroext %273)
  br label %275

275:                                              ; preds = %271, %265, %259
  %276 = load i32, i32* %7, align 4
  %277 = add nsw i32 %276, -1
  store i32 %277, i32* %7, align 4
  br label %309

278:                                              ; preds = %245
  br label %279

279:                                              ; preds = %278, %216
  %280 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %281 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %280, i32 0, i32 2
  %282 = load i64, i64* %281, align 8
  %283 = icmp ne i64 %282, 0
  br i1 %283, label %284, label %295

284:                                              ; preds = %279
  %285 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %286 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %285, i32 0, i32 2
  %287 = load i64, i64* %286, align 8
  %288 = add nsw i64 %287, -1
  store i64 %288, i64* %286, align 8
  %289 = icmp sle i64 %288, 0
  br i1 %289, label %290, label %294

290:                                              ; preds = %284
  %291 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %292 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %291, i32 0, i32 4
  %293 = call i32 @del_timer(i32* %292)
  br label %294

294:                                              ; preds = %290, %284
  br label %295

295:                                              ; preds = %294, %279
  %296 = load i32, i32* @MPU401_MODE_OUTPUT_TRIGGER, align 4
  %297 = xor i32 %296, -1
  %298 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %299 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %298, i32 0, i32 1
  %300 = load i32*, i32** %299, align 8
  %301 = load i64, i64* %4, align 8
  %302 = getelementptr inbounds i32, i32* %300, i64 %301
  %303 = load i32, i32* %302, align 4
  %304 = and i32 %303, %297
  store i32 %304, i32* %302, align 4
  %305 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %306 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %305, i32 0, i32 3
  %307 = load i64, i64* %5, align 8
  %308 = call i32 @spin_unlock_irqrestore(i32* %306, i64 %307)
  br label %321

309:                                              ; preds = %275
  br label %310

310:                                              ; preds = %309, %238
  br label %316

311:                                              ; preds = %217
  %312 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %313 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %312, i32 0, i32 3
  %314 = load i64, i64* %5, align 8
  %315 = call i32 @spin_unlock_irqrestore(i32* %313, i64 %314)
  br label %321

316:                                              ; preds = %310
  %317 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %318 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %317, i32 0, i32 3
  %319 = load i64, i64* %5, align 8
  %320 = call i32 @spin_unlock_irqrestore(i32* %318, i64 %319)
  br label %160

321:                                              ; preds = %133, %158, %202, %295, %311, %160
  ret void
}

declare dso_local i64 @output_ready(%struct.TYPE_8__*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @snd_rawmidi_transmit(i32*, i8*, i32) #1

declare dso_local i32 @write_data(%struct.TYPE_8__*, i8 zeroext) #1

declare dso_local i32 @del_timer(i32*) #1

declare dso_local i64 @snd_rawmidi_transmit_empty(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
