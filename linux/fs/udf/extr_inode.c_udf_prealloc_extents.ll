; ModuleID = '/home/carl/AnghaBench/linux/fs/udf/extr_inode.c_udf_prealloc_extents.c'
source_filename = "/home/carl/AnghaBench/linux/fs/udf/extr_inode.c_udf_prealloc_extents.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32, i32 }
%struct.kernel_long_ad = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32 }
%struct.TYPE_6__ = type { i32 }

@EXT_NOT_RECORDED_ALLOCATED = common dso_local global i32 0, align 4
@UDF_EXTENT_LENGTH_MASK = common dso_local global i32 0, align 4
@UDF_DEFAULT_PREALLOC_BLOCKS = common dso_local global i32 0, align 4
@EXT_NOT_RECORDED_NOT_ALLOCATED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.inode*, i32, i32, %struct.kernel_long_ad*, i32*)* @udf_prealloc_extents to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @udf_prealloc_extents(%struct.inode* %0, i32 %1, i32 %2, %struct.kernel_long_ad* %3, i32* %4) #0 {
  %6 = alloca %struct.inode*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.kernel_long_ad*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store %struct.kernel_long_ad* %3, %struct.kernel_long_ad** %9, align 8
  store i32* %4, i32** %10, align 8
  store i32 0, i32* %12, align 4
  store i32 0, i32* %13, align 4
  %18 = load i32*, i32** %10, align 8
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* %7, align 4
  %21 = add nsw i32 %20, 1
  %22 = icmp sge i32 %19, %21
  br i1 %22, label %23, label %30

23:                                               ; preds = %5
  %24 = load i32, i32* %8, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %27, label %26

26:                                               ; preds = %23
  br label %378

27:                                               ; preds = %23
  %28 = load i32, i32* %7, align 4
  store i32 %28, i32* %11, align 4
  br label %29

29:                                               ; preds = %27
  br label %70

30:                                               ; preds = %5
  %31 = load %struct.kernel_long_ad*, %struct.kernel_long_ad** %9, align 8
  %32 = load i32, i32* %7, align 4
  %33 = add nsw i32 %32, 1
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds %struct.kernel_long_ad, %struct.kernel_long_ad* %31, i64 %34
  %36 = getelementptr inbounds %struct.kernel_long_ad, %struct.kernel_long_ad* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = ashr i32 %37, 30
  %39 = load i32, i32* @EXT_NOT_RECORDED_ALLOCATED, align 4
  %40 = ashr i32 %39, 30
  %41 = icmp eq i32 %38, %40
  br i1 %41, label %42, label %67

42:                                               ; preds = %30
  %43 = load i32, i32* %7, align 4
  %44 = add nsw i32 %43, 1
  store i32 %44, i32* %11, align 4
  %45 = load %struct.kernel_long_ad*, %struct.kernel_long_ad** %9, align 8
  %46 = load i32, i32* %7, align 4
  %47 = add nsw i32 %46, 1
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds %struct.kernel_long_ad, %struct.kernel_long_ad* %45, i64 %48
  %50 = getelementptr inbounds %struct.kernel_long_ad, %struct.kernel_long_ad* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = load i32, i32* @UDF_EXTENT_LENGTH_MASK, align 4
  %53 = and i32 %51, %52
  %54 = load %struct.inode*, %struct.inode** %6, align 8
  %55 = getelementptr inbounds %struct.inode, %struct.inode* %54, i32 0, i32 0
  %56 = load %struct.TYPE_5__*, %struct.TYPE_5__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = add nsw i32 %53, %58
  %60 = sub nsw i32 %59, 1
  %61 = load %struct.inode*, %struct.inode** %6, align 8
  %62 = getelementptr inbounds %struct.inode, %struct.inode* %61, i32 0, i32 0
  %63 = load %struct.TYPE_5__*, %struct.TYPE_5__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = ashr i32 %60, %65
  store i32 %66, i32* %13, align 4
  store i32 %66, i32* %12, align 4
  br label %69

67:                                               ; preds = %30
  %68 = load i32, i32* %7, align 4
  store i32 %68, i32* %11, align 4
  br label %69

69:                                               ; preds = %67, %42
  br label %70

