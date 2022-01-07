; ModuleID = '/home/carl/AnghaBench/linux/lib/zstd/extr_fse_compress.c_FSE_buildCTable_wksp.c'
source_filename = "/home/carl/AnghaBench/linux/lib/zstd/extr_fse_compress.c_FSE_buildCTable_wksp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32 }

@FSE_MAX_SYMBOL_VALUE = common dso_local global i64 0, align 8
@tableLog_tooLarge = common dso_local global i32 0, align 4
@GENERIC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @FSE_buildCTable_wksp(i32* %0, i16* %1, i32 %2, i32 %3, i8* %4, i64 %5) #0 {
  %7 = alloca i64, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i16*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i8*, align 8
  %17 = alloca i64*, align 8
  %18 = alloca i8*, align 8
  %19 = alloca %struct.TYPE_2__*, align 8
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32*, align 8
  %23 = alloca i64*, align 8
  %24 = alloca i64, align 8
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  %29 = alloca i32, align 4
  %30 = alloca i64, align 8
  %31 = alloca i32, align 4
  %32 = alloca i32, align 4
  %33 = alloca i32, align 4
  %34 = alloca i32, align 4
  store i32* %0, i32** %8, align 8
  store i16* %1, i16** %9, align 8
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i8* %4, i8** %12, align 8
  store i64 %5, i64* %13, align 8
  %35 = load i32, i32* %11, align 4
  %36 = shl i32 1, %35
  store i32 %36, i32* %14, align 4
  %37 = load i32, i32* %14, align 4
  %38 = sub nsw i32 %37, 1
  store i32 %38, i32* %15, align 4
  %39 = load i32*, i32** %8, align 8
  %40 = bitcast i32* %39 to i8*
  store i8* %40, i8** %16, align 8
  %41 = load i8*, i8** %16, align 8
  %42 = bitcast i8* %41 to i64*
  %43 = getelementptr inbounds i64, i64* %42, i64 2
  store i64* %43, i64** %17, align 8
  %44 = load i8*, i8** %16, align 8
  %45 = bitcast i8* %44 to i32*
  %46 = getelementptr inbounds i32, i32* %45, i64 1
  %47 = load i32, i32* %11, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %52

49:                                               ; preds = %6
  %50 = load i32, i32* %14, align 4
  %51 = ashr i32 %50, 1
  br label %53

52:                                               ; preds = %6
  br label %53

53:                                               ; preds = %52, %49
  %54 = phi i32 [ %51, %49 ], [ 1, %52 ]
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds i32, i32* %46, i64 %55
  %57 = bitcast i32* %56 to i8*
  store i8* %57, i8** %18, align 8
  %58 = load i8*, i8** %18, align 8
  %59 = bitcast i8* %58 to %struct.TYPE_2__*
  store %struct.TYPE_2__* %59, %struct.TYPE_2__** %19, align 8
  %60 = load i32, i32* %14, align 4
  %61 = call i32 @FSE_TABLESTEP(i32 %60)
  store i32 %61, i32* %20, align 4
  %62 = load i32, i32* %14, align 4
  %63 = sub nsw i32 %62, 1
  store i32 %63, i32* %21, align 4
  store i64 0, i64* %24, align 8
  %64 = load i8*, i8** %12, align 8
  %65 = bitcast i8* %64 to i32*
  %66 = load i64, i64* %24, align 8
  %67 = getelementptr inbounds i32, i32* %65, i64 %66
  store i32* %67, i32** %22, align 8
  %68 = load i64, i64* @FSE_MAX_SYMBOL_VALUE, align 8
  %69 = add nsw i64 %68, 2
  %70 = load i64, i64* %24, align 8
  %71 = add i64 %70, %69
  store i64 %71, i64* %24, align 8
  %72 = load i8*, i8** %12, align 8
  %73 = bitcast i8* %72 to i32*
  %74 = load i64, i64* %24, align 8
  %75 = getelementptr inbounds i32, i32* %73, i64 %74
  %76 = bitcast i32* %75 to i64*
  store i64* %76, i64** %23, align 8
  %77 = load i32, i32* %11, align 4
  %78 = zext i32 %77 to i64
  %79 = shl i64 1, %78
  %80 = mul i64 8, %79
  %81 = trunc i64 %80 to i32
  %82 = call i32 @ALIGN(i32 %81, i32 4)
  %83 = ashr i32 %82, 2
  %84 = sext i32 %83 to i64
  %85 = load i64, i64* %24, align 8
  %86 = add i64 %85, %84
  store i64 %86, i64* %24, align 8
  %87 = load i64, i64* %24, align 8
  %88 = shl i64 %87, 2
  %89 = load i64, i64* %13, align 8
  %90 = icmp ugt i64 %88, %89
  br i1 %90, label %91, label %94

