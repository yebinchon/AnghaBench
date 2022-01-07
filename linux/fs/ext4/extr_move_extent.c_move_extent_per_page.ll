; ModuleID = '/home/carl/AnghaBench/linux/fs/ext4/extr_move_extent.c_move_extent_per_page.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ext4/extr_move_extent.c_move_extent_per_page.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.inode = type { i32, i32, %struct.super_block* }
%struct.super_block = type { i64 }
%struct.page = type { i32 }
%struct.buffer_head = type { %struct.buffer_head* }
%struct.TYPE_2__ = type { i64 }

@PAGE_SIZE = common dso_local global i32 0, align 4
@EXT4_HT_MOVE_EXTENTS = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@PAGE_SHIFT = common dso_local global i32 0, align 4
@ENOSPC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [46 x i8] c"Unable to copy data block, data will be lost.\00", align 1
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, %struct.inode*, i32, i32, i32, i32, i32, i32*)* @move_extent_per_page to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @move_extent_per_page(%struct.file* %0, %struct.inode* %1, i32 %2, i32 %3, i32 %4, i32 %5, i32 %6, i32* %7) #0 {
  %9 = alloca i32, align 4
  %10 = alloca %struct.file*, align 8
  %11 = alloca %struct.inode*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32*, align 8
  %18 = alloca %struct.inode*, align 8
  %19 = alloca [2 x %struct.page*], align 16
  %20 = alloca i32*, align 8
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i64, align 8
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  %29 = alloca i32, align 4
  %30 = alloca i32, align 4
  %31 = alloca i32, align 4
  %32 = alloca i32, align 4
  %33 = alloca i32, align 4
  %34 = alloca %struct.super_block*, align 8
  %35 = alloca %struct.buffer_head*, align 8
  store %struct.file* %0, %struct.file** %10, align 8
  store %struct.inode* %1, %struct.inode** %11, align 8
  store i32 %2, i32* %12, align 4
  store i32 %3, i32* %13, align 4
  store i32 %4, i32* %14, align 4
  store i32 %5, i32* %15, align 4
  store i32 %6, i32* %16, align 4
  store i32* %7, i32** %17, align 8
  %36 = load %struct.file*, %struct.file** %10, align 8
  %37 = call %struct.inode* @file_inode(%struct.file* %36)
  store %struct.inode* %37, %struct.inode** %18, align 8
  %38 = bitcast [2 x %struct.page*]* %19 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %38, i8 0, i64 16, i1 false)
  %39 = load %struct.inode*, %struct.inode** %18, align 8
  %40 = getelementptr inbounds %struct.inode, %struct.inode* %39, i32 0, i32 2
  %41 = load %struct.super_block*, %struct.super_block** %40, align 8
  %42 = getelementptr inbounds %struct.super_block, %struct.super_block* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  store i64 %43, i64* %23, align 8
  store i32 0, i32* %30, align 4
  store i32 0, i32* %31, align 4
  %44 = load i32, i32* %14, align 4
  %45 = load %struct.inode*, %struct.inode** %18, align 8
  %46 = getelementptr inbounds %struct.inode, %struct.inode* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = shl i32 %44, %47
  store i32 %48, i32* %32, align 4
  %49 = load i32, i32* @PAGE_SIZE, align 4
  %50 = load %struct.inode*, %struct.inode** %18, align 8
  %51 = getelementptr inbounds %struct.inode, %struct.inode* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = ashr i32 %49, %52
  store i32 %53, i32* %33, align 4
  %54 = load %struct.inode*, %struct.inode** %18, align 8
  %55 = getelementptr inbounds %struct.inode, %struct.inode* %54, i32 0, i32 2
  %56 = load %struct.super_block*, %struct.super_block** %55, align 8
  store %struct.super_block* %56, %struct.super_block** %34, align 8
  store %struct.buffer_head* null, %struct.buffer_head** %35, align 8
  br label %57

