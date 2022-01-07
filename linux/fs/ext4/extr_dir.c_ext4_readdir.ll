; ModuleID = '/home/carl/AnghaBench/linux/fs/ext4/extr_dir.c_ext4_readdir.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ext4/extr_dir.c_ext4_readdir.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32, %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 }
%struct.dir_context = type { i32 }
%struct.ext4_dir_entry_2 = type { i32, i32, i32, i32, i32* }
%struct.inode = type { i32, i32, i32, %struct.super_block* }
%struct.super_block = type { i32, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 }
%struct.buffer_head = type { i32, i64 }
%struct.fscrypt_str = type { i32, i32* }
%struct.ext4_map_blocks = type { i32, i32, i32 }

@ENOKEY = common dso_local global i32 0, align 4
@ERR_BAD_DX_DIR = common dso_local global i32 0, align 4
@EXT4_INODE_INDEX = common dso_local global i32 0, align 4
@EXT4_NAME_LEN = common dso_local global i32 0, align 4
@current = common dso_local global i32 0, align 4
@ERESTARTSYS = common dso_local global i32 0, align 4
@PAGE_SHIFT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"directory fails checksum at offset %llu\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, %struct.dir_context*)* @ext4_readdir to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ext4_readdir(%struct.file* %0, %struct.dir_context* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.file*, align 8
  %5 = alloca %struct.dir_context*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.ext4_dir_entry_2*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.inode*, align 8
  %11 = alloca %struct.super_block*, align 8
  %12 = alloca %struct.buffer_head*, align 8
  %13 = alloca %struct.fscrypt_str, align 8
  %14 = alloca i32, align 4
  %15 = alloca %struct.ext4_map_blocks, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca %struct.fscrypt_str, align 8
  store %struct.file* %0, %struct.file** %4, align 8
  store %struct.dir_context* %1, %struct.dir_context** %5, align 8
  %19 = load %struct.file*, %struct.file** %4, align 8
  %20 = call %struct.inode* @file_inode(%struct.file* %19)
  store %struct.inode* %20, %struct.inode** %10, align 8
  %21 = load %struct.inode*, %struct.inode** %10, align 8
  %22 = getelementptr inbounds %struct.inode, %struct.inode* %21, i32 0, i32 3
  %23 = load %struct.super_block*, %struct.super_block** %22, align 8
  store %struct.super_block* %23, %struct.super_block** %11, align 8
  store %struct.buffer_head* null, %struct.buffer_head** %12, align 8
  %24 = call { i32, i32* } @FSTR_INIT(i32* null, i32 0)
  %25 = bitcast %struct.fscrypt_str* %13 to { i32, i32* }*
  %26 = getelementptr inbounds { i32, i32* }, { i32, i32* }* %25, i32 0, i32 0
  %27 = extractvalue { i32, i32* } %24, 0
  store i32 %27, i32* %26, align 8
  %28 = getelementptr inbounds { i32, i32* }, { i32, i32* }* %25, i32 0, i32 1
  %29 = extractvalue { i32, i32* } %24, 1
  store i32* %29, i32** %28, align 8
  %30 = load %struct.inode*, %struct.inode** %10, align 8
  %31 = call i64 @IS_ENCRYPTED(%struct.inode* %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %46

33:                                               ; preds = %2
  %34 = load %struct.inode*, %struct.inode** %10, align 8
  %35 = call i32 @fscrypt_get_encryption_info(%struct.inode* %34)
  store i32 %35, i32* %9, align 4
  %36 = load i32, i32* %9, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %45

38:                                               ; preds = %33
  %39 = load i32, i32* %9, align 4
  %40 = load i32, i32* @ENOKEY, align 4
  %41 = sub nsw i32 0, %40
  %42 = icmp ne i32 %39, %41
  br i1 %42, label %43, label %45

43:                                               ; preds = %38
  %44 = load i32, i32* %9, align 4
  store i32 %44, i32* %3, align 4
  br label %487

45:                                               ; preds = %38, %33
  br label %46

46:                                               ; preds = %45, %2
  %47 = load %struct.inode*, %struct.inode** %10, align 8
  %48 = call i64 @is_dx_dir(%struct.inode* %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %64

50:                                               ; preds = %46
  %51 = load %struct.file*, %struct.file** %4, align 8
  %52 = load %struct.dir_context*, %struct.dir_context** %5, align 8
  %53 = call i32 @ext4_dx_readdir(%struct.file* %51, %struct.dir_context* %52)
  store i32 %53, i32* %9, align 4
  %54 = load i32, i32* %9, align 4
  %55 = load i32, i32* @ERR_BAD_DX_DIR, align 4
  %56 = icmp ne i32 %54, %55
  br i1 %56, label %57, label %59

57:                                               ; preds = %50
  %58 = load i32, i32* %9, align 4
  store i32 %58, i32* %3, align 4
  br label %487

59:                                               ; preds = %50
  %60 = load %struct.file*, %struct.file** %4, align 8
  %61 = call %struct.inode* @file_inode(%struct.file* %60)
  %62 = load i32, i32* @EXT4_INODE_INDEX, align 4
  %63 = call i32 @ext4_clear_inode_flag(%struct.inode* %61, i32 %62)
  br label %64

64:                                               ; preds = %59, %46
  %65 = load %struct.inode*, %struct.inode** %10, align 8
  %66 = call i64 @ext4_has_inline_data(%struct.inode* %65)
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %77

68:                                               ; preds = %64
  store i32 1, i32* %14, align 4
  %69 = load %struct.file*, %struct.file** %4, align 8
  %70 = load %struct.dir_context*, %struct.dir_context** %5, align 8
  %71 = call i32 @ext4_read_inline_dir(%struct.file* %69, %struct.dir_context* %70, i32* %14)
  store i32 %71, i32* %9, align 4
  %72 = load i32, i32* %14, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %76

74:                                               ; preds = %68
  %75 = load i32, i32* %9, align 4
  store i32 %75, i32* %3, align 4
  br label %487

76:                                               ; preds = %68
  br label %77

77:                                               ; preds = %76, %64
  %78 = load %struct.inode*, %struct.inode** %10, align 8
  %79 = call i64 @IS_ENCRYPTED(%struct.inode* %78)
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %90

81:                                               ; preds = %77
  %82 = load %struct.inode*, %struct.inode** %10, align 8
  %83 = load i32, i32* @EXT4_NAME_LEN, align 4
  %84 = call i32 @fscrypt_fname_alloc_buffer(%struct.inode* %82, i32 %83, %struct.fscrypt_str* %13)
  store i32 %84, i32* %9, align 4
  %85 = load i32, i32* %9, align 4
  %86 = icmp slt i32 %85, 0
  br i1 %86, label %87, label %89

87:                                               ; preds = %81
  %88 = load i32, i32* %9, align 4
  store i32 %88, i32* %3, align 4
  br label %487

89:                                               ; preds = %81
  br label %90

90:                                               ; preds = %89, %77
  br label %91

91:                                               ; preds = %477, %225, %206, %134, %90
  %92 = load %struct.dir_context*, %struct.dir_context** %5, align 8
  %93 = getelementptr inbounds %struct.dir_context, %struct.dir_context* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 4
  %95 = load %struct.inode*, %struct.inode** %10, align 8
  %96 = getelementptr inbounds %struct.inode, %struct.inode* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 8
  %98 = icmp slt i32 %94, %97
  br i1 %98, label %99, label %480

99:                                               ; preds = %91
  %100 = load i32, i32* @current, align 4
  %101 = call i64 @fatal_signal_pending(i32 %100)
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %103, label %106

103:                                              ; preds = %99
  %104 = load i32, i32* @ERESTARTSYS, align 4
  %105 = sub nsw i32 0, %104
  store i32 %105, i32* %9, align 4
  br label %482

106:                                              ; preds = %99
  %107 = call i32 (...) @cond_resched()
  %108 = load %struct.dir_context*, %struct.dir_context** %5, align 8
  %109 = getelementptr inbounds %struct.dir_context, %struct.dir_context* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 4
  %111 = load %struct.super_block*, %struct.super_block** %11, align 8
  %112 = getelementptr inbounds %struct.super_block, %struct.super_block* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 8
  %114 = sub nsw i32 %113, 1
  %115 = and i32 %110, %114
  store i32 %115, i32* %6, align 4
  %116 = load %struct.dir_context*, %struct.dir_context** %5, align 8
  %117 = getelementptr inbounds %struct.dir_context, %struct.dir_context* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 4
  %119 = load %struct.super_block*, %struct.super_block** %11, align 8
  %120 = call i32 @EXT4_BLOCK_SIZE_BITS(%struct.super_block* %119)
  %121 = ashr i32 %118, %120
  %122 = getelementptr inbounds %struct.ext4_map_blocks, %struct.ext4_map_blocks* %15, i32 0, i32 0
  store i32 %121, i32* %122, align 4
  %123 = getelementptr inbounds %struct.ext4_map_blocks, %struct.ext4_map_blocks* %15, i32 0, i32 1
  store i32 1, i32* %123, align 4
  %124 = load %struct.inode*, %struct.inode** %10, align 8
  %125 = call i32 @ext4_map_blocks(i32* null, %struct.inode* %124, %struct.ext4_map_blocks* %15, i32 0)
  store i32 %125, i32* %9, align 4
  %126 = load i32, i32* %9, align 4
  %127 = icmp eq i32 %126, 0
  br i1 %127, label %128, label %145

128:                                              ; preds = %106
  %129 = getelementptr inbounds %struct.ext4_map_blocks, %struct.ext4_map_blocks* %15, i32 0, i32 1
  %130 = load i32, i32* %129, align 4
  %131 = icmp eq i32 %130, 0
  br i1 %131, label %132, label %134

132:                                              ; preds = %128
  %133 = getelementptr inbounds %struct.ext4_map_blocks, %struct.ext4_map_blocks* %15, i32 0, i32 1
  store i32 1, i32* %133, align 4
  br label %134

134:                                              ; preds = %132, %128
  %135 = getelementptr inbounds %struct.ext4_map_blocks, %struct.ext4_map_blocks* %15, i32 0, i32 1
  %136 = load i32, i32* %135, align 4
  %137 = load %struct.super_block*, %struct.super_block** %11, align 8
  %138 = getelementptr inbounds %struct.super_block, %struct.super_block* %137, i32 0, i32 0
  %139 = load i32, i32* %138, align 8
  %140 = mul nsw i32 %136, %139
  %141 = load %struct.dir_context*, %struct.dir_context** %5, align 8
  %142 = getelementptr inbounds %struct.dir_context, %struct.dir_context* %141, i32 0, i32 0
  %143 = load i32, i32* %142, align 4
  %144 = add nsw i32 %143, %140
  store i32 %144, i32* %142, align 4
  br label %91

145:                                              ; preds = %106
  %146 = load i32, i32* %9, align 4
  %147 = icmp sgt i32 %146, 0
  br i1 %147, label %148, label %193

148:                                              ; preds = %145
  %149 = getelementptr inbounds %struct.ext4_map_blocks, %struct.ext4_map_blocks* %15, i32 0, i32 2
  %150 = load i32, i32* %149, align 4
  %151 = load i32, i32* @PAGE_SHIFT, align 4
  %152 = load %struct.inode*, %struct.inode** %10, align 8
  %153 = getelementptr inbounds %struct.inode, %struct.inode* %152, i32 0, i32 1
  %154 = load i32, i32* %153, align 4
  %155 = sub nsw i32 %151, %154
  %156 = ashr i32 %150, %155
  store i32 %156, i32* %16, align 4
  %157 = load %struct.file*, %struct.file** %4, align 8
  %158 = getelementptr inbounds %struct.file, %struct.file* %157, i32 0, i32 1
  %159 = load i32, i32* %16, align 4
  %160 = call i32 @ra_has_index(%struct.TYPE_7__* %158, i32 %159)
  %161 = icmp ne i32 %160, 0
  br i1 %161, label %175, label %162

162:                                              ; preds = %148
  %163 = load %struct.super_block*, %struct.super_block** %11, align 8
  %164 = getelementptr inbounds %struct.super_block, %struct.super_block* %163, i32 0, i32 1
  %165 = load %struct.TYPE_6__*, %struct.TYPE_6__** %164, align 8
  %166 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %165, i32 0, i32 0
  %167 = load %struct.TYPE_5__*, %struct.TYPE_5__** %166, align 8
  %168 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %167, i32 0, i32 0
  %169 = load i32, i32* %168, align 4
  %170 = load %struct.file*, %struct.file** %4, align 8
  %171 = getelementptr inbounds %struct.file, %struct.file* %170, i32 0, i32 1
  %172 = load %struct.file*, %struct.file** %4, align 8
  %173 = load i32, i32* %16, align 4
  %174 = call i32 @page_cache_sync_readahead(i32 %169, %struct.TYPE_7__* %171, %struct.file* %172, i32 %173, i32 1)
  br label %175

175:                                              ; preds = %162, %148
  %176 = load i32, i32* %16, align 4
  %177 = load i32, i32* @PAGE_SHIFT, align 4
  %178 = shl i32 %176, %177
  %179 = load %struct.file*, %struct.file** %4, align 8
  %180 = getelementptr inbounds %struct.file, %struct.file* %179, i32 0, i32 1
  %181 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %180, i32 0, i32 0
  store i32 %178, i32* %181, align 4
  %182 = load %struct.inode*, %struct.inode** %10, align 8
  %183 = getelementptr inbounds %struct.ext4_map_blocks, %struct.ext4_map_blocks* %15, i32 0, i32 0
  %184 = load i32, i32* %183, align 4
  %185 = call %struct.buffer_head* @ext4_bread(i32* null, %struct.inode* %182, i32 %184, i32 0)
  store %struct.buffer_head* %185, %struct.buffer_head** %12, align 8
  %186 = load %struct.buffer_head*, %struct.buffer_head** %12, align 8
  %187 = call i64 @IS_ERR(%struct.buffer_head* %186)
  %188 = icmp ne i64 %187, 0
  br i1 %188, label %189, label %192

189:                                              ; preds = %175
  %190 = load %struct.buffer_head*, %struct.buffer_head** %12, align 8
  %191 = call i32 @PTR_ERR(%struct.buffer_head* %190)
  store i32 %191, i32* %9, align 4
  store %struct.buffer_head* null, %struct.buffer_head** %12, align 8
  br label %482

192:                                              ; preds = %175
  br label %193

193:                                              ; preds = %192, %145
  %194 = load %struct.buffer_head*, %struct.buffer_head** %12, align 8
  %195 = icmp ne %struct.buffer_head* %194, null
  br i1 %195, label %216, label %196

196:                                              ; preds = %193
  %197 = load %struct.dir_context*, %struct.dir_context** %5, align 8
  %198 = getelementptr inbounds %struct.dir_context, %struct.dir_context* %197, i32 0, i32 0
  %199 = load i32, i32* %198, align 4
  %200 = load %struct.inode*, %struct.inode** %10, align 8
  %201 = getelementptr inbounds %struct.inode, %struct.inode* %200, i32 0, i32 2
  %202 = load i32, i32* %201, align 8
  %203 = shl i32 %202, 9
  %204 = icmp sgt i32 %199, %203
  br i1 %204, label %205, label %206

205:                                              ; preds = %196
  br label %480

206:                                              ; preds = %196
  %207 = load %struct.super_block*, %struct.super_block** %11, align 8
  %208 = getelementptr inbounds %struct.super_block, %struct.super_block* %207, i32 0, i32 0
  %209 = load i32, i32* %208, align 8
  %210 = load i32, i32* %6, align 4
  %211 = sub i32 %209, %210
  %212 = load %struct.dir_context*, %struct.dir_context** %5, align 8
  %213 = getelementptr inbounds %struct.dir_context, %struct.dir_context* %212, i32 0, i32 0
  %214 = load i32, i32* %213, align 4
  %215 = add i32 %214, %211
  store i32 %215, i32* %213, align 4
  br label %91

216:                                              ; preds = %193
  %217 = load %struct.buffer_head*, %struct.buffer_head** %12, align 8
  %218 = call i32 @buffer_verified(%struct.buffer_head* %217)
  %219 = icmp ne i32 %218, 0
  br i1 %219, label %243, label %220

220:                                              ; preds = %216
  %221 = load %struct.inode*, %struct.inode** %10, align 8
  %222 = load %struct.buffer_head*, %struct.buffer_head** %12, align 8
  %223 = call i32 @ext4_dirblock_csum_verify(%struct.inode* %221, %struct.buffer_head* %222)
  %224 = icmp ne i32 %223, 0
  br i1 %224, label %243, label %225

225:                                              ; preds = %220
  %226 = load %struct.file*, %struct.file** %4, align 8
  %227 = load %struct.dir_context*, %struct.dir_context** %5, align 8
  %228 = getelementptr inbounds %struct.dir_context, %struct.dir_context* %227, i32 0, i32 0
  %229 = load i32, i32* %228, align 4
  %230 = sext i32 %229 to i64
  %231 = call i32 @EXT4_ERROR_FILE(%struct.file* %226, i32 0, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i64 %230)
  %232 = load %struct.super_block*, %struct.super_block** %11, align 8
  %233 = getelementptr inbounds %struct.super_block, %struct.super_block* %232, i32 0, i32 0
  %234 = load i32, i32* %233, align 8
  %235 = load i32, i32* %6, align 4
  %236 = sub i32 %234, %235
  %237 = load %struct.dir_context*, %struct.dir_context** %5, align 8
  %238 = getelementptr inbounds %struct.dir_context, %struct.dir_context* %237, i32 0, i32 0
  %239 = load i32, i32* %238, align 4
  %240 = add i32 %239, %236
  store i32 %240, i32* %238, align 4
  %241 = load %struct.buffer_head*, %struct.buffer_head** %12, align 8
  %242 = call i32 @brelse(%struct.buffer_head* %241)
  store %struct.buffer_head* null, %struct.buffer_head** %12, align 8
  br label %91

243:                                              ; preds = %220, %216
  %244 = load %struct.buffer_head*, %struct.buffer_head** %12, align 8
  %245 = call i32 @set_buffer_verified(%struct.buffer_head* %244)
  %246 = load %struct.inode*, %struct.inode** %10, align 8
  %247 = load %struct.file*, %struct.file** %4, align 8
  %248 = getelementptr inbounds %struct.file, %struct.file* %247, i32 0, i32 0
  %249 = load i32, i32* %248, align 4
  %250 = call i32 @inode_eq_iversion(%struct.inode* %246, i32 %249)
  %251 = icmp ne i32 %250, 0
  br i1 %251, label %314, label %252

252:                                              ; preds = %243
  store i32 0, i32* %7, align 4
  br label %253

253:                                              ; preds = %283, %252
  %254 = load i32, i32* %7, align 4
  %255 = load %struct.super_block*, %struct.super_block** %11, align 8
  %256 = getelementptr inbounds %struct.super_block, %struct.super_block* %255, i32 0, i32 0
  %257 = load i32, i32* %256, align 8
  %258 = icmp slt i32 %254, %257
  br i1 %258, label %259, label %263

259:                                              ; preds = %253
  %260 = load i32, i32* %7, align 4
  %261 = load i32, i32* %6, align 4
  %262 = icmp ult i32 %260, %261
  br label %263

263:                                              ; preds = %259, %253
  %264 = phi i1 [ false, %253 ], [ %262, %259 ]
  br i1 %264, label %265, label %295

265:                                              ; preds = %263
  %266 = load %struct.buffer_head*, %struct.buffer_head** %12, align 8
  %267 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %266, i32 0, i32 1
  %268 = load i64, i64* %267, align 8
  %269 = load i32, i32* %7, align 4
  %270 = sext i32 %269 to i64
  %271 = add nsw i64 %268, %270
  %272 = inttoptr i64 %271 to %struct.ext4_dir_entry_2*
  store %struct.ext4_dir_entry_2* %272, %struct.ext4_dir_entry_2** %8, align 8
  %273 = load %struct.ext4_dir_entry_2*, %struct.ext4_dir_entry_2** %8, align 8
  %274 = getelementptr inbounds %struct.ext4_dir_entry_2, %struct.ext4_dir_entry_2* %273, i32 0, i32 1
  %275 = load i32, i32* %274, align 4
  %276 = load %struct.super_block*, %struct.super_block** %11, align 8
  %277 = getelementptr inbounds %struct.super_block, %struct.super_block* %276, i32 0, i32 0
  %278 = load i32, i32* %277, align 8
  %279 = call i64 @ext4_rec_len_from_disk(i32 %275, i32 %278)
  %280 = call i64 @EXT4_DIR_REC_LEN(i32 1)
  %281 = icmp slt i64 %279, %280
  br i1 %281, label %282, label %283

282:                                              ; preds = %265
  br label %295

283:                                              ; preds = %265
  %284 = load %struct.ext4_dir_entry_2*, %struct.ext4_dir_entry_2** %8, align 8
  %285 = getelementptr inbounds %struct.ext4_dir_entry_2, %struct.ext4_dir_entry_2* %284, i32 0, i32 1
  %286 = load i32, i32* %285, align 4
  %287 = load %struct.super_block*, %struct.super_block** %11, align 8
  %288 = getelementptr inbounds %struct.super_block, %struct.super_block* %287, i32 0, i32 0
  %289 = load i32, i32* %288, align 8
  %290 = call i64 @ext4_rec_len_from_disk(i32 %286, i32 %289)
  %291 = load i32, i32* %7, align 4
  %292 = sext i32 %291 to i64
  %293 = add nsw i64 %292, %290
  %294 = trunc i64 %293 to i32
  store i32 %294, i32* %7, align 4
  br label %253

295:                                              ; preds = %282, %263
  %296 = load i32, i32* %7, align 4
  store i32 %296, i32* %6, align 4
  %297 = load %struct.dir_context*, %struct.dir_context** %5, align 8
  %298 = getelementptr inbounds %struct.dir_context, %struct.dir_context* %297, i32 0, i32 0
  %299 = load i32, i32* %298, align 4
  %300 = load %struct.super_block*, %struct.super_block** %11, align 8
  %301 = getelementptr inbounds %struct.super_block, %struct.super_block* %300, i32 0, i32 0
  %302 = load i32, i32* %301, align 8
  %303 = sub nsw i32 %302, 1
  %304 = xor i32 %303, -1
  %305 = and i32 %299, %304
  %306 = load i32, i32* %6, align 4
  %307 = or i32 %305, %306
  %308 = load %struct.dir_context*, %struct.dir_context** %5, align 8
  %309 = getelementptr inbounds %struct.dir_context, %struct.dir_context* %308, i32 0, i32 0
  store i32 %307, i32* %309, align 4
  %310 = load %struct.inode*, %struct.inode** %10, align 8
  %311 = call i32 @inode_query_iversion(%struct.inode* %310)
  %312 = load %struct.file*, %struct.file** %4, align 8
  %313 = getelementptr inbounds %struct.file, %struct.file* %312, i32 0, i32 0
  store i32 %311, i32* %313, align 4
  br label %314

314:                                              ; preds = %295, %243
  br label %315

315:                                              ; preds = %450, %314
  %316 = load %struct.dir_context*, %struct.dir_context** %5, align 8
  %317 = getelementptr inbounds %struct.dir_context, %struct.dir_context* %316, i32 0, i32 0
  %318 = load i32, i32* %317, align 4
  %319 = load %struct.inode*, %struct.inode** %10, align 8
  %320 = getelementptr inbounds %struct.inode, %struct.inode* %319, i32 0, i32 0
  %321 = load i32, i32* %320, align 8
  %322 = icmp slt i32 %318, %321
  br i1 %322, label %323, label %329

323:                                              ; preds = %315
  %324 = load i32, i32* %6, align 4
  %325 = load %struct.super_block*, %struct.super_block** %11, align 8
  %326 = getelementptr inbounds %struct.super_block, %struct.super_block* %325, i32 0, i32 0
  %327 = load i32, i32* %326, align 8
  %328 = icmp ult i32 %324, %327
  br label %329

329:                                              ; preds = %323, %315
  %330 = phi i1 [ false, %315 ], [ %328, %323 ]
  br i1 %330, label %331, label %464

331:                                              ; preds = %329
  %332 = load %struct.buffer_head*, %struct.buffer_head** %12, align 8
  %333 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %332, i32 0, i32 1
  %334 = load i64, i64* %333, align 8
  %335 = load i32, i32* %6, align 4
  %336 = zext i32 %335 to i64
  %337 = add nsw i64 %334, %336
  %338 = inttoptr i64 %337 to %struct.ext4_dir_entry_2*
  store %struct.ext4_dir_entry_2* %338, %struct.ext4_dir_entry_2** %8, align 8
  %339 = load %struct.inode*, %struct.inode** %10, align 8
  %340 = load %struct.file*, %struct.file** %4, align 8
  %341 = load %struct.ext4_dir_entry_2*, %struct.ext4_dir_entry_2** %8, align 8
  %342 = load %struct.buffer_head*, %struct.buffer_head** %12, align 8
  %343 = load %struct.buffer_head*, %struct.buffer_head** %12, align 8
  %344 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %343, i32 0, i32 1
  %345 = load i64, i64* %344, align 8
  %346 = load %struct.buffer_head*, %struct.buffer_head** %12, align 8
  %347 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %346, i32 0, i32 0
  %348 = load i32, i32* %347, align 8
  %349 = load i32, i32* %6, align 4
  %350 = call i64 @ext4_check_dir_entry(%struct.inode* %339, %struct.file* %340, %struct.ext4_dir_entry_2* %341, %struct.buffer_head* %342, i64 %345, i32 %348, i32 %349)
  %351 = icmp ne i64 %350, 0
  br i1 %351, label %352, label %364

352:                                              ; preds = %331
  %353 = load %struct.dir_context*, %struct.dir_context** %5, align 8
  %354 = getelementptr inbounds %struct.dir_context, %struct.dir_context* %353, i32 0, i32 0
  %355 = load i32, i32* %354, align 4
  %356 = load %struct.super_block*, %struct.super_block** %11, align 8
  %357 = getelementptr inbounds %struct.super_block, %struct.super_block* %356, i32 0, i32 0
  %358 = load i32, i32* %357, align 8
  %359 = sub nsw i32 %358, 1
  %360 = or i32 %355, %359
  %361 = add nsw i32 %360, 1
  %362 = load %struct.dir_context*, %struct.dir_context** %5, align 8
  %363 = getelementptr inbounds %struct.dir_context, %struct.dir_context* %362, i32 0, i32 0
  store i32 %361, i32* %363, align 4
  br label %464

364:                                              ; preds = %331
  %365 = load %struct.ext4_dir_entry_2*, %struct.ext4_dir_entry_2** %8, align 8
  %366 = getelementptr inbounds %struct.ext4_dir_entry_2, %struct.ext4_dir_entry_2* %365, i32 0, i32 1
  %367 = load i32, i32* %366, align 4
  %368 = load %struct.super_block*, %struct.super_block** %11, align 8
  %369 = getelementptr inbounds %struct.super_block, %struct.super_block* %368, i32 0, i32 0
  %370 = load i32, i32* %369, align 8
  %371 = call i64 @ext4_rec_len_from_disk(i32 %367, i32 %370)
  %372 = load i32, i32* %6, align 4
  %373 = zext i32 %372 to i64
  %374 = add nsw i64 %373, %371
  %375 = trunc i64 %374 to i32
  store i32 %375, i32* %6, align 4
  %376 = load %struct.ext4_dir_entry_2*, %struct.ext4_dir_entry_2** %8, align 8
  %377 = getelementptr inbounds %struct.ext4_dir_entry_2, %struct.ext4_dir_entry_2* %376, i32 0, i32 3
  %378 = load i32, i32* %377, align 4
  %379 = call i64 @le32_to_cpu(i32 %378)
  %380 = icmp ne i64 %379, 0
  br i1 %380, label %381, label %450

381:                                              ; preds = %364
  %382 = load %struct.inode*, %struct.inode** %10, align 8
  %383 = call i64 @IS_ENCRYPTED(%struct.inode* %382)
  %384 = icmp ne i64 %383, 0
  br i1 %384, label %406, label %385

385:                                              ; preds = %381
  %386 = load %struct.dir_context*, %struct.dir_context** %5, align 8
  %387 = load %struct.ext4_dir_entry_2*, %struct.ext4_dir_entry_2** %8, align 8
  %388 = getelementptr inbounds %struct.ext4_dir_entry_2, %struct.ext4_dir_entry_2* %387, i32 0, i32 4
  %389 = load i32*, i32** %388, align 8
  %390 = load %struct.ext4_dir_entry_2*, %struct.ext4_dir_entry_2** %8, align 8
  %391 = getelementptr inbounds %struct.ext4_dir_entry_2, %struct.ext4_dir_entry_2* %390, i32 0, i32 0
  %392 = load i32, i32* %391, align 8
  %393 = load %struct.ext4_dir_entry_2*, %struct.ext4_dir_entry_2** %8, align 8
  %394 = getelementptr inbounds %struct.ext4_dir_entry_2, %struct.ext4_dir_entry_2* %393, i32 0, i32 3
  %395 = load i32, i32* %394, align 4
  %396 = call i64 @le32_to_cpu(i32 %395)
  %397 = load %struct.super_block*, %struct.super_block** %11, align 8
  %398 = load %struct.ext4_dir_entry_2*, %struct.ext4_dir_entry_2** %8, align 8
  %399 = getelementptr inbounds %struct.ext4_dir_entry_2, %struct.ext4_dir_entry_2* %398, i32 0, i32 2
  %400 = load i32, i32* %399, align 8
  %401 = call i32 @get_dtype(%struct.super_block* %397, i32 %400)
  %402 = call i32 @dir_emit(%struct.dir_context* %386, i32* %389, i32 %392, i64 %396, i32 %401)
  %403 = icmp ne i32 %402, 0
  br i1 %403, label %405, label %404

404:                                              ; preds = %385
  br label %481

405:                                              ; preds = %385
  br label %449

406:                                              ; preds = %381
  %407 = getelementptr inbounds %struct.fscrypt_str, %struct.fscrypt_str* %13, i32 0, i32 0
  %408 = load i32, i32* %407, align 8
  store i32 %408, i32* %17, align 4
  %409 = load %struct.ext4_dir_entry_2*, %struct.ext4_dir_entry_2** %8, align 8
  %410 = getelementptr inbounds %struct.ext4_dir_entry_2, %struct.ext4_dir_entry_2* %409, i32 0, i32 4
  %411 = load i32*, i32** %410, align 8
  %412 = load %struct.ext4_dir_entry_2*, %struct.ext4_dir_entry_2** %8, align 8
  %413 = getelementptr inbounds %struct.ext4_dir_entry_2, %struct.ext4_dir_entry_2* %412, i32 0, i32 0
  %414 = load i32, i32* %413, align 8
  %415 = call { i32, i32* } @FSTR_INIT(i32* %411, i32 %414)
  %416 = bitcast %struct.fscrypt_str* %18 to { i32, i32* }*
  %417 = getelementptr inbounds { i32, i32* }, { i32, i32* }* %416, i32 0, i32 0
  %418 = extractvalue { i32, i32* } %415, 0
  store i32 %418, i32* %417, align 8
  %419 = getelementptr inbounds { i32, i32* }, { i32, i32* }* %416, i32 0, i32 1
  %420 = extractvalue { i32, i32* } %415, 1
  store i32* %420, i32** %419, align 8
  %421 = load %struct.inode*, %struct.inode** %10, align 8
  %422 = call i32 @fscrypt_fname_disk_to_usr(%struct.inode* %421, i32 0, i32 0, %struct.fscrypt_str* %18, %struct.fscrypt_str* %13)
  store i32 %422, i32* %9, align 4
  %423 = bitcast %struct.fscrypt_str* %18 to i8*
  %424 = bitcast %struct.fscrypt_str* %13 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %423, i8* align 8 %424, i64 16, i1 false)
  %425 = load i32, i32* %17, align 4
  %426 = getelementptr inbounds %struct.fscrypt_str, %struct.fscrypt_str* %13, i32 0, i32 0
  store i32 %425, i32* %426, align 8
  %427 = load i32, i32* %9, align 4
  %428 = icmp ne i32 %427, 0
  br i1 %428, label %429, label %430

429:                                              ; preds = %406
  br label %482

430:                                              ; preds = %406
  %431 = load %struct.dir_context*, %struct.dir_context** %5, align 8
  %432 = getelementptr inbounds %struct.fscrypt_str, %struct.fscrypt_str* %18, i32 0, i32 1
  %433 = load i32*, i32** %432, align 8
  %434 = getelementptr inbounds %struct.fscrypt_str, %struct.fscrypt_str* %18, i32 0, i32 0
  %435 = load i32, i32* %434, align 8
  %436 = load %struct.ext4_dir_entry_2*, %struct.ext4_dir_entry_2** %8, align 8
  %437 = getelementptr inbounds %struct.ext4_dir_entry_2, %struct.ext4_dir_entry_2* %436, i32 0, i32 3
  %438 = load i32, i32* %437, align 4
  %439 = call i64 @le32_to_cpu(i32 %438)
  %440 = load %struct.super_block*, %struct.super_block** %11, align 8
  %441 = load %struct.ext4_dir_entry_2*, %struct.ext4_dir_entry_2** %8, align 8
  %442 = getelementptr inbounds %struct.ext4_dir_entry_2, %struct.ext4_dir_entry_2* %441, i32 0, i32 2
  %443 = load i32, i32* %442, align 8
  %444 = call i32 @get_dtype(%struct.super_block* %440, i32 %443)
  %445 = call i32 @dir_emit(%struct.dir_context* %431, i32* %433, i32 %435, i64 %439, i32 %444)
  %446 = icmp ne i32 %445, 0
  br i1 %446, label %448, label %447

447:                                              ; preds = %430
  br label %481

448:                                              ; preds = %430
  br label %449

449:                                              ; preds = %448, %405
  br label %450

450:                                              ; preds = %449, %364
  %451 = load %struct.ext4_dir_entry_2*, %struct.ext4_dir_entry_2** %8, align 8
  %452 = getelementptr inbounds %struct.ext4_dir_entry_2, %struct.ext4_dir_entry_2* %451, i32 0, i32 1
  %453 = load i32, i32* %452, align 4
  %454 = load %struct.super_block*, %struct.super_block** %11, align 8
  %455 = getelementptr inbounds %struct.super_block, %struct.super_block* %454, i32 0, i32 0
  %456 = load i32, i32* %455, align 8
  %457 = call i64 @ext4_rec_len_from_disk(i32 %453, i32 %456)
  %458 = load %struct.dir_context*, %struct.dir_context** %5, align 8
  %459 = getelementptr inbounds %struct.dir_context, %struct.dir_context* %458, i32 0, i32 0
  %460 = load i32, i32* %459, align 4
  %461 = sext i32 %460 to i64
  %462 = add nsw i64 %461, %457
  %463 = trunc i64 %462 to i32
  store i32 %463, i32* %459, align 4
  br label %315

464:                                              ; preds = %352, %329
  %465 = load %struct.dir_context*, %struct.dir_context** %5, align 8
  %466 = getelementptr inbounds %struct.dir_context, %struct.dir_context* %465, i32 0, i32 0
  %467 = load i32, i32* %466, align 4
  %468 = load %struct.inode*, %struct.inode** %10, align 8
  %469 = getelementptr inbounds %struct.inode, %struct.inode* %468, i32 0, i32 0
  %470 = load i32, i32* %469, align 8
  %471 = icmp slt i32 %467, %470
  br i1 %471, label %472, label %477

472:                                              ; preds = %464
  %473 = load %struct.inode*, %struct.inode** %10, align 8
  %474 = call i32 @dir_relax_shared(%struct.inode* %473)
  %475 = icmp ne i32 %474, 0
  br i1 %475, label %477, label %476

476:                                              ; preds = %472
  br label %481

477:                                              ; preds = %472, %464
  %478 = load %struct.buffer_head*, %struct.buffer_head** %12, align 8
  %479 = call i32 @brelse(%struct.buffer_head* %478)
  store %struct.buffer_head* null, %struct.buffer_head** %12, align 8
  store i32 0, i32* %6, align 4
  br label %91

480:                                              ; preds = %205, %91
  br label %481

481:                                              ; preds = %480, %476, %447, %404
  store i32 0, i32* %9, align 4
  br label %482

482:                                              ; preds = %481, %429, %189, %103
  %483 = call i32 @fscrypt_fname_free_buffer(%struct.fscrypt_str* %13)
  %484 = load %struct.buffer_head*, %struct.buffer_head** %12, align 8
  %485 = call i32 @brelse(%struct.buffer_head* %484)
  %486 = load i32, i32* %9, align 4
  store i32 %486, i32* %3, align 4
  br label %487

487:                                              ; preds = %482, %87, %74, %57, %43
  %488 = load i32, i32* %3, align 4
  ret i32 %488
}

