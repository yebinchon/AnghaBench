; ModuleID = '/home/carl/AnghaBench/linux/fs/ocfs2/extr_file.c_ocfs2_remove_inode_range.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ocfs2/extr_file.c_ocfs2_remove_inode_range.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32, %struct.address_space* }
%struct.address_space = type { i32 }
%struct.buffer_head = type { i64 }
%struct.ocfs2_super = type { i32, i32 }
%struct.ocfs2_cached_dealloc_ctxt = type { i32 }
%struct.ocfs2_extent_tree = type { i32 }
%struct.ocfs2_path = type { i64 }
%struct.ocfs2_extent_list = type { %struct.ocfs2_extent_rec* }
%struct.ocfs2_extent_rec = type { i32 }
%struct.ocfs2_dinode = type { i32 }
%struct.TYPE_2__ = type { i32, i64 }

@OCFS2_INLINE_DATA_FL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ocfs2_remove_inode_range(%struct.inode* %0, %struct.buffer_head* %1, i64 %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.inode*, align 8
  %7 = alloca %struct.buffer_head*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca %struct.ocfs2_super*, align 8
  %21 = alloca %struct.ocfs2_cached_dealloc_ctxt, align 4
  %22 = alloca %struct.address_space*, align 8
  %23 = alloca %struct.ocfs2_extent_tree, align 4
  %24 = alloca %struct.ocfs2_path*, align 8
  %25 = alloca %struct.ocfs2_extent_list*, align 8
  %26 = alloca %struct.ocfs2_extent_rec*, align 8
  %27 = alloca %struct.ocfs2_dinode*, align 8
  %28 = alloca i64, align 8
  %29 = alloca i64, align 8
  store %struct.inode* %0, %struct.inode** %6, align 8
  store %struct.buffer_head* %1, %struct.buffer_head** %7, align 8
  store i64 %2, i64* %8, align 8
  store i64 %3, i64* %9, align 8
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  store i32 0, i32* %12, align 4
  %30 = load %struct.inode*, %struct.inode** %6, align 8
  %31 = getelementptr inbounds %struct.inode, %struct.inode* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = call %struct.ocfs2_super* @OCFS2_SB(i32 %32)
  store %struct.ocfs2_super* %33, %struct.ocfs2_super** %20, align 8
  %34 = load %struct.inode*, %struct.inode** %6, align 8
  %35 = getelementptr inbounds %struct.inode, %struct.inode* %34, i32 0, i32 1
  %36 = load %struct.address_space*, %struct.address_space** %35, align 8
  store %struct.address_space* %36, %struct.address_space** %22, align 8
  store %struct.ocfs2_path* null, %struct.ocfs2_path** %24, align 8
  store %struct.ocfs2_extent_list* null, %struct.ocfs2_extent_list** %25, align 8
  store %struct.ocfs2_extent_rec* null, %struct.ocfs2_extent_rec** %26, align 8
  %37 = load %struct.buffer_head*, %struct.buffer_head** %7, align 8
  %38 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = inttoptr i64 %39 to %struct.ocfs2_dinode*
  store %struct.ocfs2_dinode* %40, %struct.ocfs2_dinode** %27, align 8
  %41 = load %struct.ocfs2_dinode*, %struct.ocfs2_dinode** %27, align 8
  %42 = getelementptr inbounds %struct.ocfs2_dinode, %struct.ocfs2_dinode* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = call i64 @le64_to_cpu(i32 %43)
  store i64 %44, i64* %29, align 8
  %45 = load %struct.inode*, %struct.inode** %6, align 8
  %46 = call i32 @INODE_CACHE(%struct.inode* %45)
  %47 = load %struct.buffer_head*, %struct.buffer_head** %7, align 8
  %48 = call i32 @ocfs2_init_dinode_extent_tree(%struct.ocfs2_extent_tree* %23, i32 %46, %struct.buffer_head* %47)
  %49 = call i32 @ocfs2_init_dealloc_ctxt(%struct.ocfs2_cached_dealloc_ctxt* %21)
  %50 = load %struct.inode*, %struct.inode** %6, align 8
  %51 = call %struct.TYPE_2__* @OCFS2_I(%struct.inode* %50)
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 1
  %53 = load i64, i64* %52, align 8
  %54 = load i64, i64* %8, align 8
  %55 = load i64, i64* %9, align 8
  %56 = call i32 @trace_ocfs2_remove_inode_range(i64 %53, i64 %54, i64 %55)
  %57 = load i64, i64* %9, align 8
  %58 = icmp eq i64 %57, 0
  br i1 %58, label %59, label %60

59:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  br label %252

60:                                               ; preds = %4
  %61 = load %struct.inode*, %struct.inode** %6, align 8
  %62 = call %struct.TYPE_2__* @OCFS2_I(%struct.inode* %61)
  %63 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = load i32, i32* @OCFS2_INLINE_DATA_FL, align 4
  %66 = and i32 %64, %65
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %87

68:                                               ; preds = %60
  %69 = load %struct.inode*, %struct.inode** %6, align 8
  %70 = load %struct.buffer_head*, %struct.buffer_head** %7, align 8
  %71 = load i64, i64* %8, align 8
  %72 = load i64, i64* %8, align 8
  %73 = load i64, i64* %9, align 8
  %74 = add nsw i64 %72, %73
  %75 = trunc i64 %74 to i32
  %76 = call i32 @ocfs2_truncate_inline(%struct.inode* %69, %struct.buffer_head* %70, i64 %71, i32 %75, i32 0)
  store i32 %76, i32* %10, align 4
  %77 = load i32, i32* %10, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %82

79:                                               ; preds = %68
  %80 = load i32, i32* %10, align 4
  %81 = call i32 @mlog_errno(i32 %80)
  br label %244

82:                                               ; preds = %68
  %83 = load %struct.address_space*, %struct.address_space** %22, align 8
  %84 = call i32 @unmap_mapping_range(%struct.address_space* %83, i32 0, i32 0, i32 0)
  %85 = load %struct.address_space*, %struct.address_space** %22, align 8
  %86 = call i32 @truncate_inode_pages(%struct.address_space* %85, i32 0)
  br label %244

87:                                               ; preds = %60
  %88 = load %struct.inode*, %struct.inode** %6, align 8
  %89 = call i64 @ocfs2_is_refcount_inode(%struct.inode* %88)
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %91, label %114

91:                                               ; preds = %87
  %92 = load %struct.inode*, %struct.inode** %6, align 8
  %93 = load %struct.buffer_head*, %struct.buffer_head** %7, align 8
  %94 = load i64, i64* %8, align 8
  %95 = call i32 @ocfs2_cow_file_pos(%struct.inode* %92, %struct.buffer_head* %93, i64 %94)
  store i32 %95, i32* %10, align 4
  %96 = load i32, i32* %10, align 4
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %101

98:                                               ; preds = %91
  %99 = load i32, i32* %10, align 4
  %100 = call i32 @mlog_errno(i32 %99)
  br label %244

101:                                              ; preds = %91
  %102 = load %struct.inode*, %struct.inode** %6, align 8
  %103 = load %struct.buffer_head*, %struct.buffer_head** %7, align 8
  %104 = load i64, i64* %8, align 8
  %105 = load i64, i64* %9, align 8
  %106 = add nsw i64 %104, %105
  %107 = call i32 @ocfs2_cow_file_pos(%struct.inode* %102, %struct.buffer_head* %103, i64 %106)
  store i32 %107, i32* %10, align 4
  %108 = load i32, i32* %10, align 4
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %110, label %113

110:                                              ; preds = %101
  %111 = load i32, i32* %10, align 4
  %112 = call i32 @mlog_errno(i32 %111)
  br label %244

113:                                              ; preds = %101
  br label %114

114:                                              ; preds = %113, %87
  %115 = load %struct.ocfs2_super*, %struct.ocfs2_super** %20, align 8
  %116 = getelementptr inbounds %struct.ocfs2_super, %struct.ocfs2_super* %115, i32 0, i32 1
  %117 = load i32, i32* %116, align 4
  %118 = load i64, i64* %8, align 8
  %119 = call i32 @ocfs2_clusters_for_bytes(i32 %117, i64 %118)
  store i32 %119, i32* %14, align 4
  %120 = load i64, i64* %8, align 8
  %121 = load i64, i64* %9, align 8
  %122 = add nsw i64 %120, %121
  %123 = load %struct.ocfs2_super*, %struct.ocfs2_super** %20, align 8
  %124 = getelementptr inbounds %struct.ocfs2_super, %struct.ocfs2_super* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 4
  %126 = zext i32 %125 to i64
  %127 = ashr i64 %122, %126
  %128 = trunc i64 %127 to i32
  store i32 %128, i32* %16, align 4
  %129 = load i32, i32* %16, align 4
  store i32 %129, i32* %19, align 4
  %130 = load %struct.inode*, %struct.inode** %6, align 8
  %131 = load i64, i64* %8, align 8
  %132 = load i64, i64* %9, align 8
  %133 = call i32 @ocfs2_zero_partial_clusters(%struct.inode* %130, i64 %131, i64 %132)
  store i32 %133, i32* %10, align 4
  %134 = load i32, i32* %10, align 4
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %136, label %139

136:                                              ; preds = %114
  %137 = load i32, i32* %10, align 4
  %138 = call i32 @mlog_errno(i32 %137)
  br label %244

139:                                              ; preds = %114
  %140 = call %struct.ocfs2_path* @ocfs2_new_path_from_et(%struct.ocfs2_extent_tree* %23)
  store %struct.ocfs2_path* %140, %struct.ocfs2_path** %24, align 8
  %141 = load %struct.ocfs2_path*, %struct.ocfs2_path** %24, align 8
  %142 = icmp ne %struct.ocfs2_path* %141, null
  br i1 %142, label %148, label %143

143:                                              ; preds = %139
  %144 = load i32, i32* @ENOMEM, align 4
  %145 = sub nsw i32 0, %144
  store i32 %145, i32* %10, align 4
  %146 = load i32, i32* %10, align 4
  %147 = call i32 @mlog_errno(i32 %146)
  br label %244

148:                                              ; preds = %139
  br label %149

149:                                              ; preds = %235, %193, %148
  %150 = load i32, i32* %16, align 4
  %151 = load i32, i32* %14, align 4
  %152 = icmp sgt i32 %150, %151
  br i1 %152, label %153, label %239

153:                                              ; preds = %149
  %154 = load %struct.inode*, %struct.inode** %6, align 8
  %155 = call i32 @INODE_CACHE(%struct.inode* %154)
  %156 = load %struct.ocfs2_path*, %struct.ocfs2_path** %24, align 8
  %157 = load i32, i32* %19, align 4
  %158 = call i32 @ocfs2_find_path(i32 %155, %struct.ocfs2_path* %156, i32 %157)
  store i32 %158, i32* %10, align 4
  %159 = load i32, i32* %10, align 4
  %160 = icmp ne i32 %159, 0
  br i1 %160, label %161, label %164

161:                                              ; preds = %153
  %162 = load i32, i32* %10, align 4
  %163 = call i32 @mlog_errno(i32 %162)
  br label %244

164:                                              ; preds = %153
  %165 = load %struct.ocfs2_path*, %struct.ocfs2_path** %24, align 8
  %166 = call %struct.ocfs2_extent_list* @path_leaf_el(%struct.ocfs2_path* %165)
  store %struct.ocfs2_extent_list* %166, %struct.ocfs2_extent_list** %25, align 8
  %167 = load %struct.ocfs2_extent_list*, %struct.ocfs2_extent_list** %25, align 8
  %168 = load i32, i32* %16, align 4
  %169 = call i32 @ocfs2_find_rec(%struct.ocfs2_extent_list* %167, i32 %168)
  store i32 %169, i32* %13, align 4
  %170 = load i32, i32* %13, align 4
  %171 = icmp slt i32 %170, 0
  br i1 %171, label %172, label %198

172:                                              ; preds = %164
  %173 = load %struct.ocfs2_path*, %struct.ocfs2_path** %24, align 8
  %174 = getelementptr inbounds %struct.ocfs2_path, %struct.ocfs2_path* %173, i32 0, i32 0
  %175 = load i64, i64* %174, align 8
  %176 = icmp eq i64 %175, 0
  br i1 %176, label %177, label %178

177:                                              ; preds = %172
  br label %239

178:                                              ; preds = %172
  %179 = load %struct.inode*, %struct.inode** %6, align 8
  %180 = getelementptr inbounds %struct.inode, %struct.inode* %179, i32 0, i32 0
  %181 = load i32, i32* %180, align 8
  %182 = load %struct.ocfs2_path*, %struct.ocfs2_path** %24, align 8
  %183 = call i32 @ocfs2_find_cpos_for_left_leaf(i32 %181, %struct.ocfs2_path* %182, i32* %19)
  store i32 %183, i32* %10, align 4
  %184 = load i32, i32* %10, align 4
  %185 = icmp ne i32 %184, 0
  br i1 %185, label %186, label %189

186:                                              ; preds = %178
  %187 = load i32, i32* %10, align 4
  %188 = call i32 @mlog_errno(i32 %187)
  br label %244

189:                                              ; preds = %178
  %190 = load i32, i32* %19, align 4
  %191 = icmp eq i32 %190, 0
  br i1 %191, label %192, label %193

192:                                              ; preds = %189
  br label %239

193:                                              ; preds = %189
  %194 = load i32, i32* %19, align 4
  %195 = add nsw i32 %194, 1
  store i32 %195, i32* %16, align 4
  %196 = load %struct.ocfs2_path*, %struct.ocfs2_path** %24, align 8
  %197 = call i32 @ocfs2_reinit_path(%struct.ocfs2_path* %196, i32 1)
  br label %149

198:                                              ; preds = %164
  %199 = load %struct.ocfs2_extent_list*, %struct.ocfs2_extent_list** %25, align 8
  %200 = getelementptr inbounds %struct.ocfs2_extent_list, %struct.ocfs2_extent_list* %199, i32 0, i32 0
  %201 = load %struct.ocfs2_extent_rec*, %struct.ocfs2_extent_rec** %200, align 8
  %202 = load i32, i32* %13, align 4
  %203 = sext i32 %202 to i64
  %204 = getelementptr inbounds %struct.ocfs2_extent_rec, %struct.ocfs2_extent_rec* %201, i64 %203
  store %struct.ocfs2_extent_rec* %204, %struct.ocfs2_extent_rec** %26, align 8
  br label %205

205:                                              ; preds = %198
  %206 = load %struct.inode*, %struct.inode** %6, align 8
  %207 = load %struct.ocfs2_extent_list*, %struct.ocfs2_extent_list** %25, align 8
  %208 = load %struct.ocfs2_extent_rec*, %struct.ocfs2_extent_rec** %26, align 8
  %209 = load i32, i32* %14, align 4
  %210 = call i32 @ocfs2_calc_trunc_pos(%struct.inode* %206, %struct.ocfs2_extent_list* %207, %struct.ocfs2_extent_rec* %208, i32 %209, i32* %17, i32* %15, i32* %16, i64* %28, i32* %12)
  %211 = load i32, i32* %12, align 4
  %212 = icmp ne i32 %211, 0
  br i1 %212, label %213, label %214

213:                                              ; preds = %205
  br label %239

214:                                              ; preds = %205
  %215 = load %struct.ocfs2_extent_rec*, %struct.ocfs2_extent_rec** %26, align 8
  %216 = getelementptr inbounds %struct.ocfs2_extent_rec, %struct.ocfs2_extent_rec* %215, i32 0, i32 0
  %217 = load i32, i32* %216, align 4
  store i32 %217, i32* %11, align 4
  %218 = load %struct.inode*, %struct.inode** %6, align 8
  %219 = getelementptr inbounds %struct.inode, %struct.inode* %218, i32 0, i32 0
  %220 = load i32, i32* %219, align 8
  %221 = load i64, i64* %28, align 8
  %222 = call i32 @ocfs2_blocks_to_clusters(i32 %220, i64 %221)
  store i32 %222, i32* %18, align 4
  %223 = load %struct.inode*, %struct.inode** %6, align 8
  %224 = load i32, i32* %17, align 4
  %225 = load i32, i32* %18, align 4
  %226 = load i32, i32* %15, align 4
  %227 = load i32, i32* %11, align 4
  %228 = load i64, i64* %29, align 8
  %229 = call i32 @ocfs2_remove_btree_range(%struct.inode* %223, %struct.ocfs2_extent_tree* %23, i32 %224, i32 %225, i32 %226, i32 %227, %struct.ocfs2_cached_dealloc_ctxt* %21, i64 %228, i32 0)
  store i32 %229, i32* %10, align 4
  %230 = load i32, i32* %10, align 4
  %231 = icmp slt i32 %230, 0
  br i1 %231, label %232, label %235

232:                                              ; preds = %214
  %233 = load i32, i32* %10, align 4
  %234 = call i32 @mlog_errno(i32 %233)
  br label %244

235:                                              ; preds = %214
  %236 = load i32, i32* %16, align 4
  store i32 %236, i32* %19, align 4
  %237 = load %struct.ocfs2_path*, %struct.ocfs2_path** %24, align 8
  %238 = call i32 @ocfs2_reinit_path(%struct.ocfs2_path* %237, i32 1)
  br label %149

239:                                              ; preds = %213, %192, %177, %149
  %240 = load %struct.inode*, %struct.inode** %6, align 8
  %241 = load i64, i64* %8, align 8
  %242 = load i64, i64* %9, align 8
  %243 = call i32 @ocfs2_truncate_cluster_pages(%struct.inode* %240, i64 %241, i64 %242)
  br label %244

244:                                              ; preds = %239, %232, %186, %161, %143, %136, %110, %98, %82, %79
  %245 = load %struct.ocfs2_path*, %struct.ocfs2_path** %24, align 8
  %246 = call i32 @ocfs2_free_path(%struct.ocfs2_path* %245)
  %247 = load %struct.ocfs2_super*, %struct.ocfs2_super** %20, align 8
  %248 = call i32 @ocfs2_schedule_truncate_log_flush(%struct.ocfs2_super* %247, i32 1)
  %249 = load %struct.ocfs2_super*, %struct.ocfs2_super** %20, align 8
  %250 = call i32 @ocfs2_run_deallocs(%struct.ocfs2_super* %249, %struct.ocfs2_cached_dealloc_ctxt* %21)
  %251 = load i32, i32* %10, align 4
  store i32 %251, i32* %5, align 4
  br label %252

252:                                              ; preds = %244, %59
  %253 = load i32, i32* %5, align 4
  ret i32 %253
}

