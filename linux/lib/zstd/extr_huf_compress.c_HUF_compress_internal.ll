; ModuleID = '/home/carl/AnghaBench/linux/lib/zstd/extr_huf_compress.c_HUF_compress_internal.c'
source_filename = "/home/carl/AnghaBench/linux/lib/zstd/extr_huf_compress.c_HUF_compress_internal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@HUF_SYMBOLVALUE_MAX = common dso_local global i32 0, align 4
@GENERIC = common dso_local global i32 0, align 4
@HUF_BLOCKSIZE_MAX = common dso_local global i64 0, align 8
@srcSize_wrong = common dso_local global i32 0, align 4
@HUF_TABLELOG_MAX = common dso_local global i32 0, align 4
@tableLog_tooLarge = common dso_local global i32 0, align 4
@HUF_TABLELOG_DEFAULT = common dso_local global i32 0, align 4
@HUF_repeat_valid = common dso_local global i64 0, align 8
@largest = common dso_local global i64 0, align 8
@HUF_repeat_check = common dso_local global i64 0, align 8
@HUF_repeat_none = common dso_local global i64 0, align 8
@maxBits = common dso_local global i64 0, align 8
@hSize = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i8*, i64, i8*, i64, i32, i32, i32, i8*, i64, i32*, i64*, i32)* @HUF_compress_internal to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @HUF_compress_internal(i8* %0, i64 %1, i8* %2, i64 %3, i32 %4, i32 %5, i32 %6, i8* %7, i64 %8, i32* %9, i64* %10, i32 %11) #0 {
  %13 = alloca i64, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i64, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i8*, align 8
  %22 = alloca i64, align 8
  %23 = alloca i32*, align 8
  %24 = alloca i64*, align 8
  %25 = alloca i32, align 4
  %26 = alloca i32*, align 8
  %27 = alloca i32*, align 8
  %28 = alloca i32*, align 8
  %29 = alloca i32*, align 8
  %30 = alloca i64, align 8
  %31 = alloca i32*, align 8
  %32 = alloca i64, align 8
  %33 = alloca i64, align 8
  %34 = alloca i64, align 8
  store i8* %0, i8** %14, align 8
  store i64 %1, i64* %15, align 8
  store i8* %2, i8** %16, align 8
  store i64 %3, i64* %17, align 8
  store i32 %4, i32* %18, align 4
  store i32 %5, i32* %19, align 4
  store i32 %6, i32* %20, align 4
  store i8* %7, i8** %21, align 8
  store i64 %8, i64* %22, align 8
  store i32* %9, i32** %23, align 8
  store i64* %10, i64** %24, align 8
  store i32 %11, i32* %25, align 4
  %35 = load i8*, i8** %14, align 8
  %36 = bitcast i8* %35 to i32*
  store i32* %36, i32** %26, align 8
  %37 = load i32*, i32** %26, align 8
  %38 = load i64, i64* %15, align 8
  %39 = getelementptr inbounds i32, i32* %37, i64 %38
  store i32* %39, i32** %27, align 8
  %40 = load i32*, i32** %26, align 8
  store i32* %40, i32** %28, align 8
  %41 = load i32, i32* @HUF_SYMBOLVALUE_MAX, align 4
  %42 = add nsw i32 %41, 1
  %43 = sext i32 %42 to i64
  %44 = mul i64 4, %43
  store i64 %44, i64* %30, align 8
  %45 = load i32, i32* @HUF_SYMBOLVALUE_MAX, align 4
  %46 = add nsw i32 %45, 1
  %47 = sext i32 %46 to i64
  %48 = mul i64 4, %47
  store i64 %48, i64* %32, align 8
  %49 = load i64, i64* %22, align 8
  %50 = load i64, i64* %30, align 8
  %51 = add i64 4, %50
  %52 = load i64, i64* %32, align 8
  %53 = add i64 %51, %52
  %54 = icmp ult i64 %49, %53
  br i1 %54, label %55, label %58

