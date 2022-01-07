; ModuleID = '/home/carl/AnghaBench/linux/fs/udf/extr_inode.c_udf_split_extents.c'
source_filename = "/home/carl/AnghaBench/linux/fs/udf/extr_inode.c_udf_split_extents.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i64, i8 }
%struct.kernel_long_ad = type { i32, %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i64, i64 }
%struct.TYPE_8__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i64 }

@EXT_NOT_RECORDED_ALLOCATED = common dso_local global i32 0, align 4
@EXT_NOT_RECORDED_NOT_ALLOCATED = common dso_local global i32 0, align 4
@UDF_EXTENT_LENGTH_MASK = common dso_local global i64 0, align 8
@EXT_RECORDED_ALLOCATED = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.inode*, i32*, i32, i64, %struct.kernel_long_ad*, i32*)* @udf_split_extents to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @udf_split_extents(%struct.inode* %0, i32* %1, i32 %2, i64 %3, %struct.kernel_long_ad* %4, i32* %5) #0 {
  %7 = alloca %struct.inode*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca %struct.kernel_long_ad*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i8, align 1
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %7, align 8
  store i32* %1, i32** %8, align 8
  store i32 %2, i32* %9, align 4
  store i64 %3, i64* %10, align 8
  store %struct.kernel_long_ad* %4, %struct.kernel_long_ad** %11, align 8
  store i32* %5, i32** %12, align 8
  %18 = load %struct.inode*, %struct.inode** %7, align 8
  %19 = getelementptr inbounds %struct.inode, %struct.inode* %18, i32 0, i32 0
  %20 = load %struct.TYPE_6__*, %struct.TYPE_6__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  store i64 %22, i64* %13, align 8
  %23 = load %struct.inode*, %struct.inode** %7, align 8
  %24 = getelementptr inbounds %struct.inode, %struct.inode* %23, i32 0, i32 0
  %25 = load %struct.TYPE_6__*, %struct.TYPE_6__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i32 0, i32 1
  %27 = load i8, i8* %26, align 8
  store i8 %27, i8* %14, align 1
  %28 = load %struct.kernel_long_ad*, %struct.kernel_long_ad** %11, align 8
  %29 = load i32*, i32** %8, align 8
  %30 = load i32, i32* %29, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds %struct.kernel_long_ad, %struct.kernel_long_ad* %28, i64 %31
  %33 = getelementptr inbounds %struct.kernel_long_ad, %struct.kernel_long_ad* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = ashr i32 %34, 30
  %36 = load i32, i32* @EXT_NOT_RECORDED_ALLOCATED, align 4
  %37 = ashr i32 %36, 30
  %38 = icmp eq i32 %35, %37
  br i1 %38, label %51, label %39

39:                                               ; preds = %6
  %40 = load %struct.kernel_long_ad*, %struct.kernel_long_ad** %11, align 8
  %41 = load i32*, i32** %8, align 8
  %42 = load i32, i32* %41, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds %struct.kernel_long_ad, %struct.kernel_long_ad* %40, i64 %43
  %45 = getelementptr inbounds %struct.kernel_long_ad, %struct.kernel_long_ad* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = ashr i32 %46, 30
  %48 = load i32, i32* @EXT_NOT_RECORDED_NOT_ALLOCATED, align 4
  %49 = ashr i32 %48, 30
  %50 = icmp eq i32 %47, %49
  br i1 %50, label %51, label %289

