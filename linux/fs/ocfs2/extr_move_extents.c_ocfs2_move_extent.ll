; ModuleID = '/home/carl/AnghaBench/linux/fs/ocfs2/extr_move_extents.c_ocfs2_move_extent.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ocfs2/extr_move_extents.c_ocfs2_move_extent.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ocfs2_move_extents_context = type { i32*, %struct.inode*, i32, i32, %struct.TYPE_2__* }
%struct.inode = type { i32 }
%struct.TYPE_2__ = type { i32 }
%struct.ocfs2_super = type { %struct.inode* }
%struct.buffer_head = type { i64 }
%struct.ocfs2_group_desc = type { i32 }
%struct.ocfs2_refcount_tree = type { i32 }

@OCFS2_EXT_REFCOUNTED = common dso_local global i32 0, align 4
@OCFS2_INODE_UPDATE_CREDITS = common dso_local global i64 0, align 8
@GLOBAL_BITMAP_SYSTEM_INODE = common dso_local global i32 0, align 4
@OCFS2_INVALID_SLOT = common dso_local global i32 0, align 4
@ML_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"unable to get global_bitmap inode\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@ENOSPC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ocfs2_move_extents_context*, i32, i32, i32*, i32, i32)* @ocfs2_move_extent to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ocfs2_move_extent(%struct.ocfs2_move_extents_context* %0, i32 %1, i32 %2, i32* %3, i32 %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.ocfs2_move_extents_context*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32*, align 8
  %19 = alloca %struct.inode*, align 8
  %20 = alloca %struct.ocfs2_super*, align 8
  %21 = alloca %struct.inode*, align 8
  %22 = alloca %struct.inode*, align 8
  %23 = alloca %struct.buffer_head*, align 8
  %24 = alloca %struct.buffer_head*, align 8
  %25 = alloca %struct.ocfs2_group_desc*, align 8
  %26 = alloca %struct.ocfs2_refcount_tree*, align 8
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  %29 = alloca i32, align 4
  store %struct.ocfs2_move_extents_context* %0, %struct.ocfs2_move_extents_context** %8, align 8
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store i32* %3, i32** %11, align 8
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  store i32 0, i32* %15, align 4
  store i32 0, i32* %16, align 4
  store i32 0, i32* %17, align 4
  %30 = load %struct.ocfs2_move_extents_context*, %struct.ocfs2_move_extents_context** %8, align 8
  %31 = getelementptr inbounds %struct.ocfs2_move_extents_context, %struct.ocfs2_move_extents_context* %30, i32 0, i32 1
  %32 = load %struct.inode*, %struct.inode** %31, align 8
  store %struct.inode* %32, %struct.inode** %19, align 8
  %33 = load %struct.inode*, %struct.inode** %19, align 8
  %34 = getelementptr inbounds %struct.inode, %struct.inode* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = call %struct.ocfs2_super* @OCFS2_SB(i32 %35)
  store %struct.ocfs2_super* %36, %struct.ocfs2_super** %20, align 8
  %37 = load %struct.ocfs2_super*, %struct.ocfs2_super** %20, align 8
  %38 = getelementptr inbounds %struct.ocfs2_super, %struct.ocfs2_super* %37, i32 0, i32 0
  %39 = load %struct.inode*, %struct.inode** %38, align 8
  store %struct.inode* %39, %struct.inode** %21, align 8
  store %struct.inode* null, %struct.inode** %22, align 8
  store %struct.buffer_head* null, %struct.buffer_head** %23, align 8
  store %struct.buffer_head* null, %struct.buffer_head** %24, align 8
  store %struct.ocfs2_refcount_tree* null, %struct.ocfs2_refcount_tree** %26, align 8
  %40 = load %struct.inode*, %struct.inode** %19, align 8
  %41 = getelementptr inbounds %struct.inode, %struct.inode* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.ocfs2_move_extents_context*, %struct.ocfs2_move_extents_context** %8, align 8
  %44 = getelementptr inbounds %struct.ocfs2_move_extents_context, %struct.ocfs2_move_extents_context* %43, i32 0, i32 4
  %45 = load %struct.TYPE_2__*, %struct.TYPE_2__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @ocfs2_blocks_to_clusters(i32 %42, i32 %47)
  store i32 %48, i32* %27, align 4
  %49 = load %struct.inode*, %struct.inode** %19, align 8
  %50 = getelementptr inbounds %struct.inode, %struct.inode* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = load i32, i32* %10, align 4
  %53 = call i32 @ocfs2_clusters_to_blocks(i32 %51, i32 %52)
  store i32 %53, i32* %28, align 4
  %54 = load i32, i32* %13, align 4
  %55 = load i32, i32* @OCFS2_EXT_REFCOUNTED, align 4
  %56 = and i32 %54, %55
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %100

