; ModuleID = '/home/carl/AnghaBench/linux/fs/ocfs2/extr_dir.c_ocfs2_extend_dir.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ocfs2/extr_dir.c_ocfs2_extend_dir.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ocfs2_super = type { %struct.super_block* }
%struct.super_block = type { i32 }
%struct.inode = type { i32, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i64 }
%struct.buffer_head = type { i64 }
%struct.ocfs2_dir_lookup_result = type { %struct.buffer_head* }
%struct.ocfs2_dinode = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.ocfs2_extent_list }
%struct.ocfs2_extent_list = type { i32 }
%struct.ocfs2_alloc_context = type { i32* }
%struct.ocfs2_dir_entry = type { i8*, i64 }
%struct.ocfs2_extent_tree = type { i32 }
%struct.TYPE_6__ = type { i32, i32, i32, i32, i32, i64 }

@OCFS2_INLINE_DATA_FL = common dso_local global i32 0, align 4
@OCFS2_SIMPLE_DIR_EXTEND_CREDITS = common dso_local global i32 0, align 4
@ENOSPC = common dso_local global i32 0, align 4
@OCFS2_JOURNAL_ACCESS_CREATE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ocfs2_super*, %struct.inode*, %struct.buffer_head*, i32, %struct.ocfs2_dir_lookup_result*, %struct.buffer_head**)* @ocfs2_extend_dir to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ocfs2_extend_dir(%struct.ocfs2_super* %0, %struct.inode* %1, %struct.buffer_head* %2, i32 %3, %struct.ocfs2_dir_lookup_result* %4, %struct.buffer_head** %5) #0 {
  %7 = alloca %struct.ocfs2_super*, align 8
  %8 = alloca %struct.inode*, align 8
  %9 = alloca %struct.buffer_head*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.ocfs2_dir_lookup_result*, align 8
  %12 = alloca %struct.buffer_head**, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i64, align 8
  %18 = alloca %struct.ocfs2_dinode*, align 8
  %19 = alloca %struct.ocfs2_extent_list*, align 8
  %20 = alloca %struct.ocfs2_alloc_context*, align 8
  %21 = alloca %struct.ocfs2_alloc_context*, align 8
  %22 = alloca i32*, align 8
  %23 = alloca %struct.buffer_head*, align 8
  %24 = alloca %struct.ocfs2_dir_entry*, align 8
  %25 = alloca %struct.super_block*, align 8
  %26 = alloca %struct.ocfs2_extent_tree, align 4
  %27 = alloca %struct.buffer_head*, align 8
  store %struct.ocfs2_super* %0, %struct.ocfs2_super** %7, align 8
  store %struct.inode* %1, %struct.inode** %8, align 8
  store %struct.buffer_head* %2, %struct.buffer_head** %9, align 8
  store i32 %3, i32* %10, align 4
  store %struct.ocfs2_dir_lookup_result* %4, %struct.ocfs2_dir_lookup_result** %11, align 8
  store %struct.buffer_head** %5, %struct.buffer_head*** %12, align 8
  store i32 0, i32* %13, align 4
  store i32 0, i32* %16, align 4
  %28 = load %struct.buffer_head*, %struct.buffer_head** %9, align 8
  %29 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = inttoptr i64 %30 to %struct.ocfs2_dinode*
  store %struct.ocfs2_dinode* %31, %struct.ocfs2_dinode** %18, align 8
  %32 = load %struct.ocfs2_dinode*, %struct.ocfs2_dinode** %18, align 8
  %33 = getelementptr inbounds %struct.ocfs2_dinode, %struct.ocfs2_dinode* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 0
  store %struct.ocfs2_extent_list* %34, %struct.ocfs2_extent_list** %19, align 8
  store %struct.ocfs2_alloc_context* null, %struct.ocfs2_alloc_context** %20, align 8
  store %struct.ocfs2_alloc_context* null, %struct.ocfs2_alloc_context** %21, align 8
  store i32* null, i32** %22, align 8
  store %struct.buffer_head* null, %struct.buffer_head** %23, align 8
  %35 = load %struct.ocfs2_super*, %struct.ocfs2_super** %7, align 8
  %36 = getelementptr inbounds %struct.ocfs2_super, %struct.ocfs2_super* %35, i32 0, i32 0
  %37 = load %struct.super_block*, %struct.super_block** %36, align 8
  store %struct.super_block* %37, %struct.super_block** %25, align 8
  %38 = load %struct.ocfs2_dir_lookup_result*, %struct.ocfs2_dir_lookup_result** %11, align 8
  %39 = getelementptr inbounds %struct.ocfs2_dir_lookup_result, %struct.ocfs2_dir_lookup_result* %38, i32 0, i32 0
  %40 = load %struct.buffer_head*, %struct.buffer_head** %39, align 8
  store %struct.buffer_head* %40, %struct.buffer_head** %27, align 8
  %41 = load %struct.inode*, %struct.inode** %8, align 8
  %42 = call %struct.TYPE_6__* @OCFS2_I(%struct.inode* %41)
  %43 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = load i32, i32* @OCFS2_INLINE_DATA_FL, align 4
  %46 = and i32 %44, %45
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %84