57:                                               ; preds = %413, %389, %8
  %58 = load i32*, i32** %17, align 8
  store i32 0, i32* %58, align 4
  %59 = load %struct.inode*, %struct.inode** %18, align 8
  %60 = call i32 @ext4_writepage_trans_blocks(%struct.inode* %59)
  %61 = mul nsw i32 %60, 2
  store i32 %61, i32* %29, align 4
  %62 = load %struct.inode*, %struct.inode** %18, align 8
  %63 = load i32, i32* @EXT4_HT_MOVE_EXTENTS, align 4
  %64 = load i32, i32* %29, align 4
  %65 = call i32* @ext4_journal_start(%struct.inode* %62, i32 %63, i32 %64)
  store i32* %65, i32** %20, align 8
  %66 = load i32*, i32** %20, align 8
  %67 = call i64 @IS_ERR(i32* %66)
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %73

69:                                               ; preds = %57
  %70 = load i32*, i32** %20, align 8
  %71 = call i32 @PTR_ERR(i32* %70)
  %72 = load i32*, i32** %17, align 8
  store i32 %71, i32* %72, align 4
  store i32 0, i32* %9, align 4
  br label %441

73:                                               ; preds = %57
  %74 = load i32, i32* %12, align 4
  %75 = load i32, i32* %33, align 4
  %76 = mul nsw i32 %74, %75
  %77 = load i32, i32* %14, align 4
  %78 = add nsw i32 %76, %77
  store i32 %78, i32* %21, align 4
  %79 = load i32, i32* %13, align 4
  %80 = load i32, i32* %33, align 4
  %81 = mul nsw i32 %79, %80
  %82 = load i32, i32* %14, align 4
  %83 = add nsw i32 %81, %82
  store i32 %83, i32* %22, align 4
  %84 = load i32, i32* %21, align 4
  %85 = load i32, i32* %15, align 4
  %86 = add nsw i32 %84, %85
  %87 = sub nsw i32 %86, 1
  %88 = load %struct.inode*, %struct.inode** %18, align 8
  %89 = getelementptr inbounds %struct.inode, %struct.inode* %88, i32 0, i32 1
  %90 = load i32, i32* %89, align 4
  %91 = sub nsw i32 %90, 1
  %92 = load %struct.inode*, %struct.inode** %18, align 8
  %93 = getelementptr inbounds %struct.inode, %struct.inode* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 8
  %95 = ashr i32 %91, %94
  %96 = icmp eq i32 %87, %95
  br i1 %96, label %97, label %120

97:                                               ; preds = %73
  %98 = load %struct.inode*, %struct.inode** %18, align 8
  %99 = getelementptr inbounds %struct.inode, %struct.inode* %98, i32 0, i32 1
  %100 = load i32, i32* %99, align 4
  %101 = sext i32 %100 to i64
  %102 = load i64, i64* %23, align 8
  %103 = sub i64 %102, 1
  %104 = and i64 %101, %103
  %105 = trunc i64 %104 to i32
  store i32 %105, i32* %24, align 4
  %106 = load i32, i32* %24, align 4
  %107 = icmp eq i32 %106, 0
  br i1 %107, label %108, label %111

108:                                              ; preds = %97
  %109 = load i64, i64* %23, align 8
  %110 = trunc i64 %109 to i32
  store i32 %110, i32* %24, align 4
  br label %111

111:                                              ; preds = %108, %97
  %112 = load i32, i32* %24, align 4
  %113 = load i32, i32* %15, align 4
  %114 = sub nsw i32 %113, 1
  %115 = load %struct.inode*, %struct.inode** %18, align 8
  %116 = getelementptr inbounds %struct.inode, %struct.inode* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 8
  %118 = shl i32 %114, %117
  %119 = add i32 %112, %118
  store i32 %119, i32* %25, align 4
  br label %126

120:                                              ; preds = %73
  %121 = load i32, i32* %15, align 4
  %122 = load %struct.inode*, %struct.inode** %18, align 8
  %123 = getelementptr inbounds %struct.inode, %struct.inode* %122, i32 0, i32 0
  %124 = load i32, i32* %123, align 8
  %125 = shl i32 %121, %124
  store i32 %125, i32* %25, align 4
  br label %126