55:                                               ; preds = %12
  %56 = load i32, i32* @GENERIC, align 4
  %57 = call i64 @ERROR(i32 %56)
  store i64 %57, i64* %13, align 8
  br label %299

58:                                               ; preds = %12
  %59 = load i64, i64* %17, align 8
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %62, label %61

61:                                               ; preds = %58
  store i64 0, i64* %13, align 8
  br label %299

62:                                               ; preds = %58
  %63 = load i64, i64* %15, align 8
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %66, label %65

65:                                               ; preds = %62
  store i64 0, i64* %13, align 8
  br label %299

66:                                               ; preds = %62
  %67 = load i64, i64* %17, align 8
  %68 = load i64, i64* @HUF_BLOCKSIZE_MAX, align 8
  %69 = icmp ugt i64 %67, %68
  br i1 %69, label %70, label %73

70:                                               ; preds = %66
  %71 = load i32, i32* @srcSize_wrong, align 4
  %72 = call i64 @ERROR(i32 %71)
  store i64 %72, i64* %13, align 8
  br label %299

73:                                               ; preds = %66
  %74 = load i32, i32* %19, align 4
  %75 = load i32, i32* @HUF_TABLELOG_MAX, align 4
  %76 = icmp ugt i32 %74, %75
  br i1 %76, label %77, label %80

77:                                               ; preds = %73
  %78 = load i32, i32* @tableLog_tooLarge, align 4
  %79 = call i64 @ERROR(i32 %78)
  store i64 %79, i64* %13, align 8
  br label %299

80:                                               ; preds = %73
  %81 = load i32, i32* %18, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %85, label %83

83:                                               ; preds = %80
  %84 = load i32, i32* @HUF_SYMBOLVALUE_MAX, align 4
  store i32 %84, i32* %18, align 4
  br label %85

85:                                               ; preds = %83, %80
  %86 = load i32, i32* %19, align 4
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %90, label %88

88:                                               ; preds = %85
  %89 = load i32, i32* @HUF_TABLELOG_DEFAULT, align 4
  store i32 %89, i32* %19, align 4
  br label %90

90:                                               ; preds = %88, %85
  %91 = load i8*, i8** %21, align 8
  %92 = bitcast i8* %91 to i32*
  store i32* %92, i32** %29, align 8
  %93 = load i8*, i8** %21, align 8
  %94 = bitcast i8* %93 to i32*
  %95 = load i64, i64* %30, align 8
  %96 = getelementptr inbounds i32, i32* %94, i64 %95
  %97 = bitcast i32* %96 to i8*
  store i8* %97, i8** %21, align 8
  %98 = load i64, i64* %30, align 8
  %99 = load i64, i64* %22, align 8
  %100 = sub i64 %99, %98
  store i64 %100, i64* %22, align 8
  %101 = load i8*, i8** %21, align 8
  %102 = bitcast i8* %101 to i32*
  store i32* %102, i32** %31, align 8
  %103 = load i8*, i8** %21, align 8
  %104 = bitcast i8* %103 to i32*
  %105 = load i64, i64* %32, align 8
  %106 = getelementptr inbounds i32, i32* %104, i64 %105
  %107 = bitcast i32* %106 to i8*
  store i8* %107, i8** %21, align 8
  %108 = load i64, i64* %32, align 8
  %109 = load i64, i64* %22, align 8
  %110 = sub i64 %109, %108
  store i64 %110, i64* %22, align 8
  %111 = load i32, i32* %25, align 4
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %113, label %130

113:                                              ; preds = %90
  %114 = load i64*, i64** %24, align 8
  %115 = icmp ne i64* %114, null
  br i1 %115, label %116, label %130

116:                                              ; preds = %113
  %117 = load i64*, i64** %24, align 8
  %118 = load i64, i64* %117, align 8
  %119 = load i64, i64* @HUF_repeat_valid, align 8
  %120 = icmp eq i64 %118, %119
  br i1 %120, label %121, label %130

