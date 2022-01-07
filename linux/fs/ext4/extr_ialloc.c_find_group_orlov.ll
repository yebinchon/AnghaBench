; ModuleID = '/home/carl/AnghaBench/linux/fs/ext4/extr_ialloc.c_find_group_orlov.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ext4/extr_ialloc.c_find_group_orlov.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.super_block = type { i32 }
%struct.inode = type { i32 }
%struct.qstr = type { i32, i32 }
%struct.ext4_sb_info = type { i32, i32, i32, i32, i32 }
%struct.ext4_group_desc = type { i32 }
%struct.orlov_stats = type { i32, i32, i64 }
%struct.dx_hash_info = type { i32, i32, i32 }
%struct.TYPE_2__ = type { i32, i32 }

@EXT4_INODE_TOPDIR = common dso_local global i32 0, align 4
@DX_HASH_HALF_MD4 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.super_block*, %struct.inode*, i32*, i32, %struct.qstr*)* @find_group_orlov to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @find_group_orlov(%struct.super_block* %0, %struct.inode* %1, i32* %2, i32 %3, %struct.qstr* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.super_block*, align 8
  %8 = alloca %struct.inode*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.qstr*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.ext4_sb_info*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i64, align 8
  %20 = alloca i64, align 8
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i64, align 8
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  %29 = alloca %struct.ext4_group_desc*, align 8
  %30 = alloca %struct.orlov_stats, align 8
  %31 = alloca i32, align 4
  %32 = alloca %struct.dx_hash_info, align 4
  %33 = alloca i32, align 4
  %34 = alloca i32, align 4
  store %struct.super_block* %0, %struct.super_block** %7, align 8
  store %struct.inode* %1, %struct.inode** %8, align 8
  store i32* %2, i32** %9, align 8
  store i32 %3, i32* %10, align 4
  store %struct.qstr* %4, %struct.qstr** %11, align 8
  %35 = load %struct.inode*, %struct.inode** %8, align 8
  %36 = call %struct.TYPE_2__* @EXT4_I(%struct.inode* %35)
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  store i32 %38, i32* %12, align 4
  %39 = load %struct.super_block*, %struct.super_block** %7, align 8
  %40 = call %struct.ext4_sb_info* @EXT4_SB(%struct.super_block* %39)
  store %struct.ext4_sb_info* %40, %struct.ext4_sb_info** %13, align 8
  %41 = load %struct.super_block*, %struct.super_block** %7, align 8
  %42 = call i32 @ext4_get_groups_count(%struct.super_block* %41)
  store i32 %42, i32* %14, align 4
  %43 = load %struct.super_block*, %struct.super_block** %7, align 8
  %44 = call i32 @EXT4_INODES_PER_GROUP(%struct.super_block* %43)
  store i32 %44, i32* %15, align 4
  %45 = load %struct.ext4_sb_info*, %struct.ext4_sb_info** %13, align 8
  %46 = call i32 @ext4_flex_bg_size(%struct.ext4_sb_info* %45)
  store i32 %46, i32* %31, align 4
  %47 = load i32, i32* %14, align 4
  store i32 %47, i32* %28, align 4
  %48 = load i32, i32* %31, align 4
  %49 = icmp sgt i32 %48, 1
  br i1 %49, label %50, label %64

50:                                               ; preds = %5
  %51 = load i32, i32* %14, align 4
  %52 = load i32, i32* %31, align 4
  %53 = add nsw i32 %51, %52
  %54 = sub nsw i32 %53, 1
  %55 = load %struct.ext4_sb_info*, %struct.ext4_sb_info** %13, align 8
  %56 = getelementptr inbounds %struct.ext4_sb_info, %struct.ext4_sb_info* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = ashr i32 %54, %57
  store i32 %58, i32* %28, align 4
  %59 = load %struct.ext4_sb_info*, %struct.ext4_sb_info** %13, align 8
  %60 = getelementptr inbounds %struct.ext4_sb_info, %struct.ext4_sb_info* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = load i32, i32* %12, align 4
  %63 = ashr i32 %62, %61
  store i32 %63, i32* %12, align 4
  br label %64

64:                                               ; preds = %50, %5
  %65 = load %struct.ext4_sb_info*, %struct.ext4_sb_info** %13, align 8
  %66 = getelementptr inbounds %struct.ext4_sb_info, %struct.ext4_sb_info* %65, i32 0, i32 4
  %67 = call i32 @percpu_counter_read_positive(i32* %66)
  store i32 %67, i32* %16, align 4
  %68 = load i32, i32* %16, align 4
  %69 = load i32, i32* %28, align 4
  %70 = udiv i32 %68, %69
  store i32 %70, i32* %17, align 4
  %71 = load %struct.ext4_sb_info*, %struct.ext4_sb_info** %13, align 8
  %72 = load %struct.ext4_sb_info*, %struct.ext4_sb_info** %13, align 8
  %73 = getelementptr inbounds %struct.ext4_sb_info, %struct.ext4_sb_info* %72, i32 0, i32 3
  %74 = call i32 @percpu_counter_read_positive(i32* %73)
  %75 = call i64 @EXT4_C2B(%struct.ext4_sb_info* %71, i32 %74)
  store i64 %75, i64* %19, align 8
  %76 = load i64, i64* %19, align 8
  store i64 %76, i64* %20, align 8
  %77 = load i64, i64* %20, align 8
  %78 = load i32, i32* %28, align 4
  %79 = call i32 @do_div(i64 %77, i32 %78)
  %80 = load %struct.ext4_sb_info*, %struct.ext4_sb_info** %13, align 8
  %81 = getelementptr inbounds %struct.ext4_sb_info, %struct.ext4_sb_info* %80, i32 0, i32 2
  %82 = call i32 @percpu_counter_read_positive(i32* %81)
  store i32 %82, i32* %21, align 4
  %83 = load i32, i32* %10, align 4
  %84 = call i64 @S_ISDIR(i32 %83)
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %217

86:                                               ; preds = %64
  %87 = load %struct.inode*, %struct.inode** %8, align 8
  %88 = load %struct.super_block*, %struct.super_block** %7, align 8
  %89 = getelementptr inbounds %struct.super_block, %struct.super_block* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = call %struct.inode* @d_inode(i32 %90)
  %92 = icmp eq %struct.inode* %87, %91
  br i1 %92, label %98, label %93

93:                                               ; preds = %86
  %94 = load %struct.inode*, %struct.inode** %8, align 8
  %95 = load i32, i32* @EXT4_INODE_TOPDIR, align 4
  %96 = call i64 @ext4_test_inode_flag(%struct.inode* %94, i32 %95)
  %97 = icmp ne i64 %96, 0
  br i1 %97, label %98, label %217

98:                                               ; preds = %93, %86
  %99 = load i32, i32* %15, align 4
  store i32 %99, i32* %33, align 4
  store i32 -1, i32* %34, align 4
  %100 = load %struct.qstr*, %struct.qstr** %11, align 8
  %101 = icmp ne %struct.qstr* %100, null
  br i1 %101, label %102, label %119

102:                                              ; preds = %98
  %103 = load i32, i32* @DX_HASH_HALF_MD4, align 4
  %104 = getelementptr inbounds %struct.dx_hash_info, %struct.dx_hash_info* %32, i32 0, i32 2
  store i32 %103, i32* %104, align 4
  %105 = load %struct.ext4_sb_info*, %struct.ext4_sb_info** %13, align 8
  %106 = getelementptr inbounds %struct.ext4_sb_info, %struct.ext4_sb_info* %105, i32 0, i32 1
  %107 = load i32, i32* %106, align 4
  %108 = getelementptr inbounds %struct.dx_hash_info, %struct.dx_hash_info* %32, i32 0, i32 1
  store i32 %107, i32* %108, align 4
  %109 = load %struct.inode*, %struct.inode** %8, align 8
  %110 = load %struct.qstr*, %struct.qstr** %11, align 8
  %111 = getelementptr inbounds %struct.qstr, %struct.qstr* %110, i32 0, i32 1
  %112 = load i32, i32* %111, align 4
  %113 = load %struct.qstr*, %struct.qstr** %11, align 8
  %114 = getelementptr inbounds %struct.qstr, %struct.qstr* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 4
  %116 = call i32 @ext4fs_dirhash(%struct.inode* %109, i32 %112, i32 %115, %struct.dx_hash_info* %32)
  %117 = getelementptr inbounds %struct.dx_hash_info, %struct.dx_hash_info* %32, i32 0, i32 0
  %118 = load i32, i32* %117, align 4
  store i32 %118, i32* %26, align 4
  br label %121

119:                                              ; preds = %98
  %120 = call i32 (...) @prandom_u32()
  store i32 %120, i32* %26, align 4
  br label %121

121:                                              ; preds = %119, %102
  %122 = load i32, i32* %26, align 4
  %123 = load i32, i32* %28, align 4
  %124 = urem i32 %122, %123
  store i32 %124, i32* %12, align 4
  store i32 0, i32* %25, align 4
  br label %125

125:                                              ; preds = %165, %121
  %126 = load i32, i32* %25, align 4
  %127 = load i32, i32* %28, align 4
  %128 = icmp slt i32 %126, %127
  br i1 %128, label %129, label %168

129:                                              ; preds = %125
  %130 = load i32, i32* %12, align 4
  %131 = load i32, i32* %25, align 4
  %132 = add nsw i32 %130, %131
  %133 = load i32, i32* %28, align 4
  %134 = srem i32 %132, %133
  store i32 %134, i32* %27, align 4
  %135 = load %struct.super_block*, %struct.super_block** %7, align 8
  %136 = load i32, i32* %27, align 4
  %137 = load i32, i32* %31, align 4
  %138 = call i32 @get_orlov_stats(%struct.super_block* %135, i32 %136, i32 %137, %struct.orlov_stats* %30)
  %139 = getelementptr inbounds %struct.orlov_stats, %struct.orlov_stats* %30, i32 0, i32 0
  %140 = load i32, i32* %139, align 8
  %141 = icmp ne i32 %140, 0
  br i1 %141, label %143, label %142

142:                                              ; preds = %129
  br label %165

143:                                              ; preds = %129
  %144 = getelementptr inbounds %struct.orlov_stats, %struct.orlov_stats* %30, i32 0, i32 1
  %145 = load i32, i32* %144, align 4
  %146 = load i32, i32* %33, align 4
  %147 = icmp sge i32 %145, %146
  br i1 %147, label %148, label %149

148:                                              ; preds = %143
  br label %165

149:                                              ; preds = %143
  %150 = getelementptr inbounds %struct.orlov_stats, %struct.orlov_stats* %30, i32 0, i32 0
  %151 = load i32, i32* %150, align 8
  %152 = load i32, i32* %17, align 4
  %153 = icmp ult i32 %151, %152
  br i1 %153, label %154, label %155

154:                                              ; preds = %149
  br label %165

155:                                              ; preds = %149
  %156 = getelementptr inbounds %struct.orlov_stats, %struct.orlov_stats* %30, i32 0, i32 2
  %157 = load i64, i64* %156, align 8
  %158 = load i64, i64* %20, align 8
  %159 = icmp slt i64 %157, %158
  br i1 %159, label %160, label %161

160:                                              ; preds = %155
  br label %165

161:                                              ; preds = %155
  %162 = load i32, i32* %27, align 4
  store i32 %162, i32* %26, align 4
  store i32 0, i32* %34, align 4
  %163 = getelementptr inbounds %struct.orlov_stats, %struct.orlov_stats* %30, i32 0, i32 1
  %164 = load i32, i32* %163, align 4
  store i32 %164, i32* %33, align 4
  br label %165

165:                                              ; preds = %161, %160, %154, %148, %142
  %166 = load i32, i32* %25, align 4
  %167 = add nsw i32 %166, 1
  store i32 %167, i32* %25, align 4
  br label %125

168:                                              ; preds = %125
  %169 = load i32, i32* %34, align 4
  %170 = icmp ne i32 %169, 0
  br i1 %170, label %171, label %172

171:                                              ; preds = %168
  br label %298

172:                                              ; preds = %168
  br label %173

173:                                              ; preds = %293, %172
  %174 = load i32, i32* %31, align 4
  %175 = icmp eq i32 %174, 1
  br i1 %175, label %176, label %179

176:                                              ; preds = %173
  %177 = load i32, i32* %26, align 4
  %178 = load i32*, i32** %9, align 8
  store i32 %177, i32* %178, align 4
  store i32 0, i32* %6, align 4
  br label %346

179:                                              ; preds = %173
  %180 = load i32, i32* %31, align 4
  %181 = load i32, i32* %26, align 4
  %182 = mul nsw i32 %181, %180
  store i32 %182, i32* %26, align 4
  store i32 0, i32* %25, align 4
  br label %183

183:                                              ; preds = %213, %179
  %184 = load i32, i32* %25, align 4
  %185 = load i32, i32* %31, align 4
  %186 = icmp slt i32 %184, %185
  br i1 %186, label %187, label %216

187:                                              ; preds = %183
  %188 = load i32, i32* %26, align 4
  %189 = load i32, i32* %25, align 4
  %190 = add nsw i32 %188, %189
  %191 = load i32, i32* %14, align 4
  %192 = icmp sge i32 %190, %191
  br i1 %192, label %193, label %194

193:                                              ; preds = %187
  br label %216

194:                                              ; preds = %187
  %195 = load %struct.super_block*, %struct.super_block** %7, align 8
  %196 = load i32, i32* %26, align 4
  %197 = load i32, i32* %25, align 4
  %198 = add nsw i32 %196, %197
  %199 = call %struct.ext4_group_desc* @ext4_get_group_desc(%struct.super_block* %195, i32 %198, i32* null)
  store %struct.ext4_group_desc* %199, %struct.ext4_group_desc** %29, align 8
  %200 = load %struct.ext4_group_desc*, %struct.ext4_group_desc** %29, align 8
  %201 = icmp ne %struct.ext4_group_desc* %200, null
  br i1 %201, label %202, label %212

202:                                              ; preds = %194
  %203 = load %struct.super_block*, %struct.super_block** %7, align 8
  %204 = load %struct.ext4_group_desc*, %struct.ext4_group_desc** %29, align 8
  %205 = call i32 @ext4_free_inodes_count(%struct.super_block* %203, %struct.ext4_group_desc* %204)
  %206 = icmp ne i32 %205, 0
  br i1 %206, label %207, label %212

207:                                              ; preds = %202
  %208 = load i32, i32* %26, align 4
  %209 = load i32, i32* %25, align 4
  %210 = add nsw i32 %208, %209
  %211 = load i32*, i32** %9, align 8
  store i32 %210, i32* %211, align 4
  store i32 0, i32* %6, align 4
  br label %346

212:                                              ; preds = %202, %194
  br label %213

213:                                              ; preds = %212
  %214 = load i32, i32* %25, align 4
  %215 = add nsw i32 %214, 1
  store i32 %215, i32* %25, align 4
  br label %183

216:                                              ; preds = %193, %183
  br label %298

217:                                              ; preds = %93, %64
  %218 = load i32, i32* %21, align 4
  %219 = load i32, i32* %28, align 4
  %220 = udiv i32 %218, %219
  %221 = load i32, i32* %15, align 4
  %222 = sdiv i32 %221, 16
  %223 = add i32 %220, %222
  store i32 %223, i32* %22, align 4
  %224 = load i32, i32* %17, align 4
  %225 = load i32, i32* %15, align 4
  %226 = load i32, i32* %31, align 4
  %227 = mul nsw i32 %225, %226
  %228 = sdiv i32 %227, 4
  %229 = sub i32 %224, %228
  store i32 %229, i32* %23, align 4
  %230 = load i32, i32* %23, align 4
  %231 = icmp slt i32 %230, 1
  br i1 %231, label %232, label %233

232:                                              ; preds = %217
  store i32 1, i32* %23, align 4
  br label %233

233:                                              ; preds = %232, %217
  %234 = load i64, i64* %20, align 8
  %235 = load %struct.super_block*, %struct.super_block** %7, align 8
  %236 = call i32 @EXT4_CLUSTERS_PER_GROUP(%struct.super_block* %235)
  %237 = load i32, i32* %31, align 4
  %238 = mul nsw i32 %236, %237
  %239 = sdiv i32 %238, 4
  %240 = sext i32 %239 to i64
  %241 = sub nsw i64 %234, %240
  store i64 %241, i64* %24, align 8
  %242 = load %struct.inode*, %struct.inode** %8, align 8
  %243 = call %struct.TYPE_2__* @EXT4_I(%struct.inode* %242)
  %244 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %243, i32 0, i32 1
  %245 = load i32, i32* %244, align 4
  %246 = icmp ne i32 %245, -1
  br i1 %246, label %247, label %261

247:                                              ; preds = %233
  %248 = load %struct.inode*, %struct.inode** %8, align 8
  %249 = call %struct.TYPE_2__* @EXT4_I(%struct.inode* %248)
  %250 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %249, i32 0, i32 1
  %251 = load i32, i32* %250, align 4
  store i32 %251, i32* %12, align 4
  %252 = load i32, i32* %31, align 4
  %253 = icmp sgt i32 %252, 1
  br i1 %253, label %254, label %260

254:                                              ; preds = %247
  %255 = load %struct.ext4_sb_info*, %struct.ext4_sb_info** %13, align 8
  %256 = getelementptr inbounds %struct.ext4_sb_info, %struct.ext4_sb_info* %255, i32 0, i32 0
  %257 = load i32, i32* %256, align 4
  %258 = load i32, i32* %12, align 4
  %259 = ashr i32 %258, %257
  store i32 %259, i32* %12, align 4
  br label %260

260:                                              ; preds = %254, %247
  br label %261

261:                                              ; preds = %260, %233
  store i32 0, i32* %25, align 4
  br label %262

262:                                              ; preds = %294, %261
  %263 = load i32, i32* %25, align 4
  %264 = load i32, i32* %28, align 4
  %265 = icmp slt i32 %263, %264
  br i1 %265, label %266, label %297

266:                                              ; preds = %262
  %267 = load i32, i32* %12, align 4
  %268 = load i32, i32* %25, align 4
  %269 = add nsw i32 %267, %268
  %270 = load i32, i32* %28, align 4
  %271 = srem i32 %269, %270
  store i32 %271, i32* %26, align 4
  %272 = load %struct.super_block*, %struct.super_block** %7, align 8
  %273 = load i32, i32* %26, align 4
  %274 = load i32, i32* %31, align 4
  %275 = call i32 @get_orlov_stats(%struct.super_block* %272, i32 %273, i32 %274, %struct.orlov_stats* %30)
  %276 = getelementptr inbounds %struct.orlov_stats, %struct.orlov_stats* %30, i32 0, i32 1
  %277 = load i32, i32* %276, align 4
  %278 = load i32, i32* %22, align 4
  %279 = icmp sge i32 %277, %278
  br i1 %279, label %280, label %281

280:                                              ; preds = %266
  br label %294

281:                                              ; preds = %266
  %282 = getelementptr inbounds %struct.orlov_stats, %struct.orlov_stats* %30, i32 0, i32 0
  %283 = load i32, i32* %282, align 8
  %284 = load i32, i32* %23, align 4
  %285 = icmp ult i32 %283, %284
  br i1 %285, label %286, label %287

286:                                              ; preds = %281
  br label %294

287:                                              ; preds = %281
  %288 = getelementptr inbounds %struct.orlov_stats, %struct.orlov_stats* %30, i32 0, i32 2
  %289 = load i64, i64* %288, align 8
  %290 = load i64, i64* %24, align 8
  %291 = icmp slt i64 %289, %290
  br i1 %291, label %292, label %293

292:                                              ; preds = %287
  br label %294

293:                                              ; preds = %287
  br label %173

294:                                              ; preds = %292, %286, %280
  %295 = load i32, i32* %25, align 4
  %296 = add nsw i32 %295, 1
  store i32 %296, i32* %25, align 4
  br label %262

297:                                              ; preds = %262
  br label %298

298:                                              ; preds = %297, %216, %171
  %299 = load i32, i32* %14, align 4
  store i32 %299, i32* %28, align 4
  %300 = load i32, i32* %16, align 4
  %301 = load i32, i32* %28, align 4
  %302 = udiv i32 %300, %301
  store i32 %302, i32* %17, align 4
  br label %303

303:                                              ; preds = %344, %298
  %304 = load %struct.inode*, %struct.inode** %8, align 8
  %305 = call %struct.TYPE_2__* @EXT4_I(%struct.inode* %304)
  %306 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %305, i32 0, i32 0
  %307 = load i32, i32* %306, align 4
  store i32 %307, i32* %12, align 4
  store i32 0, i32* %25, align 4
  br label %308

308:                                              ; preds = %338, %303
  %309 = load i32, i32* %25, align 4
  %310 = load i32, i32* %28, align 4
  %311 = icmp slt i32 %309, %310
  br i1 %311, label %312, label %341

312:                                              ; preds = %308
  %313 = load i32, i32* %12, align 4
  %314 = load i32, i32* %25, align 4
  %315 = add nsw i32 %313, %314
  %316 = load i32, i32* %28, align 4
  %317 = srem i32 %315, %316
  store i32 %317, i32* %26, align 4
  %318 = load %struct.super_block*, %struct.super_block** %7, align 8
  %319 = load i32, i32* %26, align 4
  %320 = call %struct.ext4_group_desc* @ext4_get_group_desc(%struct.super_block* %318, i32 %319, i32* null)
  store %struct.ext4_group_desc* %320, %struct.ext4_group_desc** %29, align 8
  %321 = load %struct.ext4_group_desc*, %struct.ext4_group_desc** %29, align 8
  %322 = icmp ne %struct.ext4_group_desc* %321, null
  br i1 %322, label %323, label %337

323:                                              ; preds = %312
  %324 = load %struct.super_block*, %struct.super_block** %7, align 8
  %325 = load %struct.ext4_group_desc*, %struct.ext4_group_desc** %29, align 8
  %326 = call i32 @ext4_free_inodes_count(%struct.super_block* %324, %struct.ext4_group_desc* %325)
  store i32 %326, i32* %18, align 4
  %327 = load i32, i32* %18, align 4
  %328 = icmp ne i32 %327, 0
  br i1 %328, label %329, label %336

329:                                              ; preds = %323
  %330 = load i32, i32* %18, align 4
  %331 = load i32, i32* %17, align 4
  %332 = icmp uge i32 %330, %331
  br i1 %332, label %333, label %336

333:                                              ; preds = %329
  %334 = load i32, i32* %26, align 4
  %335 = load i32*, i32** %9, align 8
  store i32 %334, i32* %335, align 4
  store i32 0, i32* %6, align 4
  br label %346

336:                                              ; preds = %329, %323
  br label %337

337:                                              ; preds = %336, %312
  br label %338

338:                                              ; preds = %337
  %339 = load i32, i32* %25, align 4
  %340 = add nsw i32 %339, 1
  store i32 %340, i32* %25, align 4
  br label %308

341:                                              ; preds = %308
  %342 = load i32, i32* %17, align 4
  %343 = icmp ne i32 %342, 0
  br i1 %343, label %344, label %345

344:                                              ; preds = %341
  store i32 0, i32* %17, align 4
  br label %303

345:                                              ; preds = %341
  store i32 -1, i32* %6, align 4
  br label %346

346:                                              ; preds = %345, %333, %207, %176
  %347 = load i32, i32* %6, align 4
  ret i32 %347
}