48:                                               ; preds = %6
  %49 = load %struct.buffer_head*, %struct.buffer_head** %27, align 8
  %50 = call i32 @BUG_ON(%struct.buffer_head* %49)
  %51 = load %struct.inode*, %struct.inode** %8, align 8
  %52 = load %struct.buffer_head*, %struct.buffer_head** %9, align 8
  %53 = load i32, i32* %10, align 4
  %54 = load %struct.ocfs2_dir_lookup_result*, %struct.ocfs2_dir_lookup_result** %11, align 8
  %55 = call i32 @ocfs2_expand_inline_dir(%struct.inode* %51, %struct.buffer_head* %52, i32 %53, %struct.ocfs2_dir_lookup_result* %54, %struct.buffer_head** %23)
  store i32 %55, i32* %13, align 4
  %56 = load i32, i32* %13, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %61

58:                                               ; preds = %48
  %59 = load i32, i32* %13, align 4
  %60 = call i32 @mlog_errno(i32 %59)
  br label %319

61:                                               ; preds = %48
  %62 = load %struct.ocfs2_dir_lookup_result*, %struct.ocfs2_dir_lookup_result** %11, align 8
  %63 = getelementptr inbounds %struct.ocfs2_dir_lookup_result, %struct.ocfs2_dir_lookup_result* %62, i32 0, i32 0
  %64 = load %struct.buffer_head*, %struct.buffer_head** %63, align 8
  store %struct.buffer_head* %64, %struct.buffer_head** %27, align 8
  %65 = load i32, i32* %10, align 4
  %66 = icmp eq i32 %65, 1
  br i1 %66, label %67, label %74

67:                                               ; preds = %61
  %68 = load %struct.buffer_head*, %struct.buffer_head** %23, align 8
  %69 = icmp eq %struct.buffer_head* %68, null
  %70 = zext i1 %69 to i32
  %71 = sext i32 %70 to i64
  %72 = inttoptr i64 %71 to %struct.buffer_head*
  %73 = call i32 @BUG_ON(%struct.buffer_head* %72)
  br label %313

74:                                               ; preds = %61
  %75 = load %struct.buffer_head*, %struct.buffer_head** %23, align 8
  %76 = call i32 @brelse(%struct.buffer_head* %75)
  store %struct.buffer_head* null, %struct.buffer_head** %23, align 8
  %77 = load %struct.inode*, %struct.inode** %8, align 8
  %78 = call %struct.TYPE_6__* @OCFS2_I(%struct.inode* %77)
  %79 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %78, i32 0, i32 1
  %80 = call i32 @down_write(i32* %79)
  store i32 1, i32* %16, align 4
  %81 = load %struct.inode*, %struct.inode** %8, align 8
  %82 = call i64 @i_size_read(%struct.inode* %81)
  store i64 %82, i64* %17, align 8
  %83 = load i32, i32* @OCFS2_SIMPLE_DIR_EXTEND_CREDITS, align 4
  store i32 %83, i32* %14, align 4
  br label %179

