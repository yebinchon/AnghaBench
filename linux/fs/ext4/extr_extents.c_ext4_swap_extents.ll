; ModuleID = '/home/carl/AnghaBench/linux/fs/ext4/extr_extents.c_ext4_swap_extents.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ext4/extr_extents.c_ext4_swap_extents.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.ext4_ext_path = type { i64, %struct.ext4_extent* }
%struct.ext4_extent = type { i8*, i32 }
%struct.TYPE_2__ = type { i32 }

@EXT4_EX_NOCACHE = common dso_local global i32 0, align 4
@EXT_MAX_BLOCKS = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ext4_swap_extents(i32* %0, %struct.inode* %1, %struct.inode* %2, i64 %3, i64 %4, i64 %5, i32 %6, i32* %7) #0 {
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca %struct.inode*, align 8
  %12 = alloca %struct.inode*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32*, align 8
  %18 = alloca %struct.ext4_ext_path*, align 8
  %19 = alloca %struct.ext4_ext_path*, align 8
  %20 = alloca i32, align 4
  %21 = alloca %struct.ext4_extent*, align 8
  %22 = alloca %struct.ext4_extent*, align 8
  %23 = alloca %struct.ext4_extent, align 8
  %24 = alloca i64, align 8
  %25 = alloca i64, align 8
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  %29 = alloca i32, align 4
  %30 = alloca i64, align 8
  %31 = alloca i64, align 8
  store i32* %0, i32** %10, align 8
  store %struct.inode* %1, %struct.inode** %11, align 8
  store %struct.inode* %2, %struct.inode** %12, align 8
  store i64 %3, i64* %13, align 8
  store i64 %4, i64* %14, align 8
  store i64 %5, i64* %15, align 8
  store i32 %6, i32* %16, align 4
  store i32* %7, i32** %17, align 8
  store %struct.ext4_ext_path* null, %struct.ext4_ext_path** %18, align 8
  store %struct.ext4_ext_path* null, %struct.ext4_ext_path** %19, align 8
  store i32 0, i32* %20, align 4
  %32 = load %struct.inode*, %struct.inode** %11, align 8
  %33 = call %struct.TYPE_2__* @EXT4_I(%struct.inode* %32)
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 0
  %35 = call i32 @rwsem_is_locked(i32* %34)
  %36 = icmp ne i32 %35, 0
  %37 = xor i1 %36, true
  %38 = zext i1 %37 to i32
  %39 = call i32 @BUG_ON(i32 %38)
  %40 = load %struct.inode*, %struct.inode** %12, align 8
  %41 = call %struct.TYPE_2__* @EXT4_I(%struct.inode* %40)
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 0
  %43 = call i32 @rwsem_is_locked(i32* %42)
  %44 = icmp ne i32 %43, 0
  %45 = xor i1 %44, true
  %46 = zext i1 %45 to i32
  %47 = call i32 @BUG_ON(i32 %46)
  %48 = load %struct.inode*, %struct.inode** %11, align 8
  %49 = call i32 @inode_is_locked(%struct.inode* %48)
  %50 = icmp ne i32 %49, 0
  %51 = xor i1 %50, true
  %52 = zext i1 %51 to i32
  %53 = call i32 @BUG_ON(i32 %52)
  %54 = load %struct.inode*, %struct.inode** %12, align 8
  %55 = call i32 @inode_is_locked(%struct.inode* %54)
  %56 = icmp ne i32 %55, 0
  %57 = xor i1 %56, true
  %58 = zext i1 %57 to i32
  %59 = call i32 @BUG_ON(i32 %58)
  %60 = load %struct.inode*, %struct.inode** %11, align 8
  %61 = load i64, i64* %13, align 8
  %62 = load i64, i64* %15, align 8
  %63 = call i32 @ext4_es_remove_extent(%struct.inode* %60, i64 %61, i64 %62)
  %64 = load i32*, i32** %17, align 8
  store i32 %63, i32* %64, align 4
  %65 = load i32*, i32** %17, align 8
  %66 = load i32, i32* %65, align 4
  %67 = call i64 @unlikely(i32 %66)
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %70

69:                                               ; preds = %8
  store i32 0, i32* %9, align 4
  br label %470