70:                                               ; preds = %69, %29
  %71 = load i32, i32* %11, align 4
  %72 = add nsw i32 %71, 1
  store i32 %72, i32* %14, align 4
  br label %73

73:                                               ; preds = %129, %70
  %74 = load i32, i32* %14, align 4
  %75 = load i32*, i32** %10, align 8
  %76 = load i32, i32* %75, align 4
  %77 = icmp sle i32 %74, %76
  br i1 %77, label %78, label %132

78:                                               ; preds = %73
  %79 = load i32, i32* %14, align 4
  %80 = load i32*, i32** %10, align 8
  %81 = load i32, i32* %80, align 4
  %82 = icmp eq i32 %79, %81
  br i1 %82, label %83, label %91

83:                                               ; preds = %78
  %84 = load i32, i32* %8, align 4
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %90

86:                                               ; preds = %83
  %87 = load i32, i32* @UDF_DEFAULT_PREALLOC_BLOCKS, align 4
  %88 = load i32, i32* %12, align 4
  %89 = add nsw i32 %88, %87
  store i32 %89, i32* %12, align 4
  br label %90

90:                                               ; preds = %86, %83
  br label %128

91:                                               ; preds = %78
  %92 = load %struct.kernel_long_ad*, %struct.kernel_long_ad** %9, align 8
  %93 = load i32, i32* %14, align 4
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds %struct.kernel_long_ad, %struct.kernel_long_ad* %92, i64 %94
  %96 = getelementptr inbounds %struct.kernel_long_ad, %struct.kernel_long_ad* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 4
  %98 = ashr i32 %97, 30
  %99 = load i32, i32* @EXT_NOT_RECORDED_NOT_ALLOCATED, align 4
  %100 = ashr i32 %99, 30
  %101 = icmp eq i32 %98, %100
  br i1 %101, label %102, label %126

102:                                              ; preds = %91
  %103 = load %struct.kernel_long_ad*, %struct.kernel_long_ad** %9, align 8
  %104 = load i32, i32* %14, align 4
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds %struct.kernel_long_ad, %struct.kernel_long_ad* %103, i64 %105
  %107 = getelementptr inbounds %struct.kernel_long_ad, %struct.kernel_long_ad* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 4
  %109 = load i32, i32* @UDF_EXTENT_LENGTH_MASK, align 4
  %110 = and i32 %108, %109
  %111 = load %struct.inode*, %struct.inode** %6, align 8
  %112 = getelementptr inbounds %struct.inode, %struct.inode* %111, i32 0, i32 0
  %113 = load %struct.TYPE_5__*, %struct.TYPE_5__** %112, align 8
  %114 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 4
  %116 = add nsw i32 %110, %115
  %117 = sub nsw i32 %116, 1
  %118 = load %struct.inode*, %struct.inode** %6, align 8
  %119 = getelementptr inbounds %struct.inode, %struct.inode* %118, i32 0, i32 0
  %120 = load %struct.TYPE_5__*, %struct.TYPE_5__** %119, align 8
  %121 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %120, i32 0, i32 1
  %122 = load i32, i32* %121, align 4
  %123 = ashr i32 %117, %122
  %124 = load i32, i32* %12, align 4
  %125 = add nsw i32 %124, %123
  store i32 %125, i32* %12, align 4
  br label %127

126:                                              ; preds = %91
  br label %132

127:                                              ; preds = %102
  br label %128

128:                                              ; preds = %127, %90
  br label %129

129:                                              ; preds = %128
  %130 = load i32, i32* %14, align 4
  %131 = add nsw i32 %130, 1
  store i32 %131, i32* %14, align 4
  br label %73

132:                                              ; preds = %126, %73
  %133 = load i32, i32* %12, align 4
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %135, label %378