84:                                               ; preds = %6
  %85 = load %struct.inode*, %struct.inode** %8, align 8
  %86 = call %struct.TYPE_6__* @OCFS2_I(%struct.inode* %85)
  %87 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %86, i32 0, i32 1
  %88 = call i32 @down_write(i32* %87)
  store i32 1, i32* %16, align 4
  %89 = load %struct.inode*, %struct.inode** %8, align 8
  %90 = call i64 @i_size_read(%struct.inode* %89)
  store i64 %90, i64* %17, align 8
  %91 = load %struct.inode*, %struct.inode** %8, align 8
  %92 = call %struct.TYPE_6__* @OCFS2_I(%struct.inode* %91)
  %93 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %92, i32 0, i32 5
  %94 = load i64, i64* %93, align 8
  %95 = load i64, i64* %17, align 8
  %96 = call i32 @trace_ocfs2_extend_dir(i64 %94, i64 %95)
  %97 = load %struct.inode*, %struct.inode** %8, align 8
  %98 = call %struct.TYPE_6__* @OCFS2_I(%struct.inode* %97)
  %99 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %98, i32 0, i32 2
  %100 = call i32 @spin_lock(i32* %99)
  %101 = load i64, i64* %17, align 8
  %102 = load %struct.super_block*, %struct.super_block** %25, align 8
  %103 = load %struct.inode*, %struct.inode** %8, align 8
  %104 = call %struct.TYPE_6__* @OCFS2_I(%struct.inode* %103)
  %105 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %104, i32 0, i32 4
  %106 = load i32, i32* %105, align 8
  %107 = call i64 @ocfs2_clusters_to_bytes(%struct.super_block* %102, i32 %106)
  %108 = icmp eq i64 %101, %107
  br i1 %108, label %109, label %172

109:                                              ; preds = %84
  %110 = load %struct.inode*, %struct.inode** %8, align 8
  %111 = call %struct.TYPE_6__* @OCFS2_I(%struct.inode* %110)
  %112 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %111, i32 0, i32 2
  %113 = call i32 @spin_unlock(i32* %112)
  %114 = load %struct.inode*, %struct.inode** %8, align 8
  %115 = call i32 @INODE_CACHE(%struct.inode* %114)
  %116 = load %struct.buffer_head*, %struct.buffer_head** %9, align 8
  %117 = call i32 @ocfs2_init_dinode_extent_tree(%struct.ocfs2_extent_tree* %26, i32 %115, %struct.buffer_head* %116)
  %118 = call i32 @ocfs2_num_free_extents(%struct.ocfs2_extent_tree* %26)
  store i32 %118, i32* %15, align 4
  %119 = load i32, i32* %15, align 4
  %120 = icmp slt i32 %119, 0
  br i1 %120, label %121, label %125

121:                                              ; preds = %109
  %122 = load i32, i32* %15, align 4
  store i32 %122, i32* %13, align 4
  %123 = load i32, i32* %13, align 4
  %124 = call i32 @mlog_errno(i32 %123)
  br label %319

125:                                              ; preds = %109
  %126 = load i32, i32* %15, align 4
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %144, label %128

128:                                              ; preds = %125
  %129 = load %struct.ocfs2_super*, %struct.ocfs2_super** %7, align 8
  %130 = load %struct.ocfs2_extent_list*, %struct.ocfs2_extent_list** %19, align 8
  %131 = call i32 @ocfs2_reserve_new_metadata(%struct.ocfs2_super* %129, %struct.ocfs2_extent_list* %130, %struct.ocfs2_alloc_context** %21)
  store i32 %131, i32* %13, align 4
  %132 = load i32, i32* %13, align 4
  %133 = icmp slt i32 %132, 0
  br i1 %133, label %134, label %143

134:                                              ; preds = %128
  %135 = load i32, i32* %13, align 4
  %136 = load i32, i32* @ENOSPC, align 4
  %137 = sub nsw i32 0, %136
  %138 = icmp ne i32 %135, %137
  br i1 %138, label %139, label %142

139:                                              ; preds = %134
  %140 = load i32, i32* %13, align 4
  %141 = call i32 @mlog_errno(i32 %140)
  br label %142

142:                                              ; preds = %139, %134
  br label %319

143:                                              ; preds = %128
  br label %144