121:                                              ; preds = %116
  %122 = load i32*, i32** %26, align 8
  %123 = load i32*, i32** %28, align 8
  %124 = load i32*, i32** %27, align 8
  %125 = load i8*, i8** %16, align 8
  %126 = load i64, i64* %17, align 8
  %127 = load i32, i32* %20, align 4
  %128 = load i32*, i32** %23, align 8
  %129 = call i64 @HUF_compressCTable_internal(i32* %122, i32* %123, i32* %124, i8* %125, i64 %126, i32 %127, i32* %128)
  store i64 %129, i64* %13, align 8
  br label %299

130:                                              ; preds = %116, %113, %90
  %131 = load i64, i64* @largest, align 8
  %132 = load i32*, i32** %29, align 8
  %133 = load i8*, i8** %16, align 8
  %134 = bitcast i8* %133 to i32*
  %135 = load i64, i64* %17, align 8
  %136 = load i8*, i8** %21, align 8
  %137 = bitcast i8* %136 to i32*
  %138 = call i32 @FSE_count_wksp(i32* %132, i32* %18, i32* %134, i64 %135, i32* %137)
  %139 = call i32 @CHECK_V_F(i64 %131, i32 %138)
  %140 = load i64, i64* @largest, align 8
  %141 = load i64, i64* %17, align 8
  %142 = icmp eq i64 %140, %141
  br i1 %142, label %143, label %149

143:                                              ; preds = %130
  %144 = load i8*, i8** %16, align 8
  %145 = bitcast i8* %144 to i32*
  %146 = getelementptr inbounds i32, i32* %145, i64 0
  %147 = load i32, i32* %146, align 4
  %148 = load i32*, i32** %26, align 8
  store i32 %147, i32* %148, align 4
  store i64 1, i64* %13, align 8
  br label %299

149:                                              ; preds = %130
  %150 = load i64, i64* @largest, align 8
  %151 = load i64, i64* %17, align 8
  %152 = lshr i64 %151, 7
  %153 = add i64 %152, 1
  %154 = icmp ule i64 %150, %153
  br i1 %154, label %155, label %156

155:                                              ; preds = %149
  store i64 0, i64* %13, align 8
  br label %299

156:                                              ; preds = %149
  %157 = load i64*, i64** %24, align 8
  %158 = icmp ne i64* %157, null
  br i1 %158, label %159, label %173

159:                                              ; preds = %156
  %160 = load i64*, i64** %24, align 8
  %161 = load i64, i64* %160, align 8
  %162 = load i64, i64* @HUF_repeat_check, align 8
  %163 = icmp eq i64 %161, %162
  br i1 %163, label %164, label %173

164:                                              ; preds = %159
  %165 = load i32*, i32** %23, align 8
  %166 = load i32*, i32** %29, align 8
  %167 = load i32, i32* %18, align 4
  %168 = call i32 @HUF_validateCTable(i32* %165, i32* %166, i32 %167)
  %169 = icmp ne i32 %168, 0
  br i1 %169, label %173, label %170

170:                                              ; preds = %164
  %171 = load i64, i64* @HUF_repeat_none, align 8
  %172 = load i64*, i64** %24, align 8
  store i64 %171, i64* %172, align 8
  br label %173

173:                                              ; preds = %170, %164, %159, %156
  %174 = load i32, i32* %25, align 4
  %175 = icmp ne i32 %174, 0
  br i1 %175, label %176, label %193

176:                                              ; preds = %173
  %177 = load i64*, i64** %24, align 8
  %178 = icmp ne i64* %177, null
  br i1 %178, label %179, label %193

179:                                              ; preds = %176
  %180 = load i64*, i64** %24, align 8
  %181 = load i64, i64* %180, align 8
  %182 = load i64, i64* @HUF_repeat_none, align 8
  %183 = icmp ne i64 %181, %182
  br i1 %183, label %184, label %193

184:                                              ; preds = %179
  %185 = load i32*, i32** %26, align 8
  %186 = load i32*, i32** %28, align 8
  %187 = load i32*, i32** %27, align 8
  %188 = load i8*, i8** %16, align 8
  %189 = load i64, i64* %17, align 8
  %190 = load i32, i32* %20, align 4
  %191 = load i32*, i32** %23, align 8
  %192 = call i64 @HUF_compressCTable_internal(i32* %185, i32* %186, i32* %187, i8* %188, i64 %189, i32 %190, i32* %191)
  store i64 %192, i64* %13, align 8
  br label %299

