; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/radix-tree/extr_tag_check.c_do_thrash.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/radix-tree/extr_tag_check.c_do_thrash.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radix_tree_root = type { i32 }

@THRASH_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [61 x i8] c"%d(%d) %d(%d) %d(%d) %d(%d) / %d(%d) present, %d(%d) tagged\0A\00", align 1
@N = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.radix_tree_root*, i8*, i32)* @do_thrash to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @do_thrash(%struct.radix_tree_root* %0, i8* %1, i32 %2) #0 {
  %4 = alloca %struct.radix_tree_root*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  store %struct.radix_tree_root* %0, %struct.radix_tree_root** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  store i32 0, i32* %11, align 4
  store i32 0, i32* %12, align 4
  store i32 1, i32* %7, align 4
  br label %21

21:                                               ; preds = %337, %3
  %22 = load i32, i32* %7, align 4
  %23 = load i32, i32* @THRASH_SIZE, align 4
  %24 = icmp slt i32 %22, %23
  br i1 %24, label %25, label %341

25:                                               ; preds = %21
  store i32 1, i32* %8, align 4
  br label %26

26:                                               ; preds = %332, %25
  %27 = load i32, i32* %8, align 4
  %28 = load i32, i32* @THRASH_SIZE, align 4
  %29 = icmp slt i32 %27, %28
  br i1 %29, label %30, label %336

30:                                               ; preds = %26
  store i32 1, i32* %9, align 4
  br label %31

31:                                               ; preds = %327, %30
  %32 = load i32, i32* %9, align 4
  %33 = load i32, i32* @THRASH_SIZE, align 4
  %34 = icmp slt i32 %32, %33
  br i1 %34, label %35, label %331

35:                                               ; preds = %31
  store i32 1, i32* %10, align 4
  br label %36

36:                                               ; preds = %322, %35
  %37 = load i32, i32* %10, align 4
  %38 = load i32, i32* @THRASH_SIZE, align 4
  %39 = icmp slt i32 %37, %38
  br i1 %39, label %40, label %326

40:                                               ; preds = %36
  store i32 0, i32* %15, align 4
  store i32 0, i32* %16, align 4
  store i32 0, i32* %17, align 4
  store i32 0, i32* %18, align 4
  store i32 0, i32* %13, align 4
  br label %41

41:                                               ; preds = %79, %40
  %42 = load i32, i32* %13, align 4
  %43 = load i32, i32* %7, align 4
  %44 = icmp slt i32 %42, %43
  br i1 %44, label %45, label %82

45:                                               ; preds = %41
  %46 = call i32 (...) @rand()
  %47 = load i32, i32* @THRASH_SIZE, align 4
  %48 = srem i32 %46, %47
  %49 = sext i32 %48 to i64
  store i64 %49, i64* %14, align 8
  %50 = load i8*, i8** %5, align 8
  %51 = load i64, i64* %14, align 8
  %52 = getelementptr inbounds i8, i8* %50, i64 %51
  %53 = load i8, i8* %52, align 1
  %54 = sext i8 %53 to i32
  %55 = icmp ne i32 %54, 130
  br i1 %55, label %56, label %57

56:                                               ; preds = %45
  br label %79

57:                                               ; preds = %45
  %58 = load %struct.radix_tree_root*, %struct.radix_tree_root** %4, align 8
  %59 = load i64, i64* %14, align 8
  %60 = call i32 @item_check_absent(%struct.radix_tree_root* %58, i64 %59)
  %61 = load %struct.radix_tree_root*, %struct.radix_tree_root** %4, align 8
  %62 = load i64, i64* %14, align 8
  %63 = call i32 @item_insert(%struct.radix_tree_root* %61, i64 %62)
  %64 = load i8*, i8** %5, align 8
  %65 = load i64, i64* %14, align 8
  %66 = getelementptr inbounds i8, i8* %64, i64 %65
  %67 = load i8, i8* %66, align 1
  %68 = sext i8 %67 to i32
  %69 = icmp ne i32 %68, 129
  %70 = zext i1 %69 to i32
  %71 = call i32 @assert(i32 %70)
  %72 = load i8*, i8** %5, align 8
  %73 = load i64, i64* %14, align 8
  %74 = getelementptr inbounds i8, i8* %72, i64 %73
  store i8 -127, i8* %74, align 1
  %75 = load i32, i32* %15, align 4
  %76 = add nsw i32 %75, 1
  store i32 %76, i32* %15, align 4
  %77 = load i32, i32* %12, align 4
  %78 = add nsw i32 %77, 1
  store i32 %78, i32* %12, align 4
  br label %79

