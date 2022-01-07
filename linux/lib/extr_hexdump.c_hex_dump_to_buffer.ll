; ModuleID = '/home/carl/AnghaBench/linux/lib/extr_hexdump.c_hex_dump_to_buffer.c'
source_filename = "/home/carl/AnghaBench/linux/lib/extr_hexdump.c_hex_dump_to_buffer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [12 x i8] c"%s%16.16llx\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str.2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"%s%8.8x\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"%s%4.4x\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @hex_dump_to_buffer(i8* %0, i64 %1, i32 %2, i32 %3, i8* %4, i64 %5, i32 %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca i8*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i8, align 1
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32*, align 8
  %24 = alloca i32*, align 8
  %25 = alloca i32*, align 8
  store i8* %0, i8** %9, align 8
  store i64 %1, i64* %10, align 8
  store i32 %2, i32* %11, align 4
  store i32 %3, i32* %12, align 4
  store i8* %4, i8** %13, align 8
  store i64 %5, i64* %14, align 8
  store i32 %6, i32* %15, align 4
  %26 = load i8*, i8** %9, align 8
  store i8* %26, i8** %16, align 8
  store i32 0, i32* %20, align 4
  %27 = load i32, i32* %11, align 4
  %28 = icmp ne i32 %27, 16
  br i1 %28, label %29, label %33

29:                                               ; preds = %7
  %30 = load i32, i32* %11, align 4
  %31 = icmp ne i32 %30, 32
  br i1 %31, label %32, label %33

32:                                               ; preds = %29
  store i32 16, i32* %11, align 4
  br label %33

33:                                               ; preds = %32, %29, %7
  %34 = load i64, i64* %10, align 8
  %35 = load i32, i32* %11, align 4
  %36 = sext i32 %35 to i64
  %37 = icmp ugt i64 %34, %36
  br i1 %37, label %38, label %41

38:                                               ; preds = %33
  %39 = load i32, i32* %11, align 4
  %40 = sext i32 %39 to i64
  store i64 %40, i64* %10, align 8
  br label %41

41:                                               ; preds = %38, %33
  %42 = load i32, i32* %12, align 4
  %43 = call i32 @is_power_of_2(i32 %42)
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %48

45:                                               ; preds = %41
  %46 = load i32, i32* %12, align 4
  %47 = icmp sgt i32 %46, 8
  br i1 %47, label %48, label %49

48:                                               ; preds = %45, %41
  store i32 1, i32* %12, align 4
  br label %49

49:                                               ; preds = %48, %45
  %50 = load i64, i64* %10, align 8
  %51 = load i32, i32* %12, align 4
  %52 = sext i32 %51 to i64
  %53 = urem i64 %50, %52
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %56

55:                                               ; preds = %49
  store i32 1, i32* %12, align 4
  br label %56

56:                                               ; preds = %55, %49
  %57 = load i64, i64* %10, align 8
  %58 = load i32, i32* %12, align 4
  %59 = sext i32 %58 to i64
  %60 = udiv i64 %57, %59
  %61 = trunc i64 %60 to i32
  store i32 %61, i32* %17, align 4
  %62 = load i32, i32* %11, align 4
  %63 = mul nsw i32 %62, 2
  %64 = load i32, i32* %11, align 4
  %65 = load i32, i32* %12, align 4
  %66 = sdiv i32 %64, %65
  %67 = add nsw i32 %63, %66
  %68 = add nsw i32 %67, 1
  store i32 %68, i32* %21, align 4
  %69 = load i64, i64* %14, align 8
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %72, label %71

71:                                               ; preds = %56
  br label %351

72:                                               ; preds = %56
  %73 = load i64, i64* %10, align 8
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %76, label %75

75:                                               ; preds = %72
  br label %339

76:                                               ; preds = %72
  %77 = load i32, i32* %12, align 4
  %78 = icmp eq i32 %77, 8
  br i1 %78, label %79, label %121

79:                                               ; preds = %76
  %80 = load i8*, i8** %9, align 8
  %81 = bitcast i8* %80 to i32*
  store i32* %81, i32** %23, align 8
  store i32 0, i32* %19, align 4
  br label %82

82:                                               ; preds = %117, %79
  %83 = load i32, i32* %19, align 4
  %84 = load i32, i32* %17, align 4
  %85 = icmp slt i32 %83, %84
  br i1 %85, label %86, label %120

86:                                               ; preds = %82
  %87 = load i8*, i8** %13, align 8
  %88 = load i32, i32* %20, align 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds i8, i8* %87, i64 %89
  %91 = load i64, i64* %14, align 8
  %92 = load i32, i32* %20, align 4
  %93 = sext i32 %92 to i64
  %94 = sub i64 %91, %93
  %95 = load i32, i32* %19, align 4
  %96 = icmp ne i32 %95, 0
  %97 = zext i1 %96 to i64
  %98 = select i1 %96, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0)
  %99 = load i32*, i32** %23, align 8
  %100 = load i32, i32* %19, align 4
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds i32, i32* %99, i64 %101
  %103 = call i32 @get_unaligned(i32* %102)
  %104 = call i32 @snprintf(i8* %90, i64 %94, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i8* %98, i32 %103)
  store i32 %104, i32* %22, align 4
  %105 = load i32, i32* %22, align 4
  %106 = sext i32 %105 to i64
  %107 = load i64, i64* %14, align 8
  %108 = load i32, i32* %20, align 4
  %109 = sext i32 %108 to i64
  %110 = sub i64 %107, %109
  %111 = icmp uge i64 %106, %110
  br i1 %111, label %112, label %113