135:                                              ; preds = %132
  %136 = load %struct.kernel_long_ad*, %struct.kernel_long_ad** %9, align 8
  %137 = load i32, i32* %11, align 4
  %138 = sext i32 %137 to i64
  %139 = getelementptr inbounds %struct.kernel_long_ad, %struct.kernel_long_ad* %136, i64 %138
  %140 = getelementptr inbounds %struct.kernel_long_ad, %struct.kernel_long_ad* %139, i32 0, i32 1
  %141 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %140, i32 0, i32 0
  %142 = load i32, i32* %141, align 4
  %143 = load %struct.kernel_long_ad*, %struct.kernel_long_ad** %9, align 8
  %144 = load i32, i32* %11, align 4
  %145 = sext i32 %144 to i64
  %146 = getelementptr inbounds %struct.kernel_long_ad, %struct.kernel_long_ad* %143, i64 %145
  %147 = getelementptr inbounds %struct.kernel_long_ad, %struct.kernel_long_ad* %146, i32 0, i32 0
  %148 = load i32, i32* %147, align 4
  %149 = load i32, i32* @UDF_EXTENT_LENGTH_MASK, align 4
  %150 = and i32 %148, %149
  %151 = load %struct.inode*, %struct.inode** %6, align 8
  %152 = getelementptr inbounds %struct.inode, %struct.inode* %151, i32 0, i32 0
  %153 = load %struct.TYPE_5__*, %struct.TYPE_5__** %152, align 8
  %154 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %153, i32 0, i32 0
  %155 = load i32, i32* %154, align 4
  %156 = add nsw i32 %150, %155
  %157 = sub nsw i32 %156, 1
  %158 = load %struct.inode*, %struct.inode** %6, align 8
  %159 = getelementptr inbounds %struct.inode, %struct.inode* %158, i32 0, i32 0
  %160 = load %struct.TYPE_5__*, %struct.TYPE_5__** %159, align 8
  %161 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %160, i32 0, i32 1
  %162 = load i32, i32* %161, align 4
  %163 = ashr i32 %157, %162
  %164 = add nsw i32 %142, %163
  store i32 %164, i32* %15, align 4
  %165 = load %struct.inode*, %struct.inode** %6, align 8
  %166 = getelementptr inbounds %struct.inode, %struct.inode* %165, i32 0, i32 0
  %167 = load %struct.TYPE_5__*, %struct.TYPE_5__** %166, align 8
  %168 = load %struct.inode*, %struct.inode** %6, align 8
  %169 = load %struct.kernel_long_ad*, %struct.kernel_long_ad** %9, align 8
  %170 = load i32, i32* %11, align 4
  %171 = sext i32 %170 to i64
  %172 = getelementptr inbounds %struct.kernel_long_ad, %struct.kernel_long_ad* %169, i64 %171
  %173 = getelementptr inbounds %struct.kernel_long_ad, %struct.kernel_long_ad* %172, i32 0, i32 1
  %174 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %173, i32 0, i32 1
  %175 = load i32, i32* %174, align 4
  %176 = load i32, i32* %15, align 4
  %177 = load i32, i32* @UDF_DEFAULT_PREALLOC_BLOCKS, align 4
  %178 = load i32, i32* %12, align 4
  %179 = icmp sgt i32 %177, %178
  br i1 %179, label %180, label %182

180:                                              ; preds = %135
  %181 = load i32, i32* %12, align 4
  br label %184

182:                                              ; preds = %135
  %183 = load i32, i32* @UDF_DEFAULT_PREALLOC_BLOCKS, align 4
  br label %184

184:                                              ; preds = %182, %180
  %185 = phi i32 [ %181, %180 ], [ %183, %182 ]
  %186 = load i32, i32* %13, align 4
  %187 = sub nsw i32 %185, %186
  %188 = call i32 @udf_prealloc_blocks(%struct.TYPE_5__* %167, %struct.inode* %168, i32 %175, i32 %176, i32 %187)
  store i32 %188, i32* %16, align 4
  %189 = load i32, i32* %16, align 4
  %190 = icmp ne i32 %189, 0
  br i1 %190, label %191, label %377

191:                                              ; preds = %184
  %192 = load i32, i32* %11, align 4
  %193 = load i32, i32* %7, align 4
  %194 = add nsw i32 %193, 1
  %195 = icmp eq i32 %192, %194
  br i1 %195, label %196, label %211

