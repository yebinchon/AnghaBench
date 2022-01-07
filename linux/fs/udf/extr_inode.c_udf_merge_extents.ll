; ModuleID = '/home/carl/AnghaBench/linux/fs/udf/extr_inode.c_udf_merge_extents.c'
source_filename = "/home/carl/AnghaBench/linux/fs/udf/extr_inode.c_udf_merge_extents.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i64, i8 }
%struct.kernel_long_ad = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64, i64 }

@EXT_NOT_RECORDED_NOT_ALLOCATED = common dso_local global i32 0, align 4
@UDF_EXTENT_LENGTH_MASK = common dso_local global i64 0, align 8
@UDF_EXTENT_FLAG_MASK = common dso_local global i64 0, align 8
@EXT_NOT_RECORDED_ALLOCATED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.inode*, %struct.kernel_long_ad*, i32*)* @udf_merge_extents to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @udf_merge_extents(%struct.inode* %0, %struct.kernel_long_ad* %1, i32* %2) #0 {
  %4 = alloca %struct.inode*, align 8
  %5 = alloca %struct.kernel_long_ad*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i8, align 1
  %10 = alloca %struct.kernel_long_ad*, align 8
  %11 = alloca %struct.kernel_long_ad*, align 8
  store %struct.inode* %0, %struct.inode** %4, align 8
  store %struct.kernel_long_ad* %1, %struct.kernel_long_ad** %5, align 8
  store i32* %2, i32** %6, align 8
  %12 = load %struct.inode*, %struct.inode** %4, align 8
  %13 = getelementptr inbounds %struct.inode, %struct.inode* %12, i32 0, i32 0
  %14 = load %struct.TYPE_3__*, %struct.TYPE_3__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  store i64 %16, i64* %8, align 8
  %17 = load %struct.inode*, %struct.inode** %4, align 8
  %18 = getelementptr inbounds %struct.inode, %struct.inode* %17, i32 0, i32 0
  %19 = load %struct.TYPE_3__*, %struct.TYPE_3__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 1
  %21 = load i8, i8* %20, align 8
  store i8 %21, i8* %9, align 1
  store i32 0, i32* %7, align 4
  br label %22

22:                                               ; preds = %409, %3
  %23 = load i32, i32* %7, align 4
  %24 = load i32*, i32** %6, align 8
  %25 = load i32, i32* %24, align 4
  %26 = sub nsw i32 %25, 1
  %27 = icmp slt i32 %23, %26
  br i1 %27, label %28, label %412

28:                                               ; preds = %22
  %29 = load %struct.kernel_long_ad*, %struct.kernel_long_ad** %5, align 8
  %30 = load i32, i32* %7, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds %struct.kernel_long_ad, %struct.kernel_long_ad* %29, i64 %31
  store %struct.kernel_long_ad* %32, %struct.kernel_long_ad** %10, align 8
  %33 = load %struct.kernel_long_ad*, %struct.kernel_long_ad** %5, align 8
  %34 = load i32, i32* %7, align 4
  %35 = add nsw i32 %34, 1
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds %struct.kernel_long_ad, %struct.kernel_long_ad* %33, i64 %36
  store %struct.kernel_long_ad* %37, %struct.kernel_long_ad** %11, align 8
  %38 = load %struct.kernel_long_ad*, %struct.kernel_long_ad** %10, align 8
  %39 = getelementptr inbounds %struct.kernel_long_ad, %struct.kernel_long_ad* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = ashr i32 %40, 30
  %42 = load %struct.kernel_long_ad*, %struct.kernel_long_ad** %11, align 8
  %43 = getelementptr inbounds %struct.kernel_long_ad, %struct.kernel_long_ad* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = ashr i32 %44, 30
  %46 = icmp eq i32 %41, %45
  br i1 %46, label %47, label %207

47:                                               ; preds = %28
  %48 = load %struct.kernel_long_ad*, %struct.kernel_long_ad** %10, align 8
  %49 = getelementptr inbounds %struct.kernel_long_ad, %struct.kernel_long_ad* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = ashr i32 %50, 30
  %52 = load i32, i32* @EXT_NOT_RECORDED_NOT_ALLOCATED, align 4
  %53 = ashr i32 %52, 30
  %54 = icmp eq i32 %51, %53
  br i1 %54, label %79, label %55

