; ModuleID = '/home/carl/AnghaBench/linux/fs/ocfs2/extr_file.c_ocfs2_extend_allocation.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ocfs2/extr_file.c_ocfs2_extend_allocation.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.buffer_head = type { i64 }
%struct.ocfs2_dinode = type { i32, i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.ocfs2_alloc_context = type { i32 }
%struct.ocfs2_super = type { i32 }
%struct.ocfs2_extent_tree = type { i32 }
%struct.TYPE_4__ = type { i64, i64, i32 }

@RESTART_NONE = common dso_local global i32 0, align 4
@OCFS2_JOURNAL_ACCESS_WRITE = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4
@ENOSPC = common dso_local global i32 0, align 4
@RESTART_META = common dso_local global i32 0, align 4
@RESTART_TRANS = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, i64, i64, i32)* @ocfs2_extend_allocation to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ocfs2_extend_allocation(%struct.inode* %0, i64 %1, i64 %2, i32 %3) #0 {
  %5 = alloca %struct.inode*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca %struct.buffer_head*, align 8
  %14 = alloca %struct.ocfs2_dinode*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca %struct.ocfs2_alloc_context*, align 8
  %17 = alloca %struct.ocfs2_alloc_context*, align 8
  %18 = alloca i32, align 4
  %19 = alloca %struct.ocfs2_super*, align 8
  %20 = alloca %struct.ocfs2_extent_tree, align 4
  %21 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  store i32 %3, i32* %8, align 4
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  store %struct.buffer_head* null, %struct.buffer_head** %13, align 8
  store %struct.ocfs2_dinode* null, %struct.ocfs2_dinode** %14, align 8
  store i32* null, i32** %15, align 8
  store %struct.ocfs2_alloc_context* null, %struct.ocfs2_alloc_context** %16, align 8
  store %struct.ocfs2_alloc_context* null, %struct.ocfs2_alloc_context** %17, align 8
  %22 = load i32, i32* @RESTART_NONE, align 4
  store i32 %22, i32* %18, align 4
  %23 = load %struct.inode*, %struct.inode** %5, align 8
  %24 = getelementptr inbounds %struct.inode, %struct.inode* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = call %struct.ocfs2_super* @OCFS2_SB(i32 %25)
  store %struct.ocfs2_super* %26, %struct.ocfs2_super** %19, align 8
  store i32 0, i32* %21, align 4
  %27 = load i32, i32* %8, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %34

29:                                               ; preds = %4
  %30 = load %struct.ocfs2_super*, %struct.ocfs2_super** %19, align 8
  %31 = call i32 @ocfs2_sparse_alloc(%struct.ocfs2_super* %30)
  %32 = icmp ne i32 %31, 0
  %33 = xor i1 %32, true
  br label %34

34:                                               ; preds = %29, %4
  %35 = phi i1 [ false, %4 ], [ %33, %29 ]
  %36 = zext i1 %35 to i32
  %37 = call i32 @BUG_ON(i32 %36)
  %38 = load %struct.inode*, %struct.inode** %5, align 8
  %39 = call i32 @ocfs2_read_inode_block(%struct.inode* %38, %struct.buffer_head** %13)
  store i32 %39, i32* %9, align 4
  %40 = load i32, i32* %9, align 4
  %41 = icmp slt i32 %40, 0
  br i1 %41, label %42, label %45

42:                                               ; preds = %34
  %43 = load i32, i32* %9, align 4
  %44 = call i32 @mlog_errno(i32 %43)
  br label %239

45:                                               ; preds = %34
  %46 = load %struct.buffer_head*, %struct.buffer_head** %13, align 8
  %47 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = inttoptr i64 %48 to %struct.ocfs2_dinode*
  store %struct.ocfs2_dinode* %49, %struct.ocfs2_dinode** %14, align 8
  br label %50

