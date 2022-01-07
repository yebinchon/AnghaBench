; ModuleID = '/home/carl/AnghaBench/linux/lib/zstd/extr_decompress.c_ZSTD_decompressContinue.c'
source_filename = "/home/carl/AnghaBench/linux/lib/zstd/extr_decompress.c_ZSTD_decompressContinue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i64, i32, i64, i64, i8*, i32, %struct.TYPE_9__, i32, i32 }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_10__ = type { i32, i32, i32 }

@srcSize_wrong = common dso_local global i32 0, align 4
@ZSTD_frameHeaderSize_prefix = common dso_local global i64 0, align 8
@ZSTD_MAGIC_SKIPPABLE_START = common dso_local global i32 0, align 4
@ZSTD_skippableHeaderSize = common dso_local global i64 0, align 8
@ZSTD_blockHeaderSize = common dso_local global i8* null, align 8
@corruption_detected = common dso_local global i32 0, align 4
@checksum_wrong = common dso_local global i32 0, align 4
@GENERIC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @ZSTD_decompressContinue(%struct.TYPE_11__* %0, i8* %1, i64 %2, i8* %3, i64 %4) #0 {
  %6 = alloca i64, align 8
  %7 = alloca %struct.TYPE_11__*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.TYPE_10__, align 4
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %7, align 8
  store i8* %1, i8** %8, align 8
  store i64 %2, i64* %9, align 8
  store i8* %3, i8** %10, align 8
  store i64 %4, i64* %11, align 8
  %17 = load i64, i64* %11, align 8
  %18 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %19 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %17, %20
  br i1 %21, label %22, label %25

22:                                               ; preds = %5
  %23 = load i32, i32* @srcSize_wrong, align 4
  %24 = call i64 @ERROR(i32 %23)
  store i64 %24, i64* %6, align 8
  br label %318

25:                                               ; preds = %5
  %26 = load i64, i64* %9, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %32

28:                                               ; preds = %25
  %29 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %30 = load i8*, i8** %8, align 8
  %31 = call i32 @ZSTD_checkContinuity(%struct.TYPE_11__* %29, i8* %30)
  br label %32

32:                                               ; preds = %28, %25
  %33 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %34 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 8
  switch i32 %35, label %315 [
    i32 133, label %36
    i32 137, label %103
    i32 138, label %129
    i32 134, label %187
    i32 135, label %187
    i32 139, label %271
    i32 136, label %288
    i32 132, label %310
  ]

36:                                               ; preds = %32
  %37 = load i64, i64* %11, align 8
  %38 = load i64, i64* @ZSTD_frameHeaderSize_prefix, align 8
  %39 = icmp ne i64 %37, %38
  br i1 %39, label %40, label %43

40:                                               ; preds = %36
  %41 = load i32, i32* @srcSize_wrong, align 4
  %42 = call i64 @ERROR(i32 %41)
  store i64 %42, i64* %6, align 8
  br label %318

43:                                               ; preds = %36
  %44 = load i8*, i8** %10, align 8
  %45 = call i32 @ZSTD_readLE32(i8* %44)
  %46 = and i32 %45, -16
  %47 = load i32, i32* @ZSTD_MAGIC_SKIPPABLE_START, align 4
  %48 = icmp eq i32 %46, %47
  br i1 %48, label %49, label %63

49:                                               ; preds = %43
  %50 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %51 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %50, i32 0, i32 2
  %52 = load i64, i64* %51, align 8
  %53 = load i8*, i8** %10, align 8
  %54 = load i64, i64* @ZSTD_frameHeaderSize_prefix, align 8
  %55 = call i32 @memcpy(i64 %52, i8* %53, i64 %54)
  %56 = load i64, i64* @ZSTD_skippableHeaderSize, align 8
  %57 = load i64, i64* @ZSTD_frameHeaderSize_prefix, align 8
  %58 = sub i64 %56, %57
  %59 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %60 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %59, i32 0, i32 0
  store i64 %58, i64* %60, align 8
  %61 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %62 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %61, i32 0, i32 1
  store i32 136, i32* %62, align 8
  store i64 0, i64* %6, align 8
  br label %318