55:                                               ; preds = %47
  %56 = load %struct.kernel_long_ad*, %struct.kernel_long_ad** %11, align 8
  %57 = getelementptr inbounds %struct.kernel_long_ad, %struct.kernel_long_ad* %56, i32 0, i32 1
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = load %struct.kernel_long_ad*, %struct.kernel_long_ad** %10, align 8
  %61 = getelementptr inbounds %struct.kernel_long_ad, %struct.kernel_long_ad* %60, i32 0, i32 1
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = sub i64 %59, %63
  %65 = load %struct.kernel_long_ad*, %struct.kernel_long_ad** %10, align 8
  %66 = getelementptr inbounds %struct.kernel_long_ad, %struct.kernel_long_ad* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = sext i32 %67 to i64
  %69 = load i64, i64* @UDF_EXTENT_LENGTH_MASK, align 8
  %70 = and i64 %68, %69
  %71 = load i64, i64* %8, align 8
  %72 = add i64 %70, %71
  %73 = sub i64 %72, 1
  %74 = load i8, i8* %9, align 1
  %75 = zext i8 %74 to i32
  %76 = zext i32 %75 to i64
  %77 = lshr i64 %73, %76
  %78 = icmp eq i64 %64, %77
  br i1 %78, label %79, label %207

79:                                               ; preds = %55, %47
  %80 = load %struct.kernel_long_ad*, %struct.kernel_long_ad** %10, align 8
  %81 = getelementptr inbounds %struct.kernel_long_ad, %struct.kernel_long_ad* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  %83 = sext i32 %82 to i64
  %84 = load i64, i64* @UDF_EXTENT_LENGTH_MASK, align 8
  %85 = and i64 %83, %84
  %86 = load %struct.kernel_long_ad*, %struct.kernel_long_ad** %11, align 8
  %87 = getelementptr inbounds %struct.kernel_long_ad, %struct.kernel_long_ad* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 8
  %89 = sext i32 %88 to i64
  %90 = load i64, i64* @UDF_EXTENT_LENGTH_MASK, align 8
  %91 = and i64 %89, %90
  %92 = add i64 %85, %91
  %93 = load i64, i64* %8, align 8
  %94 = add i64 %92, %93
  %95 = sub i64 %94, 1
  %96 = load i64, i64* @UDF_EXTENT_LENGTH_MASK, align 8
  %97 = xor i64 %96, -1
  %98 = and i64 %95, %97
  %99 = icmp ne i64 %98, 0
  br i1 %99, label %100, label %153

