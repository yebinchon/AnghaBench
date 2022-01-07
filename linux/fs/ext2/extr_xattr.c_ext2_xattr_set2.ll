; ModuleID = '/home/carl/AnghaBench/linux/fs/ext2/extr_xattr.c_ext2_xattr_set2.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ext2/extr_xattr.c_ext2_xattr_set2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32, %struct.super_block* }
%struct.super_block = type { i32 }
%struct.buffer_head = type { i32, i32, i32 }
%struct.ext2_xattr_header = type { i64, i64 }
%struct.mb_cache = type { i32 }
%struct.TYPE_2__ = type { i32, i32 }

@.str = private unnamed_addr constant [19 x i8] c"keeping this block\00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c"reusing block\00", align 1
@.str.2 = private unnamed_addr constant [16 x i8] c"refcount now=%d\00", align 1
@.str.3 = private unnamed_addr constant [18 x i8] c"creating block %d\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@ENOSPC = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [8 x i8] c"freeing\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.buffer_head*, %struct.ext2_xattr_header*)* @ext2_xattr_set2 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ext2_xattr_set2(%struct.inode* %0, %struct.buffer_head* %1, %struct.ext2_xattr_header* %2) #0 {
  %4 = alloca %struct.inode*, align 8
  %5 = alloca %struct.buffer_head*, align 8
  %6 = alloca %struct.ext2_xattr_header*, align 8
  %7 = alloca %struct.super_block*, align 8
  %8 = alloca %struct.buffer_head*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.mb_cache*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %4, align 8
  store %struct.buffer_head* %1, %struct.buffer_head** %5, align 8
  store %struct.ext2_xattr_header* %2, %struct.ext2_xattr_header** %6, align 8
  %14 = load %struct.inode*, %struct.inode** %4, align 8
  %15 = getelementptr inbounds %struct.inode, %struct.inode* %14, i32 0, i32 1
  %16 = load %struct.super_block*, %struct.super_block** %15, align 8
  store %struct.super_block* %16, %struct.super_block** %7, align 8
  store %struct.buffer_head* null, %struct.buffer_head** %8, align 8
  %17 = load %struct.inode*, %struct.inode** %4, align 8
  %18 = call %struct.mb_cache* @EA_BLOCK_CACHE(%struct.inode* %17)
  store %struct.mb_cache* %18, %struct.mb_cache** %10, align 8
  %19 = load %struct.ext2_xattr_header*, %struct.ext2_xattr_header** %6, align 8
  %20 = icmp ne %struct.ext2_xattr_header* %19, null
  br i1 %20, label %21, label %150

21:                                               ; preds = %3
  %22 = load %struct.inode*, %struct.inode** %4, align 8
  %23 = load %struct.ext2_xattr_header*, %struct.ext2_xattr_header** %6, align 8
  %24 = call %struct.buffer_head* @ext2_xattr_cache_find(%struct.inode* %22, %struct.ext2_xattr_header* %23)
  store %struct.buffer_head* %24, %struct.buffer_head** %8, align 8
  %25 = load %struct.buffer_head*, %struct.buffer_head** %8, align 8
  %26 = icmp ne %struct.buffer_head* %25, null
  br i1 %26, label %27, label %59

27:                                               ; preds = %21
  %28 = load %struct.buffer_head*, %struct.buffer_head** %8, align 8
  %29 = load %struct.buffer_head*, %struct.buffer_head** %5, align 8
  %30 = icmp eq %struct.buffer_head* %28, %29
  br i1 %30, label %31, label %34

31:                                               ; preds = %27
  %32 = load %struct.buffer_head*, %struct.buffer_head** %8, align 8
  %33 = call i32 (%struct.buffer_head*, i8*, ...) @ea_bdebug(%struct.buffer_head* %32, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  br label %56

34:                                               ; preds = %27
  %35 = load %struct.buffer_head*, %struct.buffer_head** %8, align 8
  %36 = call i32 (%struct.buffer_head*, i8*, ...) @ea_bdebug(%struct.buffer_head* %35, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0))
  %37 = load %struct.inode*, %struct.inode** %4, align 8
  %38 = call i32 @dquot_alloc_block(%struct.inode* %37, i32 1)
  store i32 %38, i32* %9, align 4
  %39 = load i32, i32* %9, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %44

