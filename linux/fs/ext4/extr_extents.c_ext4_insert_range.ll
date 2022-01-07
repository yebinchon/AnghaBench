; ModuleID = '/home/carl/AnghaBench/linux/fs/ext4/extr_extents.c_ext4_insert_range.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ext4/extr_extents.c_ext4_insert_range.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i64, i32, i32, i32, %struct.super_block*, i32 }
%struct.super_block = type { i64 }
%struct.ext4_ext_path = type { %struct.ext4_extent* }
%struct.ext4_extent = type { i32 }
%struct.TYPE_2__ = type { i32, i32, i32 }

@EXT4_INODE_EXTENTS = common dso_local global i32 0, align 4
@EOPNOTSUPP = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@EFBIG = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@LLONG_MAX = common dso_local global i32 0, align 4
@EXT4_HT_TRUNCATE = common dso_local global i32 0, align 4
@EXT4_EXT_MARK_UNWRIT1 = common dso_local global i32 0, align 4
@EXT4_EXT_MARK_UNWRIT2 = common dso_local global i32 0, align 4
@EXT4_EX_NOCACHE = common dso_local global i32 0, align 4
@EXT4_GET_BLOCKS_PRE_IO = common dso_local global i32 0, align 4
@EXT4_GET_BLOCKS_METADATA_NOFAIL = common dso_local global i32 0, align 4
@EXT_MAX_BLOCKS = common dso_local global i64 0, align 8
@SHIFT_RIGHT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ext4_insert_range(%struct.inode* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.inode*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.super_block*, align 8
  %9 = alloca %struct.ext4_ext_path*, align 8
  %10 = alloca %struct.ext4_ext_path*, align 8
  %11 = alloca %struct.ext4_extent*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %21 = load %struct.inode*, %struct.inode** %5, align 8
  %22 = getelementptr inbounds %struct.inode, %struct.inode* %21, i32 0, i32 4
  %23 = load %struct.super_block*, %struct.super_block** %22, align 8
  store %struct.super_block* %23, %struct.super_block** %8, align 8
  store i32 0, i32* %14, align 4
  store i32 0, i32* %17, align 4
  store i32 0, i32* %19, align 4
  %24 = load %struct.inode*, %struct.inode** %5, align 8
  %25 = load i32, i32* @EXT4_INODE_EXTENTS, align 4
  %26 = call i32 @ext4_test_inode_flag(%struct.inode* %24, i32 %25)
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %31, label %28

28:                                               ; preds = %3
  %29 = load i32, i32* @EOPNOTSUPP, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %4, align 4
  br label %325

31:                                               ; preds = %3
  %32 = load i32, i32* %6, align 4
  %33 = load %struct.super_block*, %struct.super_block** %8, align 8
  %34 = call i32 @EXT4_CLUSTER_SIZE(%struct.super_block* %33)
  %35 = sub nsw i32 %34, 1
  %36 = and i32 %32, %35
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %45, label %38

38:                                               ; preds = %31
  %39 = load i32, i32* %7, align 4
  %40 = load %struct.super_block*, %struct.super_block** %8, align 8
  %41 = call i32 @EXT4_CLUSTER_SIZE(%struct.super_block* %40)
  %42 = sub nsw i32 %41, 1
  %43 = and i32 %39, %42
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %48

45:                                               ; preds = %38, %31
  %46 = load i32, i32* @EINVAL, align 4
  %47 = sub nsw i32 0, %46
  store i32 %47, i32* %4, align 4
  br label %325

48:                                               ; preds = %38
  %49 = load %struct.inode*, %struct.inode** %5, align 8
  %50 = getelementptr inbounds %struct.inode, %struct.inode* %49, i32 0, i32 5
  %51 = load i32, i32* %50, align 8
  %52 = call i32 @S_ISREG(i32 %51)
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %57, label %54

54:                                               ; preds = %48
  %55 = load i32, i32* @EOPNOTSUPP, align 4
  %56 = sub nsw i32 0, %55
  store i32 %56, i32* %4, align 4
  br label %325

57:                                               ; preds = %48
  %58 = load %struct.inode*, %struct.inode** %5, align 8
  %59 = load i32, i32* %6, align 4
  %60 = load i32, i32* %7, align 4
  %61 = call i32 @trace_ext4_insert_range(%struct.inode* %58, i32 %59, i32 %60)
  %62 = load i32, i32* %6, align 4
  %63 = load %struct.super_block*, %struct.super_block** %8, align 8
  %64 = call i32 @EXT4_BLOCK_SIZE_BITS(%struct.super_block* %63)
  %65 = ashr i32 %62, %64
  store i32 %65, i32* %12, align 4
  %66 = load i32, i32* %7, align 4
  %67 = load %struct.super_block*, %struct.super_block** %8, align 8
  %68 = call i32 @EXT4_BLOCK_SIZE_BITS(%struct.super_block* %67)
  %69 = ashr i32 %66, %68
  store i32 %69, i32* %13, align 4
  %70 = load %struct.inode*, %struct.inode** %5, align 8
  %71 = call i64 @ext4_should_journal_data(%struct.inode* %70)
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %83

73:                                               ; preds = %57
  %74 = load %struct.inode*, %struct.inode** %5, align 8
  %75 = getelementptr inbounds %struct.inode, %struct.inode* %74, i32 0, i32 4
  %76 = load %struct.super_block*, %struct.super_block** %75, align 8
  %77 = call i32 @ext4_force_commit(%struct.super_block* %76)
  store i32 %77, i32* %17, align 4
  %78 = load i32, i32* %17, align 4
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %82

80:                                               ; preds = %73
  %81 = load i32, i32* %17, align 4
  store i32 %81, i32* %4, align 4
  br label %325

82:                                               ; preds = %73
  br label %83

83:                                               ; preds = %82, %57
  %84 = load %struct.inode*, %struct.inode** %5, align 8
  %85 = call i32 @inode_lock(%struct.inode* %84)
  %86 = load %struct.inode*, %struct.inode** %5, align 8
  %87 = load i32, i32* @EXT4_INODE_EXTENTS, align 4
  %88 = call i32 @ext4_test_inode_flag(%struct.inode* %86, i32 %87)
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %93, label %90

90:                                               ; preds = %83
  %91 = load i32, i32* @EOPNOTSUPP, align 4
  %92 = sub nsw i32 0, %91
  store i32 %92, i32* %17, align 4
  br label %321

93:                                               ; preds = %83
  %94 = load %struct.inode*, %struct.inode** %5, align 8
  %95 = getelementptr inbounds %struct.inode, %struct.inode* %94, i32 0, i32 0
  %96 = load i64, i64* %95, align 8
  %97 = load i32, i32* %7, align 4
  %98 = sext i32 %97 to i64
  %99 = add nsw i64 %96, %98
  %100 = load %struct.inode*, %struct.inode** %5, align 8
  %101 = getelementptr inbounds %struct.inode, %struct.inode* %100, i32 0, i32 4
  %102 = load %struct.super_block*, %struct.super_block** %101, align 8
  %103 = getelementptr inbounds %struct.super_block, %struct.super_block* %102, i32 0, i32 0
  %104 = load i64, i64* %103, align 8
  %105 = icmp sgt i64 %99, %104
  br i1 %105, label %106, label %109

106:                                              ; preds = %93
  %107 = load i32, i32* @EFBIG, align 4
  %108 = sub nsw i32 0, %107
  store i32 %108, i32* %17, align 4
  br label %321

109:                                              ; preds = %93
  %110 = load i32, i32* %6, align 4
  %111 = load %struct.inode*, %struct.inode** %5, align 8
  %112 = call i32 @i_size_read(%struct.inode* %111)
  %113 = icmp sge i32 %110, %112
  br i1 %113, label %114, label %117

114:                                              ; preds = %109
  %115 = load i32, i32* @EINVAL, align 4
  %116 = sub nsw i32 0, %115
  store i32 %116, i32* %17, align 4
  br label %321

117:                                              ; preds = %109
  %118 = load %struct.inode*, %struct.inode** %5, align 8
  %119 = call i32 @inode_dio_wait(%struct.inode* %118)
  %120 = load %struct.inode*, %struct.inode** %5, align 8
  %121 = call %struct.TYPE_2__* @EXT4_I(%struct.inode* %120)
  %122 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %121, i32 0, i32 1
  %123 = call i32 @down_write(i32* %122)
  %124 = load %struct.inode*, %struct.inode** %5, align 8
  %125 = call i32 @ext4_break_layouts(%struct.inode* %124)
  store i32 %125, i32* %17, align 4
  %126 = load i32, i32* %17, align 4
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %128, label %129

128:                                              ; preds = %117
  br label %316

129:                                              ; preds = %117
  %130 = load i32, i32* %6, align 4
  %131 = load i32, i32* @PAGE_SIZE, align 4
  %132 = call i32 @round_down(i32 %130, i32 %131)
  store i32 %132, i32* %20, align 4
  %133 = load %struct.inode*, %struct.inode** %5, align 8
  %134 = getelementptr inbounds %struct.inode, %struct.inode* %133, i32 0, i32 3
  %135 = load i32, i32* %134, align 8
  %136 = load i32, i32* %20, align 4
  %137 = load i32, i32* @LLONG_MAX, align 4
  %138 = call i32 @filemap_write_and_wait_range(i32 %135, i32 %136, i32 %137)
  store i32 %138, i32* %17, align 4
  %139 = load i32, i32* %17, align 4
  %140 = icmp ne i32 %139, 0
  br i1 %140, label %141, label %142

141:                                              ; preds = %129
  br label %316

142:                                              ; preds = %129
  %143 = load %struct.inode*, %struct.inode** %5, align 8
  %144 = load i32, i32* %20, align 4
  %145 = call i32 @truncate_pagecache(%struct.inode* %143, i32 %144)
  %146 = load %struct.inode*, %struct.inode** %5, align 8
  %147 = call i32 @ext4_writepage_trans_blocks(%struct.inode* %146)
  store i32 %147, i32* %15, align 4
  %148 = load %struct.inode*, %struct.inode** %5, align 8
  %149 = load i32, i32* @EXT4_HT_TRUNCATE, align 4
  %150 = load i32, i32* %15, align 4
  %151 = call %struct.ext4_ext_path* @ext4_journal_start(%struct.inode* %148, i32 %149, i32 %150)
  store %struct.ext4_ext_path* %151, %struct.ext4_ext_path** %9, align 8
  %152 = load %struct.ext4_ext_path*, %struct.ext4_ext_path** %9, align 8
  %153 = call i64 @IS_ERR(%struct.ext4_ext_path* %152)
  %154 = icmp ne i64 %153, 0
  br i1 %154, label %155, label %158

155:                                              ; preds = %142
  %156 = load %struct.ext4_ext_path*, %struct.ext4_ext_path** %9, align 8
  %157 = call i32 @PTR_ERR(%struct.ext4_ext_path* %156)
  store i32 %157, i32* %17, align 4
  br label %316

158:                                              ; preds = %142
  %159 = load i32, i32* %7, align 4
  %160 = sext i32 %159 to i64
  %161 = load %struct.inode*, %struct.inode** %5, align 8
  %162 = getelementptr inbounds %struct.inode, %struct.inode* %161, i32 0, i32 0
  %163 = load i64, i64* %162, align 8
  %164 = add nsw i64 %163, %160
  store i64 %164, i64* %162, align 8
  %165 = load i32, i32* %7, align 4
  %166 = load %struct.inode*, %struct.inode** %5, align 8
  %167 = call %struct.TYPE_2__* @EXT4_I(%struct.inode* %166)
  %168 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %167, i32 0, i32 0
  %169 = load i32, i32* %168, align 4
  %170 = add nsw i32 %169, %165
  store i32 %170, i32* %168, align 4
  %171 = load %struct.inode*, %struct.inode** %5, align 8
  %172 = call i32 @current_time(%struct.inode* %171)
  %173 = load %struct.inode*, %struct.inode** %5, align 8
  %174 = getelementptr inbounds %struct.inode, %struct.inode* %173, i32 0, i32 1
  store i32 %172, i32* %174, align 8
  %175 = load %struct.inode*, %struct.inode** %5, align 8
  %176 = getelementptr inbounds %struct.inode, %struct.inode* %175, i32 0, i32 2
  store i32 %172, i32* %176, align 4
  %177 = load %struct.ext4_ext_path*, %struct.ext4_ext_path** %9, align 8
  %178 = load %struct.inode*, %struct.inode** %5, align 8
  %179 = call i32 @ext4_mark_inode_dirty(%struct.ext4_ext_path* %177, %struct.inode* %178)
  store i32 %179, i32* %17, align 4
  %180 = load i32, i32* %17, align 4
  %181 = icmp ne i32 %180, 0
  br i1 %181, label %182, label %183

182:                                              ; preds = %158
  br label %313

183:                                              ; preds = %158
  %184 = load %struct.inode*, %struct.inode** %5, align 8
  %185 = call %struct.TYPE_2__* @EXT4_I(%struct.inode* %184)
  %186 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %185, i32 0, i32 2
  %187 = call i32 @down_write(i32* %186)
  %188 = load %struct.inode*, %struct.inode** %5, align 8
  %189 = call i32 @ext4_discard_preallocations(%struct.inode* %188)
  %190 = load %struct.inode*, %struct.inode** %5, align 8
  %191 = load i32, i32* %12, align 4
  %192 = call %struct.ext4_ext_path* @ext4_find_extent(%struct.inode* %190, i32 %191, i32* null, i32 0)
  store %struct.ext4_ext_path* %192, %struct.ext4_ext_path** %10, align 8
  %193 = load %struct.ext4_ext_path*, %struct.ext4_ext_path** %10, align 8
  %194 = call i64 @IS_ERR(%struct.ext4_ext_path* %193)
  %195 = icmp ne i64 %194, 0
  br i1 %195, label %196, label %201

196:                                              ; preds = %183
  %197 = load %struct.inode*, %struct.inode** %5, align 8
  %198 = call %struct.TYPE_2__* @EXT4_I(%struct.inode* %197)
  %199 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %198, i32 0, i32 2
  %200 = call i32 @up_write(i32* %199)
  br label %313

201:                                              ; preds = %183
  %202 = load %struct.inode*, %struct.inode** %5, align 8
  %203 = call i32 @ext_depth(%struct.inode* %202)
  store i32 %203, i32* %18, align 4
  %204 = load %struct.ext4_ext_path*, %struct.ext4_ext_path** %10, align 8
  %205 = load i32, i32* %18, align 4
  %206 = sext i32 %205 to i64
  %207 = getelementptr inbounds %struct.ext4_ext_path, %struct.ext4_ext_path* %204, i64 %206
  %208 = getelementptr inbounds %struct.ext4_ext_path, %struct.ext4_ext_path* %207, i32 0, i32 0
  %209 = load %struct.ext4_extent*, %struct.ext4_extent** %208, align 8
  store %struct.ext4_extent* %209, %struct.ext4_extent** %11, align 8
  %210 = load %struct.ext4_extent*, %struct.ext4_extent** %11, align 8
  %211 = icmp ne %struct.ext4_extent* %210, null
  br i1 %211, label %212, label %260

212:                                              ; preds = %201
  %213 = load %struct.ext4_extent*, %struct.ext4_extent** %11, align 8
  %214 = getelementptr inbounds %struct.ext4_extent, %struct.ext4_extent* %213, i32 0, i32 0
  %215 = load i32, i32* %214, align 4
  %216 = call i32 @le32_to_cpu(i32 %215)
  store i32 %216, i32* %14, align 4
  %217 = load %struct.ext4_extent*, %struct.ext4_extent** %11, align 8
  %218 = call i32 @ext4_ext_get_actual_len(%struct.ext4_extent* %217)
  store i32 %218, i32* %16, align 4
  %219 = load i32, i32* %12, align 4
  %220 = load i32, i32* %14, align 4
  %221 = icmp ugt i32 %219, %220
  br i1 %221, label %222, label %247

222:                                              ; preds = %212
  %223 = load i32, i32* %12, align 4
  %224 = load i32, i32* %14, align 4
  %225 = load i32, i32* %16, align 4
  %226 = add i32 %224, %225
  %227 = icmp ult i32 %223, %226
  br i1 %227, label %228, label %247

228:                                              ; preds = %222
  %229 = load %struct.ext4_extent*, %struct.ext4_extent** %11, align 8
  %230 = call i64 @ext4_ext_is_unwritten(%struct.ext4_extent* %229)
  %231 = icmp ne i64 %230, 0
  br i1 %231, label %232, label %236

232:                                              ; preds = %228
  %233 = load i32, i32* @EXT4_EXT_MARK_UNWRIT1, align 4
  %234 = load i32, i32* @EXT4_EXT_MARK_UNWRIT2, align 4
  %235 = or i32 %233, %234
  store i32 %235, i32* %19, align 4
  br label %236

236:                                              ; preds = %232, %228
  %237 = load %struct.ext4_ext_path*, %struct.ext4_ext_path** %9, align 8
  %238 = load %struct.inode*, %struct.inode** %5, align 8
  %239 = load i32, i32* %12, align 4
  %240 = load i32, i32* %19, align 4
  %241 = load i32, i32* @EXT4_EX_NOCACHE, align 4
  %242 = load i32, i32* @EXT4_GET_BLOCKS_PRE_IO, align 4
  %243 = or i32 %241, %242
  %244 = load i32, i32* @EXT4_GET_BLOCKS_METADATA_NOFAIL, align 4
  %245 = or i32 %243, %244
  %246 = call i32 @ext4_split_extent_at(%struct.ext4_ext_path* %237, %struct.inode* %238, %struct.ext4_ext_path** %10, i32 %239, i32 %240, i32 %245)
  store i32 %246, i32* %17, align 4
  br label %247

247:                                              ; preds = %236, %222, %212
  %248 = load %struct.ext4_ext_path*, %struct.ext4_ext_path** %10, align 8
  %249 = call i32 @ext4_ext_drop_refs(%struct.ext4_ext_path* %248)
  %250 = load %struct.ext4_ext_path*, %struct.ext4_ext_path** %10, align 8
  %251 = call i32 @kfree(%struct.ext4_ext_path* %250)
  %252 = load i32, i32* %17, align 4
  %253 = icmp slt i32 %252, 0
  br i1 %253, label %254, label %259

254:                                              ; preds = %247
  %255 = load %struct.inode*, %struct.inode** %5, align 8
  %256 = call %struct.TYPE_2__* @EXT4_I(%struct.inode* %255)
  %257 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %256, i32 0, i32 2
  %258 = call i32 @up_write(i32* %257)
  br label %313

259:                                              ; preds = %247
  br label %265

260:                                              ; preds = %201
  %261 = load %struct.ext4_ext_path*, %struct.ext4_ext_path** %10, align 8
  %262 = call i32 @ext4_ext_drop_refs(%struct.ext4_ext_path* %261)
  %263 = load %struct.ext4_ext_path*, %struct.ext4_ext_path** %10, align 8
  %264 = call i32 @kfree(%struct.ext4_ext_path* %263)
  br label %265

265:                                              ; preds = %260, %259
  %266 = load %struct.inode*, %struct.inode** %5, align 8
  %267 = load i32, i32* %12, align 4
  %268 = load i64, i64* @EXT_MAX_BLOCKS, align 8
  %269 = load i32, i32* %12, align 4
  %270 = zext i32 %269 to i64
  %271 = sub nsw i64 %268, %270
  %272 = call i32 @ext4_es_remove_extent(%struct.inode* %266, i32 %267, i64 %271)
  store i32 %272, i32* %17, align 4
  %273 = load i32, i32* %17, align 4
  %274 = icmp ne i32 %273, 0
  br i1 %274, label %275, label %280

275:                                              ; preds = %265
  %276 = load %struct.inode*, %struct.inode** %5, align 8
  %277 = call %struct.TYPE_2__* @EXT4_I(%struct.inode* %276)
  %278 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %277, i32 0, i32 2
  %279 = call i32 @up_write(i32* %278)
  br label %313

280:                                              ; preds = %265
  %281 = load %struct.inode*, %struct.inode** %5, align 8
  %282 = load %struct.ext4_ext_path*, %struct.ext4_ext_path** %9, align 8
  %283 = load i32, i32* %14, align 4
  %284 = load i32, i32* %12, align 4
  %285 = icmp ugt i32 %283, %284
  br i1 %285, label %286, label %288

286:                                              ; preds = %280
  %287 = load i32, i32* %14, align 4
  br label %290

288:                                              ; preds = %280
  %289 = load i32, i32* %12, align 4
  br label %290

290:                                              ; preds = %288, %286
  %291 = phi i32 [ %287, %286 ], [ %289, %288 ]
  %292 = load i32, i32* %13, align 4
  %293 = load i32, i32* @SHIFT_RIGHT, align 4
  %294 = call i32 @ext4_ext_shift_extents(%struct.inode* %281, %struct.ext4_ext_path* %282, i32 %291, i32 %292, i32 %293)
  store i32 %294, i32* %17, align 4
  %295 = load %struct.inode*, %struct.inode** %5, align 8
  %296 = call %struct.TYPE_2__* @EXT4_I(%struct.inode* %295)
  %297 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %296, i32 0, i32 2
  %298 = call i32 @up_write(i32* %297)
  %299 = load %struct.inode*, %struct.inode** %5, align 8
  %300 = call i64 @IS_SYNC(%struct.inode* %299)
  %301 = icmp ne i64 %300, 0
  br i1 %301, label %302, label %305

302:                                              ; preds = %290
  %303 = load %struct.ext4_ext_path*, %struct.ext4_ext_path** %9, align 8
  %304 = call i32 @ext4_handle_sync(%struct.ext4_ext_path* %303)
  br label %305

305:                                              ; preds = %302, %290
  %306 = load i32, i32* %17, align 4
  %307 = icmp sge i32 %306, 0
  br i1 %307, label %308, label %312

308:                                              ; preds = %305
  %309 = load %struct.ext4_ext_path*, %struct.ext4_ext_path** %9, align 8
  %310 = load %struct.inode*, %struct.inode** %5, align 8
  %311 = call i32 @ext4_update_inode_fsync_trans(%struct.ext4_ext_path* %309, %struct.inode* %310, i32 1)
  br label %312

312:                                              ; preds = %308, %305
  br label %313

313:                                              ; preds = %312, %275, %254, %196, %182
  %314 = load %struct.ext4_ext_path*, %struct.ext4_ext_path** %9, align 8
  %315 = call i32 @ext4_journal_stop(%struct.ext4_ext_path* %314)
  br label %316

316:                                              ; preds = %313, %155, %141, %128
  %317 = load %struct.inode*, %struct.inode** %5, align 8
  %318 = call %struct.TYPE_2__* @EXT4_I(%struct.inode* %317)
  %319 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %318, i32 0, i32 1
  %320 = call i32 @up_write(i32* %319)
  br label %321

321:                                              ; preds = %316, %114, %106, %90
  %322 = load %struct.inode*, %struct.inode** %5, align 8
  %323 = call i32 @inode_unlock(%struct.inode* %322)
  %324 = load i32, i32* %17, align 4
  store i32 %324, i32* %4, align 4
  br label %325

325:                                              ; preds = %321, %80, %54, %45, %28
  %326 = load i32, i32* %4, align 4
  ret i32 %326
}

