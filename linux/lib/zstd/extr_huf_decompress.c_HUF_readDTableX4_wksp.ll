; ModuleID = '/home/carl/AnghaBench/linux/lib/zstd/extr_huf_decompress.c_HUF_readDTableX4_wksp.c'
source_filename = "/home/carl/AnghaBench/linux/lib/zstd/extr_huf_decompress.c_HUF_readDTableX4_wksp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i32, i8* }
%struct.TYPE_6__ = type { i8*, i8* }

@HUF_TABLELOG_MAX = common dso_local global i32 0, align 4
@HUF_SYMBOLVALUE_MAX = common dso_local global i32 0, align 4
@tableLog_tooLarge = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @HUF_readDTableX4_wksp(i32* %0, i8* %1, i64 %2, i8* %3, i64 %4) #0 {
  %6 = alloca i64, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.TYPE_7__, align 8
  %17 = alloca i32, align 4
  %18 = alloca i64, align 8
  %19 = alloca i8*, align 8
  %20 = alloca i32*, align 8
  %21 = alloca i32*, align 8
  %22 = alloca i32**, align 8
  %23 = alloca i32*, align 8
  %24 = alloca i32*, align 8
  %25 = alloca %struct.TYPE_6__*, align 8
  %26 = alloca i8**, align 8
  %27 = alloca i64, align 8
  %28 = alloca i32, align 4
  %29 = alloca i32, align 4
  %30 = alloca i32, align 4
  %31 = alloca i32, align 4
  %32 = alloca i32, align 4
  %33 = alloca i32, align 4
  %34 = alloca i32*, align 8
  %35 = alloca i32, align 4
  %36 = alloca i32, align 4
  %37 = alloca i32, align 4
  %38 = alloca i32, align 4
  %39 = alloca i32, align 4
  %40 = alloca i32, align 4
  %41 = alloca i32*, align 8
  %42 = alloca i32, align 4
  store i32* %0, i32** %7, align 8
  store i8* %1, i8** %8, align 8
  store i64 %2, i64* %9, align 8
  store i8* %3, i8** %10, align 8
  store i64 %4, i64* %11, align 8
  %43 = load i32*, i32** %7, align 8
  %44 = call { i64, i8* } @HUF_getDTableDesc(i32* %43)
  %45 = bitcast %struct.TYPE_7__* %16 to { i64, i8* }*
  %46 = getelementptr inbounds { i64, i8* }, { i64, i8* }* %45, i32 0, i32 0
  %47 = extractvalue { i64, i8* } %44, 0
  store i64 %47, i64* %46, align 8
  %48 = getelementptr inbounds { i64, i8* }, { i64, i8* }* %45, i32 0, i32 1
  %49 = extractvalue { i64, i8* } %44, 1
  store i8* %49, i8** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %16, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  store i32 %51, i32* %17, align 4
  %52 = load i32*, i32** %7, align 8
  %53 = getelementptr inbounds i32, i32* %52, i64 1
  %54 = bitcast i32* %53 to i8*
  store i8* %54, i8** %19, align 8
  %55 = load i8*, i8** %19, align 8
  %56 = bitcast i8* %55 to i32*
  store i32* %56, i32** %20, align 8
  store i64 0, i64* %27, align 8
  %57 = call i32 @HUF_STATIC_ASSERT(i32 1)
  %58 = load i8*, i8** %10, align 8
  %59 = bitcast i8* %58 to i32*
  %60 = load i64, i64* %27, align 8
  %61 = getelementptr inbounds i32, i32* %59, i64 %60
  %62 = bitcast i32* %61 to i32**
  store i32** %62, i32*** %22, align 8
  %63 = load i32, i32* @HUF_TABLELOG_MAX, align 4
  %64 = sext i32 %63 to i64
  %65 = mul i64 8, %64
  %66 = lshr i64 %65, 2
  %67 = load i64, i64* %27, align 8
  %68 = add i64 %67, %66
  store i64 %68, i64* %27, align 8
  %69 = load i8*, i8** %10, align 8
  %70 = bitcast i8* %69 to i32*
  %71 = load i64, i64* %27, align 8
  %72 = getelementptr inbounds i32, i32* %70, i64 %71
  store i32* %72, i32** %23, align 8
  %73 = load i32, i32* @HUF_TABLELOG_MAX, align 4
  %74 = add nsw i32 %73, 1
  %75 = sext i32 %74 to i64
  %76 = load i64, i64* %27, align 8
  %77 = add i64 %76, %75
  store i64 %77, i64* %27, align 8
  %78 = load i8*, i8** %10, align 8
  %79 = bitcast i8* %78 to i32*
  %80 = load i64, i64* %27, align 8
  %81 = getelementptr inbounds i32, i32* %79, i64 %80
  store i32* %81, i32** %24, align 8
  %82 = load i32, i32* @HUF_TABLELOG_MAX, align 4
  %83 = add nsw i32 %82, 2
  %84 = sext i32 %83 to i64
  %85 = load i64, i64* %27, align 8
  %86 = add i64 %85, %84
  store i64 %86, i64* %27, align 8
  %87 = load i8*, i8** %10, align 8
  %88 = bitcast i8* %87 to i32*
  %89 = load i64, i64* %27, align 8
  %90 = getelementptr inbounds i32, i32* %88, i64 %89
  %91 = bitcast i32* %90 to %struct.TYPE_6__*
  store %struct.TYPE_6__* %91, %struct.TYPE_6__** %25, align 8
  %92 = load i32, i32* @HUF_SYMBOLVALUE_MAX, align 4
  %93 = add nsw i32 %92, 1
  %94 = sext i32 %93 to i64
  %95 = mul i64 16, %94
  %96 = trunc i64 %95 to i32
  %97 = call i32 @ALIGN(i32 %96, i32 4)
  %98 = ashr i32 %97, 2
  %99 = sext i32 %98 to i64
  %100 = load i64, i64* %27, align 8
  %101 = add i64 %100, %99
  store i64 %101, i64* %27, align 8
  %102 = load i8*, i8** %10, align 8
  %103 = bitcast i8* %102 to i32*
  %104 = load i64, i64* %27, align 8
  %105 = getelementptr inbounds i32, i32* %103, i64 %104
  %106 = bitcast i32* %105 to i8**
  store i8** %106, i8*** %26, align 8
  %107 = load i32, i32* @HUF_SYMBOLVALUE_MAX, align 4
  %108 = add nsw i32 %107, 1
  %109 = call i32 @ALIGN(i32 %108, i32 4)
  %110 = ashr i32 %109, 2
  %111 = sext i32 %110 to i64
  %112 = load i64, i64* %27, align 8
  %113 = add i64 %112, %111
  store i64 %113, i64* %27, align 8
  %114 = load i64, i64* %27, align 8
  %115 = shl i64 %114, 2
  %116 = load i64, i64* %11, align 8
  %117 = icmp ugt i64 %115, %116
  br i1 %117, label %118, label %121