79:                                               ; preds = %57, %56
  %80 = load i32, i32* %13, align 4
  %81 = add nsw i32 %80, 1
  store i32 %81, i32* %13, align 4
  br label %41

82:                                               ; preds = %41
  store i32 0, i32* %13, align 4
  br label %83

83:                                               ; preds = %147, %82
  %84 = load i32, i32* %13, align 4
  %85 = load i32, i32* %8, align 4
  %86 = icmp slt i32 %84, %85
  br i1 %86, label %87, label %150

87:                                               ; preds = %83
  %88 = call i32 (...) @rand()
  %89 = load i32, i32* @THRASH_SIZE, align 4
  %90 = srem i32 %88, %89
  %91 = sext i32 %90 to i64
  store i64 %91, i64* %14, align 8
  %92 = load i8*, i8** %5, align 8
  %93 = load i64, i64* %14, align 8
  %94 = getelementptr inbounds i8, i8* %92, i64 %93
  %95 = load i8, i8* %94, align 1
  %96 = sext i8 %95 to i32
  %97 = icmp eq i32 %96, 130
  br i1 %97, label %98, label %99

98:                                               ; preds = %87
  br label %147

99:                                               ; preds = %87
  %100 = load %struct.radix_tree_root*, %struct.radix_tree_root** %4, align 8
  %101 = load i64, i64* %14, align 8
  %102 = call i32 @item_check_present(%struct.radix_tree_root* %100, i64 %101)
  %103 = load %struct.radix_tree_root*, %struct.radix_tree_root** %4, align 8
  %104 = load i64, i64* %14, align 8
  %105 = load i32, i32* %6, align 4
  %106 = call i32 @item_tag_get(%struct.radix_tree_root* %103, i64 %104, i32 %105)
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %108, label %119

108:                                              ; preds = %99
  %109 = load i8*, i8** %5, align 8
  %110 = load i64, i64* %14, align 8
  %111 = getelementptr inbounds i8, i8* %109, i64 %110
  %112 = load i8, i8* %111, align 1
  %113 = sext i8 %112 to i32
  %114 = icmp eq i32 %113, 128
  %115 = zext i1 %114 to i32
  %116 = call i32 @assert(i32 %115)
  %117 = load i32, i32* %11, align 4
  %118 = add nsw i32 %117, -1
  store i32 %118, i32* %11, align 4
  br label %128

119:                                              ; preds = %99
  %120 = load i8*, i8** %5, align 8
  %121 = load i64, i64* %14, align 8
  %122 = getelementptr inbounds i8, i8* %120, i64 %121
  %123 = load i8, i8* %122, align 1
  %124 = sext i8 %123 to i32
  %125 = icmp eq i32 %124, 129
  %126 = zext i1 %125 to i32
  %127 = call i32 @assert(i32 %126)
  br label %128

128:                                              ; preds = %119, %108
  %129 = load %struct.radix_tree_root*, %struct.radix_tree_root** %4, align 8
  %130 = load i64, i64* %14, align 8
  %131 = call i32 @item_delete(%struct.radix_tree_root* %129, i64 %130)
  %132 = load i8*, i8** %5, align 8
  %133 = load i64, i64* %14, align 8
  %134 = getelementptr inbounds i8, i8* %132, i64 %133
  %135 = load i8, i8* %134, align 1
  %136 = sext i8 %135 to i32
  %137 = icmp ne i32 %136, 130
  %138 = zext i1 %137 to i32
  %139 = call i32 @assert(i32 %138)
  %140 = load i8*, i8** %5, align 8
  %141 = load i64, i64* %14, align 8
  %142 = getelementptr inbounds i8, i8* %140, i64 %141
  store i8 -126, i8* %142, align 1
  %143 = load i32, i32* %16, align 4
  %144 = add nsw i32 %143, 1
  store i32 %144, i32* %16, align 4
  %145 = load i32, i32* %12, align 4
  %146 = add nsw i32 %145, -1
  store i32 %146, i32* %12, align 4
  br label %147

147:                                              ; preds = %128, %98
  %148 = load i32, i32* %13, align 4
  %149 = add nsw i32 %148, 1
  store i32 %149, i32* %13, align 4
  br label %83