70:                                               ; preds = %8
  %71 = load %struct.inode*, %struct.inode** %12, align 8
  %72 = load i64, i64* %14, align 8
  %73 = load i64, i64* %15, align 8
  %74 = call i32 @ext4_es_remove_extent(%struct.inode* %71, i64 %72, i64 %73)
  %75 = load i32*, i32** %17, align 8
  store i32 %74, i32* %75, align 4
  %76 = load i32*, i32** %17, align 8
  %77 = load i32, i32* %76, align 4
  %78 = call i64 @unlikely(i32 %77)
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %81

80:                                               ; preds = %70
  store i32 0, i32* %9, align 4
  br label %470

81:                                               ; preds = %70
  br label %82

82:                                               ; preds = %459, %81
  %83 = load i64, i64* %15, align 8
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %468

85:                                               ; preds = %82
  store i32 0, i32* %29, align 4
  %86 = load %struct.inode*, %struct.inode** %11, align 8
  %87 = load i64, i64* %13, align 8
  %88 = load i32, i32* @EXT4_EX_NOCACHE, align 4
  %89 = call %struct.ext4_ext_path* @ext4_find_extent(%struct.inode* %86, i64 %87, i32* null, i32 %88)
  store %struct.ext4_ext_path* %89, %struct.ext4_ext_path** %18, align 8
  %90 = load %struct.ext4_ext_path*, %struct.ext4_ext_path** %18, align 8
  %91 = call i64 @IS_ERR(%struct.ext4_ext_path* %90)
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %93, label %98

93:                                               ; preds = %85
  %94 = load %struct.ext4_ext_path*, %struct.ext4_ext_path** %18, align 8
  %95 = call i32 @PTR_ERR(%struct.ext4_ext_path* %94)
  %96 = load i32*, i32** %17, align 8
  store i32 %95, i32* %96, align 4
  store %struct.ext4_ext_path* null, %struct.ext4_ext_path** %18, align 8
  br label %97

97:                                               ; preds = %442, %427, %372, %357, %332, %314, %253, %237, %185, %136, %106, %93
  store i64 0, i64* %15, align 8
  br label %459

98:                                               ; preds = %85
  %99 = load %struct.inode*, %struct.inode** %12, align 8
  %100 = load i64, i64* %14, align 8
  %101 = load i32, i32* @EXT4_EX_NOCACHE, align 4
  %102 = call %struct.ext4_ext_path* @ext4_find_extent(%struct.inode* %99, i64 %100, i32* null, i32 %101)
  store %struct.ext4_ext_path* %102, %struct.ext4_ext_path** %19, align 8
  %103 = load %struct.ext4_ext_path*, %struct.ext4_ext_path** %19, align 8
  %104 = call i64 @IS_ERR(%struct.ext4_ext_path* %103)
  %105 = icmp ne i64 %104, 0
  br i1 %105, label %106, label %110

106:                                              ; preds = %98
  %107 = load %struct.ext4_ext_path*, %struct.ext4_ext_path** %19, align 8
  %108 = call i32 @PTR_ERR(%struct.ext4_ext_path* %107)
  %109 = load i32*, i32** %17, align 8
  store i32 %108, i32* %109, align 4
  store %struct.ext4_ext_path* null, %struct.ext4_ext_path** %19, align 8
  br label %97

110:                                              ; preds = %98
  %111 = load %struct.ext4_ext_path*, %struct.ext4_ext_path** %18, align 8
  %112 = load %struct.ext4_ext_path*, %struct.ext4_ext_path** %18, align 8
  %113 = getelementptr inbounds %struct.ext4_ext_path, %struct.ext4_ext_path* %112, i32 0, i32 0
  %114 = load i64, i64* %113, align 8
  %115 = getelementptr inbounds %struct.ext4_ext_path, %struct.ext4_ext_path* %111, i64 %114
  %116 = getelementptr inbounds %struct.ext4_ext_path, %struct.ext4_ext_path* %115, i32 0, i32 1
  %117 = load %struct.ext4_extent*, %struct.ext4_extent** %116, align 8
  store %struct.ext4_extent* %117, %struct.ext4_extent** %21, align 8
  %118 = load %struct.ext4_ext_path*, %struct.ext4_ext_path** %19, align 8
  %119 = load %struct.ext4_ext_path*, %struct.ext4_ext_path** %19, align 8
  %120 = getelementptr inbounds %struct.ext4_ext_path, %struct.ext4_ext_path* %119, i32 0, i32 0
  %121 = load i64, i64* %120, align 8
  %122 = getelementptr inbounds %struct.ext4_ext_path, %struct.ext4_ext_path* %118, i64 %121
  %123 = getelementptr inbounds %struct.ext4_ext_path, %struct.ext4_ext_path* %122, i32 0, i32 1
  %124 = load %struct.ext4_extent*, %struct.ext4_extent** %123, align 8
  store %struct.ext4_extent* %124, %struct.ext4_extent** %22, align 8
  %125 = load %struct.ext4_extent*, %struct.ext4_extent** %22, align 8
  %126 = icmp ne %struct.ext4_extent* %125, null
  br i1 %126, label %127, label %131