196:                                              ; preds = %191
  %197 = load i32, i32* %16, align 4
  %198 = load %struct.inode*, %struct.inode** %6, align 8
  %199 = getelementptr inbounds %struct.inode, %struct.inode* %198, i32 0, i32 0
  %200 = load %struct.TYPE_5__*, %struct.TYPE_5__** %199, align 8
  %201 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %200, i32 0, i32 1
  %202 = load i32, i32* %201, align 4
  %203 = shl i32 %197, %202
  %204 = load %struct.kernel_long_ad*, %struct.kernel_long_ad** %9, align 8
  %205 = load i32, i32* %11, align 4
  %206 = sext i32 %205 to i64
  %207 = getelementptr inbounds %struct.kernel_long_ad, %struct.kernel_long_ad* %204, i64 %206
  %208 = getelementptr inbounds %struct.kernel_long_ad, %struct.kernel_long_ad* %207, i32 0, i32 0
  %209 = load i32, i32* %208, align 4
  %210 = add nsw i32 %209, %203
  store i32 %210, i32* %208, align 4
  br label %273

211:                                              ; preds = %191
  %212 = load %struct.kernel_long_ad*, %struct.kernel_long_ad** %9, align 8
  %213 = load i32, i32* %7, align 4
  %214 = add nsw i32 %213, 2
  %215 = sext i32 %214 to i64
  %216 = getelementptr inbounds %struct.kernel_long_ad, %struct.kernel_long_ad* %212, i64 %215
  %217 = load %struct.kernel_long_ad*, %struct.kernel_long_ad** %9, align 8
  %218 = load i32, i32* %7, align 4
  %219 = add nsw i32 %218, 1
  %220 = sext i32 %219 to i64
  %221 = getelementptr inbounds %struct.kernel_long_ad, %struct.kernel_long_ad* %217, i64 %220
  %222 = load i32*, i32** %10, align 8
  %223 = load i32, i32* %222, align 4
  %224 = load i32, i32* %7, align 4
  %225 = add nsw i32 %224, 1
  %226 = sub nsw i32 %223, %225
  %227 = sext i32 %226 to i64
  %228 = mul i64 4, %227
  %229 = trunc i64 %228 to i32
  %230 = call i32 @memmove(%struct.kernel_long_ad* %216, %struct.kernel_long_ad* %221, i32 %229)
  %231 = load i32*, i32** %10, align 8
  %232 = load i32, i32* %231, align 4
  %233 = add nsw i32 %232, 1
  store i32 %233, i32* %231, align 4
  %234 = load i32, i32* %15, align 4
  %235 = load %struct.kernel_long_ad*, %struct.kernel_long_ad** %9, align 8
  %236 = load i32, i32* %7, align 4
  %237 = add nsw i32 %236, 1
  %238 = sext i32 %237 to i64
  %239 = getelementptr inbounds %struct.kernel_long_ad, %struct.kernel_long_ad* %235, i64 %238
  %240 = getelementptr inbounds %struct.kernel_long_ad, %struct.kernel_long_ad* %239, i32 0, i32 1
  %241 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %240, i32 0, i32 0
  store i32 %234, i32* %241, align 4
  %242 = load %struct.kernel_long_ad*, %struct.kernel_long_ad** %9, align 8
  %243 = load i32, i32* %7, align 4
  %244 = sext i32 %243 to i64
  %245 = getelementptr inbounds %struct.kernel_long_ad, %struct.kernel_long_ad* %242, i64 %244
  %246 = getelementptr inbounds %struct.kernel_long_ad, %struct.kernel_long_ad* %245, i32 0, i32 1
  %247 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %246, i32 0, i32 1
  %248 = load i32, i32* %247, align 4
  %249 = load %struct.kernel_long_ad*, %struct.kernel_long_ad** %9, align 8
  %250 = load i32, i32* %7, align 4
  %251 = add nsw i32 %250, 1
  %252 = sext i32 %251 to i64
  %253 = getelementptr inbounds %struct.kernel_long_ad, %struct.kernel_long_ad* %249, i64 %252
  %254 = getelementptr inbounds %struct.kernel_long_ad, %struct.kernel_long_ad* %253, i32 0, i32 1
  %255 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %254, i32 0, i32 1
  store i32 %248, i32* %255, align 4
  %256 = load i32, i32* @EXT_NOT_RECORDED_ALLOCATED, align 4
  %257 = load i32, i32* %16, align 4
  %258 = load %struct.inode*, %struct.inode** %6, align 8
  %259 = getelementptr inbounds %struct.inode, %struct.inode* %258, i32 0, i32 0
  %260 = load %struct.TYPE_5__*, %struct.TYPE_5__** %259, align 8
  %261 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %260, i32 0, i32 1
  %262 = load i32, i32* %261, align 4
  %263 = shl i32 %257, %262
  %264 = or i32 %256, %263
  %265 = load %struct.kernel_long_ad*, %struct.kernel_long_ad** %9, align 8
  %266 = load i32, i32* %7, align 4
  %267 = add nsw i32 %266, 1
  %268 = sext i32 %267 to i64
  %269 = getelementptr inbounds %struct.kernel_long_ad, %struct.kernel_long_ad* %265, i64 %268
  %270 = getelementptr inbounds %struct.kernel_long_ad, %struct.kernel_long_ad* %269, i32 0, i32 0
  store i32 %264, i32* %270, align 4
  %271 = load i32, i32* %7, align 4
  %272 = add nsw i32 %271, 1
  store i32 %272, i32* %11, align 4
  br label %273