150:                                              ; preds = %83
  store i32 0, i32* %13, align 4
  br label %151

151:                                              ; preds = %202, %150
  %152 = load i32, i32* %13, align 4
  %153 = load i32, i32* %9, align 4
  %154 = icmp slt i32 %152, %153
  br i1 %154, label %155, label %205

155:                                              ; preds = %151
  %156 = call i32 (...) @rand()
  %157 = load i32, i32* @THRASH_SIZE, align 4
  %158 = srem i32 %156, %157
  %159 = sext i32 %158 to i64
  store i64 %159, i64* %14, align 8
  %160 = load i8*, i8** %5, align 8
  %161 = load i64, i64* %14, align 8
  %162 = getelementptr inbounds i8, i8* %160, i64 %161
  %163 = load i8, i8* %162, align 1
  %164 = sext i8 %163 to i32
  %165 = icmp ne i32 %164, 129
  br i1 %165, label %166, label %178

166:                                              ; preds = %155
  %167 = load %struct.radix_tree_root*, %struct.radix_tree_root** %4, align 8
  %168 = load i64, i64* %14, align 8
  %169 = call i64 @item_lookup(%struct.radix_tree_root* %167, i64 %168)
  %170 = icmp ne i64 %169, 0
  br i1 %170, label %171, label %177

171:                                              ; preds = %166
  %172 = load %struct.radix_tree_root*, %struct.radix_tree_root** %4, align 8
  %173 = load i64, i64* %14, align 8
  %174 = load i32, i32* %6, align 4
  %175 = call i32 @item_tag_get(%struct.radix_tree_root* %172, i64 %173, i32 %174)
  %176 = call i32 @assert(i32 %175)
  br label %177

177:                                              ; preds = %171, %166
  br label %202

178:                                              ; preds = %155
  %179 = load %struct.radix_tree_root*, %struct.radix_tree_root** %4, align 8
  %180 = load i64, i64* %14, align 8
  %181 = load i32, i32* %6, align 4
  %182 = call i32 @item_tag_set(%struct.radix_tree_root* %179, i64 %180, i32 %181)
  %183 = load %struct.radix_tree_root*, %struct.radix_tree_root** %4, align 8
  %184 = load i64, i64* %14, align 8
  %185 = load i32, i32* %6, align 4
  %186 = call i32 @item_tag_set(%struct.radix_tree_root* %183, i64 %184, i32 %185)
  %187 = load i8*, i8** %5, align 8
  %188 = load i64, i64* %14, align 8
  %189 = getelementptr inbounds i8, i8* %187, i64 %188
  %190 = load i8, i8* %189, align 1
  %191 = sext i8 %190 to i32
  %192 = icmp ne i32 %191, 128
  %193 = zext i1 %192 to i32
  %194 = call i32 @assert(i32 %193)
  %195 = load i8*, i8** %5, align 8
  %196 = load i64, i64* %14, align 8
  %197 = getelementptr inbounds i8, i8* %195, i64 %196
  store i8 -128, i8* %197, align 1
  %198 = load i32, i32* %17, align 4
  %199 = add nsw i32 %198, 1
  store i32 %199, i32* %17, align 4
  %200 = load i32, i32* %11, align 4
  %201 = add nsw i32 %200, 1
  store i32 %201, i32* %11, align 4
  br label %202

202:                                              ; preds = %178, %177
  %203 = load i32, i32* %13, align 4
  %204 = add nsw i32 %203, 1
  store i32 %204, i32* %13, align 4
  br label %151

205:                                              ; preds = %151
  store i32 0, i32* %13, align 4
  br label %206

206:                                              ; preds = %254, %205
  %207 = load i32, i32* %13, align 4
  %208 = load i32, i32* %10, align 4
  %209 = icmp slt i32 %207, %208
  br i1 %209, label %210, label %257

210:                                              ; preds = %206
  %211 = call i32 (...) @rand()
  %212 = load i32, i32* @THRASH_SIZE, align 4
  %213 = srem i32 %211, %212
  %214 = sext i32 %213 to i64
  store i64 %214, i64* %14, align 8
  %215 = load i8*, i8** %5, align 8
  %216 = load i64, i64* %14, align 8
  %217 = getelementptr inbounds i8, i8* %215, i64 %216
  %218 = load i8, i8* %217, align 1
  %219 = sext i8 %218 to i32
  %220 = icmp ne i32 %219, 128
  br i1 %220, label %221, label %222