51:                                               ; preds = %39, %6
  %52 = load i32*, i32** %8, align 8
  %53 = load i32, i32* %52, align 4
  store i32 %53, i32* %15, align 4
  %54 = load %struct.kernel_long_ad*, %struct.kernel_long_ad** %11, align 8
  %55 = load i32, i32* %15, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds %struct.kernel_long_ad, %struct.kernel_long_ad* %54, i64 %56
  %58 = getelementptr inbounds %struct.kernel_long_ad, %struct.kernel_long_ad* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = sext i32 %59 to i64
  %61 = load i64, i64* @UDF_EXTENT_LENGTH_MASK, align 8
  %62 = and i64 %60, %61
  %63 = load i64, i64* %13, align 8
  %64 = add i64 %62, %63
  %65 = sub i64 %64, 1
  %66 = load i8, i8* %14, align 1
  %67 = zext i8 %66 to i32
  %68 = zext i32 %67 to i64
  %69 = lshr i64 %65, %68
  %70 = trunc i64 %69 to i32
  store i32 %70, i32* %16, align 4
  %71 = load %struct.kernel_long_ad*, %struct.kernel_long_ad** %11, align 8
  %72 = load i32, i32* %15, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds %struct.kernel_long_ad, %struct.kernel_long_ad* %71, i64 %73
  %75 = getelementptr inbounds %struct.kernel_long_ad, %struct.kernel_long_ad* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  %77 = ashr i32 %76, 30
  store i32 %77, i32* %17, align 4
  %78 = load i32, i32* %16, align 4
  %79 = icmp eq i32 %78, 1
  br i1 %79, label %80, label %81

80:                                               ; preds = %51
  br label %145

81:                                               ; preds = %51
  %82 = load i32, i32* %9, align 4
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %89

84:                                               ; preds = %81
  %85 = load i32, i32* %16, align 4
  %86 = load i32, i32* %9, align 4
  %87 = add nsw i32 %86, 1
  %88 = icmp eq i32 %85, %87
  br i1 %88, label %89, label %113

89:                                               ; preds = %84, %81
  %90 = load %struct.kernel_long_ad*, %struct.kernel_long_ad** %11, align 8
  %91 = load i32, i32* %15, align 4
  %92 = add nsw i32 %91, 2
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds %struct.kernel_long_ad, %struct.kernel_long_ad* %90, i64 %93
  %95 = load %struct.kernel_long_ad*, %struct.kernel_long_ad** %11, align 8
  %96 = load i32, i32* %15, align 4
  %97 = add nsw i32 %96, 1
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds %struct.kernel_long_ad, %struct.kernel_long_ad* %95, i64 %98
  %100 = bitcast %struct.kernel_long_ad* %94 to i8*
  %101 = bitcast %struct.kernel_long_ad* %99 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %100, i8* align 8 %101, i64 24, i1 false)
  %102 = load %struct.kernel_long_ad*, %struct.kernel_long_ad** %11, align 8
  %103 = load i32, i32* %15, align 4
  %104 = add nsw i32 %103, 1
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds %struct.kernel_long_ad, %struct.kernel_long_ad* %102, i64 %105
  %107 = load %struct.kernel_long_ad*, %struct.kernel_long_ad** %11, align 8
  %108 = load i32, i32* %15, align 4
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds %struct.kernel_long_ad, %struct.kernel_long_ad* %107, i64 %109
  %111 = bitcast %struct.kernel_long_ad* %106 to i8*
  %112 = bitcast %struct.kernel_long_ad* %110 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %111, i8* align 8 %112, i64 24, i1 false)
  br label %144

