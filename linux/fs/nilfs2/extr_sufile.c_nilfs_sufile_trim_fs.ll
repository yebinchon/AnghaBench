; ModuleID = '/home/carl/AnghaBench/linux/fs/nilfs2/extr_sufile.c_nilfs_sufile_trim_fs.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nilfs2/extr_sufile.c_nilfs_sufile_trim_fs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.the_nilfs* }
%struct.the_nilfs = type { i32, i32, i32, i32, i64 }
%struct.fstrim_range = type { i32, i32, i32 }
%struct.buffer_head = type { i32 }
%struct.nilfs_segment_usage = type { i32 }
%struct.TYPE_4__ = type { i64, i32 }

@EINVAL = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@GFP_NOFS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nilfs_sufile_trim_fs(%struct.inode* %0, %struct.fstrim_range* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.inode*, align 8
  %5 = alloca %struct.fstrim_range*, align 8
  %6 = alloca %struct.the_nilfs*, align 8
  %7 = alloca %struct.buffer_head*, align 8
  %8 = alloca %struct.nilfs_segment_usage*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %4, align 8
  store %struct.fstrim_range* %1, %struct.fstrim_range** %5, align 8
  %27 = load %struct.inode*, %struct.inode** %4, align 8
  %28 = getelementptr inbounds %struct.inode, %struct.inode* %27, i32 0, i32 0
  %29 = load %struct.TYPE_3__*, %struct.TYPE_3__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 0
  %31 = load %struct.the_nilfs*, %struct.the_nilfs** %30, align 8
  store %struct.the_nilfs* %31, %struct.the_nilfs** %6, align 8
  %32 = load %struct.inode*, %struct.inode** %4, align 8
  %33 = call %struct.TYPE_4__* @NILFS_MDT(%struct.inode* %32)
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  store i64 %35, i64* %12, align 8
  store i32 0, i32* %17, align 4
  store i32 0, i32* %18, align 4
  store i32 0, i32* %24, align 4
  store i32 0, i32* %25, align 4
  %36 = load %struct.the_nilfs*, %struct.the_nilfs** %6, align 8
  %37 = getelementptr inbounds %struct.the_nilfs, %struct.the_nilfs* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = shl i32 1, %38
  %40 = load %struct.the_nilfs*, %struct.the_nilfs** %6, align 8
  %41 = getelementptr inbounds %struct.the_nilfs, %struct.the_nilfs* %40, i32 0, i32 3
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @bdev_logical_block_size(i32 %42)
  %44 = sdiv i32 %39, %43
  store i32 %44, i32* %26, align 4
  %45 = load %struct.fstrim_range*, %struct.fstrim_range** %5, align 8
  %46 = getelementptr inbounds %struct.fstrim_range, %struct.fstrim_range* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.the_nilfs*, %struct.the_nilfs** %6, align 8
  %49 = getelementptr inbounds %struct.the_nilfs, %struct.the_nilfs* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = ashr i32 %47, %50
  store i32 %51, i32* %22, align 4
  %52 = load %struct.fstrim_range*, %struct.fstrim_range** %5, align 8
  %53 = getelementptr inbounds %struct.fstrim_range, %struct.fstrim_range* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = load %struct.the_nilfs*, %struct.the_nilfs** %6, align 8
  %56 = getelementptr inbounds %struct.the_nilfs, %struct.the_nilfs* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = ashr i32 %54, %57
  store i32 %58, i32* %21, align 4
  %59 = load %struct.the_nilfs*, %struct.the_nilfs** %6, align 8
  %60 = getelementptr inbounds %struct.the_nilfs, %struct.the_nilfs* %59, i32 0, i32 4
  %61 = load i64, i64* %60, align 8
  %62 = trunc i64 %61 to i32
  %63 = load %struct.the_nilfs*, %struct.the_nilfs** %6, align 8
  %64 = getelementptr inbounds %struct.the_nilfs, %struct.the_nilfs* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = mul nsw i32 %62, %65
  store i32 %66, i32* %23, align 4
  %67 = load i32, i32* %22, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %79

69:                                               ; preds = %2
  %70 = load %struct.fstrim_range*, %struct.fstrim_range** %5, align 8
  %71 = getelementptr inbounds %struct.fstrim_range, %struct.fstrim_range* %70, i32 0, i32 2
  %72 = load i32, i32* %71, align 4
  %73 = load i32, i32* %23, align 4
  %74 = load %struct.the_nilfs*, %struct.the_nilfs** %6, align 8
  %75 = getelementptr inbounds %struct.the_nilfs, %struct.the_nilfs* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  %77 = shl i32 %73, %76
  %78 = icmp sge i32 %72, %77
  br i1 %78, label %79, label %82

79:                                               ; preds = %69, %2
  %80 = load i32, i32* @EINVAL, align 4
  %81 = sub nsw i32 0, %80
  store i32 %81, i32* %3, align 4
  br label %321

82:                                               ; preds = %69
  %83 = load %struct.fstrim_range*, %struct.fstrim_range** %5, align 8
  %84 = getelementptr inbounds %struct.fstrim_range, %struct.fstrim_range* %83, i32 0, i32 2
  %85 = load i32, i32* %84, align 4
  %86 = load %struct.the_nilfs*, %struct.the_nilfs** %6, align 8
  %87 = getelementptr inbounds %struct.the_nilfs, %struct.the_nilfs* %86, i32 0, i32 2
  %88 = load i32, i32* %87, align 8
  %89 = add nsw i32 %85, %88
  %90 = sub nsw i32 %89, 1
  %91 = load %struct.the_nilfs*, %struct.the_nilfs** %6, align 8
  %92 = getelementptr inbounds %struct.the_nilfs, %struct.the_nilfs* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 8
  %94 = ashr i32 %90, %93
  store i32 %94, i32* %15, align 4
  %95 = load i32, i32* %23, align 4
  %96 = load i32, i32* %15, align 4
  %97 = sub nsw i32 %95, %96
  %98 = load i32, i32* %22, align 4
  %99 = icmp slt i32 %97, %98
  br i1 %99, label %100, label %103

100:                                              ; preds = %82
  %101 = load i32, i32* %23, align 4
  %102 = sub nsw i32 %101, 1
  store i32 %102, i32* %16, align 4
  br label %108

103:                                              ; preds = %82
  %104 = load i32, i32* %15, align 4
  %105 = load i32, i32* %22, align 4
  %106 = add nsw i32 %104, %105
  %107 = sub nsw i32 %106, 1
  store i32 %107, i32* %16, align 4
  br label %108

108:                                              ; preds = %103, %100
  %109 = load %struct.the_nilfs*, %struct.the_nilfs** %6, align 8
  %110 = load i32, i32* %15, align 4
  %111 = call i32 @nilfs_get_segnum_of_block(%struct.the_nilfs* %109, i32 %110)
  store i32 %111, i32* %19, align 4
  %112 = load %struct.the_nilfs*, %struct.the_nilfs** %6, align 8
  %113 = load i32, i32* %16, align 4
  %114 = call i32 @nilfs_get_segnum_of_block(%struct.the_nilfs* %112, i32 %113)
  store i32 %114, i32* %20, align 4
  %115 = load %struct.inode*, %struct.inode** %4, align 8
  %116 = call %struct.TYPE_4__* @NILFS_MDT(%struct.inode* %115)
  %117 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %116, i32 0, i32 1
  %118 = call i32 @down_read(i32* %117)
  br label %119

119:                                              ; preds = %252, %139, %108
  %120 = load i32, i32* %19, align 4
  %121 = load i32, i32* %20, align 4
  %122 = icmp sle i32 %120, %121
  br i1 %122, label %123, label %257

123:                                              ; preds = %119
  %124 = load %struct.inode*, %struct.inode** %4, align 8
  %125 = load i32, i32* %19, align 4
  %126 = load i32, i32* %20, align 4
  %127 = call i64 @nilfs_sufile_segment_usages_in_block(%struct.inode* %124, i32 %125, i32 %126)
  store i64 %127, i64* %10, align 8
  %128 = load %struct.inode*, %struct.inode** %4, align 8
  %129 = load i32, i32* %19, align 4
  %130 = call i32 @nilfs_sufile_get_segment_usage_block(%struct.inode* %128, i32 %129, i32 0, %struct.buffer_head** %7)
  store i32 %130, i32* %25, align 4
  %131 = load i32, i32* %25, align 4
  %132 = icmp slt i32 %131, 0
  br i1 %132, label %133, label %145

133:                                              ; preds = %123
  %134 = load i32, i32* %25, align 4
  %135 = load i32, i32* @ENOENT, align 4
  %136 = sub nsw i32 0, %135
  %137 = icmp ne i32 %134, %136
  br i1 %137, label %138, label %139

138:                                              ; preds = %133
  br label %308

139:                                              ; preds = %133
  %140 = load i64, i64* %10, align 8
  %141 = load i32, i32* %19, align 4
  %142 = sext i32 %141 to i64
  %143 = add i64 %142, %140
  %144 = trunc i64 %143 to i32
  store i32 %144, i32* %19, align 4
  br label %119

145:                                              ; preds = %123
  %146 = load %struct.buffer_head*, %struct.buffer_head** %7, align 8
  %147 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %146, i32 0, i32 0
  %148 = load i32, i32* %147, align 4
  %149 = call i8* @kmap_atomic(i32 %148)
  store i8* %149, i8** %9, align 8
  %150 = load %struct.inode*, %struct.inode** %4, align 8
  %151 = load i32, i32* %19, align 4
  %152 = load %struct.buffer_head*, %struct.buffer_head** %7, align 8
  %153 = load i8*, i8** %9, align 8
  %154 = call %struct.nilfs_segment_usage* @nilfs_sufile_block_get_segment_usage(%struct.inode* %150, i32 %151, %struct.buffer_head* %152, i8* %153)
  store %struct.nilfs_segment_usage* %154, %struct.nilfs_segment_usage** %8, align 8
  store i64 0, i64* %11, align 8
  br label %155

155:                                              ; preds = %242, %145
  %156 = load i64, i64* %11, align 8
  %157 = load i64, i64* %10, align 8
  %158 = icmp ult i64 %156, %157
  br i1 %158, label %159, label %252

159:                                              ; preds = %155
  %160 = load %struct.nilfs_segment_usage*, %struct.nilfs_segment_usage** %8, align 8
  %161 = call i32 @nilfs_segment_usage_clean(%struct.nilfs_segment_usage* %160)
  %162 = icmp ne i32 %161, 0
  br i1 %162, label %164, label %163

163:                                              ; preds = %159
  br label %242

164:                                              ; preds = %159
  %165 = load %struct.the_nilfs*, %struct.the_nilfs** %6, align 8
  %166 = load i32, i32* %19, align 4
  %167 = call i32 @nilfs_get_segment_range(%struct.the_nilfs* %165, i32 %166, i32* %13, i32* %14)
  %168 = load i32, i32* %18, align 4
  %169 = icmp ne i32 %168, 0
  br i1 %169, label %176, label %170

170:                                              ; preds = %164
  %171 = load i32, i32* %13, align 4
  store i32 %171, i32* %17, align 4
  %172 = load i32, i32* %14, align 4
  %173 = load i32, i32* %13, align 4
  %174 = sub nsw i32 %172, %173
  %175 = add nsw i32 %174, 1
  store i32 %175, i32* %18, align 4
  br label %242

176:                                              ; preds = %164
  %177 = load i32, i32* %17, align 4
  %178 = load i32, i32* %18, align 4
  %179 = add nsw i32 %177, %178
  %180 = load i32, i32* %13, align 4
  %181 = icmp eq i32 %179, %180
  br i1 %181, label %182, label %189

182:                                              ; preds = %176
  %183 = load i32, i32* %14, align 4
  %184 = load i32, i32* %13, align 4
  %185 = sub nsw i32 %183, %184
  %186 = add nsw i32 %185, 1
  %187 = load i32, i32* %18, align 4
  %188 = add nsw i32 %187, %186
  store i32 %188, i32* %18, align 4
  br label %242

189:                                              ; preds = %176
  %190 = load i32, i32* %17, align 4
  %191 = load i32, i32* %15, align 4
  %192 = icmp slt i32 %190, %191
  br i1 %192, label %193, label %200

193:                                              ; preds = %189
  %194 = load i32, i32* %15, align 4
  %195 = load i32, i32* %17, align 4
  %196 = sub nsw i32 %194, %195
  %197 = load i32, i32* %18, align 4
  %198 = sub nsw i32 %197, %196
  store i32 %198, i32* %18, align 4
  %199 = load i32, i32* %15, align 4
  store i32 %199, i32* %17, align 4
  br label %200

200:                                              ; preds = %193, %189
  %201 = load i32, i32* %18, align 4
  %202 = load i32, i32* %21, align 4
  %203 = icmp sge i32 %201, %202
  br i1 %203, label %204, label %236

204:                                              ; preds = %200
  %205 = load i8*, i8** %9, align 8
  %206 = call i32 @kunmap_atomic(i8* %205)
  %207 = load %struct.the_nilfs*, %struct.the_nilfs** %6, align 8
  %208 = getelementptr inbounds %struct.the_nilfs, %struct.the_nilfs* %207, i32 0, i32 3
  %209 = load i32, i32* %208, align 4
  %210 = load i32, i32* %17, align 4
  %211 = load i32, i32* %26, align 4
  %212 = mul i32 %210, %211
  %213 = load i32, i32* %18, align 4
  %214 = load i32, i32* %26, align 4
  %215 = mul i32 %213, %214
  %216 = load i32, i32* @GFP_NOFS, align 4
  %217 = call i32 @blkdev_issue_discard(i32 %209, i32 %212, i32 %215, i32 %216, i32 0)
  store i32 %217, i32* %25, align 4
  %218 = load i32, i32* %25, align 4
  %219 = icmp slt i32 %218, 0
  br i1 %219, label %220, label %223

220:                                              ; preds = %204
  %221 = load %struct.buffer_head*, %struct.buffer_head** %7, align 8
  %222 = call i32 @put_bh(%struct.buffer_head* %221)
  br label %308

223:                                              ; preds = %204
  %224 = load i32, i32* %18, align 4
  %225 = load i32, i32* %24, align 4
  %226 = add nsw i32 %225, %224
  store i32 %226, i32* %24, align 4
  %227 = load %struct.buffer_head*, %struct.buffer_head** %7, align 8
  %228 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %227, i32 0, i32 0
  %229 = load i32, i32* %228, align 4
  %230 = call i8* @kmap_atomic(i32 %229)
  store i8* %230, i8** %9, align 8
  %231 = load %struct.inode*, %struct.inode** %4, align 8
  %232 = load i32, i32* %19, align 4
  %233 = load %struct.buffer_head*, %struct.buffer_head** %7, align 8
  %234 = load i8*, i8** %9, align 8
  %235 = call %struct.nilfs_segment_usage* @nilfs_sufile_block_get_segment_usage(%struct.inode* %231, i32 %232, %struct.buffer_head* %233, i8* %234)
  store %struct.nilfs_segment_usage* %235, %struct.nilfs_segment_usage** %8, align 8
  br label %236

236:                                              ; preds = %223, %200
  %237 = load i32, i32* %13, align 4
  store i32 %237, i32* %17, align 4
  %238 = load i32, i32* %14, align 4
  %239 = load i32, i32* %13, align 4
  %240 = sub nsw i32 %238, %239
  %241 = add nsw i32 %240, 1
  store i32 %241, i32* %18, align 4
  br label %242

242:                                              ; preds = %236, %182, %170, %163
  %243 = load i64, i64* %11, align 8
  %244 = add i64 %243, 1
  store i64 %244, i64* %11, align 8
  %245 = load i32, i32* %19, align 4
  %246 = add nsw i32 %245, 1
  store i32 %246, i32* %19, align 4
  %247 = load %struct.nilfs_segment_usage*, %struct.nilfs_segment_usage** %8, align 8
  %248 = bitcast %struct.nilfs_segment_usage* %247 to i8*
  %249 = load i64, i64* %12, align 8
  %250 = getelementptr i8, i8* %248, i64 %249
  %251 = bitcast i8* %250 to %struct.nilfs_segment_usage*
  store %struct.nilfs_segment_usage* %251, %struct.nilfs_segment_usage** %8, align 8
  br label %155

252:                                              ; preds = %155
  %253 = load i8*, i8** %9, align 8
  %254 = call i32 @kunmap_atomic(i8* %253)
  %255 = load %struct.buffer_head*, %struct.buffer_head** %7, align 8
  %256 = call i32 @put_bh(%struct.buffer_head* %255)
  br label %119

257:                                              ; preds = %119
  %258 = load i32, i32* %18, align 4
  %259 = icmp ne i32 %258, 0
  br i1 %259, label %260, label %307

260:                                              ; preds = %257
  %261 = load i32, i32* %17, align 4
  %262 = load i32, i32* %15, align 4
  %263 = icmp slt i32 %261, %262
  br i1 %263, label %264, label %271

264:                                              ; preds = %260
  %265 = load i32, i32* %15, align 4
  %266 = load i32, i32* %17, align 4
  %267 = sub nsw i32 %265, %266
  %268 = load i32, i32* %18, align 4
  %269 = sub nsw i32 %268, %267
  store i32 %269, i32* %18, align 4
  %270 = load i32, i32* %15, align 4
  store i32 %270, i32* %17, align 4
  br label %271

271:                                              ; preds = %264, %260
  %272 = load i32, i32* %17, align 4
  %273 = load i32, i32* %18, align 4
  %274 = add nsw i32 %272, %273
  %275 = load i32, i32* %16, align 4
  %276 = add nsw i32 %275, 1
  %277 = icmp sgt i32 %274, %276
  br i1 %277, label %278, label %283

278:                                              ; preds = %271
  %279 = load i32, i32* %16, align 4
  %280 = load i32, i32* %17, align 4
  %281 = sub nsw i32 %279, %280
  %282 = add nsw i32 %281, 1
  store i32 %282, i32* %18, align 4
  br label %283

283:                                              ; preds = %278, %271
  %284 = load i32, i32* %18, align 4
  %285 = load i32, i32* %21, align 4
  %286 = icmp sge i32 %284, %285
  br i1 %286, label %287, label %306

287:                                              ; preds = %283
  %288 = load %struct.the_nilfs*, %struct.the_nilfs** %6, align 8
  %289 = getelementptr inbounds %struct.the_nilfs, %struct.the_nilfs* %288, i32 0, i32 3
  %290 = load i32, i32* %289, align 4
  %291 = load i32, i32* %17, align 4
  %292 = load i32, i32* %26, align 4
  %293 = mul i32 %291, %292
  %294 = load i32, i32* %18, align 4
  %295 = load i32, i32* %26, align 4
  %296 = mul i32 %294, %295
  %297 = load i32, i32* @GFP_NOFS, align 4
  %298 = call i32 @blkdev_issue_discard(i32 %290, i32 %293, i32 %296, i32 %297, i32 0)
  store i32 %298, i32* %25, align 4
  %299 = load i32, i32* %25, align 4
  %300 = icmp ne i32 %299, 0
  br i1 %300, label %305, label %301

301:                                              ; preds = %287
  %302 = load i32, i32* %18, align 4
  %303 = load i32, i32* %24, align 4
  %304 = add nsw i32 %303, %302
  store i32 %304, i32* %24, align 4
  br label %305

305:                                              ; preds = %301, %287
  br label %306

306:                                              ; preds = %305, %283
  br label %307

307:                                              ; preds = %306, %257
  br label %308

308:                                              ; preds = %307, %220, %138
  %309 = load %struct.inode*, %struct.inode** %4, align 8
  %310 = call %struct.TYPE_4__* @NILFS_MDT(%struct.inode* %309)
  %311 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %310, i32 0, i32 1
  %312 = call i32 @up_read(i32* %311)
  %313 = load i32, i32* %24, align 4
  %314 = load %struct.the_nilfs*, %struct.the_nilfs** %6, align 8
  %315 = getelementptr inbounds %struct.the_nilfs, %struct.the_nilfs* %314, i32 0, i32 0
  %316 = load i32, i32* %315, align 8
  %317 = shl i32 %313, %316
  %318 = load %struct.fstrim_range*, %struct.fstrim_range** %5, align 8
  %319 = getelementptr inbounds %struct.fstrim_range, %struct.fstrim_range* %318, i32 0, i32 0
  store i32 %317, i32* %319, align 4
  %320 = load i32, i32* %25, align 4
  store i32 %320, i32* %3, align 4
  br label %321

321:                                              ; preds = %308, %79
  %322 = load i32, i32* %3, align 4
  ret i32 %322
}