144:                                              ; preds = %143, %125
  %145 = load %struct.ocfs2_super*, %struct.ocfs2_super** %7, align 8
  %146 = call i32 @ocfs2_reserve_clusters(%struct.ocfs2_super* %145, i32 1, %struct.ocfs2_alloc_context** %20)
  store i32 %146, i32* %13, align 4
  %147 = load i32, i32* %13, align 4
  %148 = icmp slt i32 %147, 0
  br i1 %148, label %149, label %158

149:                                              ; preds = %144
  %150 = load i32, i32* %13, align 4
  %151 = load i32, i32* @ENOSPC, align 4
  %152 = sub nsw i32 0, %151
  %153 = icmp ne i32 %150, %152
  br i1 %153, label %154, label %157

154:                                              ; preds = %149
  %155 = load i32, i32* %13, align 4
  %156 = call i32 @mlog_errno(i32 %155)
  br label %157

157:                                              ; preds = %154, %149
  br label %319

158:                                              ; preds = %144
  %159 = load %struct.ocfs2_super*, %struct.ocfs2_super** %7, align 8
  %160 = call i64 @ocfs2_dir_resv_allowed(%struct.ocfs2_super* %159)
  %161 = icmp ne i64 %160, 0
  br i1 %161, label %162, label %168

162:                                              ; preds = %158
  %163 = load %struct.inode*, %struct.inode** %8, align 8
  %164 = call %struct.TYPE_6__* @OCFS2_I(%struct.inode* %163)
  %165 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %164, i32 0, i32 3
  %166 = load %struct.ocfs2_alloc_context*, %struct.ocfs2_alloc_context** %20, align 8
  %167 = getelementptr inbounds %struct.ocfs2_alloc_context, %struct.ocfs2_alloc_context* %166, i32 0, i32 0
  store i32* %165, i32** %167, align 8
  br label %168

168:                                              ; preds = %162, %158
  %169 = load %struct.super_block*, %struct.super_block** %25, align 8
  %170 = load %struct.ocfs2_extent_list*, %struct.ocfs2_extent_list** %19, align 8
  %171 = call i32 @ocfs2_calc_extend_credits(%struct.super_block* %169, %struct.ocfs2_extent_list* %170)
  store i32 %171, i32* %14, align 4
  br label %178

172:                                              ; preds = %84
  %173 = load %struct.inode*, %struct.inode** %8, align 8
  %174 = call %struct.TYPE_6__* @OCFS2_I(%struct.inode* %173)
  %175 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %174, i32 0, i32 2
  %176 = call i32 @spin_unlock(i32* %175)
  %177 = load i32, i32* @OCFS2_SIMPLE_DIR_EXTEND_CREDITS, align 4
  store i32 %177, i32* %14, align 4
  br label %178

178:                                              ; preds = %172, %168
  br label %179

179:                                              ; preds = %178, %74
  %180 = load %struct.inode*, %struct.inode** %8, align 8
  %181 = call i64 @ocfs2_dir_indexed(%struct.inode* %180)
  %182 = icmp ne i64 %181, 0
  br i1 %182, label %183, label %186

183:                                              ; preds = %179
  %184 = load i32, i32* %14, align 4
  %185 = add nsw i32 %184, 1
  store i32 %185, i32* %14, align 4
  br label %186

186:                                              ; preds = %183, %179
  %187 = load %struct.ocfs2_super*, %struct.ocfs2_super** %7, align 8
  %188 = load i32, i32* %14, align 4
  %189 = call i32* @ocfs2_start_trans(%struct.ocfs2_super* %187, i32 %188)
  store i32* %189, i32** %22, align 8
  %190 = load i32*, i32** %22, align 8
  %191 = call i64 @IS_ERR(i32* %190)
  %192 = icmp ne i64 %191, 0
  br i1 %192, label %193, label %198

193:                                              ; preds = %186
  %194 = load i32*, i32** %22, align 8
  %195 = call i32 @PTR_ERR(i32* %194)
  store i32 %195, i32* %13, align 4
  store i32* null, i32** %22, align 8
  %196 = load i32, i32* %13, align 4
  %197 = call i32 @mlog_errno(i32 %196)
  br label %319