113:                                              ; preds = %84
  %114 = load %struct.kernel_long_ad*, %struct.kernel_long_ad** %11, align 8
  %115 = load i32, i32* %15, align 4
  %116 = add nsw i32 %115, 3
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds %struct.kernel_long_ad, %struct.kernel_long_ad* %114, i64 %117
  %119 = load %struct.kernel_long_ad*, %struct.kernel_long_ad** %11, align 8
  %120 = load i32, i32* %15, align 4
  %121 = add nsw i32 %120, 1
  %122 = sext i32 %121 to i64
  %123 = getelementptr inbounds %struct.kernel_long_ad, %struct.kernel_long_ad* %119, i64 %122
  %124 = bitcast %struct.kernel_long_ad* %118 to i8*
  %125 = bitcast %struct.kernel_long_ad* %123 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %124, i8* align 8 %125, i64 24, i1 false)
  %126 = load %struct.kernel_long_ad*, %struct.kernel_long_ad** %11, align 8
  %127 = load i32, i32* %15, align 4
  %128 = add nsw i32 %127, 2
  %129 = sext i32 %128 to i64
  %130 = getelementptr inbounds %struct.kernel_long_ad, %struct.kernel_long_ad* %126, i64 %129
  %131 = load %struct.kernel_long_ad*, %struct.kernel_long_ad** %11, align 8
  %132 = load i32, i32* %15, align 4
  %133 = add nsw i32 %132, 1
  %134 = sext i32 %133 to i64
  %135 = getelementptr inbounds %struct.kernel_long_ad, %struct.kernel_long_ad* %131, i64 %134
  %136 = load %struct.kernel_long_ad*, %struct.kernel_long_ad** %11, align 8
  %137 = load i32, i32* %15, align 4
  %138 = sext i32 %137 to i64
  %139 = getelementptr inbounds %struct.kernel_long_ad, %struct.kernel_long_ad* %136, i64 %138
  %140 = bitcast %struct.kernel_long_ad* %135 to i8*
  %141 = bitcast %struct.kernel_long_ad* %139 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %140, i8* align 8 %141, i64 24, i1 false)
  %142 = bitcast %struct.kernel_long_ad* %130 to i8*
  %143 = bitcast %struct.kernel_long_ad* %135 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %142, i8* align 8 %143, i64 24, i1 false)
  br label %144

144:                                              ; preds = %113, %89
  br label %145

145:                                              ; preds = %144, %80
  %146 = load i32, i32* %9, align 4
  %147 = icmp ne i32 %146, 0
  br i1 %147, label %148, label %210

148:                                              ; preds = %145
  %149 = load i32, i32* %17, align 4
  %150 = load i32, i32* @EXT_NOT_RECORDED_ALLOCATED, align 4
  %151 = ashr i32 %150, 30
  %152 = icmp eq i32 %149, %151
  br i1 %152, label %153, label %188

153:                                              ; preds = %148
  %154 = load %struct.inode*, %struct.inode** %7, align 8
  %155 = getelementptr inbounds %struct.inode, %struct.inode* %154, i32 0, i32 0
  %156 = load %struct.TYPE_6__*, %struct.TYPE_6__** %155, align 8
  %157 = load %struct.inode*, %struct.inode** %7, align 8
  %158 = load %struct.kernel_long_ad*, %struct.kernel_long_ad** %11, align 8
  %159 = load i32, i32* %15, align 4
  %160 = sext i32 %159 to i64
  %161 = getelementptr inbounds %struct.kernel_long_ad, %struct.kernel_long_ad* %158, i64 %160
  %162 = getelementptr inbounds %struct.kernel_long_ad, %struct.kernel_long_ad* %161, i32 0, i32 1
  %163 = load i32, i32* %9, align 4
  %164 = call i32 @udf_free_blocks(%struct.TYPE_6__* %156, %struct.inode* %157, %struct.TYPE_7__* %162, i32 0, i32 %163)
  %165 = load i32, i32* @EXT_NOT_RECORDED_NOT_ALLOCATED, align 4
  %166 = load i32, i32* %9, align 4
  %167 = load i8, i8* %14, align 1
  %168 = zext i8 %167 to i32
  %169 = shl i32 %166, %168
  %170 = or i32 %165, %169
  %171 = load %struct.kernel_long_ad*, %struct.kernel_long_ad** %11, align 8
  %172 = load i32, i32* %15, align 4
  %173 = sext i32 %172 to i64
  %174 = getelementptr inbounds %struct.kernel_long_ad, %struct.kernel_long_ad* %171, i64 %173
  %175 = getelementptr inbounds %struct.kernel_long_ad, %struct.kernel_long_ad* %174, i32 0, i32 0
  store i32 %170, i32* %175, align 8
  %176 = load %struct.kernel_long_ad*, %struct.kernel_long_ad** %11, align 8
  %177 = load i32, i32* %15, align 4
  %178 = sext i32 %177 to i64
  %179 = getelementptr inbounds %struct.kernel_long_ad, %struct.kernel_long_ad* %176, i64 %178
  %180 = getelementptr inbounds %struct.kernel_long_ad, %struct.kernel_long_ad* %179, i32 0, i32 1
  %181 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %180, i32 0, i32 0
  store i64 0, i64* %181, align 8
  %182 = load %struct.kernel_long_ad*, %struct.kernel_long_ad** %11, align 8
  %183 = load i32, i32* %15, align 4
  %184 = sext i32 %183 to i64
  %185 = getelementptr inbounds %struct.kernel_long_ad, %struct.kernel_long_ad* %182, i64 %184
  %186 = getelementptr inbounds %struct.kernel_long_ad, %struct.kernel_long_ad* %185, i32 0, i32 1
  %187 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %186, i32 0, i32 1
  store i64 0, i64* %187, align 8
  br label %201