112:                                              ; preds = %86
  br label %351

113:                                              ; preds = %86
  %114 = load i32, i32* %22, align 4
  %115 = load i32, i32* %20, align 4
  %116 = add nsw i32 %115, %114
  store i32 %116, i32* %20, align 4
  br label %117

117:                                              ; preds = %113
  %118 = load i32, i32* %19, align 4
  %119 = add nsw i32 %118, 1
  store i32 %119, i32* %19, align 4
  br label %82

120:                                              ; preds = %82
  br label %275

121:                                              ; preds = %76
  %122 = load i32, i32* %12, align 4
  %123 = icmp eq i32 %122, 4
  br i1 %123, label %124, label %166

124:                                              ; preds = %121
  %125 = load i8*, i8** %9, align 8
  %126 = bitcast i8* %125 to i32*
  store i32* %126, i32** %24, align 8
  store i32 0, i32* %19, align 4
  br label %127

127:                                              ; preds = %162, %124
  %128 = load i32, i32* %19, align 4
  %129 = load i32, i32* %17, align 4
  %130 = icmp slt i32 %128, %129
  br i1 %130, label %131, label %165

131:                                              ; preds = %127
  %132 = load i8*, i8** %13, align 8
  %133 = load i32, i32* %20, align 4
  %134 = sext i32 %133 to i64
  %135 = getelementptr inbounds i8, i8* %132, i64 %134
  %136 = load i64, i64* %14, align 8
  %137 = load i32, i32* %20, align 4
  %138 = sext i32 %137 to i64
  %139 = sub i64 %136, %138
  %140 = load i32, i32* %19, align 4
  %141 = icmp ne i32 %140, 0
  %142 = zext i1 %141 to i64
  %143 = select i1 %141, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0)
  %144 = load i32*, i32** %24, align 8
  %145 = load i32, i32* %19, align 4
  %146 = sext i32 %145 to i64
  %147 = getelementptr inbounds i32, i32* %144, i64 %146
  %148 = call i32 @get_unaligned(i32* %147)
  %149 = call i32 @snprintf(i8* %135, i64 %139, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0), i8* %143, i32 %148)
  store i32 %149, i32* %22, align 4
  %150 = load i32, i32* %22, align 4
  %151 = sext i32 %150 to i64
  %152 = load i64, i64* %14, align 8
  %153 = load i32, i32* %20, align 4
  %154 = sext i32 %153 to i64
  %155 = sub i64 %152, %154
  %156 = icmp uge i64 %151, %155
  br i1 %156, label %157, label %158

157:                                              ; preds = %131
  br label %351

158:                                              ; preds = %131
  %159 = load i32, i32* %22, align 4
  %160 = load i32, i32* %20, align 4
  %161 = add nsw i32 %160, %159
  store i32 %161, i32* %20, align 4
  br label %162