declare dso_local %struct.inode* @file_inode(%struct.file*) #1

declare dso_local { i32, i32* } @FSTR_INIT(i32*, i32) #1

declare dso_local i64 @IS_ENCRYPTED(%struct.inode*) #1

declare dso_local i32 @fscrypt_get_encryption_info(%struct.inode*) #1

declare dso_local i64 @is_dx_dir(%struct.inode*) #1

declare dso_local i32 @ext4_dx_readdir(%struct.file*, %struct.dir_context*) #1

declare dso_local i32 @ext4_clear_inode_flag(%struct.inode*, i32) #1

declare dso_local i64 @ext4_has_inline_data(%struct.inode*) #1

declare dso_local i32 @ext4_read_inline_dir(%struct.file*, %struct.dir_context*, i32*) #1

declare dso_local i32 @fscrypt_fname_alloc_buffer(%struct.inode*, i32, %struct.fscrypt_str*) #1

declare dso_local i64 @fatal_signal_pending(i32) #1

declare dso_local i32 @cond_resched(...) #1

declare dso_local i32 @EXT4_BLOCK_SIZE_BITS(%struct.super_block*) #1

declare dso_local i32 @ext4_map_blocks(i32*, %struct.inode*, %struct.ext4_map_blocks*, i32) #1