273:                                              ; preds = %211, %196
  %274 = load i32, i32* %11, align 4
  %275 = add nsw i32 %274, 1
  store i32 %275, i32* %14, align 4
  br label %276

276:                                              ; preds = %361, %273
  %277 = load i32, i32* %16, align 4
  %278 = icmp ne i32 %277, 0
  br i1 %278, label %279, label %284

279:                                              ; preds = %276
  %280 = load i32, i32* %14, align 4
  %281 = load i32*, i32** %10, align 8
  %282 = load i32, i32* %281, align 4
  %283 = icmp slt i32 %280, %282
  br label %284

284:                                              ; preds = %279, %276
  %285 = phi i1 [ false, %276 ], [ %283, %279 ]
  br i1 %285, label %286, label %364

286:                                              ; preds = %284
  %287 = load %struct.kernel_long_ad*, %struct.kernel_long_ad** %9, align 8
  %288 = load i32, i32* %14, align 4
  %289 = sext i32 %288 to i64
  %290 = getelementptr inbounds %struct.kernel_long_ad, %struct.kernel_long_ad* %287, i64 %289
  %291 = getelementptr inbounds %struct.kernel_long_ad, %struct.kernel_long_ad* %290, i32 0, i32 0
  %292 = load i32, i32* %291, align 4
  %293 = load i32, i32* @UDF_EXTENT_LENGTH_MASK, align 4
  %294 = and i32 %292, %293
  %295 = load %struct.inode*, %struct.inode** %6, align 8
  %296 = getelementptr inbounds %struct.inode, %struct.inode* %295, i32 0, i32 0
  %297 = load %struct.TYPE_5__*, %struct.TYPE_5__** %296, align 8
  %298 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %297, i32 0, i32 0
  %299 = load i32, i32* %298, align 4
  %300 = add nsw i32 %294, %299
  %301 = sub nsw i32 %300, 1
  %302 = load %struct.inode*, %struct.inode** %6, align 8
  %303 = getelementptr inbounds %struct.inode, %struct.inode* %302, i32 0, i32 0
  %304 = load %struct.TYPE_5__*, %struct.TYPE_5__** %303, align 8
  %305 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %304, i32 0, i32 1
  %306 = load i32, i32* %305, align 4
  %307 = ashr i32 %301, %306
  store i32 %307, i32* %17, align 4
  %308 = load i32, i32* %17, align 4
  %309 = load i32, i32* %16, align 4
  %310 = icmp sgt i32 %308, %309
  br i1 %310, label %311, label %326

311:                                              ; preds = %286
  %312 = load i32, i32* %16, align 4
  %313 = load %struct.inode*, %struct.inode** %6, align 8
  %314 = getelementptr inbounds %struct.inode, %struct.inode* %313, i32 0, i32 0
  %315 = load %struct.TYPE_5__*, %struct.TYPE_5__** %314, align 8
  %316 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %315, i32 0, i32 1
  %317 = load i32, i32* %316, align 4
  %318 = shl i32 %312, %317
  %319 = load %struct.kernel_long_ad*, %struct.kernel_long_ad** %9, align 8
  %320 = load i32, i32* %14, align 4
  %321 = sext i32 %320 to i64
  %322 = getelementptr inbounds %struct.kernel_long_ad, %struct.kernel_long_ad* %319, i64 %321
  %323 = getelementptr inbounds %struct.kernel_long_ad, %struct.kernel_long_ad* %322, i32 0, i32 0
  %324 = load i32, i32* %323, align 4
  %325 = sub nsw i32 %324, %318
  store i32 %325, i32* %323, align 4
  store i32 0, i32* %16, align 4
  br label %360