118:                                              ; preds = %5
  %119 = load i32, i32* @tableLog_tooLarge, align 4
  %120 = call i64 @ERROR(i32 %119)
  store i64 %120, i64* %6, align 8
  br label %346

121:                                              ; preds = %5
  %122 = load i8*, i8** %10, align 8
  %123 = bitcast i8* %122 to i32*
  %124 = load i64, i64* %27, align 8
  %125 = getelementptr inbounds i32, i32* %123, i64 %124
  %126 = bitcast i32* %125 to i8*
  store i8* %126, i8** %10, align 8
  %127 = load i64, i64* %27, align 8
  %128 = shl i64 %127, 2
  %129 = load i64, i64* %11, align 8
  %130 = sub i64 %129, %128
  store i64 %130, i64* %11, align 8
  %131 = load i32*, i32** %24, align 8
  %132 = getelementptr inbounds i32, i32* %131, i64 1
  store i32* %132, i32** %21, align 8
  %133 = load i32*, i32** %23, align 8
  %134 = load i32, i32* @HUF_TABLELOG_MAX, align 4
  %135 = mul nsw i32 2, %134
  %136 = add nsw i32 %135, 2
  %137 = add nsw i32 %136, 1
  %138 = sext i32 %137 to i64
  %139 = mul i64 4, %138
  %140 = trunc i64 %139 to i32
  %141 = call i32 @memset(i32* %133, i32 0, i32 %140)
  %142 = call i32 @HUF_STATIC_ASSERT(i32 1)
  %143 = load i32, i32* %17, align 4
  %144 = load i32, i32* @HUF_TABLELOG_MAX, align 4
  %145 = icmp sgt i32 %143, %144
  br i1 %145, label %146, label %149