41:                                               ; preds = %34
  %42 = load %struct.buffer_head*, %struct.buffer_head** %8, align 8
  %43 = call i32 @unlock_buffer(%struct.buffer_head* %42)
  br label %260

44:                                               ; preds = %34
  %45 = load %struct.buffer_head*, %struct.buffer_head** %8, align 8
  %46 = call %struct.ext2_xattr_header* @HDR(%struct.buffer_head* %45)
  %47 = getelementptr inbounds %struct.ext2_xattr_header, %struct.ext2_xattr_header* %46, i32 0, i32 0
  %48 = call i32 @le32_add_cpu(i64* %47, i32 1)
  %49 = load %struct.buffer_head*, %struct.buffer_head** %8, align 8
  %50 = load %struct.buffer_head*, %struct.buffer_head** %8, align 8
  %51 = call %struct.ext2_xattr_header* @HDR(%struct.buffer_head* %50)
  %52 = getelementptr inbounds %struct.ext2_xattr_header, %struct.ext2_xattr_header* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = call i32 @le32_to_cpu(i64 %53)
  %55 = call i32 (%struct.buffer_head*, i8*, ...) @ea_bdebug(%struct.buffer_head* %49, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0), i32 %54)
  br label %56

56:                                               ; preds = %44, %31
  %57 = load %struct.buffer_head*, %struct.buffer_head** %8, align 8
  %58 = call i32 @unlock_buffer(%struct.buffer_head* %57)
  br label %129

59:                                               ; preds = %21
  %60 = load %struct.buffer_head*, %struct.buffer_head** %5, align 8
  %61 = icmp ne %struct.buffer_head* %60, null
  br i1 %61, label %62, label %74

62:                                               ; preds = %59
  %63 = load %struct.ext2_xattr_header*, %struct.ext2_xattr_header** %6, align 8
  %64 = load %struct.buffer_head*, %struct.buffer_head** %5, align 8
  %65 = call %struct.ext2_xattr_header* @HDR(%struct.buffer_head* %64)
  %66 = icmp eq %struct.ext2_xattr_header* %63, %65
  br i1 %66, label %67, label %74

67:                                               ; preds = %62
  %68 = load %struct.buffer_head*, %struct.buffer_head** %5, align 8
  store %struct.buffer_head* %68, %struct.buffer_head** %8, align 8
  %69 = load %struct.buffer_head*, %struct.buffer_head** %8, align 8
  %70 = call i32 @get_bh(%struct.buffer_head* %69)
  %71 = load %struct.mb_cache*, %struct.mb_cache** %10, align 8
  %72 = load %struct.buffer_head*, %struct.buffer_head** %8, align 8
  %73 = call i32 @ext2_xattr_cache_insert(%struct.mb_cache* %71, %struct.buffer_head* %72)
  br label %128

74:                                               ; preds = %62, %59
  %75 = load %struct.super_block*, %struct.super_block** %7, align 8
  %76 = load %struct.inode*, %struct.inode** %4, align 8
  %77 = call %struct.TYPE_2__* @EXT2_I(%struct.inode* %76)
  %78 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 4
  %80 = call i32 @ext2_group_first_block_no(%struct.super_block* %75, i32 %79)
  store i32 %80, i32* %11, align 4
  %81 = load %struct.inode*, %struct.inode** %4, align 8
  %82 = load i32, i32* %11, align 4
  %83 = call i32 @ext2_new_block(%struct.inode* %81, i32 %82, i32* %9)
  store i32 %83, i32* %12, align 4
  %84 = load i32, i32* %9, align 4
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %87

86:                                               ; preds = %74
  br label %260