50:                                               ; preds = %278, %45
  %51 = load %struct.ocfs2_dinode*, %struct.ocfs2_dinode** %14, align 8
  %52 = getelementptr inbounds %struct.ocfs2_dinode, %struct.ocfs2_dinode* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = call i64 @le32_to_cpu(i32 %53)
  %55 = load %struct.inode*, %struct.inode** %5, align 8
  %56 = call %struct.TYPE_4__* @OCFS2_I(%struct.inode* %55)
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = icmp ne i64 %54, %58
  %60 = zext i1 %59 to i32
  %61 = call i32 @BUG_ON(i32 %60)
  %62 = load %struct.inode*, %struct.inode** %5, align 8
  %63 = call i32 @INODE_CACHE(%struct.inode* %62)
  %64 = load %struct.buffer_head*, %struct.buffer_head** %13, align 8
  %65 = call i32 @ocfs2_init_dinode_extent_tree(%struct.ocfs2_extent_tree* %20, i32 %63, %struct.buffer_head* %64)
  %66 = load %struct.inode*, %struct.inode** %5, align 8
  %67 = load i64, i64* %7, align 8
  %68 = call i32 @ocfs2_lock_allocators(%struct.inode* %66, %struct.ocfs2_extent_tree* %20, i64 %67, i32 0, %struct.ocfs2_alloc_context** %16, %struct.ocfs2_alloc_context** %17)
  store i32 %68, i32* %9, align 4
  %69 = load i32, i32* %9, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %74

71:                                               ; preds = %50
  %72 = load i32, i32* %9, align 4
  %73 = call i32 @mlog_errno(i32 %72)
  br label %239

74:                                               ; preds = %50
  %75 = load %struct.ocfs2_super*, %struct.ocfs2_super** %19, align 8
  %76 = getelementptr inbounds %struct.ocfs2_super, %struct.ocfs2_super* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = load %struct.ocfs2_dinode*, %struct.ocfs2_dinode** %14, align 8
  %79 = getelementptr inbounds %struct.ocfs2_dinode, %struct.ocfs2_dinode* %78, i32 0, i32 2
  %80 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %79, i32 0, i32 0
  %81 = call i32 @ocfs2_calc_extend_credits(i32 %77, i32* %80)
  store i32 %81, i32* %11, align 4
  %82 = load %struct.ocfs2_super*, %struct.ocfs2_super** %19, align 8
  %83 = load i32, i32* %11, align 4
  %84 = call i32* @ocfs2_start_trans(%struct.ocfs2_super* %82, i32 %83)
  store i32* %84, i32** %15, align 8
  %85 = load i32*, i32** %15, align 8
  %86 = call i64 @IS_ERR(i32* %85)
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %88, label %93

88:                                               ; preds = %74
  %89 = load i32*, i32** %15, align 8
  %90 = call i32 @PTR_ERR(i32* %89)
  store i32 %90, i32* %9, align 4
  store i32* null, i32** %15, align 8
  %91 = load i32, i32* %9, align 4
  %92 = call i32 @mlog_errno(i32 %91)
  br label %239

93:                                               ; preds = %74
  br label %94

94:                                               ; preds = %217, %93
  %95 = load %struct.inode*, %struct.inode** %5, align 8
  %96 = call %struct.TYPE_4__* @OCFS2_I(%struct.inode* %95)
  %97 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %96, i32 0, i32 1
  %98 = load i64, i64* %97, align 8
  %99 = load %struct.inode*, %struct.inode** %5, align 8
  %100 = call i64 @i_size_read(%struct.inode* %99)
  %101 = load %struct.ocfs2_dinode*, %struct.ocfs2_dinode** %14, align 8
  %102 = getelementptr inbounds %struct.ocfs2_dinode, %struct.ocfs2_dinode* %101, i32 0, i32 1
  %103 = load i32, i32* %102, align 4
  %104 = call i64 @le32_to_cpu(i32 %103)
  %105 = load i64, i64* %7, align 8
  %106 = load i32, i32* %18, align 4
  %107 = load i32, i32* %10, align 4
  %108 = call i32 @trace_ocfs2_extend_allocation(i64 %98, i64 %100, i64 %104, i64 %105, i32 %106, i32 %107)
  %109 = load %struct.inode*, %struct.inode** %5, align 8
  %110 = load %struct.ocfs2_super*, %struct.ocfs2_super** %19, align 8
  %111 = getelementptr inbounds %struct.ocfs2_super, %struct.ocfs2_super* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 4
  %113 = load i64, i64* %7, align 8
  %114 = call i32 @ocfs2_clusters_to_bytes(i32 %112, i64 %113)
  %115 = call i32 @dquot_alloc_space_nodirty(%struct.inode* %109, i32 %114)
  store i32 %115, i32* %9, align 4
  %116 = load i32, i32* %9, align 4
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %118, label %119