declare dso_local %struct.ocfs2_super* @OCFS2_SB(i32) #1

declare dso_local i64 @le64_to_cpu(i32) #1

declare dso_local i32 @ocfs2_init_dinode_extent_tree(%struct.ocfs2_extent_tree*, i32, %struct.buffer_head*) #1

declare dso_local i32 @INODE_CACHE(%struct.inode*) #1

declare dso_local i32 @ocfs2_init_dealloc_ctxt(%struct.ocfs2_cached_dealloc_ctxt*) #1

declare dso_local i32 @trace_ocfs2_remove_inode_range(i64, i64, i64) #1

declare dso_local %struct.TYPE_2__* @OCFS2_I(%struct.inode*) #1

declare dso_local i32 @ocfs2_truncate_inline(%struct.inode*, %struct.buffer_head*, i64, i32, i32) #1

declare dso_local i32 @mlog_errno(i32) #1

declare dso_local i32 @unmap_mapping_range(%struct.address_space*, i32, i32, i32) #1

declare dso_local i32 @truncate_inode_pages(%struct.address_space*, i32) #1

declare dso_local i64 @ocfs2_is_refcount_inode(%struct.inode*) #1

declare dso_local i32 @ocfs2_cow_file_pos(%struct.inode*, %struct.buffer_head*, i64) #1

