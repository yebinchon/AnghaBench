; ModuleID = '/home/carl/AnghaBench/linux/fs/ext4/extr_inode.c_ext4_punch_hole.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ext4/extr_inode.c_ext4_punch_hole.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32, i32, i32, i32, %struct.address_space*, %struct.super_block* }
%struct.address_space = type { i32 }
%struct.super_block = type { i32 }
%struct.TYPE_2__ = type { i32, i32 }

@EOPNOTSUPP = common dso_local global i32 0, align 4
@EXT4_STATE_MAY_INLINE_DATA = common dso_local global i32 0, align 4
@PAGECACHE_TAG_DIRTY = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@EXT4_INODE_EXTENTS = common dso_local global i32 0, align 4
@EXT4_HT_TRUNCATE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ext4_punch_hole(%struct.inode* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.inode*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.super_block*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.address_space*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %17 = load %struct.inode*, %struct.inode** %5, align 8
  %18 = getelementptr inbounds %struct.inode, %struct.inode* %17, i32 0, i32 5
  %19 = load %struct.super_block*, %struct.super_block** %18, align 8
  store %struct.super_block* %19, %struct.super_block** %8, align 8
  %20 = load %struct.inode*, %struct.inode** %5, align 8
  %21 = getelementptr inbounds %struct.inode, %struct.inode* %20, i32 0, i32 4
  %22 = load %struct.address_space*, %struct.address_space** %21, align 8
  store %struct.address_space* %22, %struct.address_space** %11, align 8
  store i32 0, i32* %16, align 4
  %23 = load %struct.inode*, %struct.inode** %5, align 8
  %24 = getelementptr inbounds %struct.inode, %struct.inode* %23, i32 0, i32 3
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @S_ISREG(i32 %25)
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %31, label %28

28:                                               ; preds = %3
  %29 = load i32, i32* @EOPNOTSUPP, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %4, align 4
  br label %306

31:                                               ; preds = %3
  %32 = load %struct.inode*, %struct.inode** %5, align 8
  %33 = load i32, i32* %6, align 4
  %34 = load i32, i32* %7, align 4
  %35 = call i32 @trace_ext4_punch_hole(%struct.inode* %32, i32 %33, i32 %34, i32 0)
  %36 = load %struct.inode*, %struct.inode** %5, align 8
  %37 = load i32, i32* @EXT4_STATE_MAY_INLINE_DATA, align 4
  %38 = call i32 @ext4_clear_inode_state(%struct.inode* %36, i32 %37)
  %39 = load %struct.inode*, %struct.inode** %5, align 8
  %40 = call i64 @ext4_has_inline_data(%struct.inode* %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %58

42:                                               ; preds = %31
  %43 = load %struct.inode*, %struct.inode** %5, align 8
  %44 = call %struct.TYPE_2__* @EXT4_I(%struct.inode* %43)
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 0
  %46 = call i32 @down_write(i32* %45)
  %47 = load %struct.inode*, %struct.inode** %5, align 8
  %48 = call i32 @ext4_convert_inline_data(%struct.inode* %47)
  store i32 %48, i32* %16, align 4
  %49 = load %struct.inode*, %struct.inode** %5, align 8
  %50 = call %struct.TYPE_2__* @EXT4_I(%struct.inode* %49)
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 0
  %52 = call i32 @up_write(i32* %51)
  %53 = load i32, i32* %16, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %57

55:                                               ; preds = %42
  %56 = load i32, i32* %16, align 4
  store i32 %56, i32* %4, align 4
  br label %306

57:                                               ; preds = %42
  br label %58

58:                                               ; preds = %57, %31
  %59 = load %struct.address_space*, %struct.address_space** %11, align 8
  %60 = load i32, i32* @PAGECACHE_TAG_DIRTY, align 4
  %61 = call i64 @mapping_tagged(%struct.address_space* %59, i32 %60)
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %76

63:                                               ; preds = %58
  %64 = load %struct.address_space*, %struct.address_space** %11, align 8
  %65 = load i32, i32* %6, align 4
  %66 = load i32, i32* %6, align 4
  %67 = load i32, i32* %7, align 4
  %68 = add nsw i32 %66, %67
  %69 = sub nsw i32 %68, 1
  %70 = call i32 @filemap_write_and_wait_range(%struct.address_space* %64, i32 %65, i32 %69)
  store i32 %70, i32* %16, align 4
  %71 = load i32, i32* %16, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %75

73:                                               ; preds = %63
  %74 = load i32, i32* %16, align 4
  store i32 %74, i32* %4, align 4
  br label %306

75:                                               ; preds = %63
  br label %76

76:                                               ; preds = %75, %58
  %77 = load %struct.inode*, %struct.inode** %5, align 8
  %78 = call i32 @inode_lock(%struct.inode* %77)
  %79 = load i32, i32* %6, align 4
  %80 = load %struct.inode*, %struct.inode** %5, align 8
  %81 = getelementptr inbounds %struct.inode, %struct.inode* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  %83 = icmp sge i32 %79, %82
  br i1 %83, label %84, label %85

84:                                               ; preds = %76
  br label %302

85:                                               ; preds = %76
  %86 = load i32, i32* %6, align 4
  %87 = load i32, i32* %7, align 4
  %88 = add nsw i32 %86, %87
  %89 = load %struct.inode*, %struct.inode** %5, align 8
  %90 = getelementptr inbounds %struct.inode, %struct.inode* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 8
  %92 = icmp sgt i32 %88, %91
  br i1 %92, label %93, label %108

93:                                               ; preds = %85
  %94 = load %struct.inode*, %struct.inode** %5, align 8
  %95 = getelementptr inbounds %struct.inode, %struct.inode* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 8
  %97 = load i32, i32* @PAGE_SIZE, align 4
  %98 = add nsw i32 %96, %97
  %99 = load %struct.inode*, %struct.inode** %5, align 8
  %100 = getelementptr inbounds %struct.inode, %struct.inode* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 8
  %102 = load i32, i32* @PAGE_SIZE, align 4
  %103 = sub nsw i32 %102, 1
  %104 = and i32 %101, %103
  %105 = sub nsw i32 %98, %104
  %106 = load i32, i32* %6, align 4
  %107 = sub nsw i32 %105, %106
  store i32 %107, i32* %7, align 4
  br label %108

108:                                              ; preds = %93, %85
  %109 = load i32, i32* %6, align 4
  %110 = load %struct.super_block*, %struct.super_block** %8, align 8
  %111 = getelementptr inbounds %struct.super_block, %struct.super_block* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 4
  %113 = sub nsw i32 %112, 1
  %114 = and i32 %109, %113
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %126, label %116

116:                                              ; preds = %108
  %117 = load i32, i32* %6, align 4
  %118 = load i32, i32* %7, align 4
  %119 = add nsw i32 %117, %118
  %120 = load %struct.super_block*, %struct.super_block** %8, align 8
  %121 = getelementptr inbounds %struct.super_block, %struct.super_block* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 4
  %123 = sub nsw i32 %122, 1
  %124 = and i32 %119, %123
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %126, label %133

126:                                              ; preds = %116, %108
  %127 = load %struct.inode*, %struct.inode** %5, align 8
  %128 = call i32 @ext4_inode_attach_jinode(%struct.inode* %127)
  store i32 %128, i32* %16, align 4
  %129 = load i32, i32* %16, align 4
  %130 = icmp slt i32 %129, 0
  br i1 %130, label %131, label %132

131:                                              ; preds = %126
  br label %302

132:                                              ; preds = %126
  br label %133

133:                                              ; preds = %132, %116
  %134 = load %struct.inode*, %struct.inode** %5, align 8
  %135 = call i32 @inode_dio_wait(%struct.inode* %134)
  %136 = load %struct.inode*, %struct.inode** %5, align 8
  %137 = call %struct.TYPE_2__* @EXT4_I(%struct.inode* %136)
  %138 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %137, i32 0, i32 0
  %139 = call i32 @down_write(i32* %138)
  %140 = load %struct.inode*, %struct.inode** %5, align 8
  %141 = call i32 @ext4_break_layouts(%struct.inode* %140)
  store i32 %141, i32* %16, align 4
  %142 = load i32, i32* %16, align 4
  %143 = icmp ne i32 %142, 0
  br i1 %143, label %144, label %145

144:                                              ; preds = %133
  br label %297

145:                                              ; preds = %133
  %146 = load i32, i32* %6, align 4
  %147 = load %struct.super_block*, %struct.super_block** %8, align 8
  %148 = getelementptr inbounds %struct.super_block, %struct.super_block* %147, i32 0, i32 0
  %149 = load i32, i32* %148, align 4
  %150 = call i32 @round_up(i32 %146, i32 %149)
  store i32 %150, i32* %12, align 4
  %151 = load i32, i32* %6, align 4
  %152 = load i32, i32* %7, align 4
  %153 = add nsw i32 %151, %152
  %154 = load %struct.super_block*, %struct.super_block** %8, align 8
  %155 = getelementptr inbounds %struct.super_block, %struct.super_block* %154, i32 0, i32 0
  %156 = load i32, i32* %155, align 4
  %157 = call i32 @round_down(i32 %153, i32 %156)
  %158 = sub nsw i32 %157, 1
  store i32 %158, i32* %13, align 4
  %159 = load i32, i32* %13, align 4
  %160 = load i32, i32* %12, align 4
  %161 = icmp sgt i32 %159, %160
  br i1 %161, label %162, label %175

162:                                              ; preds = %145
  %163 = load %struct.inode*, %struct.inode** %5, align 8
  %164 = load i32, i32* %6, align 4
  %165 = load i32, i32* %7, align 4
  %166 = call i32 @ext4_update_disksize_before_punch(%struct.inode* %163, i32 %164, i32 %165)
  store i32 %166, i32* %16, align 4
  %167 = load i32, i32* %16, align 4
  %168 = icmp ne i32 %167, 0
  br i1 %168, label %169, label %170

169:                                              ; preds = %162
  br label %297

170:                                              ; preds = %162
  %171 = load %struct.inode*, %struct.inode** %5, align 8
  %172 = load i32, i32* %12, align 4
  %173 = load i32, i32* %13, align 4
  %174 = call i32 @truncate_pagecache_range(%struct.inode* %171, i32 %172, i32 %173)
  br label %175

175:                                              ; preds = %170, %145
  %176 = load %struct.inode*, %struct.inode** %5, align 8
  %177 = load i32, i32* @EXT4_INODE_EXTENTS, align 4
  %178 = call i64 @ext4_test_inode_flag(%struct.inode* %176, i32 %177)
  %179 = icmp ne i64 %178, 0
  br i1 %179, label %180, label %183

180:                                              ; preds = %175
  %181 = load %struct.inode*, %struct.inode** %5, align 8
  %182 = call i32 @ext4_writepage_trans_blocks(%struct.inode* %181)
  store i32 %182, i32* %15, align 4
  br label %186

183:                                              ; preds = %175
  %184 = load %struct.inode*, %struct.inode** %5, align 8
  %185 = call i32 @ext4_blocks_for_truncate(%struct.inode* %184)
  store i32 %185, i32* %15, align 4
  br label %186

186:                                              ; preds = %183, %180
  %187 = load %struct.inode*, %struct.inode** %5, align 8
  %188 = load i32, i32* @EXT4_HT_TRUNCATE, align 4
  %189 = load i32, i32* %15, align 4
  %190 = call i32* @ext4_journal_start(%struct.inode* %187, i32 %188, i32 %189)
  store i32* %190, i32** %14, align 8
  %191 = load i32*, i32** %14, align 8
  %192 = call i64 @IS_ERR(i32* %191)
  %193 = icmp ne i64 %192, 0
  br i1 %193, label %194, label %200

194:                                              ; preds = %186
  %195 = load i32*, i32** %14, align 8
  %196 = call i32 @PTR_ERR(i32* %195)
  store i32 %196, i32* %16, align 4
  %197 = load %struct.super_block*, %struct.super_block** %8, align 8
  %198 = load i32, i32* %16, align 4
  %199 = call i32 @ext4_std_error(%struct.super_block* %197, i32 %198)
  br label %297

200:                                              ; preds = %186
  %201 = load i32*, i32** %14, align 8
  %202 = load %struct.inode*, %struct.inode** %5, align 8
  %203 = load i32, i32* %6, align 4
  %204 = load i32, i32* %7, align 4
  %205 = call i32 @ext4_zero_partial_blocks(i32* %201, %struct.inode* %202, i32 %203, i32 %204)
  store i32 %205, i32* %16, align 4
  %206 = load i32, i32* %16, align 4
  %207 = icmp ne i32 %206, 0
  br i1 %207, label %208, label %209

208:                                              ; preds = %200
  br label %294

209:                                              ; preds = %200
  %210 = load i32, i32* %6, align 4
  %211 = load %struct.super_block*, %struct.super_block** %8, align 8
  %212 = getelementptr inbounds %struct.super_block, %struct.super_block* %211, i32 0, i32 0
  %213 = load i32, i32* %212, align 4
  %214 = add nsw i32 %210, %213
  %215 = sub nsw i32 %214, 1
  %216 = load %struct.super_block*, %struct.super_block** %8, align 8
  %217 = call i32 @EXT4_BLOCK_SIZE_BITS(%struct.super_block* %216)
  %218 = ashr i32 %215, %217
  store i32 %218, i32* %9, align 4
  %219 = load i32, i32* %6, align 4
  %220 = load i32, i32* %7, align 4
  %221 = add nsw i32 %219, %220
  %222 = load %struct.super_block*, %struct.super_block** %8, align 8
  %223 = call i32 @EXT4_BLOCK_SIZE_BITS(%struct.super_block* %222)
  %224 = ashr i32 %221, %223
  store i32 %224, i32* %10, align 4
  %225 = load i32, i32* %10, align 4
  %226 = load i32, i32* %9, align 4
  %227 = icmp sgt i32 %225, %226
  br i1 %227, label %228, label %270

228:                                              ; preds = %209
  %229 = load %struct.inode*, %struct.inode** %5, align 8
  %230 = call %struct.TYPE_2__* @EXT4_I(%struct.inode* %229)
  %231 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %230, i32 0, i32 1
  %232 = call i32 @down_write(i32* %231)
  %233 = load %struct.inode*, %struct.inode** %5, align 8
  %234 = call i32 @ext4_discard_preallocations(%struct.inode* %233)
  %235 = load %struct.inode*, %struct.inode** %5, align 8
  %236 = load i32, i32* %9, align 4
  %237 = load i32, i32* %10, align 4
  %238 = load i32, i32* %9, align 4
  %239 = sub nsw i32 %237, %238
  %240 = call i32 @ext4_es_remove_extent(%struct.inode* %235, i32 %236, i32 %239)
  store i32 %240, i32* %16, align 4
  %241 = load i32, i32* %16, align 4
  %242 = icmp ne i32 %241, 0
  br i1 %242, label %243, label %248

243:                                              ; preds = %228
  %244 = load %struct.inode*, %struct.inode** %5, align 8
  %245 = call %struct.TYPE_2__* @EXT4_I(%struct.inode* %244)
  %246 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %245, i32 0, i32 1
  %247 = call i32 @up_write(i32* %246)
  br label %294

248:                                              ; preds = %228
  %249 = load %struct.inode*, %struct.inode** %5, align 8
  %250 = load i32, i32* @EXT4_INODE_EXTENTS, align 4
  %251 = call i64 @ext4_test_inode_flag(%struct.inode* %249, i32 %250)
  %252 = icmp ne i64 %251, 0
  br i1 %252, label %253, label %259

253:                                              ; preds = %248
  %254 = load %struct.inode*, %struct.inode** %5, align 8
  %255 = load i32, i32* %9, align 4
  %256 = load i32, i32* %10, align 4
  %257 = sub nsw i32 %256, 1
  %258 = call i32 @ext4_ext_remove_space(%struct.inode* %254, i32 %255, i32 %257)
  store i32 %258, i32* %16, align 4
  br label %265

259:                                              ; preds = %248
  %260 = load i32*, i32** %14, align 8
  %261 = load %struct.inode*, %struct.inode** %5, align 8
  %262 = load i32, i32* %9, align 4
  %263 = load i32, i32* %10, align 4
  %264 = call i32 @ext4_ind_remove_space(i32* %260, %struct.inode* %261, i32 %262, i32 %263)
  store i32 %264, i32* %16, align 4
  br label %265

265:                                              ; preds = %259, %253
  %266 = load %struct.inode*, %struct.inode** %5, align 8
  %267 = call %struct.TYPE_2__* @EXT4_I(%struct.inode* %266)
  %268 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %267, i32 0, i32 1
  %269 = call i32 @up_write(i32* %268)
  br label %270

270:                                              ; preds = %265, %209
  %271 = load %struct.inode*, %struct.inode** %5, align 8
  %272 = call i64 @IS_SYNC(%struct.inode* %271)
  %273 = icmp ne i64 %272, 0
  br i1 %273, label %274, label %277

274:                                              ; preds = %270
  %275 = load i32*, i32** %14, align 8
  %276 = call i32 @ext4_handle_sync(i32* %275)
  br label %277

277:                                              ; preds = %274, %270
  %278 = load %struct.inode*, %struct.inode** %5, align 8
  %279 = call i32 @current_time(%struct.inode* %278)
  %280 = load %struct.inode*, %struct.inode** %5, align 8
  %281 = getelementptr inbounds %struct.inode, %struct.inode* %280, i32 0, i32 1
  store i32 %279, i32* %281, align 4
  %282 = load %struct.inode*, %struct.inode** %5, align 8
  %283 = getelementptr inbounds %struct.inode, %struct.inode* %282, i32 0, i32 2
  store i32 %279, i32* %283, align 8
  %284 = load i32*, i32** %14, align 8
  %285 = load %struct.inode*, %struct.inode** %5, align 8
  %286 = call i32 @ext4_mark_inode_dirty(i32* %284, %struct.inode* %285)
  %287 = load i32, i32* %16, align 4
  %288 = icmp sge i32 %287, 0
  br i1 %288, label %289, label %293

289:                                              ; preds = %277
  %290 = load i32*, i32** %14, align 8
  %291 = load %struct.inode*, %struct.inode** %5, align 8
  %292 = call i32 @ext4_update_inode_fsync_trans(i32* %290, %struct.inode* %291, i32 1)
  br label %293

293:                                              ; preds = %289, %277
  br label %294

294:                                              ; preds = %293, %243, %208
  %295 = load i32*, i32** %14, align 8
  %296 = call i32 @ext4_journal_stop(i32* %295)
  br label %297

297:                                              ; preds = %294, %194, %169, %144
  %298 = load %struct.inode*, %struct.inode** %5, align 8
  %299 = call %struct.TYPE_2__* @EXT4_I(%struct.inode* %298)
  %300 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %299, i32 0, i32 0
  %301 = call i32 @up_write(i32* %300)
  br label %302

302:                                              ; preds = %297, %131, %84
  %303 = load %struct.inode*, %struct.inode** %5, align 8
  %304 = call i32 @inode_unlock(%struct.inode* %303)
  %305 = load i32, i32* %16, align 4
  store i32 %305, i32* %4, align 4
  br label %306

306:                                              ; preds = %302, %73, %55, %28
  %307 = load i32, i32* %4, align 4
  ret i32 %307
}

declare dso_local i32 @S_ISREG(i32) #1

declare dso_local i32 @trace_ext4_punch_hole(%struct.inode*, i32, i32, i32) #1

declare dso_local i32 @ext4_clear_inode_state(%struct.inode*, i32) #1

declare dso_local i64 @ext4_has_inline_data(%struct.inode*) #1

declare dso_local i32 @down_write(i32*) #1

declare dso_local %struct.TYPE_2__* @EXT4_I(%struct.inode*) #1

declare dso_local i32 @ext4_convert_inline_data(%struct.inode*) #1

declare dso_local i32 @up_write(i32*) #1

declare dso_local i64 @mapping_tagged(%struct.address_space*, i32) #1

declare dso_local i32 @filemap_write_and_wait_range(%struct.address_space*, i32, i32) #1

declare dso_local i32 @inode_lock(%struct.inode*) #1

declare dso_local i32 @ext4_inode_attach_jinode(%struct.inode*) #1

declare dso_local i32 @inode_dio_wait(%struct.inode*) #1

declare dso_local i32 @ext4_break_layouts(%struct.inode*) #1

declare dso_local i32 @round_up(i32, i32) #1

declare dso_local i32 @round_down(i32, i32) #1

declare dso_local i32 @ext4_update_disksize_before_punch(%struct.inode*, i32, i32) #1

declare dso_local i32 @truncate_pagecache_range(%struct.inode*, i32, i32) #1

declare dso_local i64 @ext4_test_inode_flag(%struct.inode*, i32) #1

declare dso_local i32 @ext4_writepage_trans_blocks(%struct.inode*) #1

declare dso_local i32 @ext4_blocks_for_truncate(%struct.inode*) #1

declare dso_local i32* @ext4_journal_start(%struct.inode*, i32, i32) #1

declare dso_local i64 @IS_ERR(i32*) #1

declare dso_local i32 @PTR_ERR(i32*) #1

declare dso_local i32 @ext4_std_error(%struct.super_block*, i32) #1

declare dso_local i32 @ext4_zero_partial_blocks(i32*, %struct.inode*, i32, i32) #1

declare dso_local i32 @EXT4_BLOCK_SIZE_BITS(%struct.super_block*) #1

declare dso_local i32 @ext4_discard_preallocations(%struct.inode*) #1

declare dso_local i32 @ext4_es_remove_extent(%struct.inode*, i32, i32) #1

declare dso_local i32 @ext4_ext_remove_space(%struct.inode*, i32, i32) #1

declare dso_local i32 @ext4_ind_remove_space(i32*, %struct.inode*, i32, i32) #1

declare dso_local i64 @IS_SYNC(%struct.inode*) #1

declare dso_local i32 @ext4_handle_sync(i32*) #1

declare dso_local i32 @current_time(%struct.inode*) #1

declare dso_local i32 @ext4_mark_inode_dirty(i32*, %struct.inode*) #1

declare dso_local i32 @ext4_update_inode_fsync_trans(i32*, %struct.inode*, i32) #1

declare dso_local i32 @ext4_journal_stop(i32*) #1

declare dso_local i32 @inode_unlock(%struct.inode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