87:                                               ; preds = %74
  %88 = load %struct.inode*, %struct.inode** %4, align 8
  %89 = load i32, i32* %12, align 4
  %90 = call i32 @ea_idebug(%struct.inode* %88, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0), i32 %89)
  %91 = load %struct.super_block*, %struct.super_block** %7, align 8
  %92 = load i32, i32* %12, align 4
  %93 = call %struct.buffer_head* @sb_getblk(%struct.super_block* %91, i32 %92)
  store %struct.buffer_head* %93, %struct.buffer_head** %8, align 8
  %94 = load %struct.buffer_head*, %struct.buffer_head** %8, align 8
  %95 = icmp ne %struct.buffer_head* %94, null
  %96 = xor i1 %95, true
  %97 = zext i1 %96 to i32
  %98 = call i64 @unlikely(i32 %97)
  %99 = icmp ne i64 %98, 0
  br i1 %99, label %100, label %108

100:                                              ; preds = %87
  %101 = load %struct.inode*, %struct.inode** %4, align 8
  %102 = load i32, i32* %12, align 4
  %103 = call i32 @ext2_free_blocks(%struct.inode* %101, i32 %102, i32 1)
  %104 = load %struct.inode*, %struct.inode** %4, align 8
  %105 = call i32 @mark_inode_dirty(%struct.inode* %104)
  %106 = load i32, i32* @ENOMEM, align 4
  %107 = sub nsw i32 0, %106
  store i32 %107, i32* %9, align 4
  br label %260

108:                                              ; preds = %87
  %109 = load %struct.buffer_head*, %struct.buffer_head** %8, align 8
  %110 = call i32 @lock_buffer(%struct.buffer_head* %109)
  %111 = load %struct.buffer_head*, %struct.buffer_head** %8, align 8
  %112 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %111, i32 0, i32 2
  %113 = load i32, i32* %112, align 4
  %114 = load %struct.ext2_xattr_header*, %struct.ext2_xattr_header** %6, align 8
  %115 = load %struct.buffer_head*, %struct.buffer_head** %8, align 8
  %116 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %115, i32 0, i32 1
  %117 = load i32, i32* %116, align 4
  %118 = call i32 @memcpy(i32 %113, %struct.ext2_xattr_header* %114, i32 %117)
  %119 = load %struct.buffer_head*, %struct.buffer_head** %8, align 8
  %120 = call i32 @set_buffer_uptodate(%struct.buffer_head* %119)
  %121 = load %struct.buffer_head*, %struct.buffer_head** %8, align 8
  %122 = call i32 @unlock_buffer(%struct.buffer_head* %121)
  %123 = load %struct.mb_cache*, %struct.mb_cache** %10, align 8
  %124 = load %struct.buffer_head*, %struct.buffer_head** %8, align 8
  %125 = call i32 @ext2_xattr_cache_insert(%struct.mb_cache* %123, %struct.buffer_head* %124)
  %126 = load %struct.super_block*, %struct.super_block** %7, align 8
  %127 = call i32 @ext2_xattr_update_super_block(%struct.super_block* %126)
  br label %128

128:                                              ; preds = %108, %67
  br label %129

129:                                              ; preds = %128, %56
  %130 = load %struct.buffer_head*, %struct.buffer_head** %8, align 8
  %131 = call i32 @mark_buffer_dirty(%struct.buffer_head* %130)
  %132 = load %struct.inode*, %struct.inode** %4, align 8
  %133 = call i64 @IS_SYNC(%struct.inode* %132)
  %134 = icmp ne i64 %133, 0
  br i1 %134, label %135, label %149

135:                                              ; preds = %129
  %136 = load %struct.buffer_head*, %struct.buffer_head** %8, align 8
  %137 = call i32 @sync_dirty_buffer(%struct.buffer_head* %136)
  %138 = load i32, i32* @EIO, align 4
  %139 = sub nsw i32 0, %138
  store i32 %139, i32* %9, align 4
  %140 = load %struct.buffer_head*, %struct.buffer_head** %8, align 8
  %141 = call i64 @buffer_req(%struct.buffer_head* %140)
  %142 = icmp ne i64 %141, 0
  br i1 %142, label %143, label %148