126:                                              ; preds = %120, %111
  %127 = load i32, i32* %25, align 4
  store i32 %127, i32* %26, align 4
  %128 = load %struct.inode*, %struct.inode** %18, align 8
  %129 = load %struct.inode*, %struct.inode** %11, align 8
  %130 = load i32, i32* %12, align 4
  %131 = load i32, i32* %13, align 4
  %132 = getelementptr inbounds [2 x %struct.page*], [2 x %struct.page*]* %19, i64 0, i64 0
  %133 = call i32 @mext_page_double_lock(%struct.inode* %128, %struct.inode* %129, i32 %130, i32 %131, %struct.page** %132)
  %134 = load i32*, i32** %17, align 8
  store i32 %133, i32* %134, align 4
  %135 = load i32*, i32** %17, align 8
  %136 = load i32, i32* %135, align 4
  %137 = icmp slt i32 %136, 0
  %138 = zext i1 %137 to i32
  %139 = call i64 @unlikely(i32 %138)
  %140 = icmp ne i64 %139, 0
  br i1 %140, label %141, label %142

141:                                              ; preds = %126
  br label %377

142:                                              ; preds = %126
  %143 = load i32, i32* %16, align 4
  %144 = icmp ne i32 %143, 0
  br i1 %144, label %145, label %214

145:                                              ; preds = %142
  %146 = load %struct.inode*, %struct.inode** %18, align 8
  %147 = load %struct.inode*, %struct.inode** %11, align 8
  %148 = call i32 @ext4_double_down_write_data_sem(%struct.inode* %146, %struct.inode* %147)
  %149 = load %struct.inode*, %struct.inode** %18, align 8
  %150 = load i32, i32* %21, align 4
  %151 = load i32, i32* %15, align 4
  %152 = load i32*, i32** %17, align 8
  %153 = call i32 @mext_check_coverage(%struct.inode* %149, i32 %150, i32 %151, i32 1, i32* %152)
  store i32 %153, i32* %16, align 4
  %154 = load i32*, i32** %17, align 8
  %155 = load i32, i32* %154, align 4
  %156 = icmp ne i32 %155, 0
  br i1 %156, label %157, label %158

157:                                              ; preds = %145
  br label %210

158:                                              ; preds = %145
  %159 = load %struct.inode*, %struct.inode** %11, align 8
  %160 = load i32, i32* %22, align 4
  %161 = load i32, i32* %15, align 4
  %162 = load i32*, i32** %17, align 8
  %163 = call i32 @mext_check_coverage(%struct.inode* %159, i32 %160, i32 %161, i32 1, i32* %162)
  %164 = load i32, i32* %16, align 4
  %165 = and i32 %164, %163
  store i32 %165, i32* %16, align 4
  %166 = load i32*, i32** %17, align 8
  %167 = load i32, i32* %166, align 4
  %168 = icmp ne i32 %167, 0
  br i1 %168, label %169, label %170

169:                                              ; preds = %158
  br label %210

170:                                              ; preds = %158
  %171 = load i32, i32* %16, align 4
  %172 = icmp ne i32 %171, 0
  br i1 %172, label %177, label %173

173:                                              ; preds = %170
  %174 = load %struct.inode*, %struct.inode** %18, align 8
  %175 = load %struct.inode*, %struct.inode** %11, align 8
  %176 = call i32 @ext4_double_up_write_data_sem(%struct.inode* %174, %struct.inode* %175)
  br label %215

177:                                              ; preds = %170
  %178 = getelementptr inbounds [2 x %struct.page*], [2 x %struct.page*]* %19, i64 0, i64 0
  %179 = load %struct.page*, %struct.page** %178, align 16
  %180 = call i64 @page_has_private(%struct.page* %179)
  %181 = icmp ne i64 %180, 0
  br i1 %181, label %182, label %187

182:                                              ; preds = %177
  %183 = getelementptr inbounds [2 x %struct.page*], [2 x %struct.page*]* %19, i64 0, i64 0
  %184 = load %struct.page*, %struct.page** %183, align 16
  %185 = call i32 @try_to_release_page(%struct.page* %184, i32 0)
  %186 = icmp ne i32 %185, 0
  br i1 %186, label %187, label %197