162:                                              ; preds = %158
  %163 = load i32, i32* %19, align 4
  %164 = add nsw i32 %163, 1
  store i32 %164, i32* %19, align 4
  br label %127

165:                                              ; preds = %127
  br label %274

166:                                              ; preds = %121
  %167 = load i32, i32* %12, align 4
  %168 = icmp eq i32 %167, 2
  br i1 %168, label %169, label %211

169:                                              ; preds = %166
  %170 = load i8*, i8** %9, align 8
  %171 = bitcast i8* %170 to i32*
  store i32* %171, i32** %25, align 8
  store i32 0, i32* %19, align 4
  br label %172

172:                                              ; preds = %207, %169
  %173 = load i32, i32* %19, align 4
  %174 = load i32, i32* %17, align 4
  %175 = icmp slt i32 %173, %174
  br i1 %175, label %176, label %210

176:                                              ; preds = %172
  %177 = load i8*, i8** %13, align 8
  %178 = load i32, i32* %20, align 4
  %179 = sext i32 %178 to i64
  %180 = getelementptr inbounds i8, i8* %177, i64 %179
  %181 = load i64, i64* %14, align 8
  %182 = load i32, i32* %20, align 4
  %183 = sext i32 %182 to i64
  %184 = sub i64 %181, %183
  %185 = load i32, i32* %19, align 4
  %186 = icmp ne i32 %185, 0
  %187 = zext i1 %186 to i64
  %188 = select i1 %186, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0)
  %189 = load i32*, i32** %25, align 8
  %190 = load i32, i32* %19, align 4
  %191 = sext i32 %190 to i64
  %192 = getelementptr inbounds i32, i32* %189, i64 %191
  %193 = call i32 @get_unaligned(i32* %192)
  %194 = call i32 @snprintf(i8* %180, i64 %184, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0), i8* %188, i32 %193)
  store i32 %194, i32* %22, align 4
  %195 = load i32, i32* %22, align 4
  %196 = sext i32 %195 to i64
  %197 = load i64, i64* %14, align 8
  %198 = load i32, i32* %20, align 4
  %199 = sext i32 %198 to i64
  %200 = sub i64 %197, %199
  %201 = icmp uge i64 %196, %200
  br i1 %201, label %202, label %203

202:                                              ; preds = %176
  br label %351

203:                                              ; preds = %176
  %204 = load i32, i32* %22, align 4
  %205 = load i32, i32* %20, align 4
  %206 = add nsw i32 %205, %204
  store i32 %206, i32* %20, align 4
  br label %207

207:                                              ; preds = %203
  %208 = load i32, i32* %19, align 4
  %209 = add nsw i32 %208, 1
  store i32 %209, i32* %19, align 4
  br label %172

210:                                              ; preds = %172
  br label %273

211:                                              ; preds = %166
  store i32 0, i32* %19, align 4
  br label %212

212:                                              ; preds = %263, %211
  %213 = load i32, i32* %19, align 4
  %214 = sext i32 %213 to i64
  %215 = load i64, i64* %10, align 8
  %216 = icmp ult i64 %214, %215
  br i1 %216, label %217, label %266

217:                                              ; preds = %212
  %218 = load i64, i64* %14, align 8
  %219 = load i32, i32* %20, align 4
  %220 = add nsw i32 %219, 2
  %221 = sext i32 %220 to i64
  %222 = icmp ult i64 %218, %221
  br i1 %222, label %223, label %224

223:                                              ; preds = %217
  br label %345

224:                                              ; preds = %217
  %225 = load i8*, i8** %16, align 8
  %226 = load i32, i32* %19, align 4
  %227 = sext i32 %226 to i64
  %228 = getelementptr inbounds i8, i8* %225, i64 %227
  %229 = load i8, i8* %228, align 1
  store i8 %229, i8* %18, align 1
  %230 = load i8, i8* %18, align 1
  %231 = call signext i8 @hex_asc_hi(i8 signext %230)
  %232 = load i8*, i8** %13, align 8
  %233 = load i32, i32* %20, align 4
  %234 = add nsw i32 %233, 1
  store i32 %234, i32* %20, align 4
  %235 = sext i32 %233 to i64
  %236 = getelementptr inbounds i8, i8* %232, i64 %235
  store i8 %231, i8* %236, align 1
  %237 = load i64, i64* %14, align 8
  %238 = load i32, i32* %20, align 4
  %239 = add nsw i32 %238, 2
  %240 = sext i32 %239 to i64
  %241 = icmp ult i64 %237, %240
  br i1 %241, label %242, label %243