326:                                              ; preds = %286
  %327 = load i32, i32* %17, align 4
  %328 = load i32, i32* %16, align 4
  %329 = sub nsw i32 %328, %327
  store i32 %329, i32* %16, align 4
  %330 = load i32*, i32** %10, align 8
  %331 = load i32, i32* %330, align 4
  %332 = load i32, i32* %14, align 4
  %333 = add nsw i32 %332, 1
  %334 = icmp sgt i32 %331, %333
  br i1 %334, label %335, label %354

335:                                              ; preds = %326
  %336 = load %struct.kernel_long_ad*, %struct.kernel_long_ad** %9, align 8
  %337 = load i32, i32* %14, align 4
  %338 = sext i32 %337 to i64
  %339 = getelementptr inbounds %struct.kernel_long_ad, %struct.kernel_long_ad* %336, i64 %338
  %340 = load %struct.kernel_long_ad*, %struct.kernel_long_ad** %9, align 8
  %341 = load i32, i32* %14, align 4
  %342 = add nsw i32 %341, 1
  %343 = sext i32 %342 to i64
  %344 = getelementptr inbounds %struct.kernel_long_ad, %struct.kernel_long_ad* %340, i64 %343
  %345 = load i32*, i32** %10, align 8
  %346 = load i32, i32* %345, align 4
  %347 = load i32, i32* %14, align 4
  %348 = add nsw i32 %347, 1
  %349 = sub nsw i32 %346, %348
  %350 = sext i32 %349 to i64
  %351 = mul i64 4, %350
  %352 = trunc i64 %351 to i32
  %353 = call i32 @memmove(%struct.kernel_long_ad* %339, %struct.kernel_long_ad* %344, i32 %352)
  br label %354

354:                                              ; preds = %335, %326
  %355 = load i32, i32* %14, align 4
  %356 = add nsw i32 %355, -1
  store i32 %356, i32* %14, align 4
  %357 = load i32*, i32** %10, align 8
  %358 = load i32, i32* %357, align 4
  %359 = add nsw i32 %358, -1
  store i32 %359, i32* %357, align 4
  br label %360

360:                                              ; preds = %354, %311
  br label %361

361:                                              ; preds = %360
  %362 = load i32, i32* %14, align 4
  %363 = add nsw i32 %362, 1
  store i32 %363, i32* %14, align 4
  br label %276

364:                                              ; preds = %284
  %365 = load i32, i32* %16, align 4
  %366 = load %struct.inode*, %struct.inode** %6, align 8
  %367 = getelementptr inbounds %struct.inode, %struct.inode* %366, i32 0, i32 0
  %368 = load %struct.TYPE_5__*, %struct.TYPE_5__** %367, align 8
  %369 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %368, i32 0, i32 1
  %370 = load i32, i32* %369, align 4
  %371 = shl i32 %365, %370
  %372 = load %struct.inode*, %struct.inode** %6, align 8
  %373 = call %struct.TYPE_6__* @UDF_I(%struct.inode* %372)
  %374 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %373, i32 0, i32 0
  %375 = load i32, i32* %374, align 4
  %376 = add nsw i32 %375, %371
  store i32 %376, i32* %374, align 4
  br label %377

377:                                              ; preds = %364, %184
  br label %378

378:                                              ; preds = %26, %377, %132
  ret void
}

declare dso_local i32 @udf_prealloc_blocks(%struct.TYPE_5__*, %struct.inode*, i32, i32, i32) #1

declare dso_local i32 @memmove(%struct.kernel_long_ad*, %struct.kernel_long_ad*, i32) #1

declare dso_local %struct.TYPE_6__* @UDF_I(%struct.inode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
