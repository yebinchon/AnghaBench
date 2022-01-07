; ModuleID = '/home/carl/AnghaBench/linux/fs/reiserfs/extr_hashes.c_keyed_hash.c'
source_filename = "/home/carl/AnghaBench/linux/fs/reiserfs/extr_hashes.c_keyed_hash.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@__const.keyed_hash.k = private unnamed_addr constant [4 x i32] [i32 -1805343611, i32 1412307604, i32 1048865791, i32 -1218719805], align 16
@PARTROUNDS = common dso_local global i32 0, align 4
@FULLROUNDS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @keyed_hash(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca [4 x i32], align 16
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  %14 = bitcast [4 x i32]* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %14, i8* align 16 bitcast ([4 x i32]* @__const.keyed_hash.k to i8*), i64 16, i1 false)
  %15 = getelementptr inbounds [4 x i32], [4 x i32]* %5, i64 0, i64 0
  %16 = load i32, i32* %15, align 16
  store i32 %16, i32* %6, align 4
  %17 = getelementptr inbounds [4 x i32], [4 x i32]* %5, i64 0, i64 1
  %18 = load i32, i32* %17, align 4
  store i32 %18, i32* %7, align 4
  %19 = load i32, i32* %4, align 4
  %20 = load i32, i32* %4, align 4
  %21 = shl i32 %20, 8
  %22 = or i32 %19, %21
  store i32 %22, i32* %12, align 4
  %23 = load i32, i32* %12, align 4
  %24 = shl i32 %23, 16
  %25 = load i32, i32* %12, align 4
  %26 = or i32 %25, %24
  store i32 %26, i32* %12, align 4
  br label %27

27:                                               ; preds = %30, %2
  %28 = load i32, i32* %4, align 4
  %29 = icmp sge i32 %28, 16
  br i1 %29, label %30, label %125