187:                                              ; preds = %182, %177
  %188 = getelementptr inbounds [2 x %struct.page*], [2 x %struct.page*]* %19, i64 0, i64 1
  %189 = load %struct.page*, %struct.page** %188, align 8
  %190 = call i64 @page_has_private(%struct.page* %189)
  %191 = icmp ne i64 %190, 0
  br i1 %191, label %192, label %201

192:                                              ; preds = %187
  %193 = getelementptr inbounds [2 x %struct.page*], [2 x %struct.page*]* %19, i64 0, i64 1
  %194 = load %struct.page*, %struct.page** %193, align 8
  %195 = call i32 @try_to_release_page(%struct.page* %194, i32 0)
  %196 = icmp ne i32 %195, 0
  br i1 %196, label %201, label %197

197:                                              ; preds = %192, %182
  %198 = load i32, i32* @EBUSY, align 4
  %199 = sub nsw i32 0, %198
  %200 = load i32*, i32** %17, align 8
  store i32 %199, i32* %200, align 4
  br label %210

201:                                              ; preds = %192, %187
  %202 = load i32*, i32** %20, align 8
  %203 = load %struct.inode*, %struct.inode** %18, align 8
  %204 = load %struct.inode*, %struct.inode** %11, align 8
  %205 = load i32, i32* %21, align 4
  %206 = load i32, i32* %22, align 4
  %207 = load i32, i32* %15, align 4
  %208 = load i32*, i32** %17, align 8
  %209 = call i32 @ext4_swap_extents(i32* %202, %struct.inode* %203, %struct.inode* %204, i32 %205, i32 %206, i32 %207, i32 1, i32* %208)
  store i32 %209, i32* %31, align 4
  br label %210

210:                                              ; preds = %201, %197, %169, %157
  %211 = load %struct.inode*, %struct.inode** %18, align 8
  %212 = load %struct.inode*, %struct.inode** %11, align 8
  %213 = call i32 @ext4_double_up_write_data_sem(%struct.inode* %211, %struct.inode* %212)
  br label %364

214:                                              ; preds = %142
  br label %215

215:                                              ; preds = %214, %173
  %216 = getelementptr inbounds [2 x %struct.page*], [2 x %struct.page*]* %19, i64 0, i64 0
  %217 = load %struct.page*, %struct.page** %216, align 16
  %218 = load i32, i32* %32, align 4
  %219 = load i32, i32* %32, align 4
  %220 = load i32, i32* %26, align 4
  %221 = add i32 %219, %220
  %222 = call i32 @mext_page_mkuptodate(%struct.page* %217, i32 %218, i32 %221)
  %223 = load i32*, i32** %17, align 8
  store i32 %222, i32* %223, align 4
  %224 = load i32*, i32** %17, align 8
  %225 = load i32, i32* %224, align 4
  %226 = icmp ne i32 %225, 0
  br i1 %226, label %227, label %228

227:                                              ; preds = %215
  br label %364

228:                                              ; preds = %215
  %229 = getelementptr inbounds [2 x %struct.page*], [2 x %struct.page*]* %19, i64 0, i64 0
  %230 = load %struct.page*, %struct.page** %229, align 16
  %231 = call i64 @page_has_private(%struct.page* %230)
  %232 = icmp ne i64 %231, 0
  br i1 %232, label %233, label %238

233:                                              ; preds = %228
  %234 = getelementptr inbounds [2 x %struct.page*], [2 x %struct.page*]* %19, i64 0, i64 0
  %235 = load %struct.page*, %struct.page** %234, align 16
  %236 = call i32 @try_to_release_page(%struct.page* %235, i32 0)
  %237 = icmp ne i32 %236, 0
  br i1 %237, label %238, label %248

238:                                              ; preds = %233, %228
  %239 = getelementptr inbounds [2 x %struct.page*], [2 x %struct.page*]* %19, i64 0, i64 1
  %240 = load %struct.page*, %struct.page** %239, align 8
  %241 = call i64 @page_has_private(%struct.page* %240)
  %242 = icmp ne i64 %241, 0
  br i1 %242, label %243, label %252