198:                                              ; preds = %186
  %199 = load %struct.ocfs2_super*, %struct.ocfs2_super** %7, align 8
  %200 = getelementptr inbounds %struct.ocfs2_super, %struct.ocfs2_super* %199, i32 0, i32 0
  %201 = load %struct.super_block*, %struct.super_block** %200, align 8
  %202 = load i32*, i32** %22, align 8
  %203 = load %struct.inode*, %struct.inode** %8, align 8
  %204 = load %struct.buffer_head*, %struct.buffer_head** %9, align 8
  %205 = load %struct.ocfs2_alloc_context*, %struct.ocfs2_alloc_context** %20, align 8
  %206 = load %struct.ocfs2_alloc_context*, %struct.ocfs2_alloc_context** %21, align 8
  %207 = call i32 @ocfs2_do_extend_dir(%struct.super_block* %201, i32* %202, %struct.inode* %203, %struct.buffer_head* %204, %struct.ocfs2_alloc_context* %205, %struct.ocfs2_alloc_context* %206, %struct.buffer_head** %23)
  store i32 %207, i32* %13, align 4
  %208 = load i32, i32* %13, align 4
  %209 = icmp slt i32 %208, 0
  br i1 %209, label %210, label %213

210:                                              ; preds = %198
  %211 = load i32, i32* %13, align 4
  %212 = call i32 @mlog_errno(i32 %211)
  br label %319

213:                                              ; preds = %198
  %214 = load %struct.inode*, %struct.inode** %8, align 8
  %215 = call i32 @INODE_CACHE(%struct.inode* %214)
  %216 = load %struct.buffer_head*, %struct.buffer_head** %23, align 8
  %217 = call i32 @ocfs2_set_new_buffer_uptodate(i32 %215, %struct.buffer_head* %216)
  %218 = load i32*, i32** %22, align 8
  %219 = load %struct.inode*, %struct.inode** %8, align 8
  %220 = call i32 @INODE_CACHE(%struct.inode* %219)
  %221 = load %struct.buffer_head*, %struct.buffer_head** %23, align 8
  %222 = load i32, i32* @OCFS2_JOURNAL_ACCESS_CREATE, align 4
  %223 = call i32 @ocfs2_journal_access_db(i32* %218, i32 %220, %struct.buffer_head* %221, i32 %222)
  store i32 %223, i32* %13, align 4
  %224 = load i32, i32* %13, align 4
  %225 = icmp slt i32 %224, 0
  br i1 %225, label %226, label %229

226:                                              ; preds = %213
  %227 = load i32, i32* %13, align 4
  %228 = call i32 @mlog_errno(i32 %227)
  br label %319

229:                                              ; preds = %213
  %230 = load %struct.buffer_head*, %struct.buffer_head** %23, align 8
  %231 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %230, i32 0, i32 0
  %232 = load i64, i64* %231, align 8
  %233 = load %struct.super_block*, %struct.super_block** %25, align 8
  %234 = getelementptr inbounds %struct.super_block, %struct.super_block* %233, i32 0, i32 0
  %235 = load i32, i32* %234, align 4
  %236 = call i32 @memset(i64 %232, i32 0, i32 %235)
  %237 = load %struct.buffer_head*, %struct.buffer_head** %23, align 8
  %238 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %237, i32 0, i32 0
  %239 = load i64, i64* %238, align 8
  %240 = inttoptr i64 %239 to %struct.ocfs2_dir_entry*
  store %struct.ocfs2_dir_entry* %240, %struct.ocfs2_dir_entry** %24, align 8
  %241 = load %struct.ocfs2_dir_entry*, %struct.ocfs2_dir_entry** %24, align 8
  %242 = getelementptr inbounds %struct.ocfs2_dir_entry, %struct.ocfs2_dir_entry* %241, i32 0, i32 1
  store i64 0, i64* %242, align 8
  %243 = load %struct.inode*, %struct.inode** %8, align 8
  %244 = call i64 @ocfs2_supports_dir_trailer(%struct.inode* %243)
  %245 = icmp ne i64 %244, 0
  br i1 %245, label %246, label %275