declare dso_local i32 @ra_has_index(%struct.TYPE_7__*, i32) #1

declare dso_local i32 @page_cache_sync_readahead(i32, %struct.TYPE_7__*, %struct.file*, i32, i32) #1

declare dso_local %struct.buffer_head* @ext4_bread(i32*, %struct.inode*, i32, i32) #1

declare dso_local i64 @IS_ERR(%struct.buffer_head*) #1

declare dso_local i32 @PTR_ERR(%struct.buffer_head*) #1

declare dso_local i32 @buffer_verified(%struct.buffer_head*) #1

declare dso_local i32 @ext4_dirblock_csum_verify(%struct.inode*, %struct.buffer_head*) #1

declare dso_local i32 @EXT4_ERROR_FILE(%struct.file*, i32, i8*, i64) #1

declare dso_local i32 @brelse(%struct.buffer_head*) #1

declare dso_local i32 @set_buffer_verified(%struct.buffer_head*) #1

declare dso_local i32 @inode_eq_iversion(%struct.inode*, i32) #1

declare dso_local i64 @ext4_rec_len_from_disk(i32, i32) #1

declare dso_local i64 @EXT4_DIR_REC_LEN(i32) #1

declare dso_local i32 @inode_query_iversion(%struct.inode*) #1

declare dso_local i64 @ext4_check_dir_entry(%struct.inode*, %struct.file*, %struct.ext4_dir_entry_2*, %struct.buffer_head*, i64, i32, i32) #1

declare dso_local i64 @le32_to_cpu(i32) #1

declare dso_local i32 @dir_emit(%struct.dir_context*, i32*, i32, i64, i32) #1

declare dso_local i32 @get_dtype(%struct.super_block*, i32) #1

declare dso_local i32 @fscrypt_fname_disk_to_usr(%struct.inode*, i32, i32, %struct.fscrypt_str*, %struct.fscrypt_str*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @dir_relax_shared(%struct.inode*) #1

declare dso_local i32 @fscrypt_fname_free_buffer(%struct.fscrypt_str*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