243:                                              ; preds = %238
  %244 = getelementptr inbounds [2 x %struct.page*], [2 x %struct.page*]* %19, i64 0, i64 1
  %245 = load %struct.page*, %struct.page** %244, align 8
  %246 = call i32 @try_to_release_page(%struct.page* %245, i32 0)
  %247 = icmp ne i32 %246, 0
  br i1 %247, label %252, label %248

248:                                              ; preds = %243, %233
  %249 = load i32, i32* @EBUSY, align 4
  %250 = sub nsw i32 0, %249
  %251 = load i32*, i32** %17, align 8
  store i32 %250, i32* %251, align 4
  br label %364

252:                                              ; preds = %243, %238
  %253 = load %struct.inode*, %struct.inode** %18, align 8
  %254 = load %struct.inode*, %struct.inode** %11, align 8
  %255 = call i32 @ext4_double_down_write_data_sem(%struct.inode* %253, %struct.inode* %254)
  %256 = load i32*, i32** %20, align 8
  %257 = load %struct.inode*, %struct.inode** %18, align 8
  %258 = load %struct.inode*, %struct.inode** %11, align 8
  %259 = load i32, i32* %21, align 4
  %260 = load i32, i32* %22, align 4
  %261 = load i32, i32* %15, align 4
  %262 = load i32*, i32** %17, align 8
  %263 = call i32 @ext4_swap_extents(i32* %256, %struct.inode* %257, %struct.inode* %258, i32 %259, i32 %260, i32 %261, i32 1, i32* %262)
  store i32 %263, i32* %31, align 4
  %264 = load %struct.inode*, %struct.inode** %18, align 8
  %265 = load %struct.inode*, %struct.inode** %11, align 8
  %266 = call i32 @ext4_double_up_write_data_sem(%struct.inode* %264, %struct.inode* %265)
  %267 = load i32*, i32** %17, align 8
  %268 = load i32, i32* %267, align 4
  %269 = icmp ne i32 %268, 0
  br i1 %269, label %270, label %282

270:                                              ; preds = %252
  %271 = load i32, i32* %31, align 4
  %272 = icmp ne i32 %271, 0
  br i1 %272, label %273, label %280

273:                                              ; preds = %270
  %274 = load i32, i32* %31, align 4
  store i32 %274, i32* %15, align 4
  %275 = load i32, i32* %15, align 4
  %276 = load %struct.inode*, %struct.inode** %18, align 8
  %277 = getelementptr inbounds %struct.inode, %struct.inode* %276, i32 0, i32 0
  %278 = load i32, i32* %277, align 8
  %279 = shl i32 %275, %278
  store i32 %279, i32* %26, align 4
  br label %281

280:                                              ; preds = %270
  br label %364

281:                                              ; preds = %273
  br label %282

282:                                              ; preds = %281, %252
  %283 = getelementptr inbounds [2 x %struct.page*], [2 x %struct.page*]* %19, i64 0, i64 0
  %284 = load %struct.page*, %struct.page** %283, align 16
  %285 = call i32 @page_has_buffers(%struct.page* %284)
  %286 = icmp ne i32 %285, 0
  br i1 %286, label %295, label %287

287:                                              ; preds = %282
  %288 = getelementptr inbounds [2 x %struct.page*], [2 x %struct.page*]* %19, i64 0, i64 0
  %289 = load %struct.page*, %struct.page** %288, align 16
  %290 = load %struct.inode*, %struct.inode** %18, align 8
  %291 = getelementptr inbounds %struct.inode, %struct.inode* %290, i32 0, i32 0
  %292 = load i32, i32* %291, align 8
  %293 = shl i32 1, %292
  %294 = call i32 @create_empty_buffers(%struct.page* %289, i32 %293, i32 0)
  br label %295

295:                                              ; preds = %287, %282
  %296 = getelementptr inbounds [2 x %struct.page*], [2 x %struct.page*]* %19, i64 0, i64 0
  %297 = load %struct.page*, %struct.page** %296, align 16
  %298 = call %struct.buffer_head* @page_buffers(%struct.page* %297)
  store %struct.buffer_head* %298, %struct.buffer_head** %35, align 8
  store i32 0, i32* %27, align 4
  br label %299