246:                                              ; preds = %229
  %247 = load %struct.super_block*, %struct.super_block** %25, align 8
  %248 = call i32 @ocfs2_dir_trailer_blk_off(%struct.super_block* %247)
  %249 = call i8* @cpu_to_le16(i32 %248)
  %250 = load %struct.ocfs2_dir_entry*, %struct.ocfs2_dir_entry** %24, align 8
  %251 = getelementptr inbounds %struct.ocfs2_dir_entry, %struct.ocfs2_dir_entry* %250, i32 0, i32 0
  store i8* %249, i8** %251, align 8
  %252 = load %struct.inode*, %struct.inode** %8, align 8
  %253 = load %struct.buffer_head*, %struct.buffer_head** %23, align 8
  %254 = load %struct.ocfs2_dir_entry*, %struct.ocfs2_dir_entry** %24, align 8
  %255 = getelementptr inbounds %struct.ocfs2_dir_entry, %struct.ocfs2_dir_entry* %254, i32 0, i32 0
  %256 = load i8*, i8** %255, align 8
  %257 = call i32 @le16_to_cpu(i8* %256)
  %258 = call i32 @ocfs2_init_dir_trailer(%struct.inode* %252, %struct.buffer_head* %253, i32 %257)
  %259 = load %struct.inode*, %struct.inode** %8, align 8
  %260 = call i64 @ocfs2_dir_indexed(%struct.inode* %259)
  %261 = icmp ne i64 %260, 0
  br i1 %261, label %262, label %274

262:                                              ; preds = %246
  %263 = load %struct.inode*, %struct.inode** %8, align 8
  %264 = load i32*, i32** %22, align 8
  %265 = load %struct.buffer_head*, %struct.buffer_head** %27, align 8
  %266 = load %struct.buffer_head*, %struct.buffer_head** %23, align 8
  %267 = call i32 @ocfs2_dx_dir_link_trailer(%struct.inode* %263, i32* %264, %struct.buffer_head* %265, %struct.buffer_head* %266)
  store i32 %267, i32* %13, align 4
  %268 = load i32, i32* %13, align 4
  %269 = icmp ne i32 %268, 0
  br i1 %269, label %270, label %273

270:                                              ; preds = %262
  %271 = load i32, i32* %13, align 4
  %272 = call i32 @mlog_errno(i32 %271)
  br label %319

273:                                              ; preds = %262
  br label %274

274:                                              ; preds = %273, %246
  br label %282

275:                                              ; preds = %229
  %276 = load %struct.super_block*, %struct.super_block** %25, align 8
  %277 = getelementptr inbounds %struct.super_block, %struct.super_block* %276, i32 0, i32 0
  %278 = load i32, i32* %277, align 4
  %279 = call i8* @cpu_to_le16(i32 %278)
  %280 = load %struct.ocfs2_dir_entry*, %struct.ocfs2_dir_entry** %24, align 8
  %281 = getelementptr inbounds %struct.ocfs2_dir_entry, %struct.ocfs2_dir_entry* %280, i32 0, i32 0
  store i8* %279, i8** %281, align 8
  br label %282