188:                                              ; preds = %148
  %189 = load i32, i32* %17, align 4
  %190 = shl i32 %189, 30
  %191 = load i32, i32* %9, align 4
  %192 = load i8, i8* %14, align 1
  %193 = zext i8 %192 to i32
  %194 = shl i32 %191, %193
  %195 = or i32 %190, %194
  %196 = load %struct.kernel_long_ad*, %struct.kernel_long_ad** %11, align 8
  %197 = load i32, i32* %15, align 4
  %198 = sext i32 %197 to i64
  %199 = getelementptr inbounds %struct.kernel_long_ad, %struct.kernel_long_ad* %196, i64 %198
  %200 = getelementptr inbounds %struct.kernel_long_ad, %struct.kernel_long_ad* %199, i32 0, i32 0
  store i32 %195, i32* %200, align 8
  br label %201

201:                                              ; preds = %188, %153
  %202 = load i32, i32* %15, align 4
  %203 = add nsw i32 %202, 1
  store i32 %203, i32* %15, align 4
  %204 = load i32*, i32** %8, align 8
  %205 = load i32, i32* %204, align 4
  %206 = add nsw i32 %205, 1
  store i32 %206, i32* %204, align 4
  %207 = load i32*, i32** %12, align 8
  %208 = load i32, i32* %207, align 4
  %209 = add nsw i32 %208, 1
  store i32 %209, i32* %207, align 4
  br label %210

210:                                              ; preds = %201, %145
  %211 = load i64, i64* %10, align 8
  %212 = load %struct.kernel_long_ad*, %struct.kernel_long_ad** %11, align 8
  %213 = load i32, i32* %15, align 4
  %214 = sext i32 %213 to i64
  %215 = getelementptr inbounds %struct.kernel_long_ad, %struct.kernel_long_ad* %212, i64 %214
  %216 = getelementptr inbounds %struct.kernel_long_ad, %struct.kernel_long_ad* %215, i32 0, i32 1
  %217 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %216, i32 0, i32 0
  store i64 %211, i64* %217, align 8
  %218 = load i32, i32* %17, align 4
  %219 = load i32, i32* @EXT_NOT_RECORDED_NOT_ALLOCATED, align 4
  %220 = ashr i32 %219, 30
  %221 = icmp eq i32 %218, %220
  br i1 %221, label %222, label %234

222:                                              ; preds = %210
  %223 = load %struct.inode*, %struct.inode** %7, align 8
  %224 = call %struct.TYPE_8__* @UDF_I(%struct.inode* %223)
  %225 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %224, i32 0, i32 0
  %226 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %225, i32 0, i32 0
  %227 = load i64, i64* %226, align 8
  %228 = load %struct.kernel_long_ad*, %struct.kernel_long_ad** %11, align 8
  %229 = load i32, i32* %15, align 4
  %230 = sext i32 %229 to i64
  %231 = getelementptr inbounds %struct.kernel_long_ad, %struct.kernel_long_ad* %228, i64 %230
  %232 = getelementptr inbounds %struct.kernel_long_ad, %struct.kernel_long_ad* %231, i32 0, i32 1
  %233 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %232, i32 0, i32 1
  store i64 %227, i64* %233, align 8
  br label %234