127:                                              ; preds = %110
  %128 = load %struct.ext4_extent*, %struct.ext4_extent** %21, align 8
  %129 = icmp ne %struct.ext4_extent* %128, null
  %130 = xor i1 %129, true
  br label %131

131:                                              ; preds = %127, %110
  %132 = phi i1 [ true, %110 ], [ %130, %127 ]
  %133 = zext i1 %132 to i32
  %134 = call i64 @unlikely(i32 %133)
  %135 = icmp ne i64 %134, 0
  br i1 %135, label %136, label %137

136:                                              ; preds = %131
  br label %97

137:                                              ; preds = %131
  %138 = load %struct.ext4_extent*, %struct.ext4_extent** %21, align 8
  %139 = getelementptr inbounds %struct.ext4_extent, %struct.ext4_extent* %138, i32 0, i32 1
  %140 = load i32, i32* %139, align 8
  %141 = call i64 @le32_to_cpu(i32 %140)
  store i64 %141, i64* %24, align 8
  %142 = load %struct.ext4_extent*, %struct.ext4_extent** %22, align 8
  %143 = getelementptr inbounds %struct.ext4_extent, %struct.ext4_extent* %142, i32 0, i32 1
  %144 = load i32, i32* %143, align 8
  %145 = call i64 @le32_to_cpu(i32 %144)
  store i64 %145, i64* %25, align 8
  %146 = load %struct.ext4_extent*, %struct.ext4_extent** %21, align 8
  %147 = call i32 @ext4_ext_get_actual_len(%struct.ext4_extent* %146)
  store i32 %147, i32* %26, align 4
  %148 = load %struct.ext4_extent*, %struct.ext4_extent** %22, align 8
  %149 = call i32 @ext4_ext_get_actual_len(%struct.ext4_extent* %148)
  store i32 %149, i32* %27, align 4
  %150 = load i64, i64* %13, align 8
  %151 = load i64, i64* %24, align 8
  %152 = load i32, i32* %26, align 4
  %153 = call i32 @in_range(i64 %150, i64 %151, i32 %152)
  %154 = icmp ne i32 %153, 0
  br i1 %154, label %155, label %161

155:                                              ; preds = %137
  %156 = load i64, i64* %14, align 8
  %157 = load i64, i64* %25, align 8
  %158 = load i32, i32* %27, align 4
  %159 = call i32 @in_range(i64 %156, i64 %157, i32 %158)
  %160 = icmp ne i32 %159, 0
  br i1 %160, label %223, label %161

161:                                              ; preds = %155, %137
  %162 = load %struct.ext4_ext_path*, %struct.ext4_ext_path** %18, align 8
  %163 = call i64 @ext4_ext_next_allocated_block(%struct.ext4_ext_path* %162)
  store i64 %163, i64* %30, align 8
  %164 = load %struct.ext4_ext_path*, %struct.ext4_ext_path** %19, align 8
  %165 = call i64 @ext4_ext_next_allocated_block(%struct.ext4_ext_path* %164)
  store i64 %165, i64* %31, align 8
  %166 = load i64, i64* %24, align 8
  %167 = load i64, i64* %13, align 8
  %168 = icmp sgt i64 %166, %167
  br i1 %168, label %169, label %171

169:                                              ; preds = %161
  %170 = load i64, i64* %24, align 8
  store i64 %170, i64* %30, align 8
  br label %171

171:                                              ; preds = %169, %161
  %172 = load i64, i64* %25, align 8
  %173 = load i64, i64* %14, align 8
  %174 = icmp sgt i64 %172, %173
  br i1 %174, label %175, label %177

175:                                              ; preds = %171
  %176 = load i64, i64* %25, align 8
  store i64 %176, i64* %31, align 8
  br label %177

177:                                              ; preds = %175, %171
  %178 = load i64, i64* %30, align 8
  %179 = load i64, i64* @EXT_MAX_BLOCKS, align 8
  %180 = icmp eq i64 %178, %179
  br i1 %180, label %185, label %181