63:                                               ; preds = %43
  %64 = load i8*, i8** %10, align 8
  %65 = load i64, i64* @ZSTD_frameHeaderSize_prefix, align 8
  %66 = call i64 @ZSTD_frameHeaderSize(i8* %64, i64 %65)
  %67 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %68 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %67, i32 0, i32 3
  store i64 %66, i64* %68, align 8
  %69 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %70 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %69, i32 0, i32 3
  %71 = load i64, i64* %70, align 8
  %72 = call i32 @ZSTD_isError(i64 %71)
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %78

74:                                               ; preds = %63
  %75 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %76 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %75, i32 0, i32 3
  %77 = load i64, i64* %76, align 8
  store i64 %77, i64* %6, align 8
  br label %318

78:                                               ; preds = %63
  %79 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %80 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %79, i32 0, i32 2
  %81 = load i64, i64* %80, align 8
  %82 = load i8*, i8** %10, align 8
  %83 = load i64, i64* @ZSTD_frameHeaderSize_prefix, align 8
  %84 = call i32 @memcpy(i64 %81, i8* %82, i64 %83)
  %85 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %86 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %85, i32 0, i32 3
  %87 = load i64, i64* %86, align 8
  %88 = load i64, i64* @ZSTD_frameHeaderSize_prefix, align 8
  %89 = icmp ugt i64 %87, %88
  br i1 %89, label %90, label %100

90:                                               ; preds = %78
  %91 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %92 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %91, i32 0, i32 3
  %93 = load i64, i64* %92, align 8
  %94 = load i64, i64* @ZSTD_frameHeaderSize_prefix, align 8
  %95 = sub i64 %93, %94
  %96 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %97 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %96, i32 0, i32 0
  store i64 %95, i64* %97, align 8
  %98 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %99 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %98, i32 0, i32 1
  store i32 137, i32* %99, align 8
  store i64 0, i64* %6, align 8
  br label %318

100:                                              ; preds = %78
  %101 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %102 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %101, i32 0, i32 0
  store i64 0, i64* %102, align 8
  br label %103

103:                                              ; preds = %32, %100
  %104 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %105 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %104, i32 0, i32 2
  %106 = load i64, i64* %105, align 8
  %107 = load i64, i64* @ZSTD_frameHeaderSize_prefix, align 8
  %108 = add i64 %106, %107
  %109 = load i8*, i8** %10, align 8
  %110 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %111 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %110, i32 0, i32 0
  %112 = load i64, i64* %111, align 8
  %113 = call i32 @memcpy(i64 %108, i8* %109, i64 %112)
  %114 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %115 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %116 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %115, i32 0, i32 2
  %117 = load i64, i64* %116, align 8
  %118 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %119 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %118, i32 0, i32 3
  %120 = load i64, i64* %119, align 8
  %121 = call i32 @ZSTD_decodeFrameHeader(%struct.TYPE_11__* %114, i64 %117, i64 %120)
  %122 = call i32 @CHECK_F(i32 %121)
  %123 = load i8*, i8** @ZSTD_blockHeaderSize, align 8
  %124 = ptrtoint i8* %123 to i64
  %125 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %126 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %125, i32 0, i32 0
  store i64 %124, i64* %126, align 8
  %127 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %128 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %127, i32 0, i32 1
  store i32 138, i32* %128, align 8
  store i64 0, i64* %6, align 8
  br label %318

129:                                              ; preds = %32
  %130 = load i8*, i8** %10, align 8
  %131 = load i8*, i8** @ZSTD_blockHeaderSize, align 8
  %132 = call i64 @ZSTD_getcBlockSize(i8* %130, i8* %131, %struct.TYPE_10__* %12)
  store i64 %132, i64* %13, align 8
  %133 = load i64, i64* %13, align 8
  %134 = call i32 @ZSTD_isError(i64 %133)
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %136, label %138