118:                                              ; preds = %94
  br label %239

119:                                              ; preds = %94
  store i32 1, i32* %21, align 4
  %120 = load i32*, i32** %15, align 8
  %121 = load %struct.inode*, %struct.inode** %5, align 8
  %122 = call i32 @INODE_CACHE(%struct.inode* %121)
  %123 = load %struct.buffer_head*, %struct.buffer_head** %13, align 8
  %124 = load i32, i32* @OCFS2_JOURNAL_ACCESS_WRITE, align 4
  %125 = call i32 @ocfs2_journal_access_di(i32* %120, i32 %122, %struct.buffer_head* %123, i32 %124)
  store i32 %125, i32* %9, align 4
  %126 = load i32, i32* %9, align 4
  %127 = icmp slt i32 %126, 0
  br i1 %127, label %128, label %131

128:                                              ; preds = %119
  %129 = load i32, i32* %9, align 4
  %130 = call i32 @mlog_errno(i32 %129)
  br label %239

131:                                              ; preds = %119
  %132 = load %struct.inode*, %struct.inode** %5, align 8
  %133 = call %struct.TYPE_4__* @OCFS2_I(%struct.inode* %132)
  %134 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %133, i32 0, i32 0
  %135 = load i64, i64* %134, align 8
  store i64 %135, i64* %12, align 8
  %136 = load %struct.ocfs2_super*, %struct.ocfs2_super** %19, align 8
  %137 = load %struct.inode*, %struct.inode** %5, align 8
  %138 = load i64, i64* %7, align 8
  %139 = load i32, i32* %8, align 4
  %140 = load %struct.buffer_head*, %struct.buffer_head** %13, align 8
  %141 = load i32*, i32** %15, align 8
  %142 = load %struct.ocfs2_alloc_context*, %struct.ocfs2_alloc_context** %16, align 8
  %143 = load %struct.ocfs2_alloc_context*, %struct.ocfs2_alloc_context** %17, align 8
  %144 = call i32 @ocfs2_add_inode_data(%struct.ocfs2_super* %136, %struct.inode* %137, i64* %6, i64 %138, i32 %139, %struct.buffer_head* %140, i32* %141, %struct.ocfs2_alloc_context* %142, %struct.ocfs2_alloc_context* %143, i32* %18)
  store i32 %144, i32* %9, align 4
  %145 = load i32, i32* %9, align 4
  %146 = icmp slt i32 %145, 0
  br i1 %146, label %147, label %161

147:                                              ; preds = %131
  %148 = load i32, i32* %9, align 4
  %149 = load i32, i32* @EAGAIN, align 4
  %150 = sub nsw i32 0, %149
  %151 = icmp ne i32 %148, %150
  br i1 %151, label %152, label %161

152:                                              ; preds = %147
  %153 = load i32, i32* %9, align 4
  %154 = load i32, i32* @ENOSPC, align 4
  %155 = sub nsw i32 0, %154
  %156 = icmp ne i32 %153, %155
  br i1 %156, label %157, label %160

157:                                              ; preds = %152
  %158 = load i32, i32* %9, align 4
  %159 = call i32 @mlog_errno(i32 %158)
  br label %160

160:                                              ; preds = %157, %152
  br label %239