91:                                               ; preds = %53
  %92 = load i32, i32* @tableLog_tooLarge, align 4
  %93 = call i64 @ERROR(i32 %92)
  store i64 %93, i64* %7, align 8
  br label %343

94:                                               ; preds = %53
  %95 = load i8*, i8** %12, align 8
  %96 = bitcast i8* %95 to i32*
  %97 = load i64, i64* %24, align 8
  %98 = getelementptr inbounds i32, i32* %96, i64 %97
  %99 = bitcast i32* %98 to i8*
  store i8* %99, i8** %12, align 8
  %100 = load i64, i64* %24, align 8
  %101 = shl i64 %100, 2
  %102 = load i64, i64* %13, align 8
  %103 = sub i64 %102, %101
  store i64 %103, i64* %13, align 8
  %104 = load i32, i32* %11, align 4
  %105 = zext i32 %104 to i64
  %106 = load i64*, i64** %17, align 8
  %107 = getelementptr inbounds i64, i64* %106, i64 -2
  store i64 %105, i64* %107, align 8
  %108 = load i32, i32* %10, align 4
  %109 = zext i32 %108 to i64
  %110 = load i64*, i64** %17, align 8
  %111 = getelementptr inbounds i64, i64* %110, i64 -1
  store i64 %109, i64* %111, align 8
  %112 = load i32*, i32** %22, align 8
  %113 = getelementptr inbounds i32, i32* %112, i64 0
  store i32 0, i32* %113, align 4
  store i32 1, i32* %25, align 4
  br label %114

114:                                              ; preds = %168, %94
  %115 = load i32, i32* %25, align 4
  %116 = load i32, i32* %10, align 4
  %117 = add i32 %116, 1
  %118 = icmp ule i32 %115, %117
  br i1 %118, label %119, label %171

119:                                              ; preds = %114
  %120 = load i16*, i16** %9, align 8
  %121 = load i32, i32* %25, align 4
  %122 = sub nsw i32 %121, 1
  %123 = sext i32 %122 to i64
  %124 = getelementptr inbounds i16, i16* %120, i64 %123
  %125 = load i16, i16* %124, align 2
  %126 = sext i16 %125 to i32
  %127 = icmp eq i32 %126, -1
  br i1 %127, label %128, label %148

128:                                              ; preds = %119
  %129 = load i32*, i32** %22, align 8
  %130 = load i32, i32* %25, align 4
  %131 = sub nsw i32 %130, 1
  %132 = sext i32 %131 to i64
  %133 = getelementptr inbounds i32, i32* %129, i64 %132
  %134 = load i32, i32* %133, align 4
  %135 = add nsw i32 %134, 1
  %136 = load i32*, i32** %22, align 8
  %137 = load i32, i32* %25, align 4
  %138 = sext i32 %137 to i64
  %139 = getelementptr inbounds i32, i32* %136, i64 %138
  store i32 %135, i32* %139, align 4
  %140 = load i32, i32* %25, align 4
  %141 = sub nsw i32 %140, 1
  %142 = sext i32 %141 to i64
  %143 = load i64*, i64** %23, align 8
  %144 = load i32, i32* %21, align 4
  %145 = add nsw i32 %144, -1
  store i32 %145, i32* %21, align 4
  %146 = sext i32 %144 to i64
  %147 = getelementptr inbounds i64, i64* %143, i64 %146
  store i64 %142, i64* %147, align 8
  br label %167