136:                                              ; preds = %129
  %137 = load i64, i64* %13, align 8
  store i64 %137, i64* %6, align 8
  br label %318

138:                                              ; preds = %129
  %139 = load i64, i64* %13, align 8
  %140 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %141 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %140, i32 0, i32 0
  store i64 %139, i64* %141, align 8
  %142 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %12, i32 0, i32 2
  %143 = load i32, i32* %142, align 4
  %144 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %145 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %144, i32 0, i32 8
  store i32 %143, i32* %145, align 4
  %146 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %12, i32 0, i32 1
  %147 = load i32, i32* %146, align 4
  %148 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %149 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %148, i32 0, i32 7
  store i32 %147, i32* %149, align 8
  %150 = load i64, i64* %13, align 8
  %151 = icmp ne i64 %150, 0
  br i1 %151, label %152, label %160

152:                                              ; preds = %138
  %153 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %12, i32 0, i32 0
  %154 = load i32, i32* %153, align 4
  %155 = icmp ne i32 %154, 0
  %156 = zext i1 %155 to i64
  %157 = select i1 %155, i32 134, i32 135
  %158 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %159 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %158, i32 0, i32 1
  store i32 %157, i32* %159, align 8
  store i64 0, i64* %6, align 8
  br label %318

160:                                              ; preds = %138
  %161 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %12, i32 0, i32 0
  %162 = load i32, i32* %161, align 4
  %163 = icmp ne i32 %162, 0
  br i1 %163, label %164, label %181

164:                                              ; preds = %160
  %165 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %166 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %165, i32 0, i32 6
  %167 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %166, i32 0, i32 0
  %168 = load i32, i32* %167, align 4
  %169 = icmp ne i32 %168, 0
  br i1 %169, label %170, label %175

170:                                              ; preds = %164
  %171 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %172 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %171, i32 0, i32 0
  store i64 4, i64* %172, align 8
  %173 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %174 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %173, i32 0, i32 1
  store i32 139, i32* %174, align 8
  br label %180

175:                                              ; preds = %164
  %176 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %177 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %176, i32 0, i32 0
  store i64 0, i64* %177, align 8
  %178 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %179 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %178, i32 0, i32 1
  store i32 133, i32* %179, align 8
  br label %180

180:                                              ; preds = %175, %170
  br label %186

181:                                              ; preds = %160
  %182 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %183 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %182, i32 0, i32 0
  store i64 3, i64* %183, align 8
  %184 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %185 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %184, i32 0, i32 1
  store i32 138, i32* %185, align 8
  br label %186

186:                                              ; preds = %181, %180
  store i64 0, i64* %6, align 8
  br label %318

187:                                              ; preds = %32, %32
  %188 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %189 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %188, i32 0, i32 8
  %190 = load i32, i32* %189, align 4
  switch i32 %190, label %214 [
    i32 131, label %191
    i32 130, label %198
    i32 128, label %204
    i32 129, label %213
  ]

191:                                              ; preds = %187
  %192 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %193 = load i8*, i8** %8, align 8
  %194 = load i64, i64* %9, align 8
  %195 = load i8*, i8** %10, align 8
  %196 = load i64, i64* %11, align 8
  %197 = call i64 @ZSTD_decompressBlock_internal(%struct.TYPE_11__* %192, i8* %193, i64 %194, i8* %195, i64 %196)
  store i64 %197, i64* %14, align 8
  br label %217

198:                                              ; preds = %187
  %199 = load i8*, i8** %8, align 8
  %200 = load i64, i64* %9, align 8
  %201 = load i8*, i8** %10, align 8
  %202 = load i64, i64* %11, align 8
  %203 = call i64 @ZSTD_copyRawBlock(i8* %199, i64 %200, i8* %201, i64 %202)
  store i64 %203, i64* %14, align 8
  br label %217