30:                                               ; preds = %27
  %31 = load i8*, i8** %3, align 8
  %32 = getelementptr inbounds i8, i8* %31, i64 0
  %33 = load i8, i8* %32, align 1
  %34 = sext i8 %33 to i32
  %35 = load i8*, i8** %3, align 8
  %36 = getelementptr inbounds i8, i8* %35, i64 1
  %37 = load i8, i8* %36, align 1
  %38 = sext i8 %37 to i32
  %39 = shl i32 %38, 8
  %40 = or i32 %34, %39
  %41 = load i8*, i8** %3, align 8
  %42 = getelementptr inbounds i8, i8* %41, i64 2
  %43 = load i8, i8* %42, align 1
  %44 = sext i8 %43 to i32
  %45 = shl i32 %44, 16
  %46 = or i32 %40, %45
  %47 = load i8*, i8** %3, align 8
  %48 = getelementptr inbounds i8, i8* %47, i64 3
  %49 = load i8, i8* %48, align 1
  %50 = sext i8 %49 to i32
  %51 = shl i32 %50, 24
  %52 = or i32 %46, %51
  store i32 %52, i32* %8, align 4
  %53 = load i8*, i8** %3, align 8
  %54 = getelementptr inbounds i8, i8* %53, i64 4
  %55 = load i8, i8* %54, align 1
  %56 = sext i8 %55 to i32
  %57 = load i8*, i8** %3, align 8
  %58 = getelementptr inbounds i8, i8* %57, i64 5
  %59 = load i8, i8* %58, align 1
  %60 = sext i8 %59 to i32
  %61 = shl i32 %60, 8
  %62 = or i32 %56, %61
  %63 = load i8*, i8** %3, align 8
  %64 = getelementptr inbounds i8, i8* %63, i64 6
  %65 = load i8, i8* %64, align 1
  %66 = sext i8 %65 to i32
  %67 = shl i32 %66, 16
  %68 = or i32 %62, %67
  %69 = load i8*, i8** %3, align 8
  %70 = getelementptr inbounds i8, i8* %69, i64 7
  %71 = load i8, i8* %70, align 1
  %72 = sext i8 %71 to i32
  %73 = shl i32 %72, 24
  %74 = or i32 %68, %73
  store i32 %74, i32* %9, align 4
  %75 = load i8*, i8** %3, align 8
  %76 = getelementptr inbounds i8, i8* %75, i64 8
  %77 = load i8, i8* %76, align 1
  %78 = sext i8 %77 to i32
  %79 = load i8*, i8** %3, align 8
  %80 = getelementptr inbounds i8, i8* %79, i64 9
  %81 = load i8, i8* %80, align 1
  %82 = sext i8 %81 to i32
  %83 = shl i32 %82, 8
  %84 = or i32 %78, %83
  %85 = load i8*, i8** %3, align 8
  %86 = getelementptr inbounds i8, i8* %85, i64 10
  %87 = load i8, i8* %86, align 1
  %88 = sext i8 %87 to i32
  %89 = shl i32 %88, 16
  %90 = or i32 %84, %89
  %91 = load i8*, i8** %3, align 8
  %92 = getelementptr inbounds i8, i8* %91, i64 11
  %93 = load i8, i8* %92, align 1
  %94 = sext i8 %93 to i32
  %95 = shl i32 %94, 24
  %96 = or i32 %90, %95
  store i32 %96, i32* %10, align 4
  %97 = load i8*, i8** %3, align 8
  %98 = getelementptr inbounds i8, i8* %97, i64 12
  %99 = load i8, i8* %98, align 1
  %100 = sext i8 %99 to i32
  %101 = load i8*, i8** %3, align 8
  %102 = getelementptr inbounds i8, i8* %101, i64 13
  %103 = load i8, i8* %102, align 1
  %104 = sext i8 %103 to i32
  %105 = shl i32 %104, 8
  %106 = or i32 %100, %105
  %107 = load i8*, i8** %3, align 8
  %108 = getelementptr inbounds i8, i8* %107, i64 14
  %109 = load i8, i8* %108, align 1
  %110 = sext i8 %109 to i32
  %111 = shl i32 %110, 16
  %112 = or i32 %106, %111
  %113 = load i8*, i8** %3, align 8
  %114 = getelementptr inbounds i8, i8* %113, i64 15
  %115 = load i8, i8* %114, align 1
  %116 = sext i8 %115 to i32
  %117 = shl i32 %116, 24
  %118 = or i32 %112, %117
  store i32 %118, i32* %11, align 4
  %119 = load i32, i32* @PARTROUNDS, align 4
  %120 = call i32 @TEACORE(i32 %119)
  %121 = load i32, i32* %4, align 4
  %122 = sub nsw i32 %121, 16
  store i32 %122, i32* %4, align 4
  %123 = load i8*, i8** %3, align 8
  %124 = getelementptr inbounds i8, i8* %123, i64 16
  store i8* %124, i8** %3, align 8
  br label %27

125:                                              ; preds = %27
  %126 = load i32, i32* %4, align 4
  %127 = icmp sge i32 %126, 12
  br i1 %127, label %128, label %215