58:                                               ; preds = %6
  %59 = load i32, i32* %12, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %100

61:                                               ; preds = %58
  %62 = load %struct.inode*, %struct.inode** %19, align 8
  %63 = call i32 @ocfs2_is_refcount_inode(%struct.inode* %62)
  %64 = icmp ne i32 %63, 0
  %65 = xor i1 %64, true
  %66 = zext i1 %65 to i32
  %67 = call i32 @BUG_ON(i32 %66)
  %68 = load %struct.ocfs2_move_extents_context*, %struct.ocfs2_move_extents_context** %8, align 8
  %69 = getelementptr inbounds %struct.ocfs2_move_extents_context, %struct.ocfs2_move_extents_context* %68, i32 0, i32 3
  %70 = load i32, i32* %69, align 4
  %71 = icmp ne i32 %70, 0
  %72 = xor i1 %71, true
  %73 = zext i1 %72 to i32
  %74 = call i32 @BUG_ON(i32 %73)
  %75 = load %struct.ocfs2_super*, %struct.ocfs2_super** %20, align 8
  %76 = load %struct.ocfs2_move_extents_context*, %struct.ocfs2_move_extents_context** %8, align 8
  %77 = getelementptr inbounds %struct.ocfs2_move_extents_context, %struct.ocfs2_move_extents_context* %76, i32 0, i32 3
  %78 = load i32, i32* %77, align 4
  %79 = call i32 @ocfs2_lock_refcount_tree(%struct.ocfs2_super* %75, i32 %78, i32 1, %struct.ocfs2_refcount_tree** %26, i32* null)
  store i32 %79, i32* %14, align 4
  %80 = load i32, i32* %14, align 4
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %86

82:                                               ; preds = %61
  %83 = load i32, i32* %14, align 4
  %84 = call i32 @mlog_errno(i32 %83)
  %85 = load i32, i32* %14, align 4
  store i32 %85, i32* %7, align 4
  br label %296

86:                                               ; preds = %61
  %87 = load %struct.inode*, %struct.inode** %19, align 8
  %88 = load %struct.ocfs2_move_extents_context*, %struct.ocfs2_move_extents_context** %8, align 8
  %89 = getelementptr inbounds %struct.ocfs2_move_extents_context, %struct.ocfs2_move_extents_context* %88, i32 0, i32 3
  %90 = load i32, i32* %89, align 4
  %91 = load i32, i32* %28, align 4
  %92 = load i32, i32* %12, align 4
  %93 = call i32 @ocfs2_prepare_refcount_change_for_del(%struct.inode* %87, i32 %90, i32 %91, i32 %92, i32* %15, i32* %16)
  store i32 %93, i32* %14, align 4
  %94 = load i32, i32* %14, align 4
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %99

96:                                               ; preds = %86
  %97 = load i32, i32* %14, align 4
  %98 = call i32 @mlog_errno(i32 %97)
  br label %275

99:                                               ; preds = %86
  br label %100

100:                                              ; preds = %99, %58, %6
  %101 = load %struct.inode*, %struct.inode** %19, align 8
  %102 = load %struct.ocfs2_move_extents_context*, %struct.ocfs2_move_extents_context** %8, align 8
  %103 = getelementptr inbounds %struct.ocfs2_move_extents_context, %struct.ocfs2_move_extents_context* %102, i32 0, i32 2
  %104 = load i32, i32* %12, align 4
  %105 = load %struct.ocfs2_move_extents_context*, %struct.ocfs2_move_extents_context** %8, align 8
  %106 = getelementptr inbounds %struct.ocfs2_move_extents_context, %struct.ocfs2_move_extents_context* %105, i32 0, i32 0
  %107 = load i32, i32* %16, align 4
  %108 = call i32 @ocfs2_lock_meta_allocator_move_extents(%struct.inode* %101, i32* %103, i32 %104, i32 1, i32** %106, i32 %107, i32* %15)
  store i32 %108, i32* %14, align 4
  %109 = load i32, i32* %14, align 4
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %111, label %114