221:                                              ; preds = %210
  br label %254

222:                                              ; preds = %210
  %223 = load %struct.radix_tree_root*, %struct.radix_tree_root** %4, align 8
  %224 = load i64, i64* %14, align 8
  %225 = call i32 @item_check_present(%struct.radix_tree_root* %223, i64 %224)
  %226 = load %struct.radix_tree_root*, %struct.radix_tree_root** %4, align 8
  %227 = load i64, i64* %14, align 8
  %228 = load i32, i32* %6, align 4
  %229 = call i32 @item_tag_get(%struct.radix_tree_root* %226, i64 %227, i32 %228)
  %230 = call i32 @assert(i32 %229)
  %231 = load %struct.radix_tree_root*, %struct.radix_tree_root** %4, align 8
  %232 = load i64, i64* %14, align 8
  %233 = load i32, i32* %6, align 4
  %234 = call i32 @item_tag_clear(%struct.radix_tree_root* %231, i64 %232, i32 %233)
  %235 = load %struct.radix_tree_root*, %struct.radix_tree_root** %4, align 8
  %236 = load i64, i64* %14, align 8
  %237 = load i32, i32* %6, align 4
  %238 = call i32 @item_tag_clear(%struct.radix_tree_root* %235, i64 %236, i32 %237)
  %239 = load i8*, i8** %5, align 8
  %240 = load i64, i64* %14, align 8
  %241 = getelementptr inbounds i8, i8* %239, i64 %240
  %242 = load i8, i8* %241, align 1
  %243 = sext i8 %242 to i32
  %244 = icmp ne i32 %243, 129
  %245 = zext i1 %244 to i32
  %246 = call i32 @assert(i32 %245)
  %247 = load i8*, i8** %5, align 8
  %248 = load i64, i64* %14, align 8
  %249 = getelementptr inbounds i8, i8* %247, i64 %248
  store i8 -127, i8* %249, align 1
  %250 = load i32, i32* %18, align 4
  %251 = add nsw i32 %250, 1
  store i32 %251, i32* %18, align 4
  %252 = load i32, i32* %11, align 4
  %253 = add nsw i32 %252, -1
  store i32 %253, i32* %11, align 4
  br label %254

254:                                              ; preds = %222, %221
  %255 = load i32, i32* %13, align 4
  %256 = add nsw i32 %255, 1
  store i32 %256, i32* %13, align 4
  br label %206

257:                                              ; preds = %206
  store i32 0, i32* %19, align 4
  store i32 0, i32* %20, align 4
  store i64 0, i64* %14, align 8
  br label %258

258:                                              ; preds = %301, %257
  %259 = load i64, i64* %14, align 8
  %260 = load i32, i32* @THRASH_SIZE, align 4
  %261 = sext i32 %260 to i64
  %262 = icmp ult i64 %259, %261
  br i1 %262, label %263, label %304

263:                                              ; preds = %258
  %264 = load i8*, i8** %5, align 8
  %265 = load i64, i64* %14, align 8
  %266 = getelementptr inbounds i8, i8* %264, i64 %265
  %267 = load i8, i8* %266, align 1
  %268 = sext i8 %267 to i32
  switch i32 %268, label %300 [
    i32 130, label %269
    i32 129, label %273
    i32 128, label %287
  ]

269:                                              ; preds = %263
  %270 = load %struct.radix_tree_root*, %struct.radix_tree_root** %4, align 8
  %271 = load i64, i64* %14, align 8
  %272 = call i32 @item_check_absent(%struct.radix_tree_root* %270, i64 %271)
  br label %300

273:                                              ; preds = %263
  %274 = load %struct.radix_tree_root*, %struct.radix_tree_root** %4, align 8
  %275 = load i64, i64* %14, align 8
  %276 = call i32 @item_check_present(%struct.radix_tree_root* %274, i64 %275)
  %277 = load %struct.radix_tree_root*, %struct.radix_tree_root** %4, align 8
  %278 = load i64, i64* %14, align 8
  %279 = load i32, i32* %6, align 4
  %280 = call i32 @item_tag_get(%struct.radix_tree_root* %277, i64 %278, i32 %279)
  %281 = icmp ne i32 %280, 0
  %282 = xor i1 %281, true
  %283 = zext i1 %282 to i32
  %284 = call i32 @assert(i32 %283)
  %285 = load i32, i32* %20, align 4
  %286 = add nsw i32 %285, 1
  store i32 %286, i32* %20, align 4
  br label %300