128:                                              ; preds = %125
  %129 = load i8*, i8** %3, align 8
  %130 = getelementptr inbounds i8, i8* %129, i64 0
  %131 = load i8, i8* %130, align 1
  %132 = sext i8 %131 to i32
  %133 = load i8*, i8** %3, align 8
  %134 = getelementptr inbounds i8, i8* %133, i64 1
  %135 = load i8, i8* %134, align 1
  %136 = sext i8 %135 to i32
  %137 = shl i32 %136, 8
  %138 = or i32 %132, %137
  %139 = load i8*, i8** %3, align 8
  %140 = getelementptr inbounds i8, i8* %139, i64 2
  %141 = load i8, i8* %140, align 1
  %142 = sext i8 %141 to i32
  %143 = shl i32 %142, 16
  %144 = or i32 %138, %143
  %145 = load i8*, i8** %3, align 8
  %146 = getelementptr inbounds i8, i8* %145, i64 3
  %147 = load i8, i8* %146, align 1
  %148 = sext i8 %147 to i32
  %149 = shl i32 %148, 24
  %150 = or i32 %144, %149
  store i32 %150, i32* %8, align 4
  %151 = load i8*, i8** %3, align 8
  %152 = getelementptr inbounds i8, i8* %151, i64 4
  %153 = load i8, i8* %152, align 1
  %154 = sext i8 %153 to i32
  %155 = load i8*, i8** %3, align 8
  %156 = getelementptr inbounds i8, i8* %155, i64 5
  %157 = load i8, i8* %156, align 1
  %158 = sext i8 %157 to i32
  %159 = shl i32 %158, 8
  %160 = or i32 %154, %159
  %161 = load i8*, i8** %3, align 8
  %162 = getelementptr inbounds i8, i8* %161, i64 6
  %163 = load i8, i8* %162, align 1
  %164 = sext i8 %163 to i32
  %165 = shl i32 %164, 16
  %166 = or i32 %160, %165
  %167 = load i8*, i8** %3, align 8
  %168 = getelementptr inbounds i8, i8* %167, i64 7
  %169 = load i8, i8* %168, align 1
  %170 = sext i8 %169 to i32
  %171 = shl i32 %170, 24
  %172 = or i32 %166, %171
  store i32 %172, i32* %9, align 4
  %173 = load i8*, i8** %3, align 8
  %174 = getelementptr inbounds i8, i8* %173, i64 8
  %175 = load i8, i8* %174, align 1
  %176 = sext i8 %175 to i32
  %177 = load i8*, i8** %3, align 8
  %178 = getelementptr inbounds i8, i8* %177, i64 9
  %179 = load i8, i8* %178, align 1
  %180 = sext i8 %179 to i32
  %181 = shl i32 %180, 8
  %182 = or i32 %176, %181
  %183 = load i8*, i8** %3, align 8
  %184 = getelementptr inbounds i8, i8* %183, i64 10
  %185 = load i8, i8* %184, align 1
  %186 = sext i8 %185 to i32
  %187 = shl i32 %186, 16
  %188 = or i32 %182, %187
  %189 = load i8*, i8** %3, align 8
  %190 = getelementptr inbounds i8, i8* %189, i64 11
  %191 = load i8, i8* %190, align 1
  %192 = sext i8 %191 to i32
  %193 = shl i32 %192, 24
  %194 = or i32 %188, %193
  store i32 %194, i32* %10, align 4
  %195 = load i32, i32* %12, align 4
  store i32 %195, i32* %11, align 4
  store i32 12, i32* %13, align 4
  br label %196

196:                                              ; preds = %211, %128
  %197 = load i32, i32* %13, align 4
  %198 = load i32, i32* %4, align 4
  %199 = icmp slt i32 %197, %198
  br i1 %199, label %200, label %214

200:                                              ; preds = %196
  %201 = load i32, i32* %11, align 4
  %202 = shl i32 %201, 8
  store i32 %202, i32* %11, align 4
  %203 = load i8*, i8** %3, align 8
  %204 = load i32, i32* %13, align 4
  %205 = sext i32 %204 to i64
  %206 = getelementptr inbounds i8, i8* %203, i64 %205
  %207 = load i8, i8* %206, align 1
  %208 = sext i8 %207 to i32
  %209 = load i32, i32* %11, align 4
  %210 = or i32 %209, %208
  store i32 %210, i32* %11, align 4
  br label %211

211:                                              ; preds = %200
  %212 = load i32, i32* %13, align 4
  %213 = add nsw i32 %212, 1
  store i32 %213, i32* %13, align 4
  br label %196

214:                                              ; preds = %196
  br label %352

215:                                              ; preds = %125
  %216 = load i32, i32* %4, align 4
  %217 = icmp sge i32 %216, 8
  br i1 %217, label %218, label %283

