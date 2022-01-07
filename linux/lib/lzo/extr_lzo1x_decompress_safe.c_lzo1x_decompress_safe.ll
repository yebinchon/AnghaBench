; ModuleID = '/home/carl/AnghaBench/linux/lib/lzo/extr_lzo1x_decompress_safe.c_lzo1x_decompress_safe.c'
source_filename = "/home/carl/AnghaBench/linux/lib/lzo/extr_lzo1x_decompress_safe.c_lzo1x_decompress_safe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MAX_255_COUNT = common dso_local global i64 0, align 8
@LZO_E_ERROR = common dso_local global i32 0, align 4
@M2_MAX_OFFSET = common dso_local global i32 0, align 4
@MIN_ZERO_RUN_LENGTH = common dso_local global i64 0, align 8
@LZO_E_OK = common dso_local global i32 0, align 4
@LZO_E_INPUT_NOT_CONSUMED = common dso_local global i32 0, align 4
@LZO_E_INPUT_OVERRUN = common dso_local global i32 0, align 4
@LZO_E_OUTPUT_OVERRUN = common dso_local global i32 0, align 4
@LZO_E_LOOKBEHIND_OVERRUN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @lzo1x_decompress_safe(i8* %0, i64 %1, i8* %2, i64* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i8, align 1
  %19 = alloca i64, align 8
  %20 = alloca i8*, align 8
  %21 = alloca i64, align 8
  %22 = alloca i8*, align 8
  %23 = alloca i64, align 8
  %24 = alloca i8*, align 8
  %25 = alloca i8*, align 8
  store i8* %0, i8** %6, align 8
  store i64 %1, i64* %7, align 8
  store i8* %2, i8** %8, align 8
  store i64* %3, i64** %9, align 8
  store i64 0, i64* %14, align 8
  %26 = load i8*, i8** %6, align 8
  %27 = load i64, i64* %7, align 8
  %28 = getelementptr inbounds i8, i8* %26, i64 %27
  store i8* %28, i8** %16, align 8
  %29 = load i8*, i8** %8, align 8
  %30 = load i64*, i64** %9, align 8
  %31 = load i64, i64* %30, align 8
  %32 = getelementptr inbounds i8, i8* %29, i64 %31
  store i8* %32, i8** %17, align 8
  %33 = load i8*, i8** %8, align 8
  store i8* %33, i8** %10, align 8
  %34 = load i8*, i8** %6, align 8
  store i8* %34, i8** %11, align 8
  %35 = load i64, i64* %7, align 8
  %36 = icmp ult i64 %35, 3
  %37 = zext i1 %36 to i32
  %38 = call i64 @unlikely(i32 %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %4
  br label %527

41:                                               ; preds = %4
  %42 = load i64, i64* %7, align 8
  %43 = icmp uge i64 %42, 5
  %44 = zext i1 %43 to i32
  %45 = call i64 @likely(i32 %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %61

47:                                               ; preds = %41
  %48 = load i8*, i8** %11, align 8
  %49 = load i8, i8* %48, align 1
  %50 = zext i8 %49 to i32
  %51 = icmp eq i32 %50, 17
  %52 = zext i1 %51 to i32
  %53 = call i64 @likely(i32 %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %61

55:                                               ; preds = %47
  %56 = load i8*, i8** %11, align 8
  %57 = getelementptr inbounds i8, i8* %56, i64 1
  %58 = load i8, i8* %57, align 1
  store i8 %58, i8* %18, align 1
  %59 = load i8*, i8** %11, align 8
  %60 = getelementptr inbounds i8, i8* %59, i64 2
  store i8* %60, i8** %11, align 8
  br label %62

61:                                               ; preds = %47, %41
  store i8 0, i8* %18, align 1
  br label %62

62:                                               ; preds = %61, %55
  %63 = load i8*, i8** %11, align 8
  %64 = load i8, i8* %63, align 1
  %65 = zext i8 %64 to i32
  %66 = icmp sgt i32 %65, 17
  br i1 %66, label %67, label %79

67:                                               ; preds = %62
  %68 = load i8*, i8** %11, align 8
  %69 = getelementptr inbounds i8, i8* %68, i32 1
  store i8* %69, i8** %11, align 8
  %70 = load i8, i8* %68, align 1
  %71 = zext i8 %70 to i32
  %72 = sub nsw i32 %71, 17
  %73 = sext i32 %72 to i64
  store i64 %73, i64* %12, align 8
  %74 = load i64, i64* %12, align 8
  %75 = icmp ult i64 %74, 4
  br i1 %75, label %76, label %78

76:                                               ; preds = %67
  %77 = load i64, i64* %12, align 8
  store i64 %77, i64* %13, align 8
  br label %476

78:                                               ; preds = %67
  br label %144

79:                                               ; preds = %62
  br label %80

80:                                               ; preds = %495, %160, %79
  %81 = load i8*, i8** %11, align 8
  %82 = getelementptr inbounds i8, i8* %81, i32 1
  store i8* %82, i8** %11, align 8
  %83 = load i8, i8* %81, align 1
  %84 = zext i8 %83 to i64
  store i64 %84, i64* %12, align 8
  %85 = load i64, i64* %12, align 8
  %86 = icmp ult i64 %85, 16
  br i1 %86, label %87, label %223

87:                                               ; preds = %80
  %88 = load i64, i64* %14, align 8
  %89 = icmp eq i64 %88, 0
  %90 = zext i1 %89 to i32
  %91 = call i64 @likely(i32 %90)
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %93, label %161

93:                                               ; preds = %87
  %94 = load i64, i64* %12, align 8
  %95 = icmp eq i64 %94, 0
  %96 = zext i1 %95 to i32
  %97 = call i64 @unlikely(i32 %96)
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %99, label %141

99:                                               ; preds = %93
  %100 = load i8*, i8** %11, align 8
  store i8* %100, i8** %20, align 8
  br label %101

101:                                              ; preds = %109, %99
  %102 = load i8*, i8** %11, align 8
  %103 = load i8, i8* %102, align 1
  %104 = zext i8 %103 to i32
  %105 = icmp eq i32 %104, 0
  %106 = zext i1 %105 to i32
  %107 = call i64 @unlikely(i32 %106)
  %108 = icmp ne i64 %107, 0
  br i1 %108, label %109, label %113

109:                                              ; preds = %101
  %110 = load i8*, i8** %11, align 8
  %111 = getelementptr inbounds i8, i8* %110, i32 1
  store i8* %111, i8** %11, align 8
  %112 = call i32 @NEED_IP(i64 1)
  br label %101

113:                                              ; preds = %101
  %114 = load i8*, i8** %11, align 8
  %115 = load i8*, i8** %20, align 8
  %116 = ptrtoint i8* %114 to i64
  %117 = ptrtoint i8* %115 to i64
  %118 = sub i64 %116, %117
  store i64 %118, i64* %19, align 8
  %119 = load i64, i64* %19, align 8
  %120 = load i64, i64* @MAX_255_COUNT, align 8
  %121 = icmp ugt i64 %119, %120
  %122 = zext i1 %121 to i32
  %123 = call i64 @unlikely(i32 %122)
  %124 = icmp ne i64 %123, 0
  br i1 %124, label %125, label %127

125:                                              ; preds = %113
  %126 = load i32, i32* @LZO_E_ERROR, align 4
  store i32 %126, i32* %5, align 4
  br label %551

127:                                              ; preds = %113
  %128 = load i64, i64* %19, align 8
  %129 = shl i64 %128, 8
  %130 = load i64, i64* %19, align 8
  %131 = sub i64 %129, %130
  store i64 %131, i64* %19, align 8
  %132 = load i64, i64* %19, align 8
  %133 = add i64 %132, 15
  %134 = load i8*, i8** %11, align 8
  %135 = getelementptr inbounds i8, i8* %134, i32 1
  store i8* %135, i8** %11, align 8
  %136 = load i8, i8* %134, align 1
  %137 = zext i8 %136 to i64
  %138 = add i64 %133, %137
  %139 = load i64, i64* %12, align 8
  %140 = add i64 %139, %138
  store i64 %140, i64* %12, align 8
  br label %141

141:                                              ; preds = %127, %93
  %142 = load i64, i64* %12, align 8
  %143 = add i64 %142, 3
  store i64 %143, i64* %12, align 8
  br label %144

144:                                              ; preds = %141, %78
  %145 = load i64, i64* %12, align 8
  %146 = call i32 @NEED_OP(i64 %145)
  %147 = load i64, i64* %12, align 8
  %148 = add i64 %147, 3
  %149 = call i32 @NEED_IP(i64 %148)
  br label %150

150:                                              ; preds = %156, %144
  %151 = load i8*, i8** %11, align 8
  %152 = getelementptr inbounds i8, i8* %151, i32 1
  store i8* %152, i8** %11, align 8
  %153 = load i8, i8* %151, align 1
  %154 = load i8*, i8** %10, align 8
  %155 = getelementptr inbounds i8, i8* %154, i32 1
  store i8* %155, i8** %10, align 8
  store i8 %153, i8* %154, align 1
  br label %156

156:                                              ; preds = %150
  %157 = load i64, i64* %12, align 8
  %158 = add i64 %157, -1
  store i64 %158, i64* %12, align 8
  %159 = icmp ugt i64 %158, 0
  br i1 %159, label %150, label %160

160:                                              ; preds = %156
  store i64 4, i64* %14, align 8
  br label %80

161:                                              ; preds = %87
  %162 = load i64, i64* %14, align 8
  %163 = icmp ne i64 %162, 4
  br i1 %163, label %164, label %198

164:                                              ; preds = %161
  %165 = load i64, i64* %12, align 8
  %166 = and i64 %165, 3
  store i64 %166, i64* %13, align 8
  %167 = load i8*, i8** %10, align 8
  %168 = getelementptr inbounds i8, i8* %167, i64 -1
  store i8* %168, i8** %15, align 8
  %169 = load i64, i64* %12, align 8
  %170 = lshr i64 %169, 2
  %171 = load i8*, i8** %15, align 8
  %172 = sub i64 0, %170
  %173 = getelementptr inbounds i8, i8* %171, i64 %172
  store i8* %173, i8** %15, align 8
  %174 = load i8*, i8** %11, align 8
  %175 = getelementptr inbounds i8, i8* %174, i32 1
  store i8* %175, i8** %11, align 8
  %176 = load i8, i8* %174, align 1
  %177 = zext i8 %176 to i32
  %178 = shl i32 %177, 2
  %179 = load i8*, i8** %15, align 8
  %180 = sext i32 %178 to i64
  %181 = sub i64 0, %180
  %182 = getelementptr inbounds i8, i8* %179, i64 %181
  store i8* %182, i8** %15, align 8
  %183 = load i8*, i8** %15, align 8
  %184 = call i32 @TEST_LB(i8* %183)
  %185 = call i32 @NEED_OP(i64 2)
  %186 = load i8*, i8** %15, align 8
  %187 = getelementptr inbounds i8, i8* %186, i64 0
  %188 = load i8, i8* %187, align 1
  %189 = load i8*, i8** %10, align 8
  %190 = getelementptr inbounds i8, i8* %189, i64 0
  store i8 %188, i8* %190, align 1
  %191 = load i8*, i8** %15, align 8
  %192 = getelementptr inbounds i8, i8* %191, i64 1
  %193 = load i8, i8* %192, align 1
  %194 = load i8*, i8** %10, align 8
  %195 = getelementptr inbounds i8, i8* %194, i64 1
  store i8 %193, i8* %195, align 1
  %196 = load i8*, i8** %10, align 8
  %197 = getelementptr inbounds i8, i8* %196, i64 2
  store i8* %197, i8** %10, align 8
  br label %476

198:                                              ; preds = %161
  %199 = load i64, i64* %12, align 8
  %200 = and i64 %199, 3
  store i64 %200, i64* %13, align 8
  %201 = load i8*, i8** %10, align 8
  %202 = load i32, i32* @M2_MAX_OFFSET, align 4
  %203 = add nsw i32 1, %202
  %204 = sext i32 %203 to i64
  %205 = sub i64 0, %204
  %206 = getelementptr inbounds i8, i8* %201, i64 %205
  store i8* %206, i8** %15, align 8
  %207 = load i64, i64* %12, align 8
  %208 = lshr i64 %207, 2
  %209 = load i8*, i8** %15, align 8
  %210 = sub i64 0, %208
  %211 = getelementptr inbounds i8, i8* %209, i64 %210
  store i8* %211, i8** %15, align 8
  %212 = load i8*, i8** %11, align 8
  %213 = getelementptr inbounds i8, i8* %212, i32 1
  store i8* %213, i8** %11, align 8
  %214 = load i8, i8* %212, align 1
  %215 = zext i8 %214 to i32
  %216 = shl i32 %215, 2
  %217 = load i8*, i8** %15, align 8
  %218 = sext i32 %216 to i64
  %219 = sub i64 0, %218
  %220 = getelementptr inbounds i8, i8* %217, i64 %219
  store i8* %220, i8** %15, align 8
  store i64 3, i64* %12, align 8
  br label %221

221:                                              ; preds = %198
  br label %222

222:                                              ; preds = %221
  br label %443

223:                                              ; preds = %80
  %224 = load i64, i64* %12, align 8
  %225 = icmp uge i64 %224, 64
  br i1 %225, label %226, label %250

226:                                              ; preds = %223
  %227 = load i64, i64* %12, align 8
  %228 = and i64 %227, 3
  store i64 %228, i64* %13, align 8
  %229 = load i8*, i8** %10, align 8
  %230 = getelementptr inbounds i8, i8* %229, i64 -1
  store i8* %230, i8** %15, align 8
  %231 = load i64, i64* %12, align 8
  %232 = lshr i64 %231, 2
  %233 = and i64 %232, 7
  %234 = load i8*, i8** %15, align 8
  %235 = sub i64 0, %233
  %236 = getelementptr inbounds i8, i8* %234, i64 %235
  store i8* %236, i8** %15, align 8
  %237 = load i8*, i8** %11, align 8
  %238 = getelementptr inbounds i8, i8* %237, i32 1
  store i8* %238, i8** %11, align 8
  %239 = load i8, i8* %237, align 1
  %240 = zext i8 %239 to i32
  %241 = shl i32 %240, 3
  %242 = load i8*, i8** %15, align 8
  %243 = sext i32 %241 to i64
  %244 = sub i64 0, %243
  %245 = getelementptr inbounds i8, i8* %242, i64 %244
  store i8* %245, i8** %15, align 8
  %246 = load i64, i64* %12, align 8
  %247 = lshr i64 %246, 5
  %248 = sub i64 %247, 1
  %249 = add i64 %248, 2
  store i64 %249, i64* %12, align 8
  br label %442

250:                                              ; preds = %223
  %251 = load i64, i64* %12, align 8
  %252 = icmp uge i64 %251, 32
  br i1 %252, label %253, label %319

253:                                              ; preds = %250
  %254 = load i64, i64* %12, align 8
  %255 = and i64 %254, 31
  %256 = add i64 %255, 2
  store i64 %256, i64* %12, align 8
  %257 = load i64, i64* %12, align 8
  %258 = icmp eq i64 %257, 2
  %259 = zext i1 %258 to i32
  %260 = call i64 @unlikely(i32 %259)
  %261 = icmp ne i64 %260, 0
  br i1 %261, label %262, label %305

262:                                              ; preds = %253
  %263 = load i8*, i8** %11, align 8
  store i8* %263, i8** %22, align 8
  br label %264

264:                                              ; preds = %272, %262
  %265 = load i8*, i8** %11, align 8
  %266 = load i8, i8* %265, align 1
  %267 = zext i8 %266 to i32
  %268 = icmp eq i32 %267, 0
  %269 = zext i1 %268 to i32
  %270 = call i64 @unlikely(i32 %269)
  %271 = icmp ne i64 %270, 0
  br i1 %271, label %272, label %276

272:                                              ; preds = %264
  %273 = load i8*, i8** %11, align 8
  %274 = getelementptr inbounds i8, i8* %273, i32 1
  store i8* %274, i8** %11, align 8
  %275 = call i32 @NEED_IP(i64 1)
  br label %264

276:                                              ; preds = %264
  %277 = load i8*, i8** %11, align 8
  %278 = load i8*, i8** %22, align 8
  %279 = ptrtoint i8* %277 to i64
  %280 = ptrtoint i8* %278 to i64
  %281 = sub i64 %279, %280
  store i64 %281, i64* %21, align 8
  %282 = load i64, i64* %21, align 8
  %283 = load i64, i64* @MAX_255_COUNT, align 8
  %284 = icmp ugt i64 %282, %283
  %285 = zext i1 %284 to i32
  %286 = call i64 @unlikely(i32 %285)
  %287 = icmp ne i64 %286, 0
  br i1 %287, label %288, label %290

288:                                              ; preds = %276
  %289 = load i32, i32* @LZO_E_ERROR, align 4
  store i32 %289, i32* %5, align 4
  br label %551

290:                                              ; preds = %276
  %291 = load i64, i64* %21, align 8
  %292 = shl i64 %291, 8
  %293 = load i64, i64* %21, align 8
  %294 = sub i64 %292, %293
  store i64 %294, i64* %21, align 8
  %295 = load i64, i64* %21, align 8
  %296 = add i64 %295, 31
  %297 = load i8*, i8** %11, align 8
  %298 = getelementptr inbounds i8, i8* %297, i32 1
  store i8* %298, i8** %11, align 8
  %299 = load i8, i8* %297, align 1
  %300 = zext i8 %299 to i64
  %301 = add i64 %296, %300
  %302 = load i64, i64* %12, align 8
  %303 = add i64 %302, %301
  store i64 %303, i64* %12, align 8
  %304 = call i32 @NEED_IP(i64 2)
  br label %305

305:                                              ; preds = %290, %253
  %306 = load i8*, i8** %10, align 8
  %307 = getelementptr inbounds i8, i8* %306, i64 -1
  store i8* %307, i8** %15, align 8
  %308 = load i8*, i8** %11, align 8
  %309 = call i64 @get_unaligned_le16(i8* %308)
  store i64 %309, i64* %13, align 8
  %310 = load i8*, i8** %11, align 8
  %311 = getelementptr inbounds i8, i8* %310, i64 2
  store i8* %311, i8** %11, align 8
  %312 = load i64, i64* %13, align 8
  %313 = lshr i64 %312, 2
  %314 = load i8*, i8** %15, align 8
  %315 = sub i64 0, %313
  %316 = getelementptr inbounds i8, i8* %314, i64 %315
  store i8* %316, i8** %15, align 8
  %317 = load i64, i64* %13, align 8
  %318 = and i64 %317, 3
  store i64 %318, i64* %13, align 8
  br label %441

319:                                              ; preds = %250
  %320 = call i32 @NEED_IP(i64 2)
  %321 = load i8*, i8** %11, align 8
  %322 = call i64 @get_unaligned_le16(i8* %321)
  store i64 %322, i64* %13, align 8
  %323 = load i64, i64* %13, align 8
  %324 = and i64 %323, 65532
  %325 = icmp eq i64 %324, 65532
  br i1 %325, label %326, label %362

326:                                              ; preds = %319
  %327 = load i64, i64* %12, align 8
  %328 = and i64 %327, 248
  %329 = icmp eq i64 %328, 24
  br i1 %329, label %330, label %362

330:                                              ; preds = %326
  %331 = load i8, i8* %18, align 1
  %332 = zext i8 %331 to i32
  %333 = call i64 @likely(i32 %332)
  %334 = icmp ne i64 %333, 0
  br i1 %334, label %335, label %362

335:                                              ; preds = %330
  %336 = call i32 @NEED_IP(i64 3)
  %337 = load i64, i64* %12, align 8
  %338 = and i64 %337, 7
  store i64 %338, i64* %12, align 8
  %339 = load i8*, i8** %11, align 8
  %340 = getelementptr inbounds i8, i8* %339, i64 2
  %341 = load i8, i8* %340, align 1
  %342 = zext i8 %341 to i32
  %343 = shl i32 %342, 3
  %344 = sext i32 %343 to i64
  %345 = load i64, i64* %12, align 8
  %346 = or i64 %345, %344
  store i64 %346, i64* %12, align 8
  %347 = load i64, i64* @MIN_ZERO_RUN_LENGTH, align 8
  %348 = load i64, i64* %12, align 8
  %349 = add i64 %348, %347
  store i64 %349, i64* %12, align 8
  %350 = load i64, i64* %12, align 8
  %351 = call i32 @NEED_OP(i64 %350)
  %352 = load i8*, i8** %10, align 8
  %353 = load i64, i64* %12, align 8
  %354 = call i32 @memset(i8* %352, i32 0, i64 %353)
  %355 = load i64, i64* %12, align 8
  %356 = load i8*, i8** %10, align 8
  %357 = getelementptr inbounds i8, i8* %356, i64 %355
  store i8* %357, i8** %10, align 8
  %358 = load i64, i64* %13, align 8
  %359 = and i64 %358, 3
  store i64 %359, i64* %13, align 8
  %360 = load i8*, i8** %11, align 8
  %361 = getelementptr inbounds i8, i8* %360, i64 3
  store i8* %361, i8** %11, align 8
  br label %476

362:                                              ; preds = %330, %326, %319
  %363 = load i8*, i8** %10, align 8
  store i8* %363, i8** %15, align 8
  %364 = load i64, i64* %12, align 8
  %365 = and i64 %364, 8
  %366 = shl i64 %365, 11
  %367 = load i8*, i8** %15, align 8
  %368 = sub i64 0, %366
  %369 = getelementptr inbounds i8, i8* %367, i64 %368
  store i8* %369, i8** %15, align 8
  %370 = load i64, i64* %12, align 8
  %371 = and i64 %370, 7
  %372 = add i64 %371, 2
  store i64 %372, i64* %12, align 8
  %373 = load i64, i64* %12, align 8
  %374 = icmp eq i64 %373, 2
  %375 = zext i1 %374 to i32
  %376 = call i64 @unlikely(i32 %375)
  %377 = icmp ne i64 %376, 0
  br i1 %377, label %378, label %423

378:                                              ; preds = %362
  %379 = load i8*, i8** %11, align 8
  store i8* %379, i8** %24, align 8
  br label %380

380:                                              ; preds = %388, %378
  %381 = load i8*, i8** %11, align 8
  %382 = load i8, i8* %381, align 1
  %383 = zext i8 %382 to i32
  %384 = icmp eq i32 %383, 0
  %385 = zext i1 %384 to i32
  %386 = call i64 @unlikely(i32 %385)
  %387 = icmp ne i64 %386, 0
  br i1 %387, label %388, label %392

388:                                              ; preds = %380
  %389 = load i8*, i8** %11, align 8
  %390 = getelementptr inbounds i8, i8* %389, i32 1
  store i8* %390, i8** %11, align 8
  %391 = call i32 @NEED_IP(i64 1)
  br label %380

392:                                              ; preds = %380
  %393 = load i8*, i8** %11, align 8
  %394 = load i8*, i8** %24, align 8
  %395 = ptrtoint i8* %393 to i64
  %396 = ptrtoint i8* %394 to i64
  %397 = sub i64 %395, %396
  store i64 %397, i64* %23, align 8
  %398 = load i64, i64* %23, align 8
  %399 = load i64, i64* @MAX_255_COUNT, align 8
  %400 = icmp ugt i64 %398, %399
  %401 = zext i1 %400 to i32
  %402 = call i64 @unlikely(i32 %401)
  %403 = icmp ne i64 %402, 0
  br i1 %403, label %404, label %406

404:                                              ; preds = %392
  %405 = load i32, i32* @LZO_E_ERROR, align 4
  store i32 %405, i32* %5, align 4
  br label %551

406:                                              ; preds = %392
  %407 = load i64, i64* %23, align 8
  %408 = shl i64 %407, 8
  %409 = load i64, i64* %23, align 8
  %410 = sub i64 %408, %409
  store i64 %410, i64* %23, align 8
  %411 = load i64, i64* %23, align 8
  %412 = add i64 %411, 7
  %413 = load i8*, i8** %11, align 8
  %414 = getelementptr inbounds i8, i8* %413, i32 1
  store i8* %414, i8** %11, align 8
  %415 = load i8, i8* %413, align 1
  %416 = zext i8 %415 to i64
  %417 = add i64 %412, %416
  %418 = load i64, i64* %12, align 8
  %419 = add i64 %418, %417
  store i64 %419, i64* %12, align 8
  %420 = call i32 @NEED_IP(i64 2)
  %421 = load i8*, i8** %11, align 8
  %422 = call i64 @get_unaligned_le16(i8* %421)
  store i64 %422, i64* %13, align 8
  br label %423

423:                                              ; preds = %406, %362
  %424 = load i8*, i8** %11, align 8
  %425 = getelementptr inbounds i8, i8* %424, i64 2
  store i8* %425, i8** %11, align 8
  %426 = load i64, i64* %13, align 8
  %427 = lshr i64 %426, 2
  %428 = load i8*, i8** %15, align 8
  %429 = sub i64 0, %427
  %430 = getelementptr inbounds i8, i8* %428, i64 %429
  store i8* %430, i8** %15, align 8
  %431 = load i64, i64* %13, align 8
  %432 = and i64 %431, 3
  store i64 %432, i64* %13, align 8
  %433 = load i8*, i8** %15, align 8
  %434 = load i8*, i8** %10, align 8
  %435 = icmp eq i8* %433, %434
  br i1 %435, label %436, label %437

436:                                              ; preds = %423
  br label %496

437:                                              ; preds = %423
  %438 = load i8*, i8** %15, align 8
  %439 = getelementptr inbounds i8, i8* %438, i64 -16384
  store i8* %439, i8** %15, align 8
  br label %440

440:                                              ; preds = %437
  br label %441

441:                                              ; preds = %440, %305
  br label %442

442:                                              ; preds = %441, %226
  br label %443

443:                                              ; preds = %442, %222
  %444 = load i8*, i8** %15, align 8
  %445 = call i32 @TEST_LB(i8* %444)
  %446 = load i8*, i8** %10, align 8
  %447 = load i64, i64* %12, align 8
  %448 = getelementptr inbounds i8, i8* %446, i64 %447
  store i8* %448, i8** %25, align 8
  %449 = load i64, i64* %12, align 8
  %450 = call i32 @NEED_OP(i64 %449)
  %451 = load i8*, i8** %15, align 8
  %452 = getelementptr inbounds i8, i8* %451, i64 0
  %453 = load i8, i8* %452, align 1
  %454 = load i8*, i8** %10, align 8
  %455 = getelementptr inbounds i8, i8* %454, i64 0
  store i8 %453, i8* %455, align 1
  %456 = load i8*, i8** %15, align 8
  %457 = getelementptr inbounds i8, i8* %456, i64 1
  %458 = load i8, i8* %457, align 1
  %459 = load i8*, i8** %10, align 8
  %460 = getelementptr inbounds i8, i8* %459, i64 1
  store i8 %458, i8* %460, align 1
  %461 = load i8*, i8** %10, align 8
  %462 = getelementptr inbounds i8, i8* %461, i64 2
  store i8* %462, i8** %10, align 8
  %463 = load i8*, i8** %15, align 8
  %464 = getelementptr inbounds i8, i8* %463, i64 2
  store i8* %464, i8** %15, align 8
  br label %465

465:                                              ; preds = %471, %443
  %466 = load i8*, i8** %15, align 8
  %467 = getelementptr inbounds i8, i8* %466, i32 1
  store i8* %467, i8** %15, align 8
  %468 = load i8, i8* %466, align 1
  %469 = load i8*, i8** %10, align 8
  %470 = getelementptr inbounds i8, i8* %469, i32 1
  store i8* %470, i8** %10, align 8
  store i8 %468, i8* %469, align 1
  br label %471

471:                                              ; preds = %465
  %472 = load i8*, i8** %10, align 8
  %473 = load i8*, i8** %25, align 8
  %474 = icmp ult i8* %472, %473
  br i1 %474, label %465, label %475

475:                                              ; preds = %471
  br label %476

476:                                              ; preds = %475, %335, %164, %76
  %477 = load i64, i64* %13, align 8
  store i64 %477, i64* %14, align 8
  %478 = load i64, i64* %13, align 8
  store i64 %478, i64* %12, align 8
  %479 = load i64, i64* %12, align 8
  %480 = add i64 %479, 3
  %481 = call i32 @NEED_IP(i64 %480)
  %482 = load i64, i64* %12, align 8
  %483 = call i32 @NEED_OP(i64 %482)
  br label %484

484:                                              ; preds = %487, %476
  %485 = load i64, i64* %12, align 8
  %486 = icmp ugt i64 %485, 0
  br i1 %486, label %487, label %495

487:                                              ; preds = %484
  %488 = load i8*, i8** %11, align 8
  %489 = getelementptr inbounds i8, i8* %488, i32 1
  store i8* %489, i8** %11, align 8
  %490 = load i8, i8* %488, align 1
  %491 = load i8*, i8** %10, align 8
  %492 = getelementptr inbounds i8, i8* %491, i32 1
  store i8* %492, i8** %10, align 8
  store i8 %490, i8* %491, align 1
  %493 = load i64, i64* %12, align 8
  %494 = add i64 %493, -1
  store i64 %494, i64* %12, align 8
  br label %484

495:                                              ; preds = %484
  br label %80

496:                                              ; preds = %436
  %497 = load i8*, i8** %10, align 8
  %498 = load i8*, i8** %8, align 8
  %499 = ptrtoint i8* %497 to i64
  %500 = ptrtoint i8* %498 to i64
  %501 = sub i64 %499, %500
  %502 = load i64*, i64** %9, align 8
  store i64 %501, i64* %502, align 8
  %503 = load i64, i64* %12, align 8
  %504 = icmp ne i64 %503, 3
  br i1 %504, label %505, label %507

505:                                              ; preds = %496
  %506 = load i32, i32* @LZO_E_ERROR, align 4
  br label %525

507:                                              ; preds = %496
  %508 = load i8*, i8** %11, align 8
  %509 = load i8*, i8** %16, align 8
  %510 = icmp eq i8* %508, %509
  br i1 %510, label %511, label %513

511:                                              ; preds = %507
  %512 = load i32, i32* @LZO_E_OK, align 4
  br label %523

513:                                              ; preds = %507
  %514 = load i8*, i8** %11, align 8
  %515 = load i8*, i8** %16, align 8
  %516 = icmp ult i8* %514, %515
  br i1 %516, label %517, label %519

517:                                              ; preds = %513
  %518 = load i32, i32* @LZO_E_INPUT_NOT_CONSUMED, align 4
  br label %521

519:                                              ; preds = %513
  %520 = load i32, i32* @LZO_E_INPUT_OVERRUN, align 4
  br label %521

521:                                              ; preds = %519, %517
  %522 = phi i32 [ %518, %517 ], [ %520, %519 ]
  br label %523

523:                                              ; preds = %521, %511
  %524 = phi i32 [ %512, %511 ], [ %522, %521 ]
  br label %525

525:                                              ; preds = %523, %505
  %526 = phi i32 [ %506, %505 ], [ %524, %523 ]
  store i32 %526, i32* %5, align 4
  br label %551

527:                                              ; preds = %40
  %528 = load i8*, i8** %10, align 8
  %529 = load i8*, i8** %8, align 8
  %530 = ptrtoint i8* %528 to i64
  %531 = ptrtoint i8* %529 to i64
  %532 = sub i64 %530, %531
  %533 = load i64*, i64** %9, align 8
  store i64 %532, i64* %533, align 8
  %534 = load i32, i32* @LZO_E_INPUT_OVERRUN, align 4
  store i32 %534, i32* %5, align 4
  br label %551

535:                                              ; No predecessors!
  %536 = load i8*, i8** %10, align 8
  %537 = load i8*, i8** %8, align 8
  %538 = ptrtoint i8* %536 to i64
  %539 = ptrtoint i8* %537 to i64
  %540 = sub i64 %538, %539
  %541 = load i64*, i64** %9, align 8
  store i64 %540, i64* %541, align 8
  %542 = load i32, i32* @LZO_E_OUTPUT_OVERRUN, align 4
  store i32 %542, i32* %5, align 4
  br label %551

543:                                              ; No predecessors!
  %544 = load i8*, i8** %10, align 8
  %545 = load i8*, i8** %8, align 8
  %546 = ptrtoint i8* %544 to i64
  %547 = ptrtoint i8* %545 to i64
  %548 = sub i64 %546, %547
  %549 = load i64*, i64** %9, align 8
  store i64 %548, i64* %549, align 8
  %550 = load i32, i32* @LZO_E_LOOKBEHIND_OVERRUN, align 4
  store i32 %550, i32* %5, align 4
  br label %551

551:                                              ; preds = %543, %535, %527, %525, %404, %288, %125
  %552 = load i32, i32* %5, align 4
  ret i32 %552
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i64 @likely(i32) #1

declare dso_local i32 @NEED_IP(i64) #1

declare dso_local i32 @NEED_OP(i64) #1

declare dso_local i32 @TEST_LB(i8*) #1

declare dso_local i64 @get_unaligned_le16(i8*) #1

declare dso_local i32 @memset(i8*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