161:                                              ; preds = %147, %131
  %162 = load i32*, i32** %15, align 8
  %163 = load %struct.inode*, %struct.inode** %5, align 8
  %164 = call i32 @ocfs2_update_inode_fsync_trans(i32* %162, %struct.inode* %163, i32 1)
  %165 = load i32*, i32** %15, align 8
  %166 = load %struct.buffer_head*, %struct.buffer_head** %13, align 8
  %167 = call i32 @ocfs2_journal_dirty(i32* %165, %struct.buffer_head* %166)
  %168 = load %struct.inode*, %struct.inode** %5, align 8
  %169 = call %struct.TYPE_4__* @OCFS2_I(%struct.inode* %168)
  %170 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %169, i32 0, i32 2
  %171 = call i32 @spin_lock(i32* %170)
  %172 = load %struct.inode*, %struct.inode** %5, align 8
  %173 = call %struct.TYPE_4__* @OCFS2_I(%struct.inode* %172)
  %174 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %173, i32 0, i32 0
  %175 = load i64, i64* %174, align 8
  %176 = load i64, i64* %12, align 8
  %177 = sub nsw i64 %175, %176
  %178 = load i64, i64* %7, align 8
  %179 = sub nsw i64 %178, %177
  store i64 %179, i64* %7, align 8
  %180 = load %struct.inode*, %struct.inode** %5, align 8
  %181 = call %struct.TYPE_4__* @OCFS2_I(%struct.inode* %180)
  %182 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %181, i32 0, i32 2
  %183 = call i32 @spin_unlock(i32* %182)
  %184 = load %struct.inode*, %struct.inode** %5, align 8
  %185 = load %struct.ocfs2_super*, %struct.ocfs2_super** %19, align 8
  %186 = getelementptr inbounds %struct.ocfs2_super, %struct.ocfs2_super* %185, i32 0, i32 0
  %187 = load i32, i32* %186, align 4
  %188 = load i64, i64* %7, align 8
  %189 = call i32 @ocfs2_clusters_to_bytes(i32 %187, i64 %188)
  %190 = call i32 @dquot_free_space(%struct.inode* %184, i32 %189)
  store i32 0, i32* %21, align 4
  %191 = load i32, i32* %18, align 4
  %192 = load i32, i32* @RESTART_NONE, align 4
  %193 = icmp ne i32 %191, %192
  br i1 %193, label %194, label %219

194:                                              ; preds = %161
  %195 = load i64, i64* %7, align 8
  %196 = icmp ne i64 %195, 0
  br i1 %196, label %197, label %219

197:                                              ; preds = %194
  %198 = load i32, i32* %18, align 4
  %199 = load i32, i32* @RESTART_META, align 4
  %200 = icmp eq i32 %198, %199
  br i1 %200, label %201, label %202

201:                                              ; preds = %197
  store i32 1, i32* %10, align 4
  store i32 0, i32* %9, align 4
  br label %218

202:                                              ; preds = %197
  %203 = load i32, i32* %18, align 4
  %204 = load i32, i32* @RESTART_TRANS, align 4
  %205 = icmp ne i32 %203, %204
  %206 = zext i1 %205 to i32
  %207 = call i32 @BUG_ON(i32 %206)
  %208 = load i32*, i32** %15, align 8
  %209 = call i32 @ocfs2_allocate_extend_trans(i32* %208, i32 1)
  store i32 %209, i32* %9, align 4
  %210 = load i32, i32* %9, align 4
  %211 = icmp slt i32 %210, 0
  br i1 %211, label %212, label %217

212:                                              ; preds = %202
  %213 = load i32, i32* @ENOMEM, align 4
  %214 = sub nsw i32 0, %213
  store i32 %214, i32* %9, align 4
  %215 = load i32, i32* %9, align 4
  %216 = call i32 @mlog_errno(i32 %215)
  br label %239

217:                                              ; preds = %202
  br label %94

218:                                              ; preds = %201
  br label %219