282:                                              ; preds = %275, %274
  %283 = load i32*, i32** %22, align 8
  %284 = load %struct.inode*, %struct.inode** %8, align 8
  %285 = call i32 @ocfs2_update_inode_fsync_trans(i32* %283, %struct.inode* %284, i32 1)
  %286 = load i32*, i32** %22, align 8
  %287 = load %struct.buffer_head*, %struct.buffer_head** %23, align 8
  %288 = call i32 @ocfs2_journal_dirty(i32* %286, %struct.buffer_head* %287)
  %289 = load %struct.inode*, %struct.inode** %8, align 8
  %290 = getelementptr inbounds %struct.inode, %struct.inode* %289, i32 0, i32 1
  %291 = load %struct.TYPE_5__*, %struct.TYPE_5__** %290, align 8
  %292 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %291, i32 0, i32 0
  %293 = load i64, i64* %292, align 8
  %294 = load i64, i64* %17, align 8
  %295 = add nsw i64 %294, %293
  store i64 %295, i64* %17, align 8
  %296 = load %struct.inode*, %struct.inode** %8, align 8
  %297 = load i64, i64* %17, align 8
  %298 = call i32 @i_size_write(%struct.inode* %296, i64 %297)
  %299 = load %struct.inode*, %struct.inode** %8, align 8
  %300 = call i32 @ocfs2_inode_sector_count(%struct.inode* %299)
  %301 = load %struct.inode*, %struct.inode** %8, align 8
  %302 = getelementptr inbounds %struct.inode, %struct.inode* %301, i32 0, i32 0
  store i32 %300, i32* %302, align 8
  %303 = load i32*, i32** %22, align 8
  %304 = load %struct.inode*, %struct.inode** %8, align 8
  %305 = load %struct.buffer_head*, %struct.buffer_head** %9, align 8
  %306 = call i32 @ocfs2_mark_inode_dirty(i32* %303, %struct.inode* %304, %struct.buffer_head* %305)
  store i32 %306, i32* %13, align 4
  %307 = load i32, i32* %13, align 4
  %308 = icmp slt i32 %307, 0
  br i1 %308, label %309, label %312

309:                                              ; preds = %282
  %310 = load i32, i32* %13, align 4
  %311 = call i32 @mlog_errno(i32 %310)
  br label %319

312:                                              ; preds = %282
  br label %313

313:                                              ; preds = %312, %67
  %314 = load %struct.buffer_head*, %struct.buffer_head** %23, align 8
  %315 = load %struct.buffer_head**, %struct.buffer_head*** %12, align 8
  store %struct.buffer_head* %314, %struct.buffer_head** %315, align 8
  %316 = load %struct.buffer_head**, %struct.buffer_head*** %12, align 8
  %317 = load %struct.buffer_head*, %struct.buffer_head** %316, align 8
  %318 = call i32 @get_bh(%struct.buffer_head* %317)
  br label %319

319:                                              ; preds = %313, %309, %270, %226, %210, %193, %157, %142, %121, %58
  %320 = load i32*, i32** %22, align 8
  %321 = icmp ne i32* %320, null
  br i1 %321, label %322, label %326

322:                                              ; preds = %319
  %323 = load %struct.ocfs2_super*, %struct.ocfs2_super** %7, align 8
  %324 = load i32*, i32** %22, align 8
  %325 = call i32 @ocfs2_commit_trans(%struct.ocfs2_super* %323, i32* %324)
  br label %326

326:                                              ; preds = %322, %319
  %327 = load i32, i32* %16, align 4
  %328 = icmp ne i32 %327, 0
  br i1 %328, label %329, label %334

329:                                              ; preds = %326
  %330 = load %struct.inode*, %struct.inode** %8, align 8
  %331 = call %struct.TYPE_6__* @OCFS2_I(%struct.inode* %330)
  %332 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %331, i32 0, i32 1
  %333 = call i32 @up_write(i32* %332)
  br label %334

334:                                              ; preds = %329, %326
  %335 = load %struct.ocfs2_alloc_context*, %struct.ocfs2_alloc_context** %20, align 8
  %336 = icmp ne %struct.ocfs2_alloc_context* %335, null
  br i1 %336, label %337, label %340

337:                                              ; preds = %334
  %338 = load %struct.ocfs2_alloc_context*, %struct.ocfs2_alloc_context** %20, align 8
  %339 = call i32 @ocfs2_free_alloc_context(%struct.ocfs2_alloc_context* %338)
  br label %340

340:                                              ; preds = %337, %334
  %341 = load %struct.ocfs2_alloc_context*, %struct.ocfs2_alloc_context** %21, align 8
  %342 = icmp ne %struct.ocfs2_alloc_context* %341, null
  br i1 %342, label %343, label %346

343:                                              ; preds = %340
  %344 = load %struct.ocfs2_alloc_context*, %struct.ocfs2_alloc_context** %21, align 8
  %345 = call i32 @ocfs2_free_alloc_context(%struct.ocfs2_alloc_context* %344)
  br label %346

346:                                              ; preds = %343, %340
  %347 = load %struct.buffer_head*, %struct.buffer_head** %23, align 8
  %348 = call i32 @brelse(%struct.buffer_head* %347)
  %349 = load i32, i32* %13, align 4
  ret i32 %349
}