111:                                              ; preds = %100
  %112 = load i32, i32* %14, align 4
  %113 = call i32 @mlog_errno(i32 %112)
  br label %275

114:                                              ; preds = %100
  %115 = load i64, i64* @OCFS2_INODE_UPDATE_CREDITS, align 8
  %116 = add nsw i64 %115, 1
  %117 = load i32, i32* %15, align 4
  %118 = sext i32 %117 to i64
  %119 = add nsw i64 %118, %116
  %120 = trunc i64 %119 to i32
  store i32 %120, i32* %15, align 4
  %121 = load %struct.ocfs2_super*, %struct.ocfs2_super** %20, align 8
  %122 = load i32, i32* @GLOBAL_BITMAP_SYSTEM_INODE, align 4
  %123 = load i32, i32* @OCFS2_INVALID_SLOT, align 4
  %124 = call %struct.inode* @ocfs2_get_system_file_inode(%struct.ocfs2_super* %121, i32 %122, i32 %123)
  store %struct.inode* %124, %struct.inode** %22, align 8
  %125 = load %struct.inode*, %struct.inode** %22, align 8
  %126 = icmp ne %struct.inode* %125, null
  br i1 %126, label %132, label %127

127:                                              ; preds = %114
  %128 = load i32, i32* @ML_ERROR, align 4
  %129 = call i32 @mlog(i32 %128, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0))
  %130 = load i32, i32* @EIO, align 4
  %131 = sub nsw i32 0, %130
  store i32 %131, i32* %14, align 4
  br label %275

132:                                              ; preds = %114
  %133 = load %struct.inode*, %struct.inode** %22, align 8
  %134 = call i32 @inode_lock(%struct.inode* %133)
  %135 = load %struct.inode*, %struct.inode** %22, align 8
  %136 = call i32 @ocfs2_inode_lock(%struct.inode* %135, %struct.buffer_head** %23, i32 1)
  store i32 %136, i32* %14, align 4
  %137 = load i32, i32* %14, align 4
  %138 = icmp ne i32 %137, 0
  br i1 %138, label %139, label %142

139:                                              ; preds = %132
  %140 = load i32, i32* %14, align 4
  %141 = call i32 @mlog_errno(i32 %140)
  br label %268

142:                                              ; preds = %132
  %143 = load %struct.inode*, %struct.inode** %21, align 8
  %144 = call i32 @inode_lock(%struct.inode* %143)
  %145 = load %struct.ocfs2_super*, %struct.ocfs2_super** %20, align 8
  %146 = load i32, i32* %15, align 4
  %147 = call i32* @ocfs2_start_trans(%struct.ocfs2_super* %145, i32 %146)
  store i32* %147, i32** %18, align 8
  %148 = load i32*, i32** %18, align 8
  %149 = call i64 @IS_ERR(i32* %148)
  %150 = icmp ne i64 %149, 0
  br i1 %150, label %151, label %156

151:                                              ; preds = %142
  %152 = load i32*, i32** %18, align 8
  %153 = call i32 @PTR_ERR(i32* %152)
  store i32 %153, i32* %14, align 4
  %154 = load i32, i32* %14, align 4
  %155 = call i32 @mlog_errno(i32 %154)
  br label %263

156:                                              ; preds = %142
  %157 = load %struct.inode*, %struct.inode** %19, align 8
  %158 = getelementptr inbounds %struct.inode, %struct.inode* %157, i32 0, i32 0
  %159 = load i32, i32* %158, align 4
  %160 = load i32*, i32** %11, align 8
  %161 = load i32, i32* %160, align 4
  %162 = call i32 @ocfs2_clusters_to_blocks(i32 %159, i32 %161)
  store i32 %162, i32* %29, align 4
  %163 = load %struct.inode*, %struct.inode** %19, align 8
  %164 = load i32, i32* %29, align 4
  %165 = load i32, i32* @GLOBAL_BITMAP_SYSTEM_INODE, align 4
  %166 = load i32, i32* @OCFS2_INVALID_SLOT, align 4
  %167 = call i32 @ocfs2_find_victim_alloc_group(%struct.inode* %163, i32 %164, i32 %165, i32 %166, i32* %17, %struct.buffer_head** %24)
  store i32 %167, i32* %14, align 4
  %168 = load i32, i32* %14, align 4
  %169 = icmp ne i32 %168, 0
  br i1 %169, label %170, label %173