204:                                              ; preds = %187
  %205 = load i8*, i8** %8, align 8
  %206 = load i64, i64* %9, align 8
  %207 = load i8*, i8** %10, align 8
  %208 = load i64, i64* %11, align 8
  %209 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %210 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %209, i32 0, i32 7
  %211 = load i32, i32* %210, align 8
  %212 = call i64 @ZSTD_setRleBlock(i8* %205, i64 %206, i8* %207, i64 %208, i32 %211)
  store i64 %212, i64* %14, align 8
  br label %217

213:                                              ; preds = %187
  br label %214

214:                                              ; preds = %187, %213
  %215 = load i32, i32* @corruption_detected, align 4
  %216 = call i64 @ERROR(i32 %215)
  store i64 %216, i64* %6, align 8
  br label %318

217:                                              ; preds = %204, %198, %191
  %218 = load i64, i64* %14, align 8
  %219 = call i32 @ZSTD_isError(i64 %218)
  %220 = icmp ne i32 %219, 0
  br i1 %220, label %221, label %223

221:                                              ; preds = %217
  %222 = load i64, i64* %14, align 8
  store i64 %222, i64* %6, align 8
  br label %318

223:                                              ; preds = %217
  %224 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %225 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %224, i32 0, i32 6
  %226 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %225, i32 0, i32 0
  %227 = load i32, i32* %226, align 4
  %228 = icmp ne i32 %227, 0
  br i1 %228, label %229, label %235

229:                                              ; preds = %223
  %230 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %231 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %230, i32 0, i32 5
  %232 = load i8*, i8** %8, align 8
  %233 = load i64, i64* %14, align 8
  %234 = call i32 @xxh64_update(i32* %231, i8* %232, i64 %233)
  br label %235

235:                                              ; preds = %229, %223
  %236 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %237 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %236, i32 0, i32 1
  %238 = load i32, i32* %237, align 8
  %239 = icmp eq i32 %238, 134
  br i1 %239, label %240, label %257

240:                                              ; preds = %235
  %241 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %242 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %241, i32 0, i32 6
  %243 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %242, i32 0, i32 0
  %244 = load i32, i32* %243, align 4
  %245 = icmp ne i32 %244, 0
  br i1 %245, label %246, label %251

246:                                              ; preds = %240
  %247 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %248 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %247, i32 0, i32 0
  store i64 4, i64* %248, align 8
  %249 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %250 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %249, i32 0, i32 1
  store i32 139, i32* %250, align 8
  br label %256

251:                                              ; preds = %240
  %252 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %253 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %252, i32 0, i32 0
  store i64 0, i64* %253, align 8
  %254 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %255 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %254, i32 0, i32 1
  store i32 133, i32* %255, align 8
  br label %256

256:                                              ; preds = %251, %246
  br label %269

257:                                              ; preds = %235
  %258 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %259 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %258, i32 0, i32 1
  store i32 138, i32* %259, align 8
  %260 = load i8*, i8** @ZSTD_blockHeaderSize, align 8
  %261 = ptrtoint i8* %260 to i64
  %262 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %263 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %262, i32 0, i32 0
  store i64 %261, i64* %263, align 8
  %264 = load i8*, i8** %8, align 8
  %265 = load i64, i64* %14, align 8
  %266 = getelementptr inbounds i8, i8* %264, i64 %265
  %267 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %268 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %267, i32 0, i32 4
  store i8* %266, i8** %268, align 8
  br label %269

269:                                              ; preds = %257, %256
  %270 = load i64, i64* %14, align 8
  store i64 %270, i64* %6, align 8
  br label %318