declare dso_local i32 @ext4_test_inode_flag(%struct.inode*, i32) #1

declare dso_local i32 @EXT4_CLUSTER_SIZE(%struct.super_block*) #1

declare dso_local i32 @S_ISREG(i32) #1

declare dso_local i32 @trace_ext4_insert_range(%struct.inode*, i32, i32) #1

declare dso_local i32 @EXT4_BLOCK_SIZE_BITS(%struct.super_block*) #1

declare dso_local i64 @ext4_should_journal_data(%struct.inode*) #1

declare dso_local i32 @ext4_force_commit(%struct.super_block*) #1

declare dso_local i32 @inode_lock(%struct.inode*) #1

declare dso_local i32 @i_size_read(%struct.inode*) #1

declare dso_local i32 @inode_dio_wait(%struct.inode*) #1

declare dso_local i32 @down_write(i32*) #1

declare dso_local %struct.TYPE_2__* @EXT4_I(%struct.inode*) #1

declare dso_local i32 @ext4_break_layouts(%struct.inode*) #1

declare dso_local i32 @round_down(i32, i32) #1

declare dso_local i32 @filemap_write_and_wait_range(i32, i32, i32) #1

declare dso_local i32 @truncate_pagecache(%struct.inode*, i32) #1

declare dso_local i32 @ext4_writepage_trans_blocks(%struct.inode*) #1