219:                                              ; preds = %218, %194, %161
  %220 = load %struct.inode*, %struct.inode** %5, align 8
  %221 = call %struct.TYPE_4__* @OCFS2_I(%struct.inode* %220)
  %222 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %221, i32 0, i32 1
  %223 = load i64, i64* %222, align 8
  %224 = load %struct.ocfs2_dinode*, %struct.ocfs2_dinode** %14, align 8
  %225 = getelementptr inbounds %struct.ocfs2_dinode, %struct.ocfs2_dinode* %224, i32 0, i32 1
  %226 = load i32, i32* %225, align 4
  %227 = call i64 @le32_to_cpu(i32 %226)
  %228 = load %struct.ocfs2_dinode*, %struct.ocfs2_dinode** %14, align 8
  %229 = getelementptr inbounds %struct.ocfs2_dinode, %struct.ocfs2_dinode* %228, i32 0, i32 0
  %230 = load i32, i32* %229, align 4
  %231 = call i64 @le64_to_cpu(i32 %230)
  %232 = load %struct.inode*, %struct.inode** %5, align 8
  %233 = call %struct.TYPE_4__* @OCFS2_I(%struct.inode* %232)
  %234 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %233, i32 0, i32 0
  %235 = load i64, i64* %234, align 8
  %236 = load %struct.inode*, %struct.inode** %5, align 8
  %237 = call i64 @i_size_read(%struct.inode* %236)
  %238 = call i32 @trace_ocfs2_extend_allocation_end(i64 %223, i64 %227, i64 %231, i64 %235, i64 %237)
  br label %239

239:                                              ; preds = %219, %212, %160, %128, %118, %88, %71, %42
  %240 = load i32, i32* %9, align 4
  %241 = icmp slt i32 %240, 0
  br i1 %241, label %242, label %253

242:                                              ; preds = %239
  %243 = load i32, i32* %21, align 4
  %244 = icmp ne i32 %243, 0
  br i1 %244, label %245, label %253

245:                                              ; preds = %242
  %246 = load %struct.inode*, %struct.inode** %5, align 8
  %247 = load %struct.ocfs2_super*, %struct.ocfs2_super** %19, align 8
  %248 = getelementptr inbounds %struct.ocfs2_super, %struct.ocfs2_super* %247, i32 0, i32 0
  %249 = load i32, i32* %248, align 4
  %250 = load i64, i64* %7, align 8
  %251 = call i32 @ocfs2_clusters_to_bytes(i32 %249, i64 %250)
  %252 = call i32 @dquot_free_space(%struct.inode* %246, i32 %251)
  br label %253

253:                                              ; preds = %245, %242, %239
  %254 = load i32*, i32** %15, align 8
  %255 = icmp ne i32* %254, null
  br i1 %255, label %256, label %260

256:                                              ; preds = %253
  %257 = load %struct.ocfs2_super*, %struct.ocfs2_super** %19, align 8
  %258 = load i32*, i32** %15, align 8
  %259 = call i32 @ocfs2_commit_trans(%struct.ocfs2_super* %257, i32* %258)
  store i32* null, i32** %15, align 8
  br label %260

260:                                              ; preds = %256, %253
  %261 = load %struct.ocfs2_alloc_context*, %struct.ocfs2_alloc_context** %16, align 8
  %262 = icmp ne %struct.ocfs2_alloc_context* %261, null
  br i1 %262, label %263, label %266

263:                                              ; preds = %260
  %264 = load %struct.ocfs2_alloc_context*, %struct.ocfs2_alloc_context** %16, align 8
  %265 = call i32 @ocfs2_free_alloc_context(%struct.ocfs2_alloc_context* %264)
  store %struct.ocfs2_alloc_context* null, %struct.ocfs2_alloc_context** %16, align 8
  br label %266

266:                                              ; preds = %263, %260
  %267 = load %struct.ocfs2_alloc_context*, %struct.ocfs2_alloc_context** %17, align 8
  %268 = icmp ne %struct.ocfs2_alloc_context* %267, null
  br i1 %268, label %269, label %272