299:                                              ; preds = %307, %295
  %300 = load i32, i32* %27, align 4
  %301 = load i32, i32* %14, align 4
  %302 = icmp slt i32 %300, %301
  br i1 %302, label %303, label %310

303:                                              ; preds = %299
  %304 = load %struct.buffer_head*, %struct.buffer_head** %35, align 8
  %305 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %304, i32 0, i32 0
  %306 = load %struct.buffer_head*, %struct.buffer_head** %305, align 8
  store %struct.buffer_head* %306, %struct.buffer_head** %35, align 8
  br label %307

307:                                              ; preds = %303
  %308 = load i32, i32* %27, align 4
  %309 = add nsw i32 %308, 1
  store i32 %309, i32* %27, align 4
  br label %299

310:                                              ; preds = %299
  store i32 0, i32* %27, align 4
  br label %311

311:                                              ; preds = %331, %310
  %312 = load i32, i32* %27, align 4
  %313 = load i32, i32* %15, align 4
  %314 = icmp slt i32 %312, %313
  br i1 %314, label %315, label %334

315:                                              ; preds = %311
  %316 = load %struct.inode*, %struct.inode** %18, align 8
  %317 = load i32, i32* %21, align 4
  %318 = load i32, i32* %27, align 4
  %319 = add nsw i32 %317, %318
  %320 = load %struct.buffer_head*, %struct.buffer_head** %35, align 8
  %321 = call i32 @ext4_get_block(%struct.inode* %316, i32 %319, %struct.buffer_head* %320, i32 0)
  %322 = load i32*, i32** %17, align 8
  store i32 %321, i32* %322, align 4
  %323 = load i32*, i32** %17, align 8
  %324 = load i32, i32* %323, align 4
  %325 = icmp slt i32 %324, 0
  br i1 %325, label %326, label %327

326:                                              ; preds = %315
  br label %334

327:                                              ; preds = %315
  %328 = load %struct.buffer_head*, %struct.buffer_head** %35, align 8
  %329 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %328, i32 0, i32 0
  %330 = load %struct.buffer_head*, %struct.buffer_head** %329, align 8
  store %struct.buffer_head* %330, %struct.buffer_head** %35, align 8
  br label %331

331:                                              ; preds = %327
  %332 = load i32, i32* %27, align 4
  %333 = add nsw i32 %332, 1
  store i32 %333, i32* %27, align 4
  br label %311

334:                                              ; preds = %326, %311
  %335 = load i32*, i32** %17, align 8
  %336 = load i32, i32* %335, align 4
  %337 = icmp ne i32 %336, 0
  br i1 %337, label %347, label %338

338:                                              ; preds = %334
  %339 = getelementptr inbounds [2 x %struct.page*], [2 x %struct.page*]* %19, i64 0, i64 0
  %340 = load %struct.page*, %struct.page** %339, align 16
  %341 = load i32, i32* %32, align 4
  %342 = load i32, i32* %32, align 4
  %343 = load i32, i32* %26, align 4
  %344 = add i32 %342, %343
  %345 = call i32 @block_commit_write(%struct.page* %340, i32 %341, i32 %344)
  %346 = load i32*, i32** %17, align 8
  store i32 %345, i32* %346, align 4
  br label %347

347:                                              ; preds = %338, %334
  %348 = load i32*, i32** %17, align 8
  %349 = load i32, i32* %348, align 4
  %350 = icmp slt i32 %349, 0
  %351 = zext i1 %350 to i32
  %352 = call i64 @unlikely(i32 %351)
  %353 = icmp ne i64 %352, 0
  br i1 %353, label %354, label %355

354:                                              ; preds = %347
  br label %416