declare dso_local %struct.TYPE_6__* @OCFS2_I(%struct.inode*) #1

declare dso_local i32 @BUG_ON(%struct.buffer_head*) #1

declare dso_local i32 @ocfs2_expand_inline_dir(%struct.inode*, %struct.buffer_head*, i32, %struct.ocfs2_dir_lookup_result*, %struct.buffer_head**) #1

declare dso_local i32 @mlog_errno(i32) #1

declare dso_local i32 @brelse(%struct.buffer_head*) #1

declare dso_local i32 @down_write(i32*) #1

declare dso_local i64 @i_size_read(%struct.inode*) #1

declare dso_local i32 @trace_ocfs2_extend_dir(i64, i64) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i64 @ocfs2_clusters_to_bytes(%struct.super_block*, i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @ocfs2_init_dinode_extent_tree(%struct.ocfs2_extent_tree*, i32, %struct.buffer_head*) #1

declare dso_local i32 @INODE_CACHE(%struct.inode*) #1

declare dso_local i32 @ocfs2_num_free_extents(%struct.ocfs2_extent_tree*) #1

declare dso_local i32 @ocfs2_reserve_new_metadata(%struct.ocfs2_super*, %struct.ocfs2_extent_list*, %struct.ocfs2_alloc_context**) #1

declare dso_local i32 @ocfs2_reserve_clusters(%struct.ocfs2_super*, i32, %struct.ocfs2_alloc_context**) #1

declare dso_local i64 @ocfs2_dir_resv_allowed(%struct.ocfs2_super*) #1

declare dso_local i32 @ocfs2_calc_extend_credits(%struct.super_block*, %struct.ocfs2_extent_list*) #1

declare dso_local i64 @ocfs2_dir_indexed(%struct.inode*) #1

declare dso_local i32* @ocfs2_start_trans(%struct.ocfs2_super*, i32) #1

declare dso_local i64 @IS_ERR(i32*) #1

declare dso_local i32 @PTR_ERR(i32*) #1

declare dso_local i32 @ocfs2_do_extend_dir(%struct.super_block*, i32*, %struct.inode*, %struct.buffer_head*, %struct.ocfs2_alloc_context*, %struct.ocfs2_alloc_context*, %struct.buffer_head**) #1

declare dso_local i32 @ocfs2_set_new_buffer_uptodate(i32, %struct.buffer_head*) #1

declare dso_local i32 @ocfs2_journal_access_db(i32*, i32, %struct.buffer_head*, i32) #1

declare dso_local i32 @memset(i64, i32, i32) #1

declare dso_local i64 @ocfs2_supports_dir_trailer(%struct.inode*) #1

declare dso_local i8* @cpu_to_le16(i32) #1

declare dso_local i32 @ocfs2_dir_trailer_blk_off(%struct.super_block*) #1

declare dso_local i32 @ocfs2_init_dir_trailer(%struct.inode*, %struct.buffer_head*, i32) #1

declare dso_local i32 @le16_to_cpu(i8*) #1

declare dso_local i32 @ocfs2_dx_dir_link_trailer(%struct.inode*, i32*, %struct.buffer_head*, %struct.buffer_head*) #1

declare dso_local i32 @ocfs2_update_inode_fsync_trans(i32*, %struct.inode*, i32) #1

declare dso_local i32 @ocfs2_journal_dirty(i32*, %struct.buffer_head*) #1

declare dso_local i32 @i_size_write(%struct.inode*, i64) #1

declare dso_local i32 @ocfs2_inode_sector_count(%struct.inode*) #1

declare dso_local i32 @ocfs2_mark_inode_dirty(i32*, %struct.inode*, %struct.buffer_head*) #1

declare dso_local i32 @get_bh(%struct.buffer_head*) #1

declare dso_local i32 @ocfs2_commit_trans(%struct.ocfs2_super*, i32*) #1

declare dso_local i32 @up_write(i32*) #1

declare dso_local i32 @ocfs2_free_alloc_context(%struct.ocfs2_alloc_context*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