143:                                              ; preds = %135
  %144 = load %struct.buffer_head*, %struct.buffer_head** %8, align 8
  %145 = call i32 @buffer_uptodate(%struct.buffer_head* %144)
  %146 = icmp ne i32 %145, 0
  br i1 %146, label %148, label %147

147:                                              ; preds = %143
  br label %260

148:                                              ; preds = %143, %135
  br label %149

149:                                              ; preds = %148, %129
  br label %150

150:                                              ; preds = %149, %3
  %151 = load %struct.buffer_head*, %struct.buffer_head** %8, align 8
  %152 = icmp ne %struct.buffer_head* %151, null
  br i1 %152, label %153, label %157

153:                                              ; preds = %150
  %154 = load %struct.buffer_head*, %struct.buffer_head** %8, align 8
  %155 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %154, i32 0, i32 0
  %156 = load i32, i32* %155, align 4
  br label %158

157:                                              ; preds = %150
  br label %158

158:                                              ; preds = %157, %153
  %159 = phi i32 [ %156, %153 ], [ 0, %157 ]
  %160 = load %struct.inode*, %struct.inode** %4, align 8
  %161 = call %struct.TYPE_2__* @EXT2_I(%struct.inode* %160)
  %162 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %161, i32 0, i32 0
  store i32 %159, i32* %162, align 4
  %163 = load %struct.inode*, %struct.inode** %4, align 8
  %164 = call i32 @current_time(%struct.inode* %163)
  %165 = load %struct.inode*, %struct.inode** %4, align 8
  %166 = getelementptr inbounds %struct.inode, %struct.inode* %165, i32 0, i32 0
  store i32 %164, i32* %166, align 8
  %167 = load %struct.inode*, %struct.inode** %4, align 8
  %168 = call i64 @IS_SYNC(%struct.inode* %167)
  %169 = icmp ne i64 %168, 0
  br i1 %169, label %170, label %194

170:                                              ; preds = %158
  %171 = load %struct.inode*, %struct.inode** %4, align 8
  %172 = call i32 @sync_inode_metadata(%struct.inode* %171, i32 1)
  store i32 %172, i32* %9, align 4
  %173 = load i32, i32* %9, align 4
  %174 = icmp ne i32 %173, 0
  br i1 %174, label %175, label %193

175:                                              ; preds = %170
  %176 = load i32, i32* %9, align 4
  %177 = load i32, i32* @ENOSPC, align 4
  %178 = sub nsw i32 0, %177
  %179 = icmp ne i32 %176, %178
  br i1 %179, label %180, label %193

180:                                              ; preds = %175
  %181 = load %struct.buffer_head*, %struct.buffer_head** %8, align 8
  %182 = icmp ne %struct.buffer_head* %181, null
  br i1 %182, label %183, label %192

183:                                              ; preds = %180
  %184 = load %struct.buffer_head*, %struct.buffer_head** %8, align 8
  %185 = load %struct.buffer_head*, %struct.buffer_head** %5, align 8
  %186 = icmp ne %struct.buffer_head* %184, %185
  br i1 %186, label %187, label %192

187:                                              ; preds = %183
  %188 = load %struct.inode*, %struct.inode** %4, align 8
  %189 = call i32 @dquot_free_block_nodirty(%struct.inode* %188, i32 1)
  %190 = load %struct.inode*, %struct.inode** %4, align 8
  %191 = call i32 @mark_inode_dirty(%struct.inode* %190)
  br label %192

192:                                              ; preds = %187, %183, %180
  br label %260

193:                                              ; preds = %175, %170
  br label %197

194:                                              ; preds = %158
  %195 = load %struct.inode*, %struct.inode** %4, align 8
  %196 = call i32 @mark_inode_dirty(%struct.inode* %195)
  br label %197

197:                                              ; preds = %194, %193
  store i32 0, i32* %9, align 4
  %198 = load %struct.buffer_head*, %struct.buffer_head** %5, align 8
  %199 = icmp ne %struct.buffer_head* %198, null
  br i1 %199, label %200, label %259