181:                                              ; preds = %177
  %182 = load i64, i64* %31, align 8
  %183 = load i64, i64* @EXT_MAX_BLOCKS, align 8
  %184 = icmp eq i64 %182, %183
  br i1 %184, label %185, label %186

185:                                              ; preds = %181, %177
  br label %97

186:                                              ; preds = %181
  %187 = load i64, i64* %30, align 8
  %188 = load i64, i64* %13, align 8
  %189 = sub nsw i64 %187, %188
  %190 = trunc i64 %189 to i32
  store i32 %190, i32* %28, align 4
  %191 = load i32, i32* %28, align 4
  %192 = sext i32 %191 to i64
  %193 = load i64, i64* %31, align 8
  %194 = load i64, i64* %14, align 8
  %195 = sub nsw i64 %193, %194
  %196 = icmp slt i64 %192, %195
  br i1 %196, label %197, label %202

197:                                              ; preds = %186
  %198 = load i64, i64* %31, align 8
  %199 = load i64, i64* %14, align 8
  %200 = sub nsw i64 %198, %199
  %201 = trunc i64 %200 to i32
  store i32 %201, i32* %28, align 4
  br label %202

202:                                              ; preds = %197, %186
  %203 = load i32, i32* %28, align 4
  %204 = sext i32 %203 to i64
  %205 = load i64, i64* %15, align 8
  %206 = icmp sgt i64 %204, %205
  br i1 %206, label %207, label %210

207:                                              ; preds = %202
  %208 = load i64, i64* %15, align 8
  %209 = trunc i64 %208 to i32
  store i32 %209, i32* %28, align 4
  br label %210

210:                                              ; preds = %207, %202
  %211 = load i32, i32* %28, align 4
  %212 = sext i32 %211 to i64
  %213 = load i64, i64* %13, align 8
  %214 = add nsw i64 %213, %212
  store i64 %214, i64* %13, align 8
  %215 = load i32, i32* %28, align 4
  %216 = sext i32 %215 to i64
  %217 = load i64, i64* %14, align 8
  %218 = add nsw i64 %217, %216
  store i64 %218, i64* %14, align 8
  %219 = load i32, i32* %28, align 4
  %220 = sext i32 %219 to i64
  %221 = load i64, i64* %15, align 8
  %222 = sub nsw i64 %221, %220
  store i64 %222, i64* %15, align 8
  br label %459

223:                                              ; preds = %155
  %224 = load i64, i64* %24, align 8
  %225 = load i64, i64* %13, align 8
  %226 = icmp slt i64 %224, %225
  br i1 %226, label %227, label %239

227:                                              ; preds = %223
  store i32 1, i32* %29, align 4
  %228 = load i32*, i32** %10, align 8
  %229 = load %struct.inode*, %struct.inode** %11, align 8
  %230 = load i64, i64* %13, align 8
  %231 = call i32 @ext4_force_split_extent_at(i32* %228, %struct.inode* %229, %struct.ext4_ext_path** %18, i64 %230, i32 0)
  %232 = load i32*, i32** %17, align 8
  store i32 %231, i32* %232, align 4
  %233 = load i32*, i32** %17, align 8
  %234 = load i32, i32* %233, align 4
  %235 = call i64 @unlikely(i32 %234)
  %236 = icmp ne i64 %235, 0
  br i1 %236, label %237, label %238

237:                                              ; preds = %227
  br label %97

238:                                              ; preds = %227
  br label %239

239:                                              ; preds = %238, %223
  %240 = load i64, i64* %25, align 8
  %241 = load i64, i64* %14, align 8
  %242 = icmp slt i64 %240, %241
  br i1 %242, label %243, label %255

243:                                              ; preds = %239
  store i32 1, i32* %29, align 4
  %244 = load i32*, i32** %10, align 8
  %245 = load %struct.inode*, %struct.inode** %12, align 8
  %246 = load i64, i64* %14, align 8
  %247 = call i32 @ext4_force_split_extent_at(i32* %244, %struct.inode* %245, %struct.ext4_ext_path** %19, i64 %246, i32 0)
  %248 = load i32*, i32** %17, align 8
  store i32 %247, i32* %248, align 4
  %249 = load i32*, i32** %17, align 8
  %250 = load i32, i32* %249, align 4
  %251 = call i64 @unlikely(i32 %250)
  %252 = icmp ne i64 %251, 0
  br i1 %252, label %253, label %254