146:                                              ; preds = %121
  %147 = load i32, i32* @tableLog_tooLarge, align 4
  %148 = call i64 @ERROR(i32 %147)
  store i64 %148, i64* %6, align 8
  br label %346

149:                                              ; preds = %121
  %150 = load i8**, i8*** %26, align 8
  %151 = load i32, i32* @HUF_SYMBOLVALUE_MAX, align 4
  %152 = add nsw i32 %151, 1
  %153 = load i32*, i32** %23, align 8
  %154 = load i8*, i8** %8, align 8
  %155 = load i64, i64* %9, align 8
  %156 = load i8*, i8** %10, align 8
  %157 = load i64, i64* %11, align 8
  %158 = call i64 @HUF_readStats_wksp(i8** %150, i32 %152, i32* %153, i32* %15, i32* %12, i8* %154, i64 %155, i8* %156, i64 %157)
  store i64 %158, i64* %18, align 8
  %159 = load i64, i64* %18, align 8
  %160 = call i64 @HUF_isError(i64 %159)
  %161 = icmp ne i64 %160, 0
  br i1 %161, label %162, label %164

162:                                              ; preds = %149
  %163 = load i64, i64* %18, align 8
  store i64 %163, i64* %6, align 8
  br label %346

164:                                              ; preds = %149
  %165 = load i32, i32* %12, align 4
  %166 = load i32, i32* %17, align 4
  %167 = icmp sgt i32 %165, %166
  br i1 %167, label %168, label %171

168:                                              ; preds = %164
  %169 = load i32, i32* @tableLog_tooLarge, align 4
  %170 = call i64 @ERROR(i32 %169)
  store i64 %170, i64* %6, align 8
  br label %346

171:                                              ; preds = %164
  %172 = load i32, i32* %12, align 4
  store i32 %172, i32* %13, align 4
  br label %173

173:                                              ; preds = %181, %171
  %174 = load i32*, i32** %23, align 8
  %175 = load i32, i32* %13, align 4
  %176 = sext i32 %175 to i64
  %177 = getelementptr inbounds i32, i32* %174, i64 %176
  %178 = load i32, i32* %177, align 4
  %179 = icmp eq i32 %178, 0
  br i1 %179, label %180, label %184

180:                                              ; preds = %173
  br label %181

181:                                              ; preds = %180
  %182 = load i32, i32* %13, align 4
  %183 = add nsw i32 %182, -1
  store i32 %183, i32* %13, align 4
  br label %173

184:                                              ; preds = %173
  store i32 0, i32* %29, align 4
  store i32 1, i32* %28, align 4
  br label %185

185:                                              ; preds = %204, %184
  %186 = load i32, i32* %28, align 4
  %187 = load i32, i32* %13, align 4
  %188 = add nsw i32 %187, 1
  %189 = icmp slt i32 %186, %188
  br i1 %189, label %190, label %207

190:                                              ; preds = %185
  %191 = load i32, i32* %29, align 4
  store i32 %191, i32* %30, align 4
  %192 = load i32*, i32** %23, align 8
  %193 = load i32, i32* %28, align 4
  %194 = sext i32 %193 to i64
  %195 = getelementptr inbounds i32, i32* %192, i64 %194
  %196 = load i32, i32* %195, align 4
  %197 = load i32, i32* %29, align 4
  %198 = add nsw i32 %197, %196
  store i32 %198, i32* %29, align 4
  %199 = load i32, i32* %30, align 4
  %200 = load i32*, i32** %21, align 8
  %201 = load i32, i32* %28, align 4
  %202 = sext i32 %201 to i64
  %203 = getelementptr inbounds i32, i32* %200, i64 %202
  store i32 %199, i32* %203, align 4
  br label %204

204:                                              ; preds = %190
  %205 = load i32, i32* %28, align 4
  %206 = add nsw i32 %205, 1
  store i32 %206, i32* %28, align 4
  br label %185

207:                                              ; preds = %185
  %208 = load i32, i32* %29, align 4
  %209 = load i32*, i32** %21, align 8
  %210 = getelementptr inbounds i32, i32* %209, i64 0
  store i32 %208, i32* %210, align 4
  %211 = load i32, i32* %29, align 4
  store i32 %211, i32* %14, align 4
  store i32 0, i32* %31, align 4
  br label %212

212:                                              ; preds = %245, %207
  %213 = load i32, i32* %31, align 4
  %214 = load i32, i32* %15, align 4
  %215 = icmp slt i32 %213, %214
  br i1 %215, label %216, label %248