170:                                              ; preds = %156
  %171 = load i32, i32* %14, align 4
  %172 = call i32 @mlog_errno(i32 %171)
  br label %257

173:                                              ; preds = %156
  %174 = load %struct.inode*, %struct.inode** %19, align 8
  %175 = load %struct.buffer_head*, %struct.buffer_head** %24, align 8
  %176 = load i32, i32* %12, align 4
  %177 = load i32, i32* %27, align 4
  %178 = load i32*, i32** %11, align 8
  %179 = call i32 @ocfs2_probe_alloc_group(%struct.inode* %174, %struct.buffer_head* %175, i32* %17, i32 %176, i32 %177, i32* %178)
  %180 = load i32*, i32** %11, align 8
  %181 = load i32, i32* %180, align 4
  %182 = icmp ne i32 %181, 0
  br i1 %182, label %186, label %183

183:                                              ; preds = %173
  %184 = load i32, i32* @ENOSPC, align 4
  %185 = sub nsw i32 0, %184
  store i32 %185, i32* %14, align 4
  br label %257

186:                                              ; preds = %173
  %187 = load i32*, i32** %18, align 8
  %188 = load %struct.ocfs2_move_extents_context*, %struct.ocfs2_move_extents_context** %8, align 8
  %189 = load i32, i32* %9, align 4
  %190 = load i32, i32* %12, align 4
  %191 = load i32, i32* %10, align 4
  %192 = load i32*, i32** %11, align 8
  %193 = load i32, i32* %192, align 4
  %194 = load i32, i32* %13, align 4
  %195 = call i32 @__ocfs2_move_extent(i32* %187, %struct.ocfs2_move_extents_context* %188, i32 %189, i32 %190, i32 %191, i32 %193, i32 %194)
  store i32 %195, i32* %14, align 4
  %196 = load i32, i32* %14, align 4
  %197 = icmp ne i32 %196, 0
  br i1 %197, label %198, label %201

198:                                              ; preds = %186
  %199 = load i32, i32* %14, align 4
  %200 = call i32 @mlog_errno(i32 %199)
  br label %257

201:                                              ; preds = %186
  %202 = load %struct.buffer_head*, %struct.buffer_head** %24, align 8
  %203 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %202, i32 0, i32 0
  %204 = load i64, i64* %203, align 8
  %205 = inttoptr i64 %204 to %struct.ocfs2_group_desc*
  store %struct.ocfs2_group_desc* %205, %struct.ocfs2_group_desc** %25, align 8
  %206 = load %struct.inode*, %struct.inode** %22, align 8
  %207 = load i32*, i32** %18, align 8
  %208 = load %struct.buffer_head*, %struct.buffer_head** %23, align 8
  %209 = load i32, i32* %12, align 4
  %210 = load %struct.ocfs2_group_desc*, %struct.ocfs2_group_desc** %25, align 8
  %211 = getelementptr inbounds %struct.ocfs2_group_desc, %struct.ocfs2_group_desc* %210, i32 0, i32 0
  %212 = load i32, i32* %211, align 4
  %213 = call i32 @le16_to_cpu(i32 %212)
  %214 = call i32 @ocfs2_alloc_dinode_update_counts(%struct.inode* %206, i32* %207, %struct.buffer_head* %208, i32 %209, i32 %213)
  store i32 %214, i32* %14, align 4
  %215 = load i32, i32* %14, align 4
  %216 = icmp ne i32 %215, 0
  br i1 %216, label %217, label %220

217:                                              ; preds = %201
  %218 = load i32, i32* %14, align 4
  %219 = call i32 @mlog_errno(i32 %218)
  br label %257

220:                                              ; preds = %201
  %221 = load i32*, i32** %18, align 8
  %222 = load %struct.inode*, %struct.inode** %22, align 8
  %223 = load %struct.ocfs2_group_desc*, %struct.ocfs2_group_desc** %25, align 8
  %224 = load %struct.buffer_head*, %struct.buffer_head** %24, align 8
  %225 = load i32, i32* %17, align 4
  %226 = load i32, i32* %12, align 4
  %227 = call i32 @ocfs2_block_group_set_bits(i32* %221, %struct.inode* %222, %struct.ocfs2_group_desc* %223, %struct.buffer_head* %224, i32 %225, i32 %226)
  store i32 %227, i32* %14, align 4
  %228 = load i32, i32* %14, align 4
  %229 = icmp ne i32 %228, 0
  br i1 %229, label %230, label %241