218:                                              ; preds = %215
  %219 = load i8*, i8** %3, align 8
  %220 = getelementptr inbounds i8, i8* %219, i64 0
  %221 = load i8, i8* %220, align 1
  %222 = sext i8 %221 to i32
  %223 = load i8*, i8** %3, align 8
  %224 = getelementptr inbounds i8, i8* %223, i64 1
  %225 = load i8, i8* %224, align 1
  %226 = sext i8 %225 to i32
  %227 = shl i32 %226, 8
  %228 = or i32 %222, %227
  %229 = load i8*, i8** %3, align 8
  %230 = getelementptr inbounds i8, i8* %229, i64 2
  %231 = load i8, i8* %230, align 1
  %232 = sext i8 %231 to i32
  %233 = shl i32 %232, 16
  %234 = or i32 %228, %233
  %235 = load i8*, i8** %3, align 8
  %236 = getelementptr inbounds i8, i8* %235, i64 3
  %237 = load i8, i8* %236, align 1
  %238 = sext i8 %237 to i32
  %239 = shl i32 %238, 24
  %240 = or i32 %234, %239
  store i32 %240, i32* %8, align 4
  %241 = load i8*, i8** %3, align 8
  %242 = getelementptr inbounds i8, i8* %241, i64 4
  %243 = load i8, i8* %242, align 1
  %244 = sext i8 %243 to i32
  %245 = load i8*, i8** %3, align 8
  %246 = getelementptr inbounds i8, i8* %245, i64 5
  %247 = load i8, i8* %246, align 1
  %248 = sext i8 %247 to i32
  %249 = shl i32 %248, 8
  %250 = or i32 %244, %249
  %251 = load i8*, i8** %3, align 8
  %252 = getelementptr inbounds i8, i8* %251, i64 6
  %253 = load i8, i8* %252, align 1
  %254 = sext i8 %253 to i32
  %255 = shl i32 %254, 16
  %256 = or i32 %250, %255
  %257 = load i8*, i8** %3, align 8
  %258 = getelementptr inbounds i8, i8* %257, i64 7
  %259 = load i8, i8* %258, align 1
  %260 = sext i8 %259 to i32
  %261 = shl i32 %260, 24
  %262 = or i32 %256, %261
  store i32 %262, i32* %9, align 4
  %263 = load i32, i32* %12, align 4
  store i32 %263, i32* %11, align 4
  store i32 %263, i32* %10, align 4
  store i32 8, i32* %13, align 4
  br label %264

264:                                              ; preds = %279, %218
  %265 = load i32, i32* %13, align 4
  %266 = load i32, i32* %4, align 4
  %267 = icmp slt i32 %265, %266
  br i1 %267, label %268, label %282

268:                                              ; preds = %264
  %269 = load i32, i32* %10, align 4
  %270 = shl i32 %269, 8
  store i32 %270, i32* %10, align 4
  %271 = load i8*, i8** %3, align 8
  %272 = load i32, i32* %13, align 4
  %273 = sext i32 %272 to i64
  %274 = getelementptr inbounds i8, i8* %271, i64 %273
  %275 = load i8, i8* %274, align 1
  %276 = sext i8 %275 to i32
  %277 = load i32, i32* %10, align 4
  %278 = or i32 %277, %276
  store i32 %278, i32* %10, align 4
  br label %279

279:                                              ; preds = %268
  %280 = load i32, i32* %13, align 4
  %281 = add nsw i32 %280, 1
  store i32 %281, i32* %13, align 4
  br label %264

282:                                              ; preds = %264
  br label %351

283:                                              ; preds = %215
  %284 = load i32, i32* %4, align 4
  %285 = icmp sge i32 %284, 4
  br i1 %285, label %286, label %329