200:                                              ; preds = %197
  %201 = load %struct.buffer_head*, %struct.buffer_head** %5, align 8
  %202 = load %struct.buffer_head*, %struct.buffer_head** %8, align 8
  %203 = icmp ne %struct.buffer_head* %201, %202
  br i1 %203, label %204, label %259

204:                                              ; preds = %200
  %205 = load %struct.buffer_head*, %struct.buffer_head** %5, align 8
  %206 = call i32 @lock_buffer(%struct.buffer_head* %205)
  %207 = load %struct.buffer_head*, %struct.buffer_head** %5, align 8
  %208 = call %struct.ext2_xattr_header* @HDR(%struct.buffer_head* %207)
  %209 = getelementptr inbounds %struct.ext2_xattr_header, %struct.ext2_xattr_header* %208, i32 0, i32 0
  %210 = load i64, i64* %209, align 8
  %211 = call i64 @cpu_to_le32(i32 1)
  %212 = icmp eq i64 %210, %211
  br i1 %212, label %213, label %238

213:                                              ; preds = %204
  %214 = load %struct.buffer_head*, %struct.buffer_head** %5, align 8
  %215 = call %struct.ext2_xattr_header* @HDR(%struct.buffer_head* %214)
  %216 = getelementptr inbounds %struct.ext2_xattr_header, %struct.ext2_xattr_header* %215, i32 0, i32 1
  %217 = load i64, i64* %216, align 8
  %218 = call i32 @le32_to_cpu(i64 %217)
  store i32 %218, i32* %13, align 4
  %219 = load %struct.mb_cache*, %struct.mb_cache** %10, align 8
  %220 = load i32, i32* %13, align 4
  %221 = load %struct.buffer_head*, %struct.buffer_head** %5, align 8
  %222 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %221, i32 0, i32 0
  %223 = load i32, i32* %222, align 4
  %224 = call i32 @mb_cache_entry_delete(%struct.mb_cache* %219, i32 %220, i32 %223)
  %225 = load %struct.buffer_head*, %struct.buffer_head** %5, align 8
  %226 = call i32 (%struct.buffer_head*, i8*, ...) @ea_bdebug(%struct.buffer_head* %225, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0))
  %227 = load %struct.inode*, %struct.inode** %4, align 8
  %228 = load %struct.buffer_head*, %struct.buffer_head** %5, align 8
  %229 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %228, i32 0, i32 0
  %230 = load i32, i32* %229, align 4
  %231 = call i32 @ext2_free_blocks(%struct.inode* %227, i32 %230, i32 1)
  %232 = load %struct.inode*, %struct.inode** %4, align 8
  %233 = call i32 @mark_inode_dirty(%struct.inode* %232)
  %234 = load %struct.buffer_head*, %struct.buffer_head** %5, align 8
  %235 = call i32 @get_bh(%struct.buffer_head* %234)
  %236 = load %struct.buffer_head*, %struct.buffer_head** %5, align 8
  %237 = call i32 @bforget(%struct.buffer_head* %236)
  br label %256

238:                                              ; preds = %204
  %239 = load %struct.buffer_head*, %struct.buffer_head** %5, align 8
  %240 = call %struct.ext2_xattr_header* @HDR(%struct.buffer_head* %239)
  %241 = getelementptr inbounds %struct.ext2_xattr_header, %struct.ext2_xattr_header* %240, i32 0, i32 0
  %242 = call i32 @le32_add_cpu(i64* %241, i32 -1)
  %243 = load %struct.inode*, %struct.inode** %4, align 8
  %244 = call i32 @dquot_free_block_nodirty(%struct.inode* %243, i32 1)
  %245 = load %struct.inode*, %struct.inode** %4, align 8
  %246 = call i32 @mark_inode_dirty(%struct.inode* %245)
  %247 = load %struct.buffer_head*, %struct.buffer_head** %5, align 8
  %248 = call i32 @mark_buffer_dirty(%struct.buffer_head* %247)
  %249 = load %struct.buffer_head*, %struct.buffer_head** %5, align 8
  %250 = load %struct.buffer_head*, %struct.buffer_head** %5, align 8
  %251 = call %struct.ext2_xattr_header* @HDR(%struct.buffer_head* %250)
  %252 = getelementptr inbounds %struct.ext2_xattr_header, %struct.ext2_xattr_header* %251, i32 0, i32 0
  %253 = load i64, i64* %252, align 8
  %254 = call i32 @le32_to_cpu(i64 %253)
  %255 = call i32 (%struct.buffer_head*, i8*, ...) @ea_bdebug(%struct.buffer_head* %249, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0), i32 %254)
  br label %256