242:                                              ; preds = %224
  br label %345

243:                                              ; preds = %224
  %244 = load i8, i8* %18, align 1
  %245 = call signext i8 @hex_asc_lo(i8 signext %244)
  %246 = load i8*, i8** %13, align 8
  %247 = load i32, i32* %20, align 4
  %248 = add nsw i32 %247, 1
  store i32 %248, i32* %20, align 4
  %249 = sext i32 %247 to i64
  %250 = getelementptr inbounds i8, i8* %246, i64 %249
  store i8 %245, i8* %250, align 1
  %251 = load i64, i64* %14, align 8
  %252 = load i32, i32* %20, align 4
  %253 = add nsw i32 %252, 2
  %254 = sext i32 %253 to i64
  %255 = icmp ult i64 %251, %254
  br i1 %255, label %256, label %257

256:                                              ; preds = %243
  br label %345

257:                                              ; preds = %243
  %258 = load i8*, i8** %13, align 8
  %259 = load i32, i32* %20, align 4
  %260 = add nsw i32 %259, 1
  store i32 %260, i32* %20, align 4
  %261 = sext i32 %259 to i64
  %262 = getelementptr inbounds i8, i8* %258, i64 %261
  store i8 32, i8* %262, align 1
  br label %263

263:                                              ; preds = %257
  %264 = load i32, i32* %19, align 4
  %265 = add nsw i32 %264, 1
  store i32 %265, i32* %19, align 4
  br label %212

266:                                              ; preds = %212
  %267 = load i32, i32* %19, align 4
  %268 = icmp ne i32 %267, 0
  br i1 %268, label %269, label %272

269:                                              ; preds = %266
  %270 = load i32, i32* %20, align 4
  %271 = add nsw i32 %270, -1
  store i32 %271, i32* %20, align 4
  br label %272

272:                                              ; preds = %269, %266
  br label %273

273:                                              ; preds = %272, %210
  br label %274

274:                                              ; preds = %273, %165
  br label %275

275:                                              ; preds = %274, %120
  %276 = load i32, i32* %15, align 4
  %277 = icmp ne i32 %276, 0
  br i1 %277, label %279, label %278

278:                                              ; preds = %275
  br label %339

279:                                              ; preds = %275
  br label %280

280:                                              ; preds = %291, %279
  %281 = load i32, i32* %20, align 4
  %282 = load i32, i32* %21, align 4
  %283 = icmp slt i32 %281, %282
  br i1 %283, label %284, label %297

284:                                              ; preds = %280
  %285 = load i64, i64* %14, align 8
  %286 = load i32, i32* %20, align 4
  %287 = add nsw i32 %286, 2
  %288 = sext i32 %287 to i64
  %289 = icmp ult i64 %285, %288
  br i1 %289, label %290, label %291

290:                                              ; preds = %284
  br label %345

291:                                              ; preds = %284
  %292 = load i8*, i8** %13, align 8
  %293 = load i32, i32* %20, align 4
  %294 = add nsw i32 %293, 1
  store i32 %294, i32* %20, align 4
  %295 = sext i32 %293 to i64
  %296 = getelementptr inbounds i8, i8* %292, i64 %295
  store i8 32, i8* %296, align 1
  br label %280

297:                                              ; preds = %280
  store i32 0, i32* %19, align 4
  br label %298

298:                                              ; preds = %335, %297
  %299 = load i32, i32* %19, align 4
  %300 = sext i32 %299 to i64
  %301 = load i64, i64* %10, align 8
  %302 = icmp ult i64 %300, %301
  br i1 %302, label %303, label %338

303:                                              ; preds = %298
  %304 = load i64, i64* %14, align 8
  %305 = load i32, i32* %20, align 4
  %306 = add nsw i32 %305, 2
  %307 = sext i32 %306 to i64
  %308 = icmp ult i64 %304, %307
  br i1 %308, label %309, label %310