253:                                              ; preds = %243
  br label %97

254:                                              ; preds = %243
  br label %255

255:                                              ; preds = %254, %239
  %256 = load i32, i32* %29, align 4
  %257 = icmp ne i32 %256, 0
  br i1 %257, label %258, label %259

258:                                              ; preds = %255
  br label %459

259:                                              ; preds = %255
  %260 = load i64, i64* %15, align 8
  %261 = trunc i64 %260 to i32
  store i32 %261, i32* %28, align 4
  %262 = load i32, i32* %28, align 4
  %263 = sext i32 %262 to i64
  %264 = load i64, i64* %24, align 8
  %265 = load i32, i32* %26, align 4
  %266 = sext i32 %265 to i64
  %267 = add nsw i64 %264, %266
  %268 = load i64, i64* %13, align 8
  %269 = sub nsw i64 %267, %268
  %270 = icmp sgt i64 %263, %269
  br i1 %270, label %271, label %279

271:                                              ; preds = %259
  %272 = load i64, i64* %24, align 8
  %273 = load i32, i32* %26, align 4
  %274 = sext i32 %273 to i64
  %275 = add nsw i64 %272, %274
  %276 = load i64, i64* %13, align 8
  %277 = sub nsw i64 %275, %276
  %278 = trunc i64 %277 to i32
  store i32 %278, i32* %28, align 4
  br label %279

279:                                              ; preds = %271, %259
  %280 = load i32, i32* %28, align 4
  %281 = sext i32 %280 to i64
  %282 = load i64, i64* %25, align 8
  %283 = load i32, i32* %27, align 4
  %284 = sext i32 %283 to i64
  %285 = add nsw i64 %282, %284
  %286 = load i64, i64* %14, align 8
  %287 = sub nsw i64 %285, %286
  %288 = icmp sgt i64 %281, %287
  br i1 %288, label %289, label %297

289:                                              ; preds = %279
  %290 = load i64, i64* %25, align 8
  %291 = load i32, i32* %27, align 4
  %292 = sext i32 %291 to i64
  %293 = add nsw i64 %290, %292
  %294 = load i64, i64* %14, align 8
  %295 = sub nsw i64 %293, %294
  %296 = trunc i64 %295 to i32
  store i32 %296, i32* %28, align 4
  br label %297

297:                                              ; preds = %289, %279
  %298 = load i32, i32* %28, align 4
  %299 = load i32, i32* %26, align 4
  %300 = icmp ne i32 %298, %299
  br i1 %300, label %301, label %316

301:                                              ; preds = %297
  store i32 1, i32* %29, align 4
  %302 = load i32*, i32** %10, align 8
  %303 = load %struct.inode*, %struct.inode** %11, align 8
  %304 = load i64, i64* %13, align 8
  %305 = load i32, i32* %28, align 4
  %306 = sext i32 %305 to i64
  %307 = add nsw i64 %304, %306
  %308 = call i32 @ext4_force_split_extent_at(i32* %302, %struct.inode* %303, %struct.ext4_ext_path** %18, i64 %307, i32 0)
  %309 = load i32*, i32** %17, align 8
  store i32 %308, i32* %309, align 4
  %310 = load i32*, i32** %17, align 8
  %311 = load i32, i32* %310, align 4
  %312 = call i64 @unlikely(i32 %311)
  %313 = icmp ne i64 %312, 0
  br i1 %313, label %314, label %315

314:                                              ; preds = %301
  br label %97

315:                                              ; preds = %301
  br label %316

316:                                              ; preds = %315, %297
  %317 = load i32, i32* %28, align 4
  %318 = load i32, i32* %27, align 4
  %319 = icmp ne i32 %317, %318
  br i1 %319, label %320, label %334

320:                                              ; preds = %316
  store i32 1, i32* %29, align 4
  %321 = load i32*, i32** %10, align 8
  %322 = load %struct.inode*, %struct.inode** %12, align 8
  %323 = load i64, i64* %14, align 8
  %324 = load i32, i32* %28, align 4
  %325 = sext i32 %324 to i64
  %326 = add nsw i64 %323, %325
  %327 = call i32 @ext4_force_split_extent_at(i32* %321, %struct.inode* %322, %struct.ext4_ext_path** %19, i64 %326, i32 0)
  %328 = load i32*, i32** %17, align 8
  store i32 %327, i32* %328, align 4
  %329 = load i32*, i32** %17, align 8
  %330 = load i32, i32* %329, align 4
  %331 = icmp ne i32 %330, 0
  br i1 %331, label %332, label %333