355:                                              ; preds = %347
  %356 = load i32*, i32** %20, align 8
  %357 = load %struct.inode*, %struct.inode** %18, align 8
  %358 = load i32, i32* %12, align 4
  %359 = load i32, i32* @PAGE_SHIFT, align 4
  %360 = shl i32 %358, %359
  %361 = load i32, i32* %26, align 4
  %362 = call i32 @ext4_jbd2_inode_add_write(i32* %356, %struct.inode* %357, i32 %360, i32 %361)
  %363 = load i32*, i32** %17, align 8
  store i32 %362, i32* %363, align 4
  br label %364

364:                                              ; preds = %440, %355, %280, %248, %227, %210
  %365 = getelementptr inbounds [2 x %struct.page*], [2 x %struct.page*]* %19, i64 0, i64 0
  %366 = load %struct.page*, %struct.page** %365, align 16
  %367 = call i32 @unlock_page(%struct.page* %366)
  %368 = getelementptr inbounds [2 x %struct.page*], [2 x %struct.page*]* %19, i64 0, i64 0
  %369 = load %struct.page*, %struct.page** %368, align 16
  %370 = call i32 @put_page(%struct.page* %369)
  %371 = getelementptr inbounds [2 x %struct.page*], [2 x %struct.page*]* %19, i64 0, i64 1
  %372 = load %struct.page*, %struct.page** %371, align 8
  %373 = call i32 @unlock_page(%struct.page* %372)
  %374 = getelementptr inbounds [2 x %struct.page*], [2 x %struct.page*]* %19, i64 0, i64 1
  %375 = load %struct.page*, %struct.page** %374, align 8
  %376 = call i32 @put_page(%struct.page* %375)
  br label %377

377:                                              ; preds = %364, %141
  %378 = load i32*, i32** %20, align 8
  %379 = call i32 @ext4_journal_stop(i32* %378)
  %380 = load i32*, i32** %17, align 8
  %381 = load i32, i32* %380, align 4
  %382 = load i32, i32* @ENOSPC, align 4
  %383 = sub nsw i32 0, %382
  %384 = icmp eq i32 %381, %383
  br i1 %384, label %385, label %390

385:                                              ; preds = %377
  %386 = load %struct.super_block*, %struct.super_block** %34, align 8
  %387 = call i64 @ext4_should_retry_alloc(%struct.super_block* %386, i32* %30)
  %388 = icmp ne i64 %387, 0
  br i1 %388, label %389, label %390

389:                                              ; preds = %385
  br label %57

390:                                              ; preds = %385, %377
  %391 = load i32*, i32** %17, align 8
  %392 = load i32, i32* %391, align 4
  %393 = load i32, i32* @EBUSY, align 4
  %394 = sub nsw i32 0, %393
  %395 = icmp eq i32 %392, %394
  br i1 %395, label %396, label %414

396:                                              ; preds = %390
  %397 = load i32, i32* %30, align 4
  %398 = add nsw i32 %397, 1
  store i32 %398, i32* %30, align 4
  %399 = icmp slt i32 %397, 4
  br i1 %399, label %400, label %414

400:                                              ; preds = %396
  %401 = load %struct.super_block*, %struct.super_block** %34, align 8
  %402 = call %struct.TYPE_2__* @EXT4_SB(%struct.super_block* %401)
  %403 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %402, i32 0, i32 0
  %404 = load i64, i64* %403, align 8
  %405 = icmp ne i64 %404, 0
  br i1 %405, label %406, label %414

406:                                              ; preds = %400
  %407 = load %struct.super_block*, %struct.super_block** %34, align 8
  %408 = call %struct.TYPE_2__* @EXT4_SB(%struct.super_block* %407)
  %409 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %408, i32 0, i32 0
  %410 = load i64, i64* %409, align 8
  %411 = call i64 @jbd2_journal_force_commit_nested(i64 %410)
  %412 = icmp ne i64 %411, 0
  br i1 %412, label %413, label %414

413:                                              ; preds = %406
  br label %57

414:                                              ; preds = %406, %400, %396, %390
  %415 = load i32, i32* %31, align 4
  store i32 %415, i32* %9, align 4
  br label %441