271:                                              ; preds = %32
  %272 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %273 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %272, i32 0, i32 5
  %274 = call i32 @xxh64_digest(i32* %273)
  store i32 %274, i32* %15, align 4
  %275 = load i8*, i8** %10, align 8
  %276 = call i32 @ZSTD_readLE32(i8* %275)
  store i32 %276, i32* %16, align 4
  %277 = load i32, i32* %16, align 4
  %278 = load i32, i32* %15, align 4
  %279 = icmp ne i32 %277, %278
  br i1 %279, label %280, label %283

280:                                              ; preds = %271
  %281 = load i32, i32* @checksum_wrong, align 4
  %282 = call i64 @ERROR(i32 %281)
  store i64 %282, i64* %6, align 8
  br label %318

283:                                              ; preds = %271
  %284 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %285 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %284, i32 0, i32 0
  store i64 0, i64* %285, align 8
  %286 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %287 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %286, i32 0, i32 1
  store i32 133, i32* %287, align 8
  store i64 0, i64* %6, align 8
  br label %318

288:                                              ; preds = %32
  %289 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %290 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %289, i32 0, i32 2
  %291 = load i64, i64* %290, align 8
  %292 = load i64, i64* @ZSTD_frameHeaderSize_prefix, align 8
  %293 = add i64 %291, %292
  %294 = load i8*, i8** %10, align 8
  %295 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %296 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %295, i32 0, i32 0
  %297 = load i64, i64* %296, align 8
  %298 = call i32 @memcpy(i64 %293, i8* %294, i64 %297)
  %299 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %300 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %299, i32 0, i32 2
  %301 = load i64, i64* %300, align 8
  %302 = add i64 %301, 4
  %303 = inttoptr i64 %302 to i8*
  %304 = call i32 @ZSTD_readLE32(i8* %303)
  %305 = sext i32 %304 to i64
  %306 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %307 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %306, i32 0, i32 0
  store i64 %305, i64* %307, align 8
  %308 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %309 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %308, i32 0, i32 1
  store i32 132, i32* %309, align 8
  store i64 0, i64* %6, align 8
  br label %318

310:                                              ; preds = %32
  %311 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %312 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %311, i32 0, i32 0
  store i64 0, i64* %312, align 8
  %313 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %314 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %313, i32 0, i32 1
  store i32 133, i32* %314, align 8
  store i64 0, i64* %6, align 8
  br label %318

315:                                              ; preds = %32
  %316 = load i32, i32* @GENERIC, align 4
  %317 = call i64 @ERROR(i32 %316)
  store i64 %317, i64* %6, align 8
  br label %318

318:                                              ; preds = %315, %310, %288, %283, %280, %269, %221, %214, %186, %152, %136, %103, %90, %74, %49, %40, %22
  %319 = load i64, i64* %6, align 8
  ret i64 %319
}

declare dso_local i64 @ERROR(i32) #1

declare dso_local i32 @ZSTD_checkContinuity(%struct.TYPE_11__*, i8*) #1

declare dso_local i32 @ZSTD_readLE32(i8*) #1

declare dso_local i32 @memcpy(i64, i8*, i64) #1

declare dso_local i64 @ZSTD_frameHeaderSize(i8*, i64) #1

declare dso_local i32 @ZSTD_isError(i64) #1

declare dso_local i32 @CHECK_F(i32) #1

declare dso_local i32 @ZSTD_decodeFrameHeader(%struct.TYPE_11__*, i64, i64) #1

declare dso_local i64 @ZSTD_getcBlockSize(i8*, i8*, %struct.TYPE_10__*) #1

declare dso_local i64 @ZSTD_decompressBlock_internal(%struct.TYPE_11__*, i8*, i64, i8*, i64) #1

declare dso_local i64 @ZSTD_copyRawBlock(i8*, i64, i8*, i64) #1

declare dso_local i64 @ZSTD_setRleBlock(i8*, i64, i8*, i64, i32) #1

declare dso_local i32 @xxh64_update(i32*, i8*, i64) #1

declare dso_local i32 @xxh64_digest(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