193:                                              ; preds = %179, %176, %173
  %194 = load i32, i32* %19, align 4
  %195 = load i64, i64* %17, align 8
  %196 = load i32, i32* %18, align 4
  %197 = call i32 @HUF_optimalTableLog(i32 %194, i64 %195, i32 %196)
  store i32 %197, i32* %19, align 4
  %198 = load i64, i64* @maxBits, align 8
  %199 = load i32*, i32** %31, align 8
  %200 = load i32*, i32** %29, align 8
  %201 = load i32, i32* %18, align 4
  %202 = load i32, i32* %19, align 4
  %203 = load i8*, i8** %21, align 8
  %204 = load i64, i64* %22, align 8
  %205 = call i32 @HUF_buildCTable_wksp(i32* %199, i32* %200, i32 %201, i32 %202, i8* %203, i64 %204)
  %206 = call i32 @CHECK_V_F(i64 %198, i32 %205)
  %207 = load i64, i64* @maxBits, align 8
  %208 = trunc i64 %207 to i32
  store i32 %208, i32* %19, align 4
  %209 = load i32*, i32** %31, align 8
  %210 = load i32, i32* %18, align 4
  %211 = zext i32 %210 to i64
  %212 = getelementptr inbounds i32, i32* %209, i64 %211
  %213 = getelementptr inbounds i32, i32* %212, i64 1
  %214 = load i64, i64* %32, align 8
  %215 = load i32, i32* %18, align 4
  %216 = add i32 %215, 1
  %217 = zext i32 %216 to i64
  %218 = mul i64 %217, 4
  %219 = sub i64 %214, %218
  %220 = call i32 @memset(i32* %213, i32 0, i64 %219)
  %221 = load i64, i64* @hSize, align 8
  %222 = load i32*, i32** %28, align 8
  %223 = load i64, i64* %15, align 8
  %224 = load i32*, i32** %31, align 8
  %225 = load i32, i32* %18, align 4
  %226 = load i32, i32* %19, align 4
  %227 = load i8*, i8** %21, align 8
  %228 = load i64, i64* %22, align 8
  %229 = call i32 @HUF_writeCTable_wksp(i32* %222, i64 %223, i32* %224, i32 %225, i32 %226, i8* %227, i64 %228)
  %230 = call i32 @CHECK_V_F(i64 %221, i32 %229)
  %231 = load i64*, i64** %24, align 8
  %232 = icmp ne i64* %231, null
  br i1 %232, label %233, label %267

233:                                              ; preds = %193
  %234 = load i64*, i64** %24, align 8
  %235 = load i64, i64* %234, align 8
  %236 = load i64, i64* @HUF_repeat_none, align 8
  %237 = icmp ne i64 %235, %236
  br i1 %237, label %238, label %267

238:                                              ; preds = %233
  %239 = load i32*, i32** %23, align 8
  %240 = load i32*, i32** %29, align 8
  %241 = load i32, i32* %18, align 4
  %242 = call i64 @HUF_estimateCompressedSize(i32* %239, i32* %240, i32 %241)
  store i64 %242, i64* %33, align 8
  %243 = load i32*, i32** %31, align 8
  %244 = load i32*, i32** %29, align 8
  %245 = load i32, i32* %18, align 4
  %246 = call i64 @HUF_estimateCompressedSize(i32* %243, i32* %244, i32 %245)
  store i64 %246, i64* %34, align 8
  %247 = load i64, i64* %33, align 8
  %248 = load i64, i64* @hSize, align 8
  %249 = load i64, i64* %34, align 8
  %250 = add i64 %248, %249
  %251 = icmp ule i64 %247, %250
  br i1 %251, label %257, label %252