216:                                              ; preds = %212
  %217 = load i8**, i8*** %26, align 8
  %218 = load i32, i32* %31, align 4
  %219 = sext i32 %218 to i64
  %220 = getelementptr inbounds i8*, i8** %217, i64 %219
  %221 = load i8*, i8** %220, align 8
  %222 = ptrtoint i8* %221 to i32
  store i32 %222, i32* %32, align 4
  %223 = load i32*, i32** %21, align 8
  %224 = load i32, i32* %32, align 4
  %225 = sext i32 %224 to i64
  %226 = getelementptr inbounds i32, i32* %223, i64 %225
  %227 = load i32, i32* %226, align 4
  %228 = add nsw i32 %227, 1
  store i32 %228, i32* %226, align 4
  store i32 %227, i32* %33, align 4
  %229 = load i32, i32* %31, align 4
  %230 = sext i32 %229 to i64
  %231 = inttoptr i64 %230 to i8*
  %232 = load %struct.TYPE_6__*, %struct.TYPE_6__** %25, align 8
  %233 = load i32, i32* %33, align 4
  %234 = sext i32 %233 to i64
  %235 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %232, i64 %234
  %236 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %235, i32 0, i32 1
  store i8* %231, i8** %236, align 8
  %237 = load i32, i32* %32, align 4
  %238 = sext i32 %237 to i64
  %239 = inttoptr i64 %238 to i8*
  %240 = load %struct.TYPE_6__*, %struct.TYPE_6__** %25, align 8
  %241 = load i32, i32* %33, align 4
  %242 = sext i32 %241 to i64
  %243 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %240, i64 %242
  %244 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %243, i32 0, i32 0
  store i8* %239, i8** %244, align 8
  br label %245

245:                                              ; preds = %216
  %246 = load i32, i32* %31, align 4
  %247 = add nsw i32 %246, 1
  store i32 %247, i32* %31, align 4
  br label %212

248:                                              ; preds = %212
  %249 = load i32*, i32** %21, align 8
  %250 = getelementptr inbounds i32, i32* %249, i64 0
  store i32 0, i32* %250, align 4
  %251 = load i32**, i32*** %22, align 8
  %252 = getelementptr inbounds i32*, i32** %251, i64 0
  %253 = load i32*, i32** %252, align 8
  store i32* %253, i32** %34, align 8
  %254 = load i32, i32* %17, align 4
  %255 = load i32, i32* %12, align 4
  %256 = sub nsw i32 %254, %255
  %257 = sub nsw i32 %256, 1
  store i32 %257, i32* %35, align 4
  store i32 0, i32* %36, align 4
  store i32 1, i32* %37, align 4
  br label %258

258:                                              ; preds = %281, %248
  %259 = load i32, i32* %37, align 4
  %260 = load i32, i32* %13, align 4
  %261 = add nsw i32 %260, 1
  %262 = icmp slt i32 %259, %261
  br i1 %262, label %263, label %284

263:                                              ; preds = %258
  %264 = load i32, i32* %36, align 4
  store i32 %264, i32* %38, align 4
  %265 = load i32*, i32** %23, align 8
  %266 = load i32, i32* %37, align 4
  %267 = sext i32 %266 to i64
  %268 = getelementptr inbounds i32, i32* %265, i64 %267
  %269 = load i32, i32* %268, align 4
  %270 = load i32, i32* %37, align 4
  %271 = load i32, i32* %35, align 4
  %272 = add nsw i32 %270, %271
  %273 = shl i32 %269, %272
  %274 = load i32, i32* %36, align 4
  %275 = add nsw i32 %274, %273
  store i32 %275, i32* %36, align 4
  %276 = load i32, i32* %38, align 4
  %277 = load i32*, i32** %34, align 8
  %278 = load i32, i32* %37, align 4
  %279 = sext i32 %278 to i64
  %280 = getelementptr inbounds i32, i32* %277, i64 %279
  store i32 %276, i32* %280, align 4
  br label %281

281:                                              ; preds = %263
  %282 = load i32, i32* %37, align 4
  %283 = add nsw i32 %282, 1
  store i32 %283, i32* %37, align 4
  br label %258

284:                                              ; preds = %258
  %285 = load i32, i32* %12, align 4
  %286 = add nsw i32 %285, 1
  %287 = load i32, i32* %13, align 4
  %288 = sub nsw i32 %286, %287
  store i32 %288, i32* %39, align 4
  %289 = load i32, i32* %39, align 4
  store i32 %289, i32* %40, align 4
  br label %290