148:                                              ; preds = %119
  %149 = load i32*, i32** %22, align 8
  %150 = load i32, i32* %25, align 4
  %151 = sub nsw i32 %150, 1
  %152 = sext i32 %151 to i64
  %153 = getelementptr inbounds i32, i32* %149, i64 %152
  %154 = load i32, i32* %153, align 4
  %155 = load i16*, i16** %9, align 8
  %156 = load i32, i32* %25, align 4
  %157 = sub nsw i32 %156, 1
  %158 = sext i32 %157 to i64
  %159 = getelementptr inbounds i16, i16* %155, i64 %158
  %160 = load i16, i16* %159, align 2
  %161 = sext i16 %160 to i32
  %162 = add nsw i32 %154, %161
  %163 = load i32*, i32** %22, align 8
  %164 = load i32, i32* %25, align 4
  %165 = sext i32 %164 to i64
  %166 = getelementptr inbounds i32, i32* %163, i64 %165
  store i32 %162, i32* %166, align 4
  br label %167

167:                                              ; preds = %148, %128
  br label %168

168:                                              ; preds = %167
  %169 = load i32, i32* %25, align 4
  %170 = add nsw i32 %169, 1
  store i32 %170, i32* %25, align 4
  br label %114

171:                                              ; preds = %114
  %172 = load i32, i32* %14, align 4
  %173 = add nsw i32 %172, 1
  %174 = load i32*, i32** %22, align 8
  %175 = load i32, i32* %10, align 4
  %176 = add i32 %175, 1
  %177 = zext i32 %176 to i64
  %178 = getelementptr inbounds i32, i32* %174, i64 %177
  store i32 %173, i32* %178, align 4
  store i32 0, i32* %26, align 4
  store i32 0, i32* %27, align 4
  br label %179

179:                                              ; preds = %220, %171
  %180 = load i32, i32* %27, align 4
  %181 = load i32, i32* %10, align 4
  %182 = icmp ule i32 %180, %181
  br i1 %182, label %183, label %223

183:                                              ; preds = %179
  store i32 0, i32* %28, align 4
  br label %184

184:                                              ; preds = %216, %183
  %185 = load i32, i32* %28, align 4
  %186 = load i16*, i16** %9, align 8
  %187 = load i32, i32* %27, align 4
  %188 = sext i32 %187 to i64
  %189 = getelementptr inbounds i16, i16* %186, i64 %188
  %190 = load i16, i16* %189, align 2
  %191 = sext i16 %190 to i32
  %192 = icmp slt i32 %185, %191
  br i1 %192, label %193, label %219

193:                                              ; preds = %184
  %194 = load i32, i32* %27, align 4
  %195 = sext i32 %194 to i64
  %196 = load i64*, i64** %23, align 8
  %197 = load i32, i32* %26, align 4
  %198 = sext i32 %197 to i64
  %199 = getelementptr inbounds i64, i64* %196, i64 %198
  store i64 %195, i64* %199, align 8
  %200 = load i32, i32* %26, align 4
  %201 = load i32, i32* %20, align 4
  %202 = add nsw i32 %200, %201
  %203 = load i32, i32* %15, align 4
  %204 = and i32 %202, %203
  store i32 %204, i32* %26, align 4
  br label %205

205:                                              ; preds = %209, %193
  %206 = load i32, i32* %26, align 4
  %207 = load i32, i32* %21, align 4
  %208 = icmp sgt i32 %206, %207
  br i1 %208, label %209, label %215

209:                                              ; preds = %205
  %210 = load i32, i32* %26, align 4
  %211 = load i32, i32* %20, align 4
  %212 = add nsw i32 %210, %211
  %213 = load i32, i32* %15, align 4
  %214 = and i32 %212, %213
  store i32 %214, i32* %26, align 4
  br label %205