287:                                              ; preds = %263
  %288 = load %struct.radix_tree_root*, %struct.radix_tree_root** %4, align 8
  %289 = load i64, i64* %14, align 8
  %290 = call i32 @item_check_present(%struct.radix_tree_root* %288, i64 %289)
  %291 = load %struct.radix_tree_root*, %struct.radix_tree_root** %4, align 8
  %292 = load i64, i64* %14, align 8
  %293 = load i32, i32* %6, align 4
  %294 = call i32 @item_tag_get(%struct.radix_tree_root* %291, i64 %292, i32 %293)
  %295 = call i32 @assert(i32 %294)
  %296 = load i32, i32* %20, align 4
  %297 = add nsw i32 %296, 1
  store i32 %297, i32* %20, align 4
  %298 = load i32, i32* %19, align 4
  %299 = add nsw i32 %298, 1
  store i32 %299, i32* %19, align 4
  br label %300

300:                                              ; preds = %263, %287, %273, %269
  br label %301

301:                                              ; preds = %300
  %302 = load i64, i64* %14, align 8
  %303 = add i64 %302, 1
  store i64 %303, i64* %14, align 8
  br label %258

304:                                              ; preds = %258
  %305 = load %struct.radix_tree_root*, %struct.radix_tree_root** %4, align 8
  %306 = load i8*, i8** %5, align 8
  %307 = load i32, i32* %6, align 4
  %308 = call i32 @gang_check(%struct.radix_tree_root* %305, i8* %306, i32 %307)
  %309 = load i32, i32* %7, align 4
  %310 = load i32, i32* %15, align 4
  %311 = load i32, i32* %8, align 4
  %312 = load i32, i32* %16, align 4
  %313 = load i32, i32* %9, align 4
  %314 = load i32, i32* %17, align 4
  %315 = load i32, i32* %10, align 4
  %316 = load i32, i32* %18, align 4
  %317 = load i32, i32* %12, align 4
  %318 = load i32, i32* %20, align 4
  %319 = load i32, i32* %11, align 4
  %320 = load i32, i32* %19, align 4
  %321 = call i32 @printv(i32 2, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str, i64 0, i64 0), i32 %309, i32 %310, i32 %311, i32 %312, i32 %313, i32 %314, i32 %315, i32 %316, i32 %317, i32 %318, i32 %319, i32 %320)
  br label %322

322:                                              ; preds = %304
  %323 = load i32, i32* @N, align 4
  %324 = load i32, i32* %10, align 4
  %325 = mul nsw i32 %324, %323
  store i32 %325, i32* %10, align 4
  br label %36

326:                                              ; preds = %36
  br label %327

327:                                              ; preds = %326
  %328 = load i32, i32* @N, align 4
  %329 = load i32, i32* %9, align 4
  %330 = mul nsw i32 %329, %328
  store i32 %330, i32* %9, align 4
  br label %31

331:                                              ; preds = %31
  br label %332

332:                                              ; preds = %331
  %333 = load i32, i32* @N, align 4
  %334 = load i32, i32* %8, align 4
  %335 = mul nsw i32 %334, %333
  store i32 %335, i32* %8, align 4
  br label %26

336:                                              ; preds = %26
  br label %337

337:                                              ; preds = %336
  %338 = load i32, i32* @N, align 4
  %339 = load i32, i32* %7, align 4
  %340 = mul nsw i32 %339, %338
  store i32 %340, i32* %7, align 4
  br label %21

341:                                              ; preds = %21
  ret void
}

declare dso_local i32 @rand(...) #1

declare dso_local i32 @item_check_absent(%struct.radix_tree_root*, i64) #1

declare dso_local i32 @item_insert(%struct.radix_tree_root*, i64) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @item_check_present(%struct.radix_tree_root*, i64) #1

declare dso_local i32 @item_tag_get(%struct.radix_tree_root*, i64, i32) #1

declare dso_local i32 @item_delete(%struct.radix_tree_root*, i64) #1

declare dso_local i64 @item_lookup(%struct.radix_tree_root*, i64) #1

declare dso_local i32 @item_tag_set(%struct.radix_tree_root*, i64, i32) #1

declare dso_local i32 @item_tag_clear(%struct.radix_tree_root*, i64, i32) #1

declare dso_local i32 @gang_check(%struct.radix_tree_root*, i8*, i32) #1

declare dso_local i32 @printv(i32, i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