declare dso_local %struct.ext4_ext_path* @ext4_journal_start(%struct.inode*, i32, i32) #1

declare dso_local i64 @IS_ERR(%struct.ext4_ext_path*) #1

declare dso_local i32 @PTR_ERR(%struct.ext4_ext_path*) #1

declare dso_local i32 @current_time(%struct.inode*) #1

declare dso_local i32 @ext4_mark_inode_dirty(%struct.ext4_ext_path*, %struct.inode*) #1

declare dso_local i32 @ext4_discard_preallocations(%struct.inode*) #1

declare dso_local %struct.ext4_ext_path* @ext4_find_extent(%struct.inode*, i32, i32*, i32) #1

declare dso_local i32 @up_write(i32*) #1

declare dso_local i32 @ext_depth(%struct.inode*) #1

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i32 @ext4_ext_get_actual_len(%struct.ext4_extent*) #1

declare dso_local i64 @ext4_ext_is_unwritten(%struct.ext4_extent*) #1

declare dso_local i32 @ext4_split_extent_at(%struct.ext4_ext_path*, %struct.inode*, %struct.ext4_ext_path**, i32, i32, i32) #1

declare dso_local i32 @ext4_ext_drop_refs(%struct.ext4_ext_path*) #1

declare dso_local i32 @kfree(%struct.ext4_ext_path*) #1

declare dso_local i32 @ext4_es_remove_extent(%struct.inode*, i32, i64) #1

declare dso_local i32 @ext4_ext_shift_extents(%struct.inode*, %struct.ext4_ext_path*, i32, i32, i32) #1

declare dso_local i64 @IS_SYNC(%struct.inode*) #1

declare dso_local i32 @ext4_handle_sync(%struct.ext4_ext_path*) #1

declare dso_local i32 @ext4_update_inode_fsync_trans(%struct.ext4_ext_path*, %struct.inode*, i32) #1

declare dso_local i32 @ext4_journal_stop(%struct.ext4_ext_path*) #1

declare dso_local i32 @inode_unlock(%struct.inode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