215:                                              ; preds = %205
  br label %216

216:                                              ; preds = %215
  %217 = load i32, i32* %28, align 4
  %218 = add nsw i32 %217, 1
  store i32 %218, i32* %28, align 4
  br label %184

219:                                              ; preds = %184
  br label %220

220:                                              ; preds = %219
  %221 = load i32, i32* %27, align 4
  %222 = add nsw i32 %221, 1
  store i32 %222, i32* %27, align 4
  br label %179

223:                                              ; preds = %179
  %224 = load i32, i32* %26, align 4
  %225 = icmp ne i32 %224, 0
  br i1 %225, label %226, label %229

226:                                              ; preds = %223
  %227 = load i32, i32* @GENERIC, align 4
  %228 = call i64 @ERROR(i32 %227)
  store i64 %228, i64* %7, align 8
  br label %343

229:                                              ; preds = %223
  store i32 0, i32* %29, align 4
  br label %230

230:                                              ; preds = %252, %229
  %231 = load i32, i32* %29, align 4
  %232 = load i32, i32* %14, align 4
  %233 = icmp slt i32 %231, %232
  br i1 %233, label %234, label %255

234:                                              ; preds = %230
  %235 = load i64*, i64** %23, align 8
  %236 = load i32, i32* %29, align 4
  %237 = sext i32 %236 to i64
  %238 = getelementptr inbounds i64, i64* %235, i64 %237
  %239 = load i64, i64* %238, align 8
  store i64 %239, i64* %30, align 8
  %240 = load i32, i32* %14, align 4
  %241 = load i32, i32* %29, align 4
  %242 = add nsw i32 %240, %241
  %243 = sext i32 %242 to i64
  %244 = load i64*, i64** %17, align 8
  %245 = load i32*, i32** %22, align 8
  %246 = load i64, i64* %30, align 8
  %247 = getelementptr inbounds i32, i32* %245, i64 %246
  %248 = load i32, i32* %247, align 4
  %249 = add nsw i32 %248, 1
  store i32 %249, i32* %247, align 4
  %250 = sext i32 %248 to i64
  %251 = getelementptr inbounds i64, i64* %244, i64 %250
  store i64 %243, i64* %251, align 8
  br label %252

252:                                              ; preds = %234
  %253 = load i32, i32* %29, align 4
  %254 = add nsw i32 %253, 1
  store i32 %254, i32* %29, align 4
  br label %230

255:                                              ; preds = %230
  store i32 0, i32* %31, align 4
  store i32 0, i32* %32, align 4
  br label %256

256:                                              ; preds = %339, %255
  %257 = load i32, i32* %32, align 4
  %258 = load i32, i32* %10, align 4
  %259 = icmp ule i32 %257, %258
  br i1 %259, label %260, label %342

260:                                              ; preds = %256
  %261 = load i16*, i16** %9, align 8
  %262 = load i32, i32* %32, align 4
  %263 = zext i32 %262 to i64
  %264 = getelementptr inbounds i16, i16* %261, i64 %263
  %265 = load i16, i16* %264, align 2
  %266 = sext i16 %265 to i32
  switch i32 %266, label %288 [
    i32 0, label %267
    i32 -1, label %268
    i32 1, label %268
  ]

267:                                              ; preds = %260
  br label %338

268:                                              ; preds = %260, %260
  %269 = load i32, i32* %11, align 4
  %270 = shl i32 %269, 16
  %271 = load i32, i32* %11, align 4
  %272 = shl i32 1, %271
  %273 = sub i32 %270, %272
  %274 = load %struct.TYPE_2__*, %struct.TYPE_2__** %19, align 8
  %275 = load i32, i32* %32, align 4
  %276 = zext i32 %275 to i64
  %277 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %274, i64 %276
  %278 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %277, i32 0, i32 0
  store i32 %273, i32* %278, align 4
  %279 = load i32, i32* %31, align 4
  %280 = sub i32 %279, 1
  %281 = load %struct.TYPE_2__*, %struct.TYPE_2__** %19, align 8
  %282 = load i32, i32* %32, align 4
  %283 = zext i32 %282 to i64
  %284 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %281, i64 %283
  %285 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %284, i32 0, i32 1
  store i32 %280, i32* %285, align 4
  %286 = load i32, i32* %31, align 4
  %287 = add i32 %286, 1
  store i32 %287, i32* %31, align 4
  br label %338