100:                                              ; preds = %79
  %101 = load %struct.kernel_long_ad*, %struct.kernel_long_ad** %11, align 8
  %102 = getelementptr inbounds %struct.kernel_long_ad, %struct.kernel_long_ad* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 8
  %104 = sext i32 %103 to i64
  %105 = load %struct.kernel_long_ad*, %struct.kernel_long_ad** %10, align 8
  %106 = getelementptr inbounds %struct.kernel_long_ad, %struct.kernel_long_ad* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 8
  %108 = sext i32 %107 to i64
  %109 = load i64, i64* @UDF_EXTENT_LENGTH_MASK, align 8
  %110 = and i64 %108, %109
  %111 = sub i64 %104, %110
  %112 = load i64, i64* @UDF_EXTENT_LENGTH_MASK, align 8
  %113 = add i64 %111, %112
  %114 = load i64, i64* %8, align 8
  %115 = sub i64 %114, 1
  %116 = xor i64 %115, -1
  %117 = and i64 %113, %116
  %118 = trunc i64 %117 to i32
  %119 = load %struct.kernel_long_ad*, %struct.kernel_long_ad** %11, align 8
  %120 = getelementptr inbounds %struct.kernel_long_ad, %struct.kernel_long_ad* %119, i32 0, i32 0
  store i32 %118, i32* %120, align 8
  %121 = load %struct.kernel_long_ad*, %struct.kernel_long_ad** %10, align 8
  %122 = getelementptr inbounds %struct.kernel_long_ad, %struct.kernel_long_ad* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 8
  %124 = sext i32 %123 to i64
  %125 = load i64, i64* @UDF_EXTENT_FLAG_MASK, align 8
  %126 = and i64 %124, %125
  %127 = load i64, i64* @UDF_EXTENT_LENGTH_MASK, align 8
  %128 = add i64 %127, 1
  %129 = add i64 %126, %128
  %130 = load i64, i64* %8, align 8
  %131 = sub i64 %129, %130
  %132 = trunc i64 %131 to i32
  %133 = load %struct.kernel_long_ad*, %struct.kernel_long_ad** %10, align 8
  %134 = getelementptr inbounds %struct.kernel_long_ad, %struct.kernel_long_ad* %133, i32 0, i32 0
  store i32 %132, i32* %134, align 8
  %135 = load %struct.kernel_long_ad*, %struct.kernel_long_ad** %10, align 8
  %136 = getelementptr inbounds %struct.kernel_long_ad, %struct.kernel_long_ad* %135, i32 0, i32 1
  %137 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %136, i32 0, i32 0
  %138 = load i64, i64* %137, align 8
  %139 = load %struct.kernel_long_ad*, %struct.kernel_long_ad** %10, align 8
  %140 = getelementptr inbounds %struct.kernel_long_ad, %struct.kernel_long_ad* %139, i32 0, i32 0
  %141 = load i32, i32* %140, align 8
  %142 = sext i32 %141 to i64
  %143 = load i64, i64* @UDF_EXTENT_LENGTH_MASK, align 8
  %144 = and i64 %142, %143
  %145 = load i8, i8* %9, align 1
  %146 = zext i8 %145 to i32
  %147 = zext i32 %146 to i64
  %148 = lshr i64 %144, %147
  %149 = add i64 %138, %148
  %150 = load %struct.kernel_long_ad*, %struct.kernel_long_ad** %11, align 8
  %151 = getelementptr inbounds %struct.kernel_long_ad, %struct.kernel_long_ad* %150, i32 0, i32 1
  %152 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %151, i32 0, i32 0
  store i64 %149, i64* %152, align 8
  br label %206

153:                                              ; preds = %79
  %154 = load %struct.kernel_long_ad*, %struct.kernel_long_ad** %11, align 8
  %155 = getelementptr inbounds %struct.kernel_long_ad, %struct.kernel_long_ad* %154, i32 0, i32 0
  %156 = load i32, i32* %155, align 8
  %157 = sext i32 %156 to i64
  %158 = load %struct.kernel_long_ad*, %struct.kernel_long_ad** %10, align 8
  %159 = getelementptr inbounds %struct.kernel_long_ad, %struct.kernel_long_ad* %158, i32 0, i32 0
  %160 = load i32, i32* %159, align 8
  %161 = sext i32 %160 to i64
  %162 = load i64, i64* @UDF_EXTENT_LENGTH_MASK, align 8
  %163 = and i64 %161, %162
  %164 = load i64, i64* %8, align 8
  %165 = add i64 %163, %164
  %166 = sub i64 %165, 1
  %167 = load i64, i64* %8, align 8
  %168 = sub i64 %167, 1
  %169 = xor i64 %168, -1
  %170 = and i64 %166, %169
  %171 = add i64 %157, %170
  %172 = trunc i64 %171 to i32
  %173 = load %struct.kernel_long_ad*, %struct.kernel_long_ad** %10, align 8
  %174 = getelementptr inbounds %struct.kernel_long_ad, %struct.kernel_long_ad* %173, i32 0, i32 0
  store i32 %172, i32* %174, align 8
  %175 = load i32*, i32** %6, align 8
  %176 = load i32, i32* %175, align 4
  %177 = load i32, i32* %7, align 4
  %178 = add nsw i32 %177, 2
  %179 = icmp sgt i32 %176, %178
  br i1 %179, label %180, label %200