309:                                              ; preds = %303
  br label %345

310:                                              ; preds = %303
  %311 = load i8*, i8** %16, align 8
  %312 = load i32, i32* %19, align 4
  %313 = sext i32 %312 to i64
  %314 = getelementptr inbounds i8, i8* %311, i64 %313
  %315 = load i8, i8* %314, align 1
  store i8 %315, i8* %18, align 1
  %316 = load i8, i8* %18, align 1
  %317 = call i64 @isascii(i8 signext %316)
  %318 = icmp ne i64 %317, 0
  br i1 %318, label %319, label %326

319:                                              ; preds = %310
  %320 = load i8, i8* %18, align 1
  %321 = call i64 @isprint(i8 signext %320)
  %322 = icmp ne i64 %321, 0
  br i1 %322, label %323, label %326

323:                                              ; preds = %319
  %324 = load i8, i8* %18, align 1
  %325 = sext i8 %324 to i32
  br label %327

326:                                              ; preds = %319, %310
  br label %327

327:                                              ; preds = %326, %323
  %328 = phi i32 [ %325, %323 ], [ 46, %326 ]
  %329 = trunc i32 %328 to i8
  %330 = load i8*, i8** %13, align 8
  %331 = load i32, i32* %20, align 4
  %332 = add nsw i32 %331, 1
  store i32 %332, i32* %20, align 4
  %333 = sext i32 %331 to i64
  %334 = getelementptr inbounds i8, i8* %330, i64 %333
  store i8 %329, i8* %334, align 1
  br label %335

335:                                              ; preds = %327
  %336 = load i32, i32* %19, align 4
  %337 = add nsw i32 %336, 1
  store i32 %337, i32* %19, align 4
  br label %298

338:                                              ; preds = %298
  br label %339

339:                                              ; preds = %338, %278, %75
  %340 = load i8*, i8** %13, align 8
  %341 = load i32, i32* %20, align 4
  %342 = sext i32 %341 to i64
  %343 = getelementptr inbounds i8, i8* %340, i64 %342
  store i8 0, i8* %343, align 1
  %344 = load i32, i32* %20, align 4
  store i32 %344, i32* %8, align 4
  br label %370

345:                                              ; preds = %309, %290, %256, %242, %223
  %346 = load i8*, i8** %13, align 8
  %347 = load i32, i32* %20, align 4
  %348 = add nsw i32 %347, 1
  store i32 %348, i32* %20, align 4
  %349 = sext i32 %347 to i64
  %350 = getelementptr inbounds i8, i8* %346, i64 %349
  store i8 0, i8* %350, align 1
  br label %351

351:                                              ; preds = %345, %202, %157, %112, %71
  %352 = load i32, i32* %15, align 4
  %353 = icmp ne i32 %352, 0
  br i1 %353, label %354, label %359

354:                                              ; preds = %351
  %355 = load i32, i32* %21, align 4
  %356 = sext i32 %355 to i64
  %357 = load i64, i64* %10, align 8
  %358 = add i64 %356, %357
  br label %367

359:                                              ; preds = %351
  %360 = load i32, i32* %12, align 4
  %361 = mul nsw i32 %360, 2
  %362 = add nsw i32 %361, 1
  %363 = load i32, i32* %17, align 4
  %364 = mul nsw i32 %362, %363
  %365 = sub nsw i32 %364, 1
  %366 = sext i32 %365 to i64
  br label %367

367:                                              ; preds = %359, %354
  %368 = phi i64 [ %358, %354 ], [ %366, %359 ]
  %369 = trunc i64 %368 to i32
  store i32 %369, i32* %8, align 4
  br label %370

370:                                              ; preds = %367, %339
  %371 = load i32, i32* %8, align 4
  ret i32 %371
}

declare dso_local i32 @is_power_of_2(i32) #1

declare dso_local i32 @snprintf(i8*, i64, i8*, i8*, i32) #1

declare dso_local i32 @get_unaligned(i32*) #1

declare dso_local signext i8 @hex_asc_hi(i8 signext) #1

declare dso_local signext i8 @hex_asc_lo(i8 signext) #1

declare dso_local i64 @isascii(i8 signext) #1

declare dso_local i64 @isprint(i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