288:                                              ; preds = %260
  %289 = load i32, i32* %11, align 4
  %290 = load i16*, i16** %9, align 8
  %291 = load i32, i32* %32, align 4
  %292 = zext i32 %291 to i64
  %293 = getelementptr inbounds i16, i16* %290, i64 %292
  %294 = load i16, i16* %293, align 2
  %295 = sext i16 %294 to i32
  %296 = sub nsw i32 %295, 1
  %297 = trunc i32 %296 to i16
  %298 = call i32 @BIT_highbit32(i16 signext %297)
  %299 = sub i32 %289, %298
  store i32 %299, i32* %33, align 4
  %300 = load i16*, i16** %9, align 8
  %301 = load i32, i32* %32, align 4
  %302 = zext i32 %301 to i64
  %303 = getelementptr inbounds i16, i16* %300, i64 %302
  %304 = load i16, i16* %303, align 2
  %305 = sext i16 %304 to i32
  %306 = load i32, i32* %33, align 4
  %307 = shl i32 %305, %306
  store i32 %307, i32* %34, align 4
  %308 = load i32, i32* %33, align 4
  %309 = shl i32 %308, 16
  %310 = load i32, i32* %34, align 4
  %311 = sub nsw i32 %309, %310
  %312 = load %struct.TYPE_2__*, %struct.TYPE_2__** %19, align 8
  %313 = load i32, i32* %32, align 4
  %314 = zext i32 %313 to i64
  %315 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %312, i64 %314
  %316 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %315, i32 0, i32 0
  store i32 %311, i32* %316, align 4
  %317 = load i32, i32* %31, align 4
  %318 = load i16*, i16** %9, align 8
  %319 = load i32, i32* %32, align 4
  %320 = zext i32 %319 to i64
  %321 = getelementptr inbounds i16, i16* %318, i64 %320
  %322 = load i16, i16* %321, align 2
  %323 = sext i16 %322 to i32
  %324 = sub i32 %317, %323
  %325 = load %struct.TYPE_2__*, %struct.TYPE_2__** %19, align 8
  %326 = load i32, i32* %32, align 4
  %327 = zext i32 %326 to i64
  %328 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %325, i64 %327
  %329 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %328, i32 0, i32 1
  store i32 %324, i32* %329, align 4
  %330 = load i16*, i16** %9, align 8
  %331 = load i32, i32* %32, align 4
  %332 = zext i32 %331 to i64
  %333 = getelementptr inbounds i16, i16* %330, i64 %332
  %334 = load i16, i16* %333, align 2
  %335 = sext i16 %334 to i32
  %336 = load i32, i32* %31, align 4
  %337 = add i32 %336, %335
  store i32 %337, i32* %31, align 4
  br label %338

338:                                              ; preds = %288, %268, %267
  br label %339

339:                                              ; preds = %338
  %340 = load i32, i32* %32, align 4
  %341 = add i32 %340, 1
  store i32 %341, i32* %32, align 4
  br label %256

342:                                              ; preds = %256
  store i64 0, i64* %7, align 8
  br label %343

343:                                              ; preds = %342, %226, %91
  %344 = load i64, i64* %7, align 8
  ret i64 %344
}

declare dso_local i32 @FSE_TABLESTEP(i32) #1

declare dso_local i32 @ALIGN(i32, i32) #1

declare dso_local i64 @ERROR(i32) #1

declare dso_local i32 @BIT_highbit32(i16 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