180:                                              ; preds = %153
  %181 = load %struct.kernel_long_ad*, %struct.kernel_long_ad** %5, align 8
  %182 = load i32, i32* %7, align 4
  %183 = add nsw i32 %182, 1
  %184 = sext i32 %183 to i64
  %185 = getelementptr inbounds %struct.kernel_long_ad, %struct.kernel_long_ad* %181, i64 %184
  %186 = load %struct.kernel_long_ad*, %struct.kernel_long_ad** %5, align 8
  %187 = load i32, i32* %7, align 4
  %188 = add nsw i32 %187, 2
  %189 = sext i32 %188 to i64
  %190 = getelementptr inbounds %struct.kernel_long_ad, %struct.kernel_long_ad* %186, i64 %189
  %191 = load i32*, i32** %6, align 8
  %192 = load i32, i32* %191, align 4
  %193 = load i32, i32* %7, align 4
  %194 = add nsw i32 %193, 2
  %195 = sub nsw i32 %192, %194
  %196 = sext i32 %195 to i64
  %197 = mul i64 4, %196
  %198 = trunc i64 %197 to i32
  %199 = call i32 @memmove(%struct.kernel_long_ad* %185, %struct.kernel_long_ad* %190, i32 %198)
  br label %200

200:                                              ; preds = %180, %153
  %201 = load i32, i32* %7, align 4
  %202 = add nsw i32 %201, -1
  store i32 %202, i32* %7, align 4
  %203 = load i32*, i32** %6, align 8
  %204 = load i32, i32* %203, align 4
  %205 = add nsw i32 %204, -1
  store i32 %205, i32* %203, align 4
  br label %206

206:                                              ; preds = %200, %100
  br label %408

207:                                              ; preds = %55, %28
  %208 = load %struct.kernel_long_ad*, %struct.kernel_long_ad** %10, align 8
  %209 = getelementptr inbounds %struct.kernel_long_ad, %struct.kernel_long_ad* %208, i32 0, i32 0
  %210 = load i32, i32* %209, align 8
  %211 = ashr i32 %210, 30
  %212 = load i32, i32* @EXT_NOT_RECORDED_ALLOCATED, align 4
  %213 = ashr i32 %212, 30
  %214 = icmp eq i32 %211, %213
  br i1 %214, label %215, label %359

215:                                              ; preds = %207
  %216 = load %struct.kernel_long_ad*, %struct.kernel_long_ad** %11, align 8
  %217 = getelementptr inbounds %struct.kernel_long_ad, %struct.kernel_long_ad* %216, i32 0, i32 0
  %218 = load i32, i32* %217, align 8
  %219 = ashr i32 %218, 30
  %220 = load i32, i32* @EXT_NOT_RECORDED_NOT_ALLOCATED, align 4
  %221 = ashr i32 %220, 30
  %222 = icmp eq i32 %219, %221
  br i1 %222, label %223, label %359