286:                                              ; preds = %283
  %287 = load i8*, i8** %3, align 8
  %288 = getelementptr inbounds i8, i8* %287, i64 0
  %289 = load i8, i8* %288, align 1
  %290 = sext i8 %289 to i32
  %291 = load i8*, i8** %3, align 8
  %292 = getelementptr inbounds i8, i8* %291, i64 1
  %293 = load i8, i8* %292, align 1
  %294 = sext i8 %293 to i32
  %295 = shl i32 %294, 8
  %296 = or i32 %290, %295
  %297 = load i8*, i8** %3, align 8
  %298 = getelementptr inbounds i8, i8* %297, i64 2
  %299 = load i8, i8* %298, align 1
  %300 = sext i8 %299 to i32
  %301 = shl i32 %300, 16
  %302 = or i32 %296, %301
  %303 = load i8*, i8** %3, align 8
  %304 = getelementptr inbounds i8, i8* %303, i64 3
  %305 = load i8, i8* %304, align 1
  %306 = sext i8 %305 to i32
  %307 = shl i32 %306, 24
  %308 = or i32 %302, %307
  store i32 %308, i32* %8, align 4
  %309 = load i32, i32* %12, align 4
  store i32 %309, i32* %11, align 4
  store i32 %309, i32* %10, align 4
  store i32 %309, i32* %9, align 4
  store i32 4, i32* %13, align 4
  br label %310

310:                                              ; preds = %325, %286
  %311 = load i32, i32* %13, align 4
  %312 = load i32, i32* %4, align 4
  %313 = icmp slt i32 %311, %312
  br i1 %313, label %314, label %328

314:                                              ; preds = %310
  %315 = load i32, i32* %9, align 4
  %316 = shl i32 %315, 8
  store i32 %316, i32* %9, align 4
  %317 = load i8*, i8** %3, align 8
  %318 = load i32, i32* %13, align 4
  %319 = sext i32 %318 to i64
  %320 = getelementptr inbounds i8, i8* %317, i64 %319
  %321 = load i8, i8* %320, align 1
  %322 = sext i8 %321 to i32
  %323 = load i32, i32* %9, align 4
  %324 = or i32 %323, %322
  store i32 %324, i32* %9, align 4
  br label %325

325:                                              ; preds = %314
  %326 = load i32, i32* %13, align 4
  %327 = add nsw i32 %326, 1
  store i32 %327, i32* %13, align 4
  br label %310

328:                                              ; preds = %310
  br label %350

329:                                              ; preds = %283
  %330 = load i32, i32* %12, align 4
  store i32 %330, i32* %11, align 4
  store i32 %330, i32* %10, align 4
  store i32 %330, i32* %9, align 4
  store i32 %330, i32* %8, align 4
  store i32 0, i32* %13, align 4
  br label %331

331:                                              ; preds = %346, %329
  %332 = load i32, i32* %13, align 4
  %333 = load i32, i32* %4, align 4
  %334 = icmp slt i32 %332, %333
  br i1 %334, label %335, label %349

335:                                              ; preds = %331
  %336 = load i32, i32* %8, align 4
  %337 = shl i32 %336, 8
  store i32 %337, i32* %8, align 4
  %338 = load i8*, i8** %3, align 8
  %339 = load i32, i32* %13, align 4
  %340 = sext i32 %339 to i64
  %341 = getelementptr inbounds i8, i8* %338, i64 %340
  %342 = load i8, i8* %341, align 1
  %343 = sext i8 %342 to i32
  %344 = load i32, i32* %8, align 4
  %345 = or i32 %344, %343
  store i32 %345, i32* %8, align 4
  br label %346

346:                                              ; preds = %335
  %347 = load i32, i32* %13, align 4
  %348 = add nsw i32 %347, 1
  store i32 %348, i32* %13, align 4
  br label %331

349:                                              ; preds = %331
  br label %350

350:                                              ; preds = %349, %328
  br label %351

351:                                              ; preds = %350, %282
  br label %352

352:                                              ; preds = %351, %214
  %353 = load i32, i32* @FULLROUNDS, align 4
  %354 = call i32 @TEACORE(i32 %353)
  %355 = load i32, i32* %6, align 4
  %356 = load i32, i32* %7, align 4
  %357 = xor i32 %355, %356
  ret i32 %357
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @TEACORE(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