252:                                              ; preds = %238
  %253 = load i64, i64* @hSize, align 8
  %254 = add i64 %253, 12
  %255 = load i64, i64* %17, align 8
  %256 = icmp uge i64 %254, %255
  br i1 %256, label %257, label %266

257:                                              ; preds = %252, %238
  %258 = load i32*, i32** %26, align 8
  %259 = load i32*, i32** %28, align 8
  %260 = load i32*, i32** %27, align 8
  %261 = load i8*, i8** %16, align 8
  %262 = load i64, i64* %17, align 8
  %263 = load i32, i32* %20, align 4
  %264 = load i32*, i32** %23, align 8
  %265 = call i64 @HUF_compressCTable_internal(i32* %258, i32* %259, i32* %260, i8* %261, i64 %262, i32 %263, i32* %264)
  store i64 %265, i64* %13, align 8
  br label %299

266:                                              ; preds = %252
  br label %267

267:                                              ; preds = %266, %233, %193
  %268 = load i64, i64* @hSize, align 8
  %269 = add i64 %268, 12
  %270 = load i64, i64* %17, align 8
  %271 = icmp uge i64 %269, %270
  br i1 %271, label %272, label %273

272:                                              ; preds = %267
  store i64 0, i64* %13, align 8
  br label %299

273:                                              ; preds = %267
  %274 = load i64, i64* @hSize, align 8
  %275 = load i32*, i32** %28, align 8
  %276 = getelementptr inbounds i32, i32* %275, i64 %274
  store i32* %276, i32** %28, align 8
  %277 = load i64*, i64** %24, align 8
  %278 = icmp ne i64* %277, null
  br i1 %278, label %279, label %282

279:                                              ; preds = %273
  %280 = load i64, i64* @HUF_repeat_none, align 8
  %281 = load i64*, i64** %24, align 8
  store i64 %280, i64* %281, align 8
  br label %282

282:                                              ; preds = %279, %273
  %283 = load i32*, i32** %23, align 8
  %284 = icmp ne i32* %283, null
  br i1 %284, label %285, label %290

285:                                              ; preds = %282
  %286 = load i32*, i32** %23, align 8
  %287 = load i32*, i32** %31, align 8
  %288 = load i64, i64* %32, align 8
  %289 = call i32 @memcpy(i32* %286, i32* %287, i64 %288)
  br label %290

290:                                              ; preds = %285, %282
  %291 = load i32*, i32** %26, align 8
  %292 = load i32*, i32** %28, align 8
  %293 = load i32*, i32** %27, align 8
  %294 = load i8*, i8** %16, align 8
  %295 = load i64, i64* %17, align 8
  %296 = load i32, i32* %20, align 4
  %297 = load i32*, i32** %31, align 8
  %298 = call i64 @HUF_compressCTable_internal(i32* %291, i32* %292, i32* %293, i8* %294, i64 %295, i32 %296, i32* %297)
  store i64 %298, i64* %13, align 8
  br label %299

299:                                              ; preds = %290, %272, %257, %184, %155, %143, %121, %77, %70, %65, %61, %55
  %300 = load i64, i64* %13, align 8
  ret i64 %300
}

declare dso_local i64 @ERROR(i32) #1

declare dso_local i64 @HUF_compressCTable_internal(i32*, i32*, i32*, i8*, i64, i32, i32*) #1

declare dso_local i32 @CHECK_V_F(i64, i32) #1

declare dso_local i32 @FSE_count_wksp(i32*, i32*, i32*, i64, i32*) #1

declare dso_local i32 @HUF_validateCTable(i32*, i32*, i32) #1

declare dso_local i32 @HUF_optimalTableLog(i32, i64, i32) #1

declare dso_local i32 @HUF_buildCTable_wksp(i32*, i32*, i32, i32, i8*, i64) #1

declare dso_local i32 @memset(i32*, i32, i64) #1

declare dso_local i32 @HUF_writeCTable_wksp(i32*, i64, i32*, i32, i32, i8*, i64) #1

declare dso_local i64 @HUF_estimateCompressedSize(i32*, i32*, i32) #1

declare dso_local i32 @memcpy(i32*, i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