223:                                              ; preds = %215
  %224 = load %struct.inode*, %struct.inode** %4, align 8
  %225 = getelementptr inbounds %struct.inode, %struct.inode* %224, i32 0, i32 0
  %226 = load %struct.TYPE_3__*, %struct.TYPE_3__** %225, align 8
  %227 = load %struct.inode*, %struct.inode** %4, align 8
  %228 = load %struct.kernel_long_ad*, %struct.kernel_long_ad** %10, align 8
  %229 = getelementptr inbounds %struct.kernel_long_ad, %struct.kernel_long_ad* %228, i32 0, i32 1
  %230 = load %struct.kernel_long_ad*, %struct.kernel_long_ad** %10, align 8
  %231 = getelementptr inbounds %struct.kernel_long_ad, %struct.kernel_long_ad* %230, i32 0, i32 0
  %232 = load i32, i32* %231, align 8
  %233 = sext i32 %232 to i64
  %234 = load i64, i64* @UDF_EXTENT_LENGTH_MASK, align 8
  %235 = and i64 %233, %234
  %236 = load i64, i64* %8, align 8
  %237 = add i64 %235, %236
  %238 = sub i64 %237, 1
  %239 = load i8, i8* %9, align 1
  %240 = zext i8 %239 to i32
  %241 = zext i32 %240 to i64
  %242 = lshr i64 %238, %241
  %243 = call i32 @udf_free_blocks(%struct.TYPE_3__* %226, %struct.inode* %227, %struct.TYPE_4__* %229, i32 0, i64 %242)
  %244 = load %struct.kernel_long_ad*, %struct.kernel_long_ad** %10, align 8
  %245 = getelementptr inbounds %struct.kernel_long_ad, %struct.kernel_long_ad* %244, i32 0, i32 1
  %246 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %245, i32 0, i32 0
  store i64 0, i64* %246, align 8
  %247 = load %struct.kernel_long_ad*, %struct.kernel_long_ad** %10, align 8
  %248 = getelementptr inbounds %struct.kernel_long_ad, %struct.kernel_long_ad* %247, i32 0, i32 1
  %249 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %248, i32 0, i32 1
  store i64 0, i64* %249, align 8
  %250 = load %struct.kernel_long_ad*, %struct.kernel_long_ad** %10, align 8
  %251 = getelementptr inbounds %struct.kernel_long_ad, %struct.kernel_long_ad* %250, i32 0, i32 0
  %252 = load i32, i32* %251, align 8
  %253 = sext i32 %252 to i64
  %254 = load i64, i64* @UDF_EXTENT_LENGTH_MASK, align 8
  %255 = and i64 %253, %254
  %256 = load %struct.kernel_long_ad*, %struct.kernel_long_ad** %11, align 8
  %257 = getelementptr inbounds %struct.kernel_long_ad, %struct.kernel_long_ad* %256, i32 0, i32 0
  %258 = load i32, i32* %257, align 8
  %259 = sext i32 %258 to i64
  %260 = load i64, i64* @UDF_EXTENT_LENGTH_MASK, align 8
  %261 = and i64 %259, %260
  %262 = add i64 %255, %261
  %263 = load i64, i64* %8, align 8
  %264 = add i64 %262, %263
  %265 = sub i64 %264, 1
  %266 = load i64, i64* @UDF_EXTENT_LENGTH_MASK, align 8
  %267 = xor i64 %266, -1
  %268 = and i64 %265, %267
  %269 = icmp ne i64 %268, 0
  br i1 %269, label %270, label %305

270:                                              ; preds = %223
  %271 = load %struct.kernel_long_ad*, %struct.kernel_long_ad** %11, align 8
  %272 = getelementptr inbounds %struct.kernel_long_ad, %struct.kernel_long_ad* %271, i32 0, i32 0
  %273 = load i32, i32* %272, align 8
  %274 = sext i32 %273 to i64
  %275 = load %struct.kernel_long_ad*, %struct.kernel_long_ad** %10, align 8
  %276 = getelementptr inbounds %struct.kernel_long_ad, %struct.kernel_long_ad* %275, i32 0, i32 0
  %277 = load i32, i32* %276, align 8
  %278 = sext i32 %277 to i64
  %279 = load i64, i64* @UDF_EXTENT_LENGTH_MASK, align 8
  %280 = and i64 %278, %279
  %281 = sub i64 %274, %280
  %282 = load i64, i64* @UDF_EXTENT_LENGTH_MASK, align 8
  %283 = add i64 %281, %282
  %284 = load i64, i64* %8, align 8
  %285 = sub i64 %284, 1
  %286 = xor i64 %285, -1
  %287 = and i64 %283, %286
  %288 = trunc i64 %287 to i32
  %289 = load %struct.kernel_long_ad*, %struct.kernel_long_ad** %11, align 8
  %290 = getelementptr inbounds %struct.kernel_long_ad, %struct.kernel_long_ad* %289, i32 0, i32 0
  store i32 %288, i32* %290, align 8
  %291 = load %struct.kernel_long_ad*, %struct.kernel_long_ad** %10, align 8
  %292 = getelementptr inbounds %struct.kernel_long_ad, %struct.kernel_long_ad* %291, i32 0, i32 0
  %293 = load i32, i32* %292, align 8
  %294 = sext i32 %293 to i64
  %295 = load i64, i64* @UDF_EXTENT_FLAG_MASK, align 8
  %296 = and i64 %294, %295
  %297 = load i64, i64* @UDF_EXTENT_LENGTH_MASK, align 8
  %298 = add i64 %297, 1
  %299 = add i64 %296, %298
  %300 = load i64, i64* %8, align 8
  %301 = sub i64 %299, %300
  %302 = trunc i64 %301 to i32
  %303 = load %struct.kernel_long_ad*, %struct.kernel_long_ad** %10, align 8
  %304 = getelementptr inbounds %struct.kernel_long_ad, %struct.kernel_long_ad* %303, i32 0, i32 0
  store i32 %302, i32* %304, align 8
  br label %358