230:                                              ; preds = %220
  %231 = load %struct.inode*, %struct.inode** %22, align 8
  %232 = load %struct.buffer_head*, %struct.buffer_head** %23, align 8
  %233 = load i32, i32* %12, align 4
  %234 = load %struct.ocfs2_group_desc*, %struct.ocfs2_group_desc** %25, align 8
  %235 = getelementptr inbounds %struct.ocfs2_group_desc, %struct.ocfs2_group_desc* %234, i32 0, i32 0
  %236 = load i32, i32* %235, align 4
  %237 = call i32 @le16_to_cpu(i32 %236)
  %238 = call i32 @ocfs2_rollback_alloc_dinode_counts(%struct.inode* %231, %struct.buffer_head* %232, i32 %233, i32 %237)
  %239 = load i32, i32* %14, align 4
  %240 = call i32 @mlog_errno(i32 %239)
  br label %241

241:                                              ; preds = %230, %220
  %242 = load %struct.inode*, %struct.inode** %19, align 8
  %243 = getelementptr inbounds %struct.inode, %struct.inode* %242, i32 0, i32 0
  %244 = load i32, i32* %243, align 4
  %245 = load %struct.ocfs2_move_extents_context*, %struct.ocfs2_move_extents_context** %8, align 8
  %246 = getelementptr inbounds %struct.ocfs2_move_extents_context, %struct.ocfs2_move_extents_context* %245, i32 0, i32 1
  %247 = load %struct.inode*, %struct.inode** %246, align 8
  %248 = load i32, i32* %9, align 4
  %249 = load i32, i32* %12, align 4
  %250 = call i32 @ocfs2_cow_sync_writeback(i32 %244, %struct.inode* %247, i32 %248, i32 %249)
  store i32 %250, i32* %14, align 4
  %251 = load i32, i32* %14, align 4
  %252 = icmp ne i32 %251, 0
  br i1 %252, label %253, label %256

253:                                              ; preds = %241
  %254 = load i32, i32* %14, align 4
  %255 = call i32 @mlog_errno(i32 %254)
  br label %256

256:                                              ; preds = %253, %241
  br label %257

257:                                              ; preds = %256, %217, %198, %183, %170
  %258 = load %struct.ocfs2_super*, %struct.ocfs2_super** %20, align 8
  %259 = load i32*, i32** %18, align 8
  %260 = call i32 @ocfs2_commit_trans(%struct.ocfs2_super* %258, i32* %259)
  %261 = load %struct.buffer_head*, %struct.buffer_head** %24, align 8
  %262 = call i32 @brelse(%struct.buffer_head* %261)
  br label %263

263:                                              ; preds = %257, %151
  %264 = load %struct.inode*, %struct.inode** %21, align 8
  %265 = call i32 @inode_unlock(%struct.inode* %264)
  %266 = load %struct.inode*, %struct.inode** %22, align 8
  %267 = call i32 @ocfs2_inode_unlock(%struct.inode* %266, i32 1)
  br label %268

268:                                              ; preds = %263, %139
  %269 = load %struct.inode*, %struct.inode** %22, align 8
  %270 = call i32 @inode_unlock(%struct.inode* %269)
  %271 = load %struct.buffer_head*, %struct.buffer_head** %23, align 8
  %272 = call i32 @brelse(%struct.buffer_head* %271)
  %273 = load %struct.inode*, %struct.inode** %22, align 8
  %274 = call i32 @iput(%struct.inode* %273)
  br label %275

275:                                              ; preds = %268, %127, %111, %96
  %276 = load %struct.ocfs2_move_extents_context*, %struct.ocfs2_move_extents_context** %8, align 8
  %277 = getelementptr inbounds %struct.ocfs2_move_extents_context, %struct.ocfs2_move_extents_context* %276, i32 0, i32 0
  %278 = load i32*, i32** %277, align 8
  %279 = icmp ne i32* %278, null
  br i1 %279, label %280, label %287

280:                                              ; preds = %275
  %281 = load %struct.ocfs2_move_extents_context*, %struct.ocfs2_move_extents_context** %8, align 8
  %282 = getelementptr inbounds %struct.ocfs2_move_extents_context, %struct.ocfs2_move_extents_context* %281, i32 0, i32 0
  %283 = load i32*, i32** %282, align 8
  %284 = call i32 @ocfs2_free_alloc_context(i32* %283)
  %285 = load %struct.ocfs2_move_extents_context*, %struct.ocfs2_move_extents_context** %8, align 8
  %286 = getelementptr inbounds %struct.ocfs2_move_extents_context, %struct.ocfs2_move_extents_context* %285, i32 0, i32 0
  store i32* null, i32** %286, align 8
  br label %287