declare dso_local %struct.TYPE_4__* @NILFS_MDT(%struct.inode*) #1

declare dso_local i32 @bdev_logical_block_size(i32) #1

declare dso_local i32 @nilfs_get_segnum_of_block(%struct.the_nilfs*, i32) #1

declare dso_local i32 @down_read(i32*) #1

declare dso_local i64 @nilfs_sufile_segment_usages_in_block(%struct.inode*, i32, i32) #1

declare dso_local i32 @nilfs_sufile_get_segment_usage_block(%struct.inode*, i32, i32, %struct.buffer_head**) #1

declare dso_local i8* @kmap_atomic(i32) #1

declare dso_local %struct.nilfs_segment_usage* @nilfs_sufile_block_get_segment_usage(%struct.inode*, i32, %struct.buffer_head*, i8*) #1

declare dso_local i32 @nilfs_segment_usage_clean(%struct.nilfs_segment_usage*) #1

declare dso_local i32 @nilfs_get_segment_range(%struct.the_nilfs*, i32, i32*, i32*) #1

declare dso_local i32 @kunmap_atomic(i8*) #1

declare dso_local i32 @blkdev_issue_discard(i32, i32, i32, i32, i32) #1

declare dso_local i32 @put_bh(%struct.buffer_head*) #1

declare dso_local i32 @up_read(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