256:                                              ; preds = %238, %213
  %257 = load %struct.buffer_head*, %struct.buffer_head** %5, align 8
  %258 = call i32 @unlock_buffer(%struct.buffer_head* %257)
  br label %259

259:                                              ; preds = %256, %200, %197
  br label %260

260:                                              ; preds = %259, %192, %147, %100, %86, %41
  %261 = load %struct.buffer_head*, %struct.buffer_head** %8, align 8
  %262 = call i32 @brelse(%struct.buffer_head* %261)
  %263 = load i32, i32* %9, align 4
  ret i32 %263
}

declare dso_local %struct.mb_cache* @EA_BLOCK_CACHE(%struct.inode*) #1

declare dso_local %struct.buffer_head* @ext2_xattr_cache_find(%struct.inode*, %struct.ext2_xattr_header*) #1

declare dso_local i32 @ea_bdebug(%struct.buffer_head*, i8*, ...) #1

declare dso_local i32 @dquot_alloc_block(%struct.inode*, i32) #1

declare dso_local i32 @unlock_buffer(%struct.buffer_head*) #1

declare dso_local i32 @le32_add_cpu(i64*, i32) #1

declare dso_local %struct.ext2_xattr_header* @HDR(%struct.buffer_head*) #1

declare dso_local i32 @le32_to_cpu(i64) #1

declare dso_local i32 @get_bh(%struct.buffer_head*) #1

declare dso_local i32 @ext2_xattr_cache_insert(%struct.mb_cache*, %struct.buffer_head*) #1

declare dso_local i32 @ext2_group_first_block_no(%struct.super_block*, i32) #1

declare dso_local %struct.TYPE_2__* @EXT2_I(%struct.inode*) #1

declare dso_local i32 @ext2_new_block(%struct.inode*, i32, i32*) #1

declare dso_local i32 @ea_idebug(%struct.inode*, i8*, i32) #1

declare dso_local %struct.buffer_head* @sb_getblk(%struct.super_block*, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @ext2_free_blocks(%struct.inode*, i32, i32) #1

declare dso_local i32 @mark_inode_dirty(%struct.inode*) #1

declare dso_local i32 @lock_buffer(%struct.buffer_head*) #1

declare dso_local i32 @memcpy(i32, %struct.ext2_xattr_header*, i32) #1

declare dso_local i32 @set_buffer_uptodate(%struct.buffer_head*) #1

declare dso_local i32 @ext2_xattr_update_super_block(%struct.super_block*) #1

declare dso_local i32 @mark_buffer_dirty(%struct.buffer_head*) #1

declare dso_local i64 @IS_SYNC(%struct.inode*) #1

declare dso_local i32 @sync_dirty_buffer(%struct.buffer_head*) #1

declare dso_local i64 @buffer_req(%struct.buffer_head*) #1

declare dso_local i32 @buffer_uptodate(%struct.buffer_head*) #1

declare dso_local i32 @current_time(%struct.inode*) #1

declare dso_local i32 @sync_inode_metadata(%struct.inode*, i32) #1

declare dso_local i32 @dquot_free_block_nodirty(%struct.inode*, i32) #1

declare dso_local i64 @cpu_to_le32(i32) #1

declare dso_local i32 @mb_cache_entry_delete(%struct.mb_cache*, i32, i32) #1

declare dso_local i32 @bforget(%struct.buffer_head*) #1

declare dso_local i32 @brelse(%struct.buffer_head*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