416:                                              ; preds = %354
  %417 = load %struct.inode*, %struct.inode** %18, align 8
  %418 = load %struct.inode*, %struct.inode** %11, align 8
  %419 = call i32 @ext4_double_down_write_data_sem(%struct.inode* %417, %struct.inode* %418)
  %420 = load i32*, i32** %20, align 8
  %421 = load %struct.inode*, %struct.inode** %11, align 8
  %422 = load %struct.inode*, %struct.inode** %18, align 8
  %423 = load i32, i32* %21, align 4
  %424 = load i32, i32* %22, align 4
  %425 = load i32, i32* %15, align 4
  %426 = call i32 @ext4_swap_extents(i32* %420, %struct.inode* %421, %struct.inode* %422, i32 %423, i32 %424, i32 %425, i32 0, i32* %28)
  store i32 %426, i32* %31, align 4
  %427 = load %struct.inode*, %struct.inode** %18, align 8
  %428 = load %struct.inode*, %struct.inode** %11, align 8
  %429 = call i32 @ext4_double_up_write_data_sem(%struct.inode* %427, %struct.inode* %428)
  %430 = load i32, i32* %31, align 4
  %431 = load i32, i32* %15, align 4
  %432 = icmp ne i32 %430, %431
  br i1 %432, label %433, label %440

433:                                              ; preds = %416
  %434 = load %struct.inode*, %struct.inode** %18, align 8
  %435 = load i32, i32* %21, align 4
  %436 = call i32 @EXT4_ERROR_INODE_BLOCK(%struct.inode* %434, i32 %435, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0))
  %437 = load i32, i32* @EIO, align 4
  %438 = sub nsw i32 0, %437
  %439 = load i32*, i32** %17, align 8
  store i32 %438, i32* %439, align 4
  br label %440

440:                                              ; preds = %433, %416
  store i32 0, i32* %31, align 4
  br label %364

441:                                              ; preds = %414, %69
  %442 = load i32, i32* %9, align 4
  ret i32 %442
}

declare dso_local %struct.inode* @file_inode(%struct.file*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i32 @ext4_writepage_trans_blocks(%struct.inode*) #1

declare dso_local i32* @ext4_journal_start(%struct.inode*, i32, i32) #1

declare dso_local i64 @IS_ERR(i32*) #1

declare dso_local i32 @PTR_ERR(i32*) #1

declare dso_local i32 @mext_page_double_lock(%struct.inode*, %struct.inode*, i32, i32, %struct.page**) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @ext4_double_down_write_data_sem(%struct.inode*, %struct.inode*) #1

declare dso_local i32 @mext_check_coverage(%struct.inode*, i32, i32, i32, i32*) #1

declare dso_local i32 @ext4_double_up_write_data_sem(%struct.inode*, %struct.inode*) #1

declare dso_local i64 @page_has_private(%struct.page*) #1

declare dso_local i32 @try_to_release_page(%struct.page*, i32) #1

declare dso_local i32 @ext4_swap_extents(i32*, %struct.inode*, %struct.inode*, i32, i32, i32, i32, i32*) #1

declare dso_local i32 @mext_page_mkuptodate(%struct.page*, i32, i32) #1

declare dso_local i32 @page_has_buffers(%struct.page*) #1

declare dso_local i32 @create_empty_buffers(%struct.page*, i32, i32) #1

declare dso_local %struct.buffer_head* @page_buffers(%struct.page*) #1

declare dso_local i32 @ext4_get_block(%struct.inode*, i32, %struct.buffer_head*, i32) #1

declare dso_local i32 @block_commit_write(%struct.page*, i32, i32) #1

declare dso_local i32 @ext4_jbd2_inode_add_write(i32*, %struct.inode*, i32, i32) #1

declare dso_local i32 @unlock_page(%struct.page*) #1

declare dso_local i32 @put_page(%struct.page*) #1

declare dso_local i32 @ext4_journal_stop(i32*) #1

declare dso_local i64 @ext4_should_retry_alloc(%struct.super_block*, i32*) #1

declare dso_local %struct.TYPE_2__* @EXT4_SB(%struct.super_block*) #1

declare dso_local i64 @jbd2_journal_force_commit_nested(i64) #1

declare dso_local i32 @EXT4_ERROR_INODE_BLOCK(%struct.inode*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