declare dso_local i32 @ocfs2_clusters_for_bytes(i32, i64) #1

declare dso_local i32 @ocfs2_zero_partial_clusters(%struct.inode*, i64, i64) #1

declare dso_local %struct.ocfs2_path* @ocfs2_new_path_from_et(%struct.ocfs2_extent_tree*) #1

declare dso_local i32 @ocfs2_find_path(i32, %struct.ocfs2_path*, i32) #1

declare dso_local %struct.ocfs2_extent_list* @path_leaf_el(%struct.ocfs2_path*) #1

declare dso_local i32 @ocfs2_find_rec(%struct.ocfs2_extent_list*, i32) #1

declare dso_local i32 @ocfs2_find_cpos_for_left_leaf(i32, %struct.ocfs2_path*, i32*) #1

declare dso_local i32 @ocfs2_reinit_path(%struct.ocfs2_path*, i32) #1

declare dso_local i32 @ocfs2_calc_trunc_pos(%struct.inode*, %struct.ocfs2_extent_list*, %struct.ocfs2_extent_rec*, i32, i32*, i32*, i32*, i64*, i32*) #1

declare dso_local i32 @ocfs2_blocks_to_clusters(i32, i64) #1

declare dso_local i32 @ocfs2_remove_btree_range(%struct.inode*, %struct.ocfs2_extent_tree*, i32, i32, i32, i32, %struct.ocfs2_cached_dealloc_ctxt*, i64, i32) #1

declare dso_local i32 @ocfs2_truncate_cluster_pages(%struct.inode*, i64, i64) #1

declare dso_local i32 @ocfs2_free_path(%struct.ocfs2_path*) #1

declare dso_local i32 @ocfs2_schedule_truncate_log_flush(%struct.ocfs2_super*, i32) #1

declare dso_local i32 @ocfs2_run_deallocs(%struct.ocfs2_super*, %struct.ocfs2_cached_dealloc_ctxt*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