305:                                              ; preds = %223
  %306 = load %struct.kernel_long_ad*, %struct.kernel_long_ad** %11, align 8
  %307 = getelementptr inbounds %struct.kernel_long_ad, %struct.kernel_long_ad* %306, i32 0, i32 0
  %308 = load i32, i32* %307, align 8
  %309 = sext i32 %308 to i64
  %310 = load %struct.kernel_long_ad*, %struct.kernel_long_ad** %10, align 8
  %311 = getelementptr inbounds %struct.kernel_long_ad, %struct.kernel_long_ad* %310, i32 0, i32 0
  %312 = load i32, i32* %311, align 8
  %313 = sext i32 %312 to i64
  %314 = load i64, i64* @UDF_EXTENT_LENGTH_MASK, align 8
  %315 = and i64 %313, %314
  %316 = load i64, i64* %8, align 8
  %317 = add i64 %315, %316
  %318 = sub i64 %317, 1
  %319 = load i64, i64* %8, align 8
  %320 = sub i64 %319, 1
  %321 = xor i64 %320, -1
  %322 = and i64 %318, %321
  %323 = add i64 %309, %322
  %324 = trunc i64 %323 to i32
  %325 = load %struct.kernel_long_ad*, %struct.kernel_long_ad** %10, align 8
  %326 = getelementptr inbounds %struct.kernel_long_ad, %struct.kernel_long_ad* %325, i32 0, i32 0
  store i32 %324, i32* %326, align 8
  %327 = load i32*, i32** %6, align 8
  %328 = load i32, i32* %327, align 4
  %329 = load i32, i32* %7, align 4
  %330 = add nsw i32 %329, 2
  %331 = icmp sgt i32 %328, %330
  br i1 %331, label %332, label %352

332:                                              ; preds = %305
  %333 = load %struct.kernel_long_ad*, %struct.kernel_long_ad** %5, align 8
  %334 = load i32, i32* %7, align 4
  %335 = add nsw i32 %334, 1
  %336 = sext i32 %335 to i64
  %337 = getelementptr inbounds %struct.kernel_long_ad, %struct.kernel_long_ad* %333, i64 %336
  %338 = load %struct.kernel_long_ad*, %struct.kernel_long_ad** %5, align 8
  %339 = load i32, i32* %7, align 4
  %340 = add nsw i32 %339, 2
  %341 = sext i32 %340 to i64
  %342 = getelementptr inbounds %struct.kernel_long_ad, %struct.kernel_long_ad* %338, i64 %341
  %343 = load i32*, i32** %6, align 8
  %344 = load i32, i32* %343, align 4
  %345 = load i32, i32* %7, align 4
  %346 = add nsw i32 %345, 2
  %347 = sub nsw i32 %344, %346
  %348 = sext i32 %347 to i64
  %349 = mul i64 4, %348
  %350 = trunc i64 %349 to i32
  %351 = call i32 @memmove(%struct.kernel_long_ad* %337, %struct.kernel_long_ad* %342, i32 %350)
  br label %352

352:                                              ; preds = %332, %305
  %353 = load i32, i32* %7, align 4
  %354 = add nsw i32 %353, -1
  store i32 %354, i32* %7, align 4
  %355 = load i32*, i32** %6, align 8
  %356 = load i32, i32* %355, align 4
  %357 = add nsw i32 %356, -1
  store i32 %357, i32* %355, align 4
  br label %358

358:                                              ; preds = %352, %270
  br label %407