234:                                              ; preds = %222, %210
  %235 = load i64, i64* @EXT_RECORDED_ALLOCATED, align 8
  %236 = load i64, i64* %13, align 8
  %237 = or i64 %235, %236
  %238 = trunc i64 %237 to i32
  %239 = load %struct.kernel_long_ad*, %struct.kernel_long_ad** %11, align 8
  %240 = load i32, i32* %15, align 4
  %241 = sext i32 %240 to i64
  %242 = getelementptr inbounds %struct.kernel_long_ad, %struct.kernel_long_ad* %239, i64 %241
  %243 = getelementptr inbounds %struct.kernel_long_ad, %struct.kernel_long_ad* %242, i32 0, i32 0
  store i32 %238, i32* %243, align 8
  %244 = load i32, i32* %15, align 4
  %245 = add nsw i32 %244, 1
  store i32 %245, i32* %15, align 4
  %246 = load i32, i32* %16, align 4
  %247 = load i32, i32* %9, align 4
  %248 = add nsw i32 %247, 1
  %249 = icmp ne i32 %246, %248
  br i1 %249, label %250, label %288

250:                                              ; preds = %234
  %251 = load i32, i32* %17, align 4
  %252 = load i32, i32* @EXT_NOT_RECORDED_ALLOCATED, align 4
  %253 = ashr i32 %252, 30
  %254 = icmp eq i32 %251, %253
  br i1 %254, label %255, label %267

255:                                              ; preds = %250
  %256 = load i32, i32* %9, align 4
  %257 = add nsw i32 %256, 1
  %258 = sext i32 %257 to i64
  %259 = load %struct.kernel_long_ad*, %struct.kernel_long_ad** %11, align 8
  %260 = load i32, i32* %15, align 4
  %261 = sext i32 %260 to i64
  %262 = getelementptr inbounds %struct.kernel_long_ad, %struct.kernel_long_ad* %259, i64 %261
  %263 = getelementptr inbounds %struct.kernel_long_ad, %struct.kernel_long_ad* %262, i32 0, i32 1
  %264 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %263, i32 0, i32 0
  %265 = load i64, i64* %264, align 8
  %266 = add nsw i64 %265, %258
  store i64 %266, i64* %264, align 8
  br label %267

267:                                              ; preds = %255, %250
  %268 = load i32, i32* %17, align 4
  %269 = shl i32 %268, 30
  %270 = load i32, i32* %16, align 4
  %271 = load i32, i32* %9, align 4
  %272 = add nsw i32 %271, 1
  %273 = sub nsw i32 %270, %272
  %274 = load i8, i8* %14, align 1
  %275 = zext i8 %274 to i32
  %276 = shl i32 %273, %275
  %277 = or i32 %269, %276
  %278 = load %struct.kernel_long_ad*, %struct.kernel_long_ad** %11, align 8
  %279 = load i32, i32* %15, align 4
  %280 = sext i32 %279 to i64
  %281 = getelementptr inbounds %struct.kernel_long_ad, %struct.kernel_long_ad* %278, i64 %280
  %282 = getelementptr inbounds %struct.kernel_long_ad, %struct.kernel_long_ad* %281, i32 0, i32 0
  store i32 %277, i32* %282, align 8
  %283 = load i32, i32* %15, align 4
  %284 = add nsw i32 %283, 1
  store i32 %284, i32* %15, align 4
  %285 = load i32*, i32** %12, align 8
  %286 = load i32, i32* %285, align 4
  %287 = add nsw i32 %286, 1
  store i32 %287, i32* %285, align 4
  br label %288

288:                                              ; preds = %267, %234
  br label %289

289:                                              ; preds = %288, %39
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @udf_free_blocks(%struct.TYPE_6__*, %struct.inode*, %struct.TYPE_7__*, i32, i32) #2

declare dso_local %struct.TYPE_8__* @UDF_I(%struct.inode*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