332:                                              ; preds = %320
  br label %97

333:                                              ; preds = %320
  br label %334

334:                                              ; preds = %333, %316
  %335 = load i32, i32* %29, align 4
  %336 = icmp ne i32 %335, 0
  br i1 %336, label %337, label %338

337:                                              ; preds = %334
  br label %459

338:                                              ; preds = %334
  %339 = load i32, i32* %27, align 4
  %340 = load i32, i32* %26, align 4
  %341 = icmp ne i32 %339, %340
  %342 = zext i1 %341 to i32
  %343 = call i32 @BUG_ON(i32 %342)
  %344 = load i32*, i32** %10, align 8
  %345 = load %struct.inode*, %struct.inode** %11, align 8
  %346 = load %struct.ext4_ext_path*, %struct.ext4_ext_path** %18, align 8
  %347 = load %struct.ext4_ext_path*, %struct.ext4_ext_path** %18, align 8
  %348 = getelementptr inbounds %struct.ext4_ext_path, %struct.ext4_ext_path* %347, i32 0, i32 0
  %349 = load i64, i64* %348, align 8
  %350 = getelementptr inbounds %struct.ext4_ext_path, %struct.ext4_ext_path* %346, i64 %349
  %351 = call i32 @ext4_ext_get_access(i32* %344, %struct.inode* %345, %struct.ext4_ext_path* %350)
  %352 = load i32*, i32** %17, align 8
  store i32 %351, i32* %352, align 4
  %353 = load i32*, i32** %17, align 8
  %354 = load i32, i32* %353, align 4
  %355 = call i64 @unlikely(i32 %354)
  %356 = icmp ne i64 %355, 0
  br i1 %356, label %357, label %358

357:                                              ; preds = %338
  br label %97

358:                                              ; preds = %338
  %359 = load i32*, i32** %10, align 8
  %360 = load %struct.inode*, %struct.inode** %12, align 8
  %361 = load %struct.ext4_ext_path*, %struct.ext4_ext_path** %19, align 8
  %362 = load %struct.ext4_ext_path*, %struct.ext4_ext_path** %19, align 8
  %363 = getelementptr inbounds %struct.ext4_ext_path, %struct.ext4_ext_path* %362, i32 0, i32 0
  %364 = load i64, i64* %363, align 8
  %365 = getelementptr inbounds %struct.ext4_ext_path, %struct.ext4_ext_path* %361, i64 %364
  %366 = call i32 @ext4_ext_get_access(i32* %359, %struct.inode* %360, %struct.ext4_ext_path* %365)
  %367 = load i32*, i32** %17, align 8
  store i32 %366, i32* %367, align 4
  %368 = load i32*, i32** %17, align 8
  %369 = load i32, i32* %368, align 4
  %370 = call i64 @unlikely(i32 %369)
  %371 = icmp ne i64 %370, 0
  br i1 %371, label %372, label %373

372:                                              ; preds = %358
  br label %97

373:                                              ; preds = %358
  %374 = load %struct.ext4_extent*, %struct.ext4_extent** %21, align 8
  %375 = bitcast %struct.ext4_extent* %23 to i8*
  %376 = bitcast %struct.ext4_extent* %374 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %375, i8* align 8 %376, i64 16, i1 false)
  %377 = load %struct.ext4_extent*, %struct.ext4_extent** %21, align 8
  %378 = load %struct.ext4_extent*, %struct.ext4_extent** %22, align 8
  %379 = call i32 @ext4_ext_pblock(%struct.ext4_extent* %378)
  %380 = call i32 @ext4_ext_store_pblock(%struct.ext4_extent* %377, i32 %379)
  %381 = load %struct.ext4_extent*, %struct.ext4_extent** %22, align 8
  %382 = call i32 @ext4_ext_pblock(%struct.ext4_extent* %23)
  %383 = call i32 @ext4_ext_store_pblock(%struct.ext4_extent* %381, i32 %382)
  %384 = load i32, i32* %27, align 4
  %385 = call i8* @cpu_to_le16(i32 %384)
  %386 = load %struct.ext4_extent*, %struct.ext4_extent** %21, align 8
  %387 = getelementptr inbounds %struct.ext4_extent, %struct.ext4_extent* %386, i32 0, i32 0
  store i8* %385, i8** %387, align 8
  %388 = load i32, i32* %26, align 4
  %389 = call i8* @cpu_to_le16(i32 %388)
  %390 = load %struct.ext4_extent*, %struct.ext4_extent** %22, align 8
  %391 = getelementptr inbounds %struct.ext4_extent, %struct.ext4_extent* %390, i32 0, i32 0
  store i8* %389, i8** %391, align 8
  %392 = load i32, i32* %16, align 4
  %393 = icmp ne i32 %392, 0
  br i1 %393, label %394, label %397