269:                                              ; preds = %266
  %270 = load %struct.ocfs2_alloc_context*, %struct.ocfs2_alloc_context** %17, align 8
  %271 = call i32 @ocfs2_free_alloc_context(%struct.ocfs2_alloc_context* %270)
  store %struct.ocfs2_alloc_context* null, %struct.ocfs2_alloc_context** %17, align 8
  br label %272

272:                                              ; preds = %269, %266
  %273 = load i32, i32* %9, align 4
  %274 = icmp ne i32 %273, 0
  br i1 %274, label %279, label %275

275:                                              ; preds = %272
  %276 = load i32, i32* %10, align 4
  %277 = icmp ne i32 %276, 0
  br i1 %277, label %278, label %279

278:                                              ; preds = %275
  store i32 0, i32* %10, align 4
  br label %50

279:                                              ; preds = %275, %272
  %280 = load %struct.buffer_head*, %struct.buffer_head** %13, align 8
  %281 = call i32 @brelse(%struct.buffer_head* %280)
  store %struct.buffer_head* null, %struct.buffer_head** %13, align 8
  %282 = load i32, i32* %9, align 4
  ret i32 %282
}

declare dso_local %struct.ocfs2_super* @OCFS2_SB(i32) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @ocfs2_sparse_alloc(%struct.ocfs2_super*) #1

declare dso_local i32 @ocfs2_read_inode_block(%struct.inode*, %struct.buffer_head**) #1

declare dso_local i32 @mlog_errno(i32) #1

declare dso_local i64 @le32_to_cpu(i32) #1

declare dso_local %struct.TYPE_4__* @OCFS2_I(%struct.inode*) #1

declare dso_local i32 @ocfs2_init_dinode_extent_tree(%struct.ocfs2_extent_tree*, i32, %struct.buffer_head*) #1

declare dso_local i32 @INODE_CACHE(%struct.inode*) #1

declare dso_local i32 @ocfs2_lock_allocators(%struct.inode*, %struct.ocfs2_extent_tree*, i64, i32, %struct.ocfs2_alloc_context**, %struct.ocfs2_alloc_context**) #1

declare dso_local i32 @ocfs2_calc_extend_credits(i32, i32*) #1

declare dso_local i32* @ocfs2_start_trans(%struct.ocfs2_super*, i32) #1

declare dso_local i64 @IS_ERR(i32*) #1

declare dso_local i32 @PTR_ERR(i32*) #1

declare dso_local i32 @trace_ocfs2_extend_allocation(i64, i64, i64, i64, i32, i32) #1

declare dso_local i64 @i_size_read(%struct.inode*) #1

declare dso_local i32 @dquot_alloc_space_nodirty(%struct.inode*, i32) #1

declare dso_local i32 @ocfs2_clusters_to_bytes(i32, i64) #1

declare dso_local i32 @ocfs2_journal_access_di(i32*, i32, %struct.buffer_head*, i32) #1

declare dso_local i32 @ocfs2_add_inode_data(%struct.ocfs2_super*, %struct.inode*, i64*, i64, i32, %struct.buffer_head*, i32*, %struct.ocfs2_alloc_context*, %struct.ocfs2_alloc_context*, i32*) #1

declare dso_local i32 @ocfs2_update_inode_fsync_trans(i32*, %struct.inode*, i32) #1

declare dso_local i32 @ocfs2_journal_dirty(i32*, %struct.buffer_head*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @dquot_free_space(%struct.inode*, i32) #1

declare dso_local i32 @ocfs2_allocate_extend_trans(i32*, i32) #1

declare dso_local i32 @trace_ocfs2_extend_allocation_end(i64, i64, i64, i64, i64) #1

declare dso_local i64 @le64_to_cpu(i32) #1

declare dso_local i32 @ocfs2_commit_trans(%struct.ocfs2_super*, i32*) #1

declare dso_local i32 @ocfs2_free_alloc_context(%struct.ocfs2_alloc_context*) #1

declare dso_local i32 @brelse(%struct.buffer_head*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