declare dso_local %struct.TYPE_2__* @EXT4_I(%struct.inode*) #1

declare dso_local %struct.ext4_sb_info* @EXT4_SB(%struct.super_block*) #1

declare dso_local i32 @ext4_get_groups_count(%struct.super_block*) #1

declare dso_local i32 @EXT4_INODES_PER_GROUP(%struct.super_block*) #1

declare dso_local i32 @ext4_flex_bg_size(%struct.ext4_sb_info*) #1

declare dso_local i32 @percpu_counter_read_positive(i32*) #1

declare dso_local i64 @EXT4_C2B(%struct.ext4_sb_info*, i32) #1

declare dso_local i32 @do_div(i64, i32) #1

declare dso_local i64 @S_ISDIR(i32) #1

declare dso_local %struct.inode* @d_inode(i32) #1

declare dso_local i64 @ext4_test_inode_flag(%struct.inode*, i32) #1

declare dso_local i32 @ext4fs_dirhash(%struct.inode*, i32, i32, %struct.dx_hash_info*) #1

declare dso_local i32 @prandom_u32(...) #1

declare dso_local i32 @get_orlov_stats(%struct.super_block*, i32, i32, %struct.orlov_stats*) #1

declare dso_local %struct.ext4_group_desc* @ext4_get_group_desc(%struct.super_block*, i32, i32*) #1

declare dso_local i32 @ext4_free_inodes_count(%struct.super_block*, %struct.ext4_group_desc*) #1

declare dso_local i32 @EXT4_CLUSTERS_PER_GROUP(%struct.super_block*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