394:                                              ; preds = %373
  %395 = load %struct.ext4_extent*, %struct.ext4_extent** %22, align 8
  %396 = call i32 @ext4_ext_mark_unwritten(%struct.ext4_extent* %395)
  br label %397

397:                                              ; preds = %394, %373
  %398 = call i64 @ext4_ext_is_unwritten(%struct.ext4_extent* %23)
  %399 = icmp ne i64 %398, 0
  br i1 %399, label %400, label %403

400:                                              ; preds = %397
  %401 = load %struct.ext4_extent*, %struct.ext4_extent** %21, align 8
  %402 = call i32 @ext4_ext_mark_unwritten(%struct.ext4_extent* %401)
  br label %403

403:                                              ; preds = %400, %397
  %404 = load i32*, i32** %10, align 8
  %405 = load %struct.inode*, %struct.inode** %12, align 8
  %406 = load %struct.ext4_ext_path*, %struct.ext4_ext_path** %19, align 8
  %407 = load %struct.ext4_extent*, %struct.ext4_extent** %22, align 8
  %408 = call i32 @ext4_ext_try_to_merge(i32* %404, %struct.inode* %405, %struct.ext4_ext_path* %406, %struct.ext4_extent* %407)
  %409 = load i32*, i32** %10, align 8
  %410 = load %struct.inode*, %struct.inode** %11, align 8
  %411 = load %struct.ext4_ext_path*, %struct.ext4_ext_path** %18, align 8
  %412 = load %struct.ext4_extent*, %struct.ext4_extent** %21, align 8
  %413 = call i32 @ext4_ext_try_to_merge(i32* %409, %struct.inode* %410, %struct.ext4_ext_path* %411, %struct.ext4_extent* %412)
  %414 = load i32*, i32** %10, align 8
  %415 = load %struct.inode*, %struct.inode** %12, align 8
  %416 = load %struct.ext4_ext_path*, %struct.ext4_ext_path** %19, align 8
  %417 = load %struct.ext4_ext_path*, %struct.ext4_ext_path** %19, align 8
  %418 = getelementptr inbounds %struct.ext4_ext_path, %struct.ext4_ext_path* %417, i32 0, i32 0
  %419 = load i64, i64* %418, align 8
  %420 = getelementptr inbounds %struct.ext4_ext_path, %struct.ext4_ext_path* %416, i64 %419
  %421 = call i32 @ext4_ext_dirty(i32* %414, %struct.inode* %415, %struct.ext4_ext_path* %420)
  %422 = load i32*, i32** %17, align 8
  store i32 %421, i32* %422, align 4
  %423 = load i32*, i32** %17, align 8
  %424 = load i32, i32* %423, align 4
  %425 = call i64 @unlikely(i32 %424)
  %426 = icmp ne i64 %425, 0
  br i1 %426, label %427, label %428

427:                                              ; preds = %403
  br label %97

428:                                              ; preds = %403
  %429 = load i32*, i32** %10, align 8
  %430 = load %struct.inode*, %struct.inode** %11, align 8
  %431 = load %struct.ext4_ext_path*, %struct.ext4_ext_path** %18, align 8
  %432 = load %struct.ext4_ext_path*, %struct.ext4_ext_path** %18, align 8
  %433 = getelementptr inbounds %struct.ext4_ext_path, %struct.ext4_ext_path* %432, i32 0, i32 0
  %434 = load i64, i64* %433, align 8
  %435 = getelementptr inbounds %struct.ext4_ext_path, %struct.ext4_ext_path* %431, i64 %434
  %436 = call i32 @ext4_ext_dirty(i32* %429, %struct.inode* %430, %struct.ext4_ext_path* %435)
  %437 = load i32*, i32** %17, align 8
  store i32 %436, i32* %437, align 4
  %438 = load i32*, i32** %17, align 8
  %439 = load i32, i32* %438, align 4
  %440 = call i64 @unlikely(i32 %439)
  %441 = icmp ne i64 %440, 0
  br i1 %441, label %442, label %443