287:                                              ; preds = %280, %275
  %288 = load %struct.ocfs2_refcount_tree*, %struct.ocfs2_refcount_tree** %26, align 8
  %289 = icmp ne %struct.ocfs2_refcount_tree* %288, null
  br i1 %289, label %290, label %294

290:                                              ; preds = %287
  %291 = load %struct.ocfs2_super*, %struct.ocfs2_super** %20, align 8
  %292 = load %struct.ocfs2_refcount_tree*, %struct.ocfs2_refcount_tree** %26, align 8
  %293 = call i32 @ocfs2_unlock_refcount_tree(%struct.ocfs2_super* %291, %struct.ocfs2_refcount_tree* %292, i32 1)
  br label %294

294:                                              ; preds = %290, %287
  %295 = load i32, i32* %14, align 4
  store i32 %295, i32* %7, align 4
  br label %296

296:                                              ; preds = %294, %82
  %297 = load i32, i32* %7, align 4
  ret i32 %297
}

declare dso_local %struct.ocfs2_super* @OCFS2_SB(i32) #1

declare dso_local i32 @ocfs2_blocks_to_clusters(i32, i32) #1

declare dso_local i32 @ocfs2_clusters_to_blocks(i32, i32) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @ocfs2_is_refcount_inode(%struct.inode*) #1

declare dso_local i32 @ocfs2_lock_refcount_tree(%struct.ocfs2_super*, i32, i32, %struct.ocfs2_refcount_tree**, i32*) #1

declare dso_local i32 @mlog_errno(i32) #1

declare dso_local i32 @ocfs2_prepare_refcount_change_for_del(%struct.inode*, i32, i32, i32, i32*, i32*) #1

declare dso_local i32 @ocfs2_lock_meta_allocator_move_extents(%struct.inode*, i32*, i32, i32, i32**, i32, i32*) #1

declare dso_local %struct.inode* @ocfs2_get_system_file_inode(%struct.ocfs2_super*, i32, i32) #1

declare dso_local i32 @mlog(i32, i8*) #1

declare dso_local i32 @inode_lock(%struct.inode*) #1

declare dso_local i32 @ocfs2_inode_lock(%struct.inode*, %struct.buffer_head**, i32) #1

declare dso_local i32* @ocfs2_start_trans(%struct.ocfs2_super*, i32) #1

declare dso_local i64 @IS_ERR(i32*) #1

declare dso_local i32 @PTR_ERR(i32*) #1

declare dso_local i32 @ocfs2_find_victim_alloc_group(%struct.inode*, i32, i32, i32, i32*, %struct.buffer_head**) #1

declare dso_local i32 @ocfs2_probe_alloc_group(%struct.inode*, %struct.buffer_head*, i32*, i32, i32, i32*) #1

declare dso_local i32 @__ocfs2_move_extent(i32*, %struct.ocfs2_move_extents_context*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @ocfs2_alloc_dinode_update_counts(%struct.inode*, i32*, %struct.buffer_head*, i32, i32) #1

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i32 @ocfs2_block_group_set_bits(i32*, %struct.inode*, %struct.ocfs2_group_desc*, %struct.buffer_head*, i32, i32) #1

declare dso_local i32 @ocfs2_rollback_alloc_dinode_counts(%struct.inode*, %struct.buffer_head*, i32, i32) #1

declare dso_local i32 @ocfs2_cow_sync_writeback(i32, %struct.inode*, i32, i32) #1

declare dso_local i32 @ocfs2_commit_trans(%struct.ocfs2_super*, i32*) #1

declare dso_local i32 @brelse(%struct.buffer_head*) #1

declare dso_local i32 @inode_unlock(%struct.inode*) #1

declare dso_local i32 @ocfs2_inode_unlock(%struct.inode*, i32) #1

declare dso_local i32 @iput(%struct.inode*) #1

declare dso_local i32 @ocfs2_free_alloc_context(i32*) #1

declare dso_local i32 @ocfs2_unlock_refcount_tree(%struct.ocfs2_super*, %struct.ocfs2_refcount_tree*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