290:                                              ; preds = %324, %284
  %291 = load i32, i32* %40, align 4
  %292 = load i32, i32* %17, align 4
  %293 = load i32, i32* %39, align 4
  %294 = sub nsw i32 %292, %293
  %295 = add nsw i32 %294, 1
  %296 = icmp slt i32 %291, %295
  br i1 %296, label %297, label %327

297:                                              ; preds = %290
  %298 = load i32**, i32*** %22, align 8
  %299 = load i32, i32* %40, align 4
  %300 = sext i32 %299 to i64
  %301 = getelementptr inbounds i32*, i32** %298, i64 %300
  %302 = load i32*, i32** %301, align 8
  store i32* %302, i32** %41, align 8
  store i32 1, i32* %42, align 4
  br label %303

303:                                              ; preds = %320, %297
  %304 = load i32, i32* %42, align 4
  %305 = load i32, i32* %13, align 4
  %306 = add nsw i32 %305, 1
  %307 = icmp slt i32 %304, %306
  br i1 %307, label %308, label %323

308:                                              ; preds = %303
  %309 = load i32*, i32** %34, align 8
  %310 = load i32, i32* %42, align 4
  %311 = sext i32 %310 to i64
  %312 = getelementptr inbounds i32, i32* %309, i64 %311
  %313 = load i32, i32* %312, align 4
  %314 = load i32, i32* %40, align 4
  %315 = ashr i32 %313, %314
  %316 = load i32*, i32** %41, align 8
  %317 = load i32, i32* %42, align 4
  %318 = sext i32 %317 to i64
  %319 = getelementptr inbounds i32, i32* %316, i64 %318
  store i32 %315, i32* %319, align 4
  br label %320

320:                                              ; preds = %308
  %321 = load i32, i32* %42, align 4
  %322 = add nsw i32 %321, 1
  store i32 %322, i32* %42, align 4
  br label %303

323:                                              ; preds = %303
  br label %324

324:                                              ; preds = %323
  %325 = load i32, i32* %40, align 4
  %326 = add nsw i32 %325, 1
  store i32 %326, i32* %40, align 4
  br label %290

327:                                              ; preds = %290
  %328 = load i32*, i32** %20, align 8
  %329 = load i32, i32* %17, align 4
  %330 = load %struct.TYPE_6__*, %struct.TYPE_6__** %25, align 8
  %331 = load i32, i32* %14, align 4
  %332 = load i32*, i32** %24, align 8
  %333 = load i32**, i32*** %22, align 8
  %334 = load i32, i32* %13, align 4
  %335 = load i32, i32* %12, align 4
  %336 = add nsw i32 %335, 1
  %337 = call i32 @HUF_fillDTableX4(i32* %328, i32 %329, %struct.TYPE_6__* %330, i32 %331, i32* %332, i32** %333, i32 %334, i32 %336)
  %338 = load i32, i32* %17, align 4
  %339 = sext i32 %338 to i64
  %340 = inttoptr i64 %339 to i8*
  %341 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %16, i32 0, i32 2
  store i8* %340, i8** %341, align 8
  %342 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %16, i32 0, i32 1
  store i32 1, i32* %342, align 4
  %343 = load i32*, i32** %7, align 8
  %344 = call i32 @memcpy(i32* %343, %struct.TYPE_7__* %16, i32 16)
  %345 = load i64, i64* %18, align 8
  store i64 %345, i64* %6, align 8
  br label %346

346:                                              ; preds = %327, %168, %162, %146, %118
  %347 = load i64, i64* %6, align 8
  ret i64 %347
}

declare dso_local { i64, i8* } @HUF_getDTableDesc(i32*) #1

declare dso_local i32 @HUF_STATIC_ASSERT(i32) #1

declare dso_local i32 @ALIGN(i32, i32) #1

declare dso_local i64 @ERROR(i32) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i64 @HUF_readStats_wksp(i8**, i32, i32*, i32*, i32*, i8*, i64, i8*, i64) #1

declare dso_local i64 @HUF_isError(i64) #1

declare dso_local i32 @HUF_fillDTableX4(i32*, i32, %struct.TYPE_6__*, i32, i32*, i32**, i32, i32) #1

declare dso_local i32 @memcpy(i32*, %struct.TYPE_7__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