442:                                              ; preds = %428
  br label %97

443:                                              ; preds = %428
  %444 = load i32, i32* %28, align 4
  %445 = sext i32 %444 to i64
  %446 = load i64, i64* %13, align 8
  %447 = add nsw i64 %446, %445
  store i64 %447, i64* %13, align 8
  %448 = load i32, i32* %28, align 4
  %449 = sext i32 %448 to i64
  %450 = load i64, i64* %14, align 8
  %451 = add nsw i64 %450, %449
  store i64 %451, i64* %14, align 8
  %452 = load i32, i32* %28, align 4
  %453 = load i32, i32* %20, align 4
  %454 = add nsw i32 %453, %452
  store i32 %454, i32* %20, align 4
  %455 = load i32, i32* %28, align 4
  %456 = sext i32 %455 to i64
  %457 = load i64, i64* %15, align 8
  %458 = sub nsw i64 %457, %456
  store i64 %458, i64* %15, align 8
  br label %459

459:                                              ; preds = %443, %337, %258, %210, %97
  %460 = load %struct.ext4_ext_path*, %struct.ext4_ext_path** %18, align 8
  %461 = call i32 @ext4_ext_drop_refs(%struct.ext4_ext_path* %460)
  %462 = load %struct.ext4_ext_path*, %struct.ext4_ext_path** %18, align 8
  %463 = call i32 @kfree(%struct.ext4_ext_path* %462)
  %464 = load %struct.ext4_ext_path*, %struct.ext4_ext_path** %19, align 8
  %465 = call i32 @ext4_ext_drop_refs(%struct.ext4_ext_path* %464)
  %466 = load %struct.ext4_ext_path*, %struct.ext4_ext_path** %19, align 8
  %467 = call i32 @kfree(%struct.ext4_ext_path* %466)
  store %struct.ext4_ext_path* null, %struct.ext4_ext_path** %19, align 8
  store %struct.ext4_ext_path* null, %struct.ext4_ext_path** %18, align 8
  br label %82

468:                                              ; preds = %82
  %469 = load i32, i32* %20, align 4
  store i32 %469, i32* %9, align 4
  br label %470

470:                                              ; preds = %468, %80, %69
  %471 = load i32, i32* %9, align 4
  ret i32 %471
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @rwsem_is_locked(i32*) #1

declare dso_local %struct.TYPE_2__* @EXT4_I(%struct.inode*) #1

declare dso_local i32 @inode_is_locked(%struct.inode*) #1

declare dso_local i32 @ext4_es_remove_extent(%struct.inode*, i64, i64) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local %struct.ext4_ext_path* @ext4_find_extent(%struct.inode*, i64, i32*, i32) #1

declare dso_local i64 @IS_ERR(%struct.ext4_ext_path*) #1

declare dso_local i32 @PTR_ERR(%struct.ext4_ext_path*) #1

declare dso_local i64 @le32_to_cpu(i32) #1

declare dso_local i32 @ext4_ext_get_actual_len(%struct.ext4_extent*) #1

declare dso_local i32 @in_range(i64, i64, i32) #1

declare dso_local i64 @ext4_ext_next_allocated_block(%struct.ext4_ext_path*) #1

declare dso_local i32 @ext4_force_split_extent_at(i32*, %struct.inode*, %struct.ext4_ext_path**, i64, i32) #1

declare dso_local i32 @ext4_ext_get_access(i32*, %struct.inode*, %struct.ext4_ext_path*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @ext4_ext_store_pblock(%struct.ext4_extent*, i32) #1

declare dso_local i32 @ext4_ext_pblock(%struct.ext4_extent*) #1

declare dso_local i8* @cpu_to_le16(i32) #1

declare dso_local i32 @ext4_ext_mark_unwritten(%struct.ext4_extent*) #1

declare dso_local i64 @ext4_ext_is_unwritten(%struct.ext4_extent*) #1

declare dso_local i32 @ext4_ext_try_to_merge(i32*, %struct.inode*, %struct.ext4_ext_path*, %struct.ext4_extent*) #1

declare dso_local i32 @ext4_ext_dirty(i32*, %struct.inode*, %struct.ext4_ext_path*) #1

declare dso_local i32 @ext4_ext_drop_refs(%struct.ext4_ext_path*) #1

declare dso_local i32 @kfree(%struct.ext4_ext_path*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
