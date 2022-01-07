; ModuleID = '/home/carl/AnghaBench/linux/lib/extr_chacha.c_chacha_permute.c'
source_filename = "/home/carl/AnghaBench/linux/lib/extr_chacha.c_chacha_permute.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32)* @chacha_permute to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @chacha_permute(i32* %0, i32 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load i32, i32* %4, align 4
  %7 = icmp ne i32 %6, 20
  br i1 %7, label %8, label %11

8:                                                ; preds = %2
  %9 = load i32, i32* %4, align 4
  %10 = icmp ne i32 %9, 12
  br label %11

11:                                               ; preds = %8, %2
  %12 = phi i1 [ false, %2 ], [ %10, %8 ]
  %13 = zext i1 %12 to i32
  %14 = call i32 @WARN_ON_ONCE(i32 %13)
  store i32 0, i32* %5, align 4
  br label %15

15:                                               ; preds = %564, %11
  %16 = load i32, i32* %5, align 4
  %17 = load i32, i32* %4, align 4
  %18 = icmp slt i32 %16, %17
  br i1 %18, label %19, label %567

19:                                               ; preds = %15
  %20 = load i32*, i32** %3, align 8
  %21 = getelementptr inbounds i32, i32* %20, i64 4
  %22 = load i32, i32* %21, align 4
  %23 = load i32*, i32** %3, align 8
  %24 = getelementptr inbounds i32, i32* %23, i64 0
  %25 = load i32, i32* %24, align 4
  %26 = add nsw i32 %25, %22
  store i32 %26, i32* %24, align 4
  %27 = load i32*, i32** %3, align 8
  %28 = getelementptr inbounds i32, i32* %27, i64 12
  %29 = load i32, i32* %28, align 4
  %30 = load i32*, i32** %3, align 8
  %31 = getelementptr inbounds i32, i32* %30, i64 0
  %32 = load i32, i32* %31, align 4
  %33 = xor i32 %29, %32
  %34 = call i32 @rol32(i32 %33, i32 16)
  %35 = load i32*, i32** %3, align 8
  %36 = getelementptr inbounds i32, i32* %35, i64 12
  store i32 %34, i32* %36, align 4
  %37 = load i32*, i32** %3, align 8
  %38 = getelementptr inbounds i32, i32* %37, i64 5
  %39 = load i32, i32* %38, align 4
  %40 = load i32*, i32** %3, align 8
  %41 = getelementptr inbounds i32, i32* %40, i64 1
  %42 = load i32, i32* %41, align 4
  %43 = add nsw i32 %42, %39
  store i32 %43, i32* %41, align 4
  %44 = load i32*, i32** %3, align 8
  %45 = getelementptr inbounds i32, i32* %44, i64 13
  %46 = load i32, i32* %45, align 4
  %47 = load i32*, i32** %3, align 8
  %48 = getelementptr inbounds i32, i32* %47, i64 1
  %49 = load i32, i32* %48, align 4
  %50 = xor i32 %46, %49
  %51 = call i32 @rol32(i32 %50, i32 16)
  %52 = load i32*, i32** %3, align 8
  %53 = getelementptr inbounds i32, i32* %52, i64 13
  store i32 %51, i32* %53, align 4
  %54 = load i32*, i32** %3, align 8
  %55 = getelementptr inbounds i32, i32* %54, i64 6
  %56 = load i32, i32* %55, align 4
  %57 = load i32*, i32** %3, align 8
  %58 = getelementptr inbounds i32, i32* %57, i64 2
  %59 = load i32, i32* %58, align 4
  %60 = add nsw i32 %59, %56
  store i32 %60, i32* %58, align 4
  %61 = load i32*, i32** %3, align 8
  %62 = getelementptr inbounds i32, i32* %61, i64 14
  %63 = load i32, i32* %62, align 4
  %64 = load i32*, i32** %3, align 8
  %65 = getelementptr inbounds i32, i32* %64, i64 2
  %66 = load i32, i32* %65, align 4
  %67 = xor i32 %63, %66
  %68 = call i32 @rol32(i32 %67, i32 16)
  %69 = load i32*, i32** %3, align 8
  %70 = getelementptr inbounds i32, i32* %69, i64 14
  store i32 %68, i32* %70, align 4
  %71 = load i32*, i32** %3, align 8
  %72 = getelementptr inbounds i32, i32* %71, i64 7
  %73 = load i32, i32* %72, align 4
  %74 = load i32*, i32** %3, align 8
  %75 = getelementptr inbounds i32, i32* %74, i64 3
  %76 = load i32, i32* %75, align 4
  %77 = add nsw i32 %76, %73
  store i32 %77, i32* %75, align 4
  %78 = load i32*, i32** %3, align 8
  %79 = getelementptr inbounds i32, i32* %78, i64 15
  %80 = load i32, i32* %79, align 4
  %81 = load i32*, i32** %3, align 8
  %82 = getelementptr inbounds i32, i32* %81, i64 3
  %83 = load i32, i32* %82, align 4
  %84 = xor i32 %80, %83
  %85 = call i32 @rol32(i32 %84, i32 16)
  %86 = load i32*, i32** %3, align 8
  %87 = getelementptr inbounds i32, i32* %86, i64 15
  store i32 %85, i32* %87, align 4
  %88 = load i32*, i32** %3, align 8
  %89 = getelementptr inbounds i32, i32* %88, i64 12
  %90 = load i32, i32* %89, align 4
  %91 = load i32*, i32** %3, align 8
  %92 = getelementptr inbounds i32, i32* %91, i64 8
  %93 = load i32, i32* %92, align 4
  %94 = add nsw i32 %93, %90
  store i32 %94, i32* %92, align 4
  %95 = load i32*, i32** %3, align 8
  %96 = getelementptr inbounds i32, i32* %95, i64 4
  %97 = load i32, i32* %96, align 4
  %98 = load i32*, i32** %3, align 8
  %99 = getelementptr inbounds i32, i32* %98, i64 8
  %100 = load i32, i32* %99, align 4
  %101 = xor i32 %97, %100
  %102 = call i32 @rol32(i32 %101, i32 12)
  %103 = load i32*, i32** %3, align 8
  %104 = getelementptr inbounds i32, i32* %103, i64 4
  store i32 %102, i32* %104, align 4
  %105 = load i32*, i32** %3, align 8
  %106 = getelementptr inbounds i32, i32* %105, i64 13
  %107 = load i32, i32* %106, align 4
  %108 = load i32*, i32** %3, align 8
  %109 = getelementptr inbounds i32, i32* %108, i64 9
  %110 = load i32, i32* %109, align 4
  %111 = add nsw i32 %110, %107
  store i32 %111, i32* %109, align 4
  %112 = load i32*, i32** %3, align 8
  %113 = getelementptr inbounds i32, i32* %112, i64 5
  %114 = load i32, i32* %113, align 4
  %115 = load i32*, i32** %3, align 8
  %116 = getelementptr inbounds i32, i32* %115, i64 9
  %117 = load i32, i32* %116, align 4
  %118 = xor i32 %114, %117
  %119 = call i32 @rol32(i32 %118, i32 12)
  %120 = load i32*, i32** %3, align 8
  %121 = getelementptr inbounds i32, i32* %120, i64 5
  store i32 %119, i32* %121, align 4
  %122 = load i32*, i32** %3, align 8
  %123 = getelementptr inbounds i32, i32* %122, i64 14
  %124 = load i32, i32* %123, align 4
  %125 = load i32*, i32** %3, align 8
  %126 = getelementptr inbounds i32, i32* %125, i64 10
  %127 = load i32, i32* %126, align 4
  %128 = add nsw i32 %127, %124
  store i32 %128, i32* %126, align 4
  %129 = load i32*, i32** %3, align 8
  %130 = getelementptr inbounds i32, i32* %129, i64 6
  %131 = load i32, i32* %130, align 4
  %132 = load i32*, i32** %3, align 8
  %133 = getelementptr inbounds i32, i32* %132, i64 10
  %134 = load i32, i32* %133, align 4
  %135 = xor i32 %131, %134
  %136 = call i32 @rol32(i32 %135, i32 12)
  %137 = load i32*, i32** %3, align 8
  %138 = getelementptr inbounds i32, i32* %137, i64 6
  store i32 %136, i32* %138, align 4
  %139 = load i32*, i32** %3, align 8
  %140 = getelementptr inbounds i32, i32* %139, i64 15
  %141 = load i32, i32* %140, align 4
  %142 = load i32*, i32** %3, align 8
  %143 = getelementptr inbounds i32, i32* %142, i64 11
  %144 = load i32, i32* %143, align 4
  %145 = add nsw i32 %144, %141
  store i32 %145, i32* %143, align 4
  %146 = load i32*, i32** %3, align 8
  %147 = getelementptr inbounds i32, i32* %146, i64 7
  %148 = load i32, i32* %147, align 4
  %149 = load i32*, i32** %3, align 8
  %150 = getelementptr inbounds i32, i32* %149, i64 11
  %151 = load i32, i32* %150, align 4
  %152 = xor i32 %148, %151
  %153 = call i32 @rol32(i32 %152, i32 12)
  %154 = load i32*, i32** %3, align 8
  %155 = getelementptr inbounds i32, i32* %154, i64 7
  store i32 %153, i32* %155, align 4
  %156 = load i32*, i32** %3, align 8
  %157 = getelementptr inbounds i32, i32* %156, i64 4
  %158 = load i32, i32* %157, align 4
  %159 = load i32*, i32** %3, align 8
  %160 = getelementptr inbounds i32, i32* %159, i64 0
  %161 = load i32, i32* %160, align 4
  %162 = add nsw i32 %161, %158
  store i32 %162, i32* %160, align 4
  %163 = load i32*, i32** %3, align 8
  %164 = getelementptr inbounds i32, i32* %163, i64 12
  %165 = load i32, i32* %164, align 4
  %166 = load i32*, i32** %3, align 8
  %167 = getelementptr inbounds i32, i32* %166, i64 0
  %168 = load i32, i32* %167, align 4
  %169 = xor i32 %165, %168
  %170 = call i32 @rol32(i32 %169, i32 8)
  %171 = load i32*, i32** %3, align 8
  %172 = getelementptr inbounds i32, i32* %171, i64 12
  store i32 %170, i32* %172, align 4
  %173 = load i32*, i32** %3, align 8
  %174 = getelementptr inbounds i32, i32* %173, i64 5
  %175 = load i32, i32* %174, align 4
  %176 = load i32*, i32** %3, align 8
  %177 = getelementptr inbounds i32, i32* %176, i64 1
  %178 = load i32, i32* %177, align 4
  %179 = add nsw i32 %178, %175
  store i32 %179, i32* %177, align 4
  %180 = load i32*, i32** %3, align 8
  %181 = getelementptr inbounds i32, i32* %180, i64 13
  %182 = load i32, i32* %181, align 4
  %183 = load i32*, i32** %3, align 8
  %184 = getelementptr inbounds i32, i32* %183, i64 1
  %185 = load i32, i32* %184, align 4
  %186 = xor i32 %182, %185
  %187 = call i32 @rol32(i32 %186, i32 8)
  %188 = load i32*, i32** %3, align 8
  %189 = getelementptr inbounds i32, i32* %188, i64 13
  store i32 %187, i32* %189, align 4
  %190 = load i32*, i32** %3, align 8
  %191 = getelementptr inbounds i32, i32* %190, i64 6
  %192 = load i32, i32* %191, align 4
  %193 = load i32*, i32** %3, align 8
  %194 = getelementptr inbounds i32, i32* %193, i64 2
  %195 = load i32, i32* %194, align 4
  %196 = add nsw i32 %195, %192
  store i32 %196, i32* %194, align 4
  %197 = load i32*, i32** %3, align 8
  %198 = getelementptr inbounds i32, i32* %197, i64 14
  %199 = load i32, i32* %198, align 4
  %200 = load i32*, i32** %3, align 8
  %201 = getelementptr inbounds i32, i32* %200, i64 2
  %202 = load i32, i32* %201, align 4
  %203 = xor i32 %199, %202
  %204 = call i32 @rol32(i32 %203, i32 8)
  %205 = load i32*, i32** %3, align 8
  %206 = getelementptr inbounds i32, i32* %205, i64 14
  store i32 %204, i32* %206, align 4
  %207 = load i32*, i32** %3, align 8
  %208 = getelementptr inbounds i32, i32* %207, i64 7
  %209 = load i32, i32* %208, align 4
  %210 = load i32*, i32** %3, align 8
  %211 = getelementptr inbounds i32, i32* %210, i64 3
  %212 = load i32, i32* %211, align 4
  %213 = add nsw i32 %212, %209
  store i32 %213, i32* %211, align 4
  %214 = load i32*, i32** %3, align 8
  %215 = getelementptr inbounds i32, i32* %214, i64 15
  %216 = load i32, i32* %215, align 4
  %217 = load i32*, i32** %3, align 8
  %218 = getelementptr inbounds i32, i32* %217, i64 3
  %219 = load i32, i32* %218, align 4
  %220 = xor i32 %216, %219
  %221 = call i32 @rol32(i32 %220, i32 8)
  %222 = load i32*, i32** %3, align 8
  %223 = getelementptr inbounds i32, i32* %222, i64 15
  store i32 %221, i32* %223, align 4
  %224 = load i32*, i32** %3, align 8
  %225 = getelementptr inbounds i32, i32* %224, i64 12
  %226 = load i32, i32* %225, align 4
  %227 = load i32*, i32** %3, align 8
  %228 = getelementptr inbounds i32, i32* %227, i64 8
  %229 = load i32, i32* %228, align 4
  %230 = add nsw i32 %229, %226
  store i32 %230, i32* %228, align 4
  %231 = load i32*, i32** %3, align 8
  %232 = getelementptr inbounds i32, i32* %231, i64 4
  %233 = load i32, i32* %232, align 4
  %234 = load i32*, i32** %3, align 8
  %235 = getelementptr inbounds i32, i32* %234, i64 8
  %236 = load i32, i32* %235, align 4
  %237 = xor i32 %233, %236
  %238 = call i32 @rol32(i32 %237, i32 7)
  %239 = load i32*, i32** %3, align 8
  %240 = getelementptr inbounds i32, i32* %239, i64 4
  store i32 %238, i32* %240, align 4
  %241 = load i32*, i32** %3, align 8
  %242 = getelementptr inbounds i32, i32* %241, i64 13
  %243 = load i32, i32* %242, align 4
  %244 = load i32*, i32** %3, align 8
  %245 = getelementptr inbounds i32, i32* %244, i64 9
  %246 = load i32, i32* %245, align 4
  %247 = add nsw i32 %246, %243
  store i32 %247, i32* %245, align 4
  %248 = load i32*, i32** %3, align 8
  %249 = getelementptr inbounds i32, i32* %248, i64 5
  %250 = load i32, i32* %249, align 4
  %251 = load i32*, i32** %3, align 8
  %252 = getelementptr inbounds i32, i32* %251, i64 9
  %253 = load i32, i32* %252, align 4
  %254 = xor i32 %250, %253
  %255 = call i32 @rol32(i32 %254, i32 7)
  %256 = load i32*, i32** %3, align 8
  %257 = getelementptr inbounds i32, i32* %256, i64 5
  store i32 %255, i32* %257, align 4
  %258 = load i32*, i32** %3, align 8
  %259 = getelementptr inbounds i32, i32* %258, i64 14
  %260 = load i32, i32* %259, align 4
  %261 = load i32*, i32** %3, align 8
  %262 = getelementptr inbounds i32, i32* %261, i64 10
  %263 = load i32, i32* %262, align 4
  %264 = add nsw i32 %263, %260
  store i32 %264, i32* %262, align 4
  %265 = load i32*, i32** %3, align 8
  %266 = getelementptr inbounds i32, i32* %265, i64 6
  %267 = load i32, i32* %266, align 4
  %268 = load i32*, i32** %3, align 8
  %269 = getelementptr inbounds i32, i32* %268, i64 10
  %270 = load i32, i32* %269, align 4
  %271 = xor i32 %267, %270
  %272 = call i32 @rol32(i32 %271, i32 7)
  %273 = load i32*, i32** %3, align 8
  %274 = getelementptr inbounds i32, i32* %273, i64 6
  store i32 %272, i32* %274, align 4
  %275 = load i32*, i32** %3, align 8
  %276 = getelementptr inbounds i32, i32* %275, i64 15
  %277 = load i32, i32* %276, align 4
  %278 = load i32*, i32** %3, align 8
  %279 = getelementptr inbounds i32, i32* %278, i64 11
  %280 = load i32, i32* %279, align 4
  %281 = add nsw i32 %280, %277
  store i32 %281, i32* %279, align 4
  %282 = load i32*, i32** %3, align 8
  %283 = getelementptr inbounds i32, i32* %282, i64 7
  %284 = load i32, i32* %283, align 4
  %285 = load i32*, i32** %3, align 8
  %286 = getelementptr inbounds i32, i32* %285, i64 11
  %287 = load i32, i32* %286, align 4
  %288 = xor i32 %284, %287
  %289 = call i32 @rol32(i32 %288, i32 7)
  %290 = load i32*, i32** %3, align 8
  %291 = getelementptr inbounds i32, i32* %290, i64 7
  store i32 %289, i32* %291, align 4
  %292 = load i32*, i32** %3, align 8
  %293 = getelementptr inbounds i32, i32* %292, i64 5
  %294 = load i32, i32* %293, align 4
  %295 = load i32*, i32** %3, align 8
  %296 = getelementptr inbounds i32, i32* %295, i64 0
  %297 = load i32, i32* %296, align 4
  %298 = add nsw i32 %297, %294
  store i32 %298, i32* %296, align 4
  %299 = load i32*, i32** %3, align 8
  %300 = getelementptr inbounds i32, i32* %299, i64 15
  %301 = load i32, i32* %300, align 4
  %302 = load i32*, i32** %3, align 8
  %303 = getelementptr inbounds i32, i32* %302, i64 0
  %304 = load i32, i32* %303, align 4
  %305 = xor i32 %301, %304
  %306 = call i32 @rol32(i32 %305, i32 16)
  %307 = load i32*, i32** %3, align 8
  %308 = getelementptr inbounds i32, i32* %307, i64 15
  store i32 %306, i32* %308, align 4
  %309 = load i32*, i32** %3, align 8
  %310 = getelementptr inbounds i32, i32* %309, i64 6
  %311 = load i32, i32* %310, align 4
  %312 = load i32*, i32** %3, align 8
  %313 = getelementptr inbounds i32, i32* %312, i64 1
  %314 = load i32, i32* %313, align 4
  %315 = add nsw i32 %314, %311
  store i32 %315, i32* %313, align 4
  %316 = load i32*, i32** %3, align 8
  %317 = getelementptr inbounds i32, i32* %316, i64 12
  %318 = load i32, i32* %317, align 4
  %319 = load i32*, i32** %3, align 8
  %320 = getelementptr inbounds i32, i32* %319, i64 1
  %321 = load i32, i32* %320, align 4
  %322 = xor i32 %318, %321
  %323 = call i32 @rol32(i32 %322, i32 16)
  %324 = load i32*, i32** %3, align 8
  %325 = getelementptr inbounds i32, i32* %324, i64 12
  store i32 %323, i32* %325, align 4
  %326 = load i32*, i32** %3, align 8
  %327 = getelementptr inbounds i32, i32* %326, i64 7
  %328 = load i32, i32* %327, align 4
  %329 = load i32*, i32** %3, align 8
  %330 = getelementptr inbounds i32, i32* %329, i64 2
  %331 = load i32, i32* %330, align 4
  %332 = add nsw i32 %331, %328
  store i32 %332, i32* %330, align 4
  %333 = load i32*, i32** %3, align 8
  %334 = getelementptr inbounds i32, i32* %333, i64 13
  %335 = load i32, i32* %334, align 4
  %336 = load i32*, i32** %3, align 8
  %337 = getelementptr inbounds i32, i32* %336, i64 2
  %338 = load i32, i32* %337, align 4
  %339 = xor i32 %335, %338
  %340 = call i32 @rol32(i32 %339, i32 16)
  %341 = load i32*, i32** %3, align 8
  %342 = getelementptr inbounds i32, i32* %341, i64 13
  store i32 %340, i32* %342, align 4
  %343 = load i32*, i32** %3, align 8
  %344 = getelementptr inbounds i32, i32* %343, i64 4
  %345 = load i32, i32* %344, align 4
  %346 = load i32*, i32** %3, align 8
  %347 = getelementptr inbounds i32, i32* %346, i64 3
  %348 = load i32, i32* %347, align 4
  %349 = add nsw i32 %348, %345
  store i32 %349, i32* %347, align 4
  %350 = load i32*, i32** %3, align 8
  %351 = getelementptr inbounds i32, i32* %350, i64 14
  %352 = load i32, i32* %351, align 4
  %353 = load i32*, i32** %3, align 8
  %354 = getelementptr inbounds i32, i32* %353, i64 3
  %355 = load i32, i32* %354, align 4
  %356 = xor i32 %352, %355
  %357 = call i32 @rol32(i32 %356, i32 16)
  %358 = load i32*, i32** %3, align 8
  %359 = getelementptr inbounds i32, i32* %358, i64 14
  store i32 %357, i32* %359, align 4
  %360 = load i32*, i32** %3, align 8
  %361 = getelementptr inbounds i32, i32* %360, i64 15
  %362 = load i32, i32* %361, align 4
  %363 = load i32*, i32** %3, align 8
  %364 = getelementptr inbounds i32, i32* %363, i64 10
  %365 = load i32, i32* %364, align 4
  %366 = add nsw i32 %365, %362
  store i32 %366, i32* %364, align 4
  %367 = load i32*, i32** %3, align 8
  %368 = getelementptr inbounds i32, i32* %367, i64 5
  %369 = load i32, i32* %368, align 4
  %370 = load i32*, i32** %3, align 8
  %371 = getelementptr inbounds i32, i32* %370, i64 10
  %372 = load i32, i32* %371, align 4
  %373 = xor i32 %369, %372
  %374 = call i32 @rol32(i32 %373, i32 12)
  %375 = load i32*, i32** %3, align 8
  %376 = getelementptr inbounds i32, i32* %375, i64 5
  store i32 %374, i32* %376, align 4
  %377 = load i32*, i32** %3, align 8
  %378 = getelementptr inbounds i32, i32* %377, i64 12
  %379 = load i32, i32* %378, align 4
  %380 = load i32*, i32** %3, align 8
  %381 = getelementptr inbounds i32, i32* %380, i64 11
  %382 = load i32, i32* %381, align 4
  %383 = add nsw i32 %382, %379
  store i32 %383, i32* %381, align 4
  %384 = load i32*, i32** %3, align 8
  %385 = getelementptr inbounds i32, i32* %384, i64 6
  %386 = load i32, i32* %385, align 4
  %387 = load i32*, i32** %3, align 8
  %388 = getelementptr inbounds i32, i32* %387, i64 11
  %389 = load i32, i32* %388, align 4
  %390 = xor i32 %386, %389
  %391 = call i32 @rol32(i32 %390, i32 12)
  %392 = load i32*, i32** %3, align 8
  %393 = getelementptr inbounds i32, i32* %392, i64 6
  store i32 %391, i32* %393, align 4
  %394 = load i32*, i32** %3, align 8
  %395 = getelementptr inbounds i32, i32* %394, i64 13
  %396 = load i32, i32* %395, align 4
  %397 = load i32*, i32** %3, align 8
  %398 = getelementptr inbounds i32, i32* %397, i64 8
  %399 = load i32, i32* %398, align 4
  %400 = add nsw i32 %399, %396
  store i32 %400, i32* %398, align 4
  %401 = load i32*, i32** %3, align 8
  %402 = getelementptr inbounds i32, i32* %401, i64 7
  %403 = load i32, i32* %402, align 4
  %404 = load i32*, i32** %3, align 8
  %405 = getelementptr inbounds i32, i32* %404, i64 8
  %406 = load i32, i32* %405, align 4
  %407 = xor i32 %403, %406
  %408 = call i32 @rol32(i32 %407, i32 12)
  %409 = load i32*, i32** %3, align 8
  %410 = getelementptr inbounds i32, i32* %409, i64 7
  store i32 %408, i32* %410, align 4
  %411 = load i32*, i32** %3, align 8
  %412 = getelementptr inbounds i32, i32* %411, i64 14
  %413 = load i32, i32* %412, align 4
  %414 = load i32*, i32** %3, align 8
  %415 = getelementptr inbounds i32, i32* %414, i64 9
  %416 = load i32, i32* %415, align 4
  %417 = add nsw i32 %416, %413
  store i32 %417, i32* %415, align 4
  %418 = load i32*, i32** %3, align 8
  %419 = getelementptr inbounds i32, i32* %418, i64 4
  %420 = load i32, i32* %419, align 4
  %421 = load i32*, i32** %3, align 8
  %422 = getelementptr inbounds i32, i32* %421, i64 9
  %423 = load i32, i32* %422, align 4
  %424 = xor i32 %420, %423
  %425 = call i32 @rol32(i32 %424, i32 12)
  %426 = load i32*, i32** %3, align 8
  %427 = getelementptr inbounds i32, i32* %426, i64 4
  store i32 %425, i32* %427, align 4
  %428 = load i32*, i32** %3, align 8
  %429 = getelementptr inbounds i32, i32* %428, i64 5
  %430 = load i32, i32* %429, align 4
  %431 = load i32*, i32** %3, align 8
  %432 = getelementptr inbounds i32, i32* %431, i64 0
  %433 = load i32, i32* %432, align 4
  %434 = add nsw i32 %433, %430
  store i32 %434, i32* %432, align 4
  %435 = load i32*, i32** %3, align 8
  %436 = getelementptr inbounds i32, i32* %435, i64 15
  %437 = load i32, i32* %436, align 4
  %438 = load i32*, i32** %3, align 8
  %439 = getelementptr inbounds i32, i32* %438, i64 0
  %440 = load i32, i32* %439, align 4
  %441 = xor i32 %437, %440
  %442 = call i32 @rol32(i32 %441, i32 8)
  %443 = load i32*, i32** %3, align 8
  %444 = getelementptr inbounds i32, i32* %443, i64 15
  store i32 %442, i32* %444, align 4
  %445 = load i32*, i32** %3, align 8
  %446 = getelementptr inbounds i32, i32* %445, i64 6
  %447 = load i32, i32* %446, align 4
  %448 = load i32*, i32** %3, align 8
  %449 = getelementptr inbounds i32, i32* %448, i64 1
  %450 = load i32, i32* %449, align 4
  %451 = add nsw i32 %450, %447
  store i32 %451, i32* %449, align 4
  %452 = load i32*, i32** %3, align 8
  %453 = getelementptr inbounds i32, i32* %452, i64 12
  %454 = load i32, i32* %453, align 4
  %455 = load i32*, i32** %3, align 8
  %456 = getelementptr inbounds i32, i32* %455, i64 1
  %457 = load i32, i32* %456, align 4
  %458 = xor i32 %454, %457
  %459 = call i32 @rol32(i32 %458, i32 8)
  %460 = load i32*, i32** %3, align 8
  %461 = getelementptr inbounds i32, i32* %460, i64 12
  store i32 %459, i32* %461, align 4
  %462 = load i32*, i32** %3, align 8
  %463 = getelementptr inbounds i32, i32* %462, i64 7
  %464 = load i32, i32* %463, align 4
  %465 = load i32*, i32** %3, align 8
  %466 = getelementptr inbounds i32, i32* %465, i64 2
  %467 = load i32, i32* %466, align 4
  %468 = add nsw i32 %467, %464
  store i32 %468, i32* %466, align 4
  %469 = load i32*, i32** %3, align 8
  %470 = getelementptr inbounds i32, i32* %469, i64 13
  %471 = load i32, i32* %470, align 4
  %472 = load i32*, i32** %3, align 8
  %473 = getelementptr inbounds i32, i32* %472, i64 2
  %474 = load i32, i32* %473, align 4
  %475 = xor i32 %471, %474
  %476 = call i32 @rol32(i32 %475, i32 8)
  %477 = load i32*, i32** %3, align 8
  %478 = getelementptr inbounds i32, i32* %477, i64 13
  store i32 %476, i32* %478, align 4
  %479 = load i32*, i32** %3, align 8
  %480 = getelementptr inbounds i32, i32* %479, i64 4
  %481 = load i32, i32* %480, align 4
  %482 = load i32*, i32** %3, align 8
  %483 = getelementptr inbounds i32, i32* %482, i64 3
  %484 = load i32, i32* %483, align 4
  %485 = add nsw i32 %484, %481
  store i32 %485, i32* %483, align 4
  %486 = load i32*, i32** %3, align 8
  %487 = getelementptr inbounds i32, i32* %486, i64 14
  %488 = load i32, i32* %487, align 4
  %489 = load i32*, i32** %3, align 8
  %490 = getelementptr inbounds i32, i32* %489, i64 3
  %491 = load i32, i32* %490, align 4
  %492 = xor i32 %488, %491
  %493 = call i32 @rol32(i32 %492, i32 8)
  %494 = load i32*, i32** %3, align 8
  %495 = getelementptr inbounds i32, i32* %494, i64 14
  store i32 %493, i32* %495, align 4
  %496 = load i32*, i32** %3, align 8
  %497 = getelementptr inbounds i32, i32* %496, i64 15
  %498 = load i32, i32* %497, align 4
  %499 = load i32*, i32** %3, align 8
  %500 = getelementptr inbounds i32, i32* %499, i64 10
  %501 = load i32, i32* %500, align 4
  %502 = add nsw i32 %501, %498
  store i32 %502, i32* %500, align 4
  %503 = load i32*, i32** %3, align 8
  %504 = getelementptr inbounds i32, i32* %503, i64 5
  %505 = load i32, i32* %504, align 4
  %506 = load i32*, i32** %3, align 8
  %507 = getelementptr inbounds i32, i32* %506, i64 10
  %508 = load i32, i32* %507, align 4
  %509 = xor i32 %505, %508
  %510 = call i32 @rol32(i32 %509, i32 7)
  %511 = load i32*, i32** %3, align 8
  %512 = getelementptr inbounds i32, i32* %511, i64 5
  store i32 %510, i32* %512, align 4
  %513 = load i32*, i32** %3, align 8
  %514 = getelementptr inbounds i32, i32* %513, i64 12
  %515 = load i32, i32* %514, align 4
  %516 = load i32*, i32** %3, align 8
  %517 = getelementptr inbounds i32, i32* %516, i64 11
  %518 = load i32, i32* %517, align 4
  %519 = add nsw i32 %518, %515
  store i32 %519, i32* %517, align 4
  %520 = load i32*, i32** %3, align 8
  %521 = getelementptr inbounds i32, i32* %520, i64 6
  %522 = load i32, i32* %521, align 4
  %523 = load i32*, i32** %3, align 8
  %524 = getelementptr inbounds i32, i32* %523, i64 11
  %525 = load i32, i32* %524, align 4
  %526 = xor i32 %522, %525
  %527 = call i32 @rol32(i32 %526, i32 7)
  %528 = load i32*, i32** %3, align 8
  %529 = getelementptr inbounds i32, i32* %528, i64 6
  store i32 %527, i32* %529, align 4
  %530 = load i32*, i32** %3, align 8
  %531 = getelementptr inbounds i32, i32* %530, i64 13
  %532 = load i32, i32* %531, align 4
  %533 = load i32*, i32** %3, align 8
  %534 = getelementptr inbounds i32, i32* %533, i64 8
  %535 = load i32, i32* %534, align 4
  %536 = add nsw i32 %535, %532
  store i32 %536, i32* %534, align 4
  %537 = load i32*, i32** %3, align 8
  %538 = getelementptr inbounds i32, i32* %537, i64 7
  %539 = load i32, i32* %538, align 4
  %540 = load i32*, i32** %3, align 8
  %541 = getelementptr inbounds i32, i32* %540, i64 8
  %542 = load i32, i32* %541, align 4
  %543 = xor i32 %539, %542
  %544 = call i32 @rol32(i32 %543, i32 7)
  %545 = load i32*, i32** %3, align 8
  %546 = getelementptr inbounds i32, i32* %545, i64 7
  store i32 %544, i32* %546, align 4
  %547 = load i32*, i32** %3, align 8
  %548 = getelementptr inbounds i32, i32* %547, i64 14
  %549 = load i32, i32* %548, align 4
  %550 = load i32*, i32** %3, align 8
  %551 = getelementptr inbounds i32, i32* %550, i64 9
  %552 = load i32, i32* %551, align 4
  %553 = add nsw i32 %552, %549
  store i32 %553, i32* %551, align 4
  %554 = load i32*, i32** %3, align 8
  %555 = getelementptr inbounds i32, i32* %554, i64 4
  %556 = load i32, i32* %555, align 4
  %557 = load i32*, i32** %3, align 8
  %558 = getelementptr inbounds i32, i32* %557, i64 9
  %559 = load i32, i32* %558, align 4
  %560 = xor i32 %556, %559
  %561 = call i32 @rol32(i32 %560, i32 7)
  %562 = load i32*, i32** %3, align 8
  %563 = getelementptr inbounds i32, i32* %562, i64 4
  store i32 %561, i32* %563, align 4
  br label %564

564:                                              ; preds = %19
  %565 = load i32, i32* %5, align 4
  %566 = add nsw i32 %565, 2
  store i32 %566, i32* %5, align 4
  br label %15

567:                                              ; preds = %15
  ret void
}

declare dso_local i32 @WARN_ON_ONCE(i32) #1

declare dso_local i32 @rol32(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