359:                                              ; preds = %215, %207
  %360 = load %struct.kernel_long_ad*, %struct.kernel_long_ad** %10, align 8
  %361 = getelementptr inbounds %struct.kernel_long_ad, %struct.kernel_long_ad* %360, i32 0, i32 0
  %362 = load i32, i32* %361, align 8
  %363 = ashr i32 %362, 30
  %364 = load i32, i32* @EXT_NOT_RECORDED_ALLOCATED, align 4
  %365 = ashr i32 %364, 30
  %366 = icmp eq i32 %363, %365
  br i1 %366, label %367, label %406

367:                                              ; preds = %359
  %368 = load %struct.inode*, %struct.inode** %4, align 8
  %369 = getelementptr inbounds %struct.inode, %struct.inode* %368, i32 0, i32 0
  %370 = load %struct.TYPE_3__*, %struct.TYPE_3__** %369, align 8
  %371 = load %struct.inode*, %struct.inode** %4, align 8
  %372 = load %struct.kernel_long_ad*, %struct.kernel_long_ad** %10, align 8
  %373 = getelementptr inbounds %struct.kernel_long_ad, %struct.kernel_long_ad* %372, i32 0, i32 1
  %374 = load %struct.kernel_long_ad*, %struct.kernel_long_ad** %10, align 8
  %375 = getelementptr inbounds %struct.kernel_long_ad, %struct.kernel_long_ad* %374, i32 0, i32 0
  %376 = load i32, i32* %375, align 8
  %377 = sext i32 %376 to i64
  %378 = load i64, i64* @UDF_EXTENT_LENGTH_MASK, align 8
  %379 = and i64 %377, %378
  %380 = load i64, i64* %8, align 8
  %381 = add i64 %379, %380
  %382 = sub i64 %381, 1
  %383 = load i8, i8* %9, align 1
  %384 = zext i8 %383 to i32
  %385 = zext i32 %384 to i64
  %386 = lshr i64 %382, %385
  %387 = call i32 @udf_free_blocks(%struct.TYPE_3__* %370, %struct.inode* %371, %struct.TYPE_4__* %373, i32 0, i64 %386)
  %388 = load %struct.kernel_long_ad*, %struct.kernel_long_ad** %10, align 8
  %389 = getelementptr inbounds %struct.kernel_long_ad, %struct.kernel_long_ad* %388, i32 0, i32 1
  %390 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %389, i32 0, i32 0
  store i64 0, i64* %390, align 8
  %391 = load %struct.kernel_long_ad*, %struct.kernel_long_ad** %10, align 8
  %392 = getelementptr inbounds %struct.kernel_long_ad, %struct.kernel_long_ad* %391, i32 0, i32 1
  %393 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %392, i32 0, i32 1
  store i64 0, i64* %393, align 8
  %394 = load %struct.kernel_long_ad*, %struct.kernel_long_ad** %10, align 8
  %395 = getelementptr inbounds %struct.kernel_long_ad, %struct.kernel_long_ad* %394, i32 0, i32 0
  %396 = load i32, i32* %395, align 8
  %397 = sext i32 %396 to i64
  %398 = load i64, i64* @UDF_EXTENT_LENGTH_MASK, align 8
  %399 = and i64 %397, %398
  %400 = load i32, i32* @EXT_NOT_RECORDED_NOT_ALLOCATED, align 4
  %401 = sext i32 %400 to i64
  %402 = or i64 %399, %401
  %403 = trunc i64 %402 to i32
  %404 = load %struct.kernel_long_ad*, %struct.kernel_long_ad** %10, align 8
  %405 = getelementptr inbounds %struct.kernel_long_ad, %struct.kernel_long_ad* %404, i32 0, i32 0
  store i32 %403, i32* %405, align 8
  br label %406

406:                                              ; preds = %367, %359
  br label %407

407:                                              ; preds = %406, %358
  br label %408

408:                                              ; preds = %407, %206
  br label %409

409:                                              ; preds = %408
  %410 = load i32, i32* %7, align 4
  %411 = add nsw i32 %410, 1
  store i32 %411, i32* %7, align 4
  br label %22

412:                                              ; preds = %22
  ret void
}

declare dso_local i32 @memmove(%struct.kernel_long_ad*, %struct.kernel_long_ad*, i32) #1

declare dso_local i32 @udf_free_blocks(%struct.TYPE_3__*, %struct.inode*, %struct.TYPE_4__*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
