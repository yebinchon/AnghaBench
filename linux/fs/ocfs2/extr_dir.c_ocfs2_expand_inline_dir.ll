; ModuleID = '/home/carl/AnghaBench/linux/fs/ocfs2/extr_dir.c_ocfs2_expand_inline_dir.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ocfs2/extr_dir.c_ocfs2_expand_inline_dir.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { %struct.super_block*, i32, %struct.TYPE_6__, %struct.TYPE_6__ }
%struct.super_block = type { i32, i64 }
%struct.TYPE_6__ = type { i32, i64 }
%struct.buffer_head = type { i64 }
%struct.ocfs2_dir_lookup_result = type { %struct.buffer_head*, %struct.buffer_head*, i32 }
%struct.ocfs2_super = type { %struct.super_block* }
%struct.ocfs2_inode_info = type { i32, i32, i32, i32 }
%struct.ocfs2_alloc_context = type { i32* }
%struct.ocfs2_dinode = type { i32, i32, i8*, i8*, i8*, i32, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.ocfs2_extent_tree = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4
@OCFS2_SUBALLOC_ALLOC = common dso_local global i64 0, align 8
@OCFS2_JOURNAL_ACCESS_CREATE = common dso_local global i32 0, align 4
@OCFS2_INLINE_DATA_FL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.buffer_head*, i32, %struct.ocfs2_dir_lookup_result*, %struct.buffer_head**)* @ocfs2_expand_inline_dir to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ocfs2_expand_inline_dir(%struct.inode* %0, %struct.buffer_head* %1, i32 %2, %struct.ocfs2_dir_lookup_result* %3, %struct.buffer_head** %4) #0 {
  %6 = alloca %struct.inode*, align 8
  %7 = alloca %struct.buffer_head*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.ocfs2_dir_lookup_result*, align 8
  %10 = alloca %struct.buffer_head**, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.super_block*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca %struct.ocfs2_super*, align 8
  %26 = alloca %struct.ocfs2_inode_info*, align 8
  %27 = alloca %struct.ocfs2_alloc_context*, align 8
  %28 = alloca %struct.ocfs2_alloc_context*, align 8
  %29 = alloca %struct.buffer_head*, align 8
  %30 = alloca %struct.buffer_head*, align 8
  %31 = alloca %struct.buffer_head**, align 8
  %32 = alloca %struct.ocfs2_dinode*, align 8
  %33 = alloca i32*, align 8
  %34 = alloca %struct.ocfs2_extent_tree, align 4
  %35 = alloca %struct.ocfs2_extent_tree, align 4
  %36 = alloca i32, align 4
  %37 = alloca i32, align 4
  %38 = alloca %struct.TYPE_6__, align 8
  %39 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %6, align 8
  store %struct.buffer_head* %1, %struct.buffer_head** %7, align 8
  store i32 %2, i32* %8, align 4
  store %struct.ocfs2_dir_lookup_result* %3, %struct.ocfs2_dir_lookup_result** %9, align 8
  store %struct.buffer_head** %4, %struct.buffer_head*** %10, align 8
  store i32 0, i32* %15, align 4
  %40 = load %struct.inode*, %struct.inode** %6, align 8
  %41 = getelementptr inbounds %struct.inode, %struct.inode* %40, i32 0, i32 0
  %42 = load %struct.super_block*, %struct.super_block** %41, align 8
  store %struct.super_block* %42, %struct.super_block** %16, align 8
  store i32 0, i32* %19, align 4
  store i32 0, i32* %20, align 4
  %43 = load %struct.super_block*, %struct.super_block** %16, align 8
  %44 = call i32 @ocfs2_inline_to_extents_credits(%struct.super_block* %43)
  store i32 %44, i32* %21, align 4
  %45 = load i32, i32* %8, align 4
  %46 = load %struct.super_block*, %struct.super_block** %16, align 8
  %47 = getelementptr inbounds %struct.super_block, %struct.super_block* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = shl i32 %45, %48
  store i32 %49, i32* %24, align 4
  %50 = load %struct.inode*, %struct.inode** %6, align 8
  %51 = getelementptr inbounds %struct.inode, %struct.inode* %50, i32 0, i32 0
  %52 = load %struct.super_block*, %struct.super_block** %51, align 8
  %53 = call %struct.ocfs2_super* @OCFS2_SB(%struct.super_block* %52)
  store %struct.ocfs2_super* %53, %struct.ocfs2_super** %25, align 8
  %54 = load %struct.inode*, %struct.inode** %6, align 8
  %55 = call %struct.ocfs2_inode_info* @OCFS2_I(%struct.inode* %54)
  store %struct.ocfs2_inode_info* %55, %struct.ocfs2_inode_info** %26, align 8
  store %struct.ocfs2_alloc_context* null, %struct.ocfs2_alloc_context** %27, align 8
  store %struct.ocfs2_alloc_context* null, %struct.ocfs2_alloc_context** %28, align 8
  store %struct.buffer_head* null, %struct.buffer_head** %29, align 8
  store %struct.buffer_head* null, %struct.buffer_head** %30, align 8
  store %struct.buffer_head** null, %struct.buffer_head*** %31, align 8
  %56 = load %struct.buffer_head*, %struct.buffer_head** %7, align 8
  %57 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = inttoptr i64 %58 to %struct.ocfs2_dinode*
  store %struct.ocfs2_dinode* %59, %struct.ocfs2_dinode** %32, align 8
  store i32 0, i32* %36, align 4
  store i32 0, i32* %37, align 4
  %60 = load %struct.inode*, %struct.inode** %6, align 8
  %61 = call i32 @INODE_CACHE(%struct.inode* %60)
  %62 = load %struct.buffer_head*, %struct.buffer_head** %7, align 8
  %63 = call i32 @ocfs2_init_dinode_extent_tree(%struct.ocfs2_extent_tree* %34, i32 %61, %struct.buffer_head* %62)
  %64 = load %struct.super_block*, %struct.super_block** %16, align 8
  %65 = load i32, i32* %24, align 4
  %66 = call i32 @ocfs2_clusters_for_bytes(%struct.super_block* %64, i32 %65)
  store i32 %66, i32* %11, align 4
  store i32 0, i32* %12, align 4
  %67 = load %struct.ocfs2_inode_info*, %struct.ocfs2_inode_info** %26, align 8
  %68 = getelementptr inbounds %struct.ocfs2_inode_info, %struct.ocfs2_inode_info* %67, i32 0, i32 0
  %69 = call i32 @down_write(i32* %68)
  %70 = load %struct.ocfs2_super*, %struct.ocfs2_super** %25, align 8
  %71 = call i64 @ocfs2_supports_indexed_dirs(%struct.ocfs2_super* %70)
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %107

73:                                               ; preds = %5
  %74 = load %struct.super_block*, %struct.super_block** %16, align 8
  %75 = call i64 @ocfs2_add_dir_index_credits(%struct.super_block* %74)
  %76 = load i32, i32* %21, align 4
  %77 = sext i32 %76 to i64
  %78 = add nsw i64 %77, %75
  %79 = trunc i64 %78 to i32
  store i32 %79, i32* %21, align 4
  %80 = load %struct.inode*, %struct.inode** %6, align 8
  %81 = load %struct.buffer_head*, %struct.buffer_head** %7, align 8
  %82 = call i32 @ocfs2_new_dx_should_be_inline(%struct.inode* %80, %struct.buffer_head* %81)
  store i32 %82, i32* %20, align 4
  %83 = load i32, i32* %20, align 4
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %98, label %85

85:                                               ; preds = %73
  %86 = load i32, i32* %12, align 4
  %87 = add nsw i32 %86, 1
  store i32 %87, i32* %12, align 4
  %88 = load %struct.super_block*, %struct.super_block** %16, align 8
  %89 = call %struct.buffer_head** @ocfs2_dx_dir_kmalloc_leaves(%struct.super_block* %88, i32* %19)
  store %struct.buffer_head** %89, %struct.buffer_head*** %31, align 8
  %90 = load %struct.buffer_head**, %struct.buffer_head*** %31, align 8
  %91 = icmp ne %struct.buffer_head** %90, null
  br i1 %91, label %97, label %92

92:                                               ; preds = %85
  %93 = load i32, i32* @ENOMEM, align 4
  %94 = sub nsw i32 0, %93
  store i32 %94, i32* %17, align 4
  %95 = load i32, i32* %17, align 4
  %96 = call i32 @mlog_errno(i32 %95)
  br label %524

97:                                               ; preds = %85
  br label %98

98:                                               ; preds = %97, %73
  %99 = load %struct.ocfs2_super*, %struct.ocfs2_super** %25, align 8
  %100 = call i32 @ocfs2_reserve_new_metadata_blocks(%struct.ocfs2_super* %99, i32 1, %struct.ocfs2_alloc_context** %28)
  store i32 %100, i32* %17, align 4
  %101 = load i32, i32* %17, align 4
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %106

103:                                              ; preds = %98
  %104 = load i32, i32* %17, align 4
  %105 = call i32 @mlog_errno(i32 %104)
  br label %524

106:                                              ; preds = %98
  br label %107

107:                                              ; preds = %106, %5
  %108 = load i32, i32* %11, align 4
  %109 = icmp sgt i32 %108, 2
  %110 = zext i1 %109 to i32
  %111 = call i32 @BUG_ON(i32 %110)
  %112 = load %struct.ocfs2_super*, %struct.ocfs2_super** %25, align 8
  %113 = load i32, i32* %11, align 4
  %114 = load i32, i32* %12, align 4
  %115 = add nsw i32 %113, %114
  %116 = call i32 @ocfs2_reserve_clusters(%struct.ocfs2_super* %112, i32 %115, %struct.ocfs2_alloc_context** %27)
  store i32 %116, i32* %17, align 4
  %117 = load i32, i32* %17, align 4
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %119, label %122

119:                                              ; preds = %107
  %120 = load i32, i32* %17, align 4
  %121 = call i32 @mlog_errno(i32 %120)
  br label %524

122:                                              ; preds = %107
  %123 = load i32, i32* %11, align 4
  %124 = icmp eq i32 %123, 2
  br i1 %124, label %125, label %131

125:                                              ; preds = %122
  %126 = load i64, i64* @OCFS2_SUBALLOC_ALLOC, align 8
  %127 = load i32, i32* %21, align 4
  %128 = sext i32 %127 to i64
  %129 = add nsw i64 %128, %126
  %130 = trunc i64 %129 to i32
  store i32 %130, i32* %21, align 4
  br label %131

131:                                              ; preds = %125, %122
  %132 = load %struct.ocfs2_super*, %struct.ocfs2_super** %25, align 8
  %133 = load i32, i32* %21, align 4
  %134 = call i32* @ocfs2_start_trans(%struct.ocfs2_super* %132, i32 %133)
  store i32* %134, i32** %33, align 8
  %135 = load i32*, i32** %33, align 8
  %136 = call i64 @IS_ERR(i32* %135)
  %137 = icmp ne i64 %136, 0
  br i1 %137, label %138, label %143

138:                                              ; preds = %131
  %139 = load i32*, i32** %33, align 8
  %140 = call i32 @PTR_ERR(i32* %139)
  store i32 %140, i32* %17, align 4
  %141 = load i32, i32* %17, align 4
  %142 = call i32 @mlog_errno(i32 %141)
  br label %524

143:                                              ; preds = %131
  %144 = load %struct.inode*, %struct.inode** %6, align 8
  %145 = load %struct.ocfs2_super*, %struct.ocfs2_super** %25, align 8
  %146 = getelementptr inbounds %struct.ocfs2_super, %struct.ocfs2_super* %145, i32 0, i32 0
  %147 = load %struct.super_block*, %struct.super_block** %146, align 8
  %148 = load i32, i32* %11, align 4
  %149 = load i32, i32* %12, align 4
  %150 = add nsw i32 %148, %149
  %151 = call i32 @ocfs2_clusters_to_bytes(%struct.super_block* %147, i32 %150)
  %152 = call i32 @dquot_alloc_space_nodirty(%struct.inode* %144, i32 %151)
  store i32 %152, i32* %17, align 4
  %153 = load i32, i32* %17, align 4
  %154 = icmp ne i32 %153, 0
  br i1 %154, label %155, label %156

155:                                              ; preds = %143
  br label %510

156:                                              ; preds = %143
  store i32 1, i32* %36, align 4
  %157 = load %struct.ocfs2_super*, %struct.ocfs2_super** %25, align 8
  %158 = call i64 @ocfs2_supports_indexed_dirs(%struct.ocfs2_super* %157)
  %159 = icmp ne i64 %158, 0
  br i1 %159, label %160, label %182

160:                                              ; preds = %156
  %161 = load i32, i32* %20, align 4
  %162 = icmp ne i32 %161, 0
  br i1 %162, label %182, label %163

163:                                              ; preds = %160
  %164 = load %struct.inode*, %struct.inode** %6, align 8
  %165 = load i32*, i32** %33, align 8
  %166 = load %struct.ocfs2_alloc_context*, %struct.ocfs2_alloc_context** %27, align 8
  %167 = load %struct.buffer_head**, %struct.buffer_head*** %31, align 8
  %168 = load i32, i32* %19, align 4
  %169 = call i32 @__ocfs2_dx_dir_new_cluster(%struct.inode* %164, i32 0, i32* %165, %struct.ocfs2_alloc_context* %166, %struct.buffer_head** %167, i32 %168, i32* %22)
  store i32 %169, i32* %17, align 4
  %170 = load i32, i32* %17, align 4
  %171 = icmp ne i32 %170, 0
  br i1 %171, label %172, label %175

172:                                              ; preds = %163
  %173 = load i32, i32* %17, align 4
  %174 = call i32 @mlog_errno(i32 %173)
  br label %510

175:                                              ; preds = %163
  %176 = load %struct.inode*, %struct.inode** %6, align 8
  %177 = getelementptr inbounds %struct.inode, %struct.inode* %176, i32 0, i32 0
  %178 = load %struct.super_block*, %struct.super_block** %177, align 8
  %179 = call i32 @ocfs2_clusters_to_bytes(%struct.super_block* %178, i32 1)
  %180 = load i32, i32* %37, align 4
  %181 = add nsw i32 %180, %179
  store i32 %181, i32* %37, align 4
  br label %182

182:                                              ; preds = %175, %160, %156
  %183 = load %struct.ocfs2_super*, %struct.ocfs2_super** %25, align 8
  %184 = call i64 @ocfs2_dir_resv_allowed(%struct.ocfs2_super* %183)
  %185 = icmp ne i64 %184, 0
  br i1 %185, label %186, label %191

186:                                              ; preds = %182
  %187 = load %struct.ocfs2_inode_info*, %struct.ocfs2_inode_info** %26, align 8
  %188 = getelementptr inbounds %struct.ocfs2_inode_info, %struct.ocfs2_inode_info* %187, i32 0, i32 3
  %189 = load %struct.ocfs2_alloc_context*, %struct.ocfs2_alloc_context** %27, align 8
  %190 = getelementptr inbounds %struct.ocfs2_alloc_context, %struct.ocfs2_alloc_context* %189, i32 0, i32 0
  store i32* %188, i32** %190, align 8
  br label %191

191:                                              ; preds = %186, %182
  %192 = load i32*, i32** %33, align 8
  %193 = load %struct.ocfs2_alloc_context*, %struct.ocfs2_alloc_context** %27, align 8
  %194 = call i32 @ocfs2_claim_clusters(i32* %192, %struct.ocfs2_alloc_context* %193, i32 1, i32* %13, i32* %14)
  store i32 %194, i32* %17, align 4
  %195 = load i32, i32* %17, align 4
  %196 = icmp ne i32 %195, 0
  br i1 %196, label %197, label %200

197:                                              ; preds = %191
  %198 = load i32, i32* %17, align 4
  %199 = call i32 @mlog_errno(i32 %198)
  br label %510

200:                                              ; preds = %191
  %201 = load %struct.inode*, %struct.inode** %6, align 8
  %202 = getelementptr inbounds %struct.inode, %struct.inode* %201, i32 0, i32 0
  %203 = load %struct.super_block*, %struct.super_block** %202, align 8
  %204 = call i32 @ocfs2_clusters_to_bytes(%struct.super_block* %203, i32 1)
  %205 = load i32, i32* %37, align 4
  %206 = add nsw i32 %205, %204
  store i32 %206, i32* %37, align 4
  %207 = load %struct.inode*, %struct.inode** %6, align 8
  %208 = getelementptr inbounds %struct.inode, %struct.inode* %207, i32 0, i32 0
  %209 = load %struct.super_block*, %struct.super_block** %208, align 8
  %210 = load i32, i32* %13, align 4
  %211 = call i32 @ocfs2_clusters_to_blocks(%struct.super_block* %209, i32 %210)
  store i32 %211, i32* %23, align 4
  %212 = load %struct.super_block*, %struct.super_block** %16, align 8
  %213 = load i32, i32* %23, align 4
  %214 = call %struct.buffer_head* @sb_getblk(%struct.super_block* %212, i32 %213)
  store %struct.buffer_head* %214, %struct.buffer_head** %29, align 8
  %215 = load %struct.buffer_head*, %struct.buffer_head** %29, align 8
  %216 = icmp ne %struct.buffer_head* %215, null
  br i1 %216, label %222, label %217

217:                                              ; preds = %200
  %218 = load i32, i32* @ENOMEM, align 4
  %219 = sub nsw i32 0, %218
  store i32 %219, i32* %17, align 4
  %220 = load i32, i32* %17, align 4
  %221 = call i32 @mlog_errno(i32 %220)
  br label %510

222:                                              ; preds = %200
  %223 = load %struct.inode*, %struct.inode** %6, align 8
  %224 = call i32 @INODE_CACHE(%struct.inode* %223)
  %225 = load %struct.buffer_head*, %struct.buffer_head** %29, align 8
  %226 = call i32 @ocfs2_set_new_buffer_uptodate(i32 %224, %struct.buffer_head* %225)
  %227 = load i32*, i32** %33, align 8
  %228 = load %struct.inode*, %struct.inode** %6, align 8
  %229 = call i32 @INODE_CACHE(%struct.inode* %228)
  %230 = load %struct.buffer_head*, %struct.buffer_head** %29, align 8
  %231 = load i32, i32* @OCFS2_JOURNAL_ACCESS_CREATE, align 4
  %232 = call i32 @ocfs2_journal_access_db(i32* %227, i32 %229, %struct.buffer_head* %230, i32 %231)
  store i32 %232, i32* %17, align 4
  %233 = load i32, i32* %17, align 4
  %234 = icmp ne i32 %233, 0
  br i1 %234, label %235, label %238

235:                                              ; preds = %222
  %236 = load i32, i32* %17, align 4
  %237 = call i32 @mlog_errno(i32 %236)
  br label %510

238:                                              ; preds = %222
  %239 = load %struct.buffer_head*, %struct.buffer_head** %29, align 8
  %240 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %239, i32 0, i32 0
  %241 = load i64, i64* %240, align 8
  %242 = load %struct.ocfs2_dinode*, %struct.ocfs2_dinode** %32, align 8
  %243 = getelementptr inbounds %struct.ocfs2_dinode, %struct.ocfs2_dinode* %242, i32 0, i32 6
  %244 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %243, i32 0, i32 0
  %245 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %244, i32 0, i32 0
  %246 = load i32, i32* %245, align 4
  %247 = load %struct.inode*, %struct.inode** %6, align 8
  %248 = call i64 @i_size_read(%struct.inode* %247)
  %249 = call i32 @memcpy(i64 %241, i32 %246, i64 %248)
  %250 = load %struct.buffer_head*, %struct.buffer_head** %29, align 8
  %251 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %250, i32 0, i32 0
  %252 = load i64, i64* %251, align 8
  %253 = load %struct.inode*, %struct.inode** %6, align 8
  %254 = call i64 @i_size_read(%struct.inode* %253)
  %255 = add nsw i64 %252, %254
  %256 = load %struct.super_block*, %struct.super_block** %16, align 8
  %257 = getelementptr inbounds %struct.super_block, %struct.super_block* %256, i32 0, i32 1
  %258 = load i64, i64* %257, align 8
  %259 = load %struct.inode*, %struct.inode** %6, align 8
  %260 = call i64 @i_size_read(%struct.inode* %259)
  %261 = sub nsw i64 %258, %260
  %262 = call i32 @memset(i64 %255, i32 0, i64 %261)
  %263 = load %struct.buffer_head*, %struct.buffer_head** %29, align 8
  %264 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %263, i32 0, i32 0
  %265 = load i64, i64* %264, align 8
  %266 = load %struct.inode*, %struct.inode** %6, align 8
  %267 = call i64 @i_size_read(%struct.inode* %266)
  %268 = load %struct.inode*, %struct.inode** %6, align 8
  %269 = call i32 @ocfs2_expand_last_dirent(i64 %265, i64 %267, %struct.inode* %268)
  store i32 %269, i32* %18, align 4
  %270 = load %struct.inode*, %struct.inode** %6, align 8
  %271 = call i64 @ocfs2_new_dir_wants_trailer(%struct.inode* %270)
  %272 = icmp ne i64 %271, 0
  br i1 %272, label %273, label %278

273:                                              ; preds = %238
  %274 = load %struct.inode*, %struct.inode** %6, align 8
  %275 = load %struct.buffer_head*, %struct.buffer_head** %29, align 8
  %276 = load i32, i32* %18, align 4
  %277 = call i32 @ocfs2_init_dir_trailer(%struct.inode* %274, %struct.buffer_head* %275, i32 %276)
  br label %278

278:                                              ; preds = %273, %238
  %279 = load i32*, i32** %33, align 8
  %280 = load %struct.inode*, %struct.inode** %6, align 8
  %281 = call i32 @ocfs2_update_inode_fsync_trans(i32* %279, %struct.inode* %280, i32 1)
  %282 = load i32*, i32** %33, align 8
  %283 = load %struct.buffer_head*, %struct.buffer_head** %29, align 8
  %284 = call i32 @ocfs2_journal_dirty(i32* %282, %struct.buffer_head* %283)
  %285 = load %struct.ocfs2_super*, %struct.ocfs2_super** %25, align 8
  %286 = call i64 @ocfs2_supports_indexed_dirs(%struct.ocfs2_super* %285)
  %287 = icmp ne i64 %286, 0
  br i1 %287, label %288, label %304

288:                                              ; preds = %278
  %289 = load i32, i32* %20, align 4
  %290 = icmp ne i32 %289, 0
  br i1 %290, label %304, label %291

291:                                              ; preds = %288
  %292 = load %struct.inode*, %struct.inode** %6, align 8
  %293 = load i32*, i32** %33, align 8
  %294 = load %struct.buffer_head**, %struct.buffer_head*** %31, align 8
  %295 = load i32, i32* %19, align 4
  %296 = load %struct.buffer_head*, %struct.buffer_head** %29, align 8
  %297 = call i32 @ocfs2_dx_dir_index_block(%struct.inode* %292, i32* %293, %struct.buffer_head** %294, i32 %295, i32* %15, %struct.buffer_head* %296)
  store i32 %297, i32* %17, align 4
  %298 = load i32, i32* %17, align 4
  %299 = icmp ne i32 %298, 0
  br i1 %299, label %300, label %303

300:                                              ; preds = %291
  %301 = load i32, i32* %17, align 4
  %302 = call i32 @mlog_errno(i32 %301)
  br label %510

303:                                              ; preds = %291
  br label %304

304:                                              ; preds = %303, %288, %278
  %305 = load i32*, i32** %33, align 8
  %306 = load %struct.inode*, %struct.inode** %6, align 8
  %307 = call i32 @INODE_CACHE(%struct.inode* %306)
  %308 = load %struct.buffer_head*, %struct.buffer_head** %7, align 8
  %309 = load i32, i32* @OCFS2_JOURNAL_ACCESS_CREATE, align 4
  %310 = call i32 @ocfs2_journal_access_di(i32* %305, i32 %307, %struct.buffer_head* %308, i32 %309)
  store i32 %310, i32* %17, align 4
  %311 = load i32, i32* %17, align 4
  %312 = icmp ne i32 %311, 0
  br i1 %312, label %313, label %316

313:                                              ; preds = %304
  %314 = load i32, i32* %17, align 4
  %315 = call i32 @mlog_errno(i32 %314)
  br label %510

316:                                              ; preds = %304
  %317 = load %struct.ocfs2_inode_info*, %struct.ocfs2_inode_info** %26, align 8
  %318 = getelementptr inbounds %struct.ocfs2_inode_info, %struct.ocfs2_inode_info* %317, i32 0, i32 1
  %319 = call i32 @spin_lock(i32* %318)
  %320 = load i32, i32* @OCFS2_INLINE_DATA_FL, align 4
  %321 = xor i32 %320, -1
  %322 = load %struct.ocfs2_inode_info*, %struct.ocfs2_inode_info** %26, align 8
  %323 = getelementptr inbounds %struct.ocfs2_inode_info, %struct.ocfs2_inode_info* %322, i32 0, i32 2
  %324 = load i32, i32* %323, align 4
  %325 = and i32 %324, %321
  store i32 %325, i32* %323, align 4
  %326 = load %struct.ocfs2_inode_info*, %struct.ocfs2_inode_info** %26, align 8
  %327 = getelementptr inbounds %struct.ocfs2_inode_info, %struct.ocfs2_inode_info* %326, i32 0, i32 2
  %328 = load i32, i32* %327, align 4
  %329 = call i32 @cpu_to_le16(i32 %328)
  %330 = load %struct.ocfs2_dinode*, %struct.ocfs2_dinode** %32, align 8
  %331 = getelementptr inbounds %struct.ocfs2_dinode, %struct.ocfs2_dinode* %330, i32 0, i32 5
  store i32 %329, i32* %331, align 8
  %332 = load %struct.ocfs2_inode_info*, %struct.ocfs2_inode_info** %26, align 8
  %333 = getelementptr inbounds %struct.ocfs2_inode_info, %struct.ocfs2_inode_info* %332, i32 0, i32 1
  %334 = call i32 @spin_unlock(i32* %333)
  %335 = load %struct.inode*, %struct.inode** %6, align 8
  %336 = load %struct.ocfs2_dinode*, %struct.ocfs2_dinode** %32, align 8
  %337 = call i32 @ocfs2_dinode_new_extent_list(%struct.inode* %335, %struct.ocfs2_dinode* %336)
  %338 = load %struct.inode*, %struct.inode** %6, align 8
  %339 = load %struct.super_block*, %struct.super_block** %16, align 8
  %340 = getelementptr inbounds %struct.super_block, %struct.super_block* %339, i32 0, i32 1
  %341 = load i64, i64* %340, align 8
  %342 = call i32 @i_size_write(%struct.inode* %338, i64 %341)
  %343 = load %struct.inode*, %struct.inode** %6, align 8
  %344 = getelementptr inbounds %struct.inode, %struct.inode* %343, i32 0, i32 3
  %345 = load %struct.inode*, %struct.inode** %6, align 8
  %346 = getelementptr inbounds %struct.inode, %struct.inode* %345, i32 0, i32 2
  %347 = load %struct.inode*, %struct.inode** %6, align 8
  %348 = call { i32, i64 } @current_time(%struct.inode* %347)
  %349 = bitcast %struct.TYPE_6__* %38 to { i32, i64 }*
  %350 = getelementptr inbounds { i32, i64 }, { i32, i64 }* %349, i32 0, i32 0
  %351 = extractvalue { i32, i64 } %348, 0
  store i32 %351, i32* %350, align 8
  %352 = getelementptr inbounds { i32, i64 }, { i32, i64 }* %349, i32 0, i32 1
  %353 = extractvalue { i32, i64 } %348, 1
  store i64 %353, i64* %352, align 8
  %354 = bitcast %struct.TYPE_6__* %346 to i8*
  %355 = bitcast %struct.TYPE_6__* %38 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %354, i8* align 8 %355, i64 16, i1 false)
  %356 = bitcast %struct.TYPE_6__* %344 to i8*
  %357 = bitcast %struct.TYPE_6__* %346 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %356, i8* align 8 %357, i64 16, i1 false)
  %358 = load %struct.super_block*, %struct.super_block** %16, align 8
  %359 = getelementptr inbounds %struct.super_block, %struct.super_block* %358, i32 0, i32 1
  %360 = load i64, i64* %359, align 8
  %361 = call i8* @cpu_to_le64(i64 %360)
  %362 = load %struct.ocfs2_dinode*, %struct.ocfs2_dinode** %32, align 8
  %363 = getelementptr inbounds %struct.ocfs2_dinode, %struct.ocfs2_dinode* %362, i32 0, i32 4
  store i8* %361, i8** %363, align 8
  %364 = load %struct.inode*, %struct.inode** %6, align 8
  %365 = getelementptr inbounds %struct.inode, %struct.inode* %364, i32 0, i32 2
  %366 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %365, i32 0, i32 1
  %367 = load i64, i64* %366, align 8
  %368 = call i8* @cpu_to_le64(i64 %367)
  %369 = load %struct.ocfs2_dinode*, %struct.ocfs2_dinode** %32, align 8
  %370 = getelementptr inbounds %struct.ocfs2_dinode, %struct.ocfs2_dinode* %369, i32 0, i32 2
  store i8* %368, i8** %370, align 8
  %371 = load %struct.ocfs2_dinode*, %struct.ocfs2_dinode** %32, align 8
  %372 = getelementptr inbounds %struct.ocfs2_dinode, %struct.ocfs2_dinode* %371, i32 0, i32 3
  store i8* %368, i8** %372, align 8
  %373 = load %struct.inode*, %struct.inode** %6, align 8
  %374 = getelementptr inbounds %struct.inode, %struct.inode* %373, i32 0, i32 2
  %375 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %374, i32 0, i32 0
  %376 = load i32, i32* %375, align 8
  %377 = call i32 @cpu_to_le32(i32 %376)
  %378 = load %struct.ocfs2_dinode*, %struct.ocfs2_dinode** %32, align 8
  %379 = getelementptr inbounds %struct.ocfs2_dinode, %struct.ocfs2_dinode* %378, i32 0, i32 0
  store i32 %377, i32* %379, align 8
  %380 = load %struct.ocfs2_dinode*, %struct.ocfs2_dinode** %32, align 8
  %381 = getelementptr inbounds %struct.ocfs2_dinode, %struct.ocfs2_dinode* %380, i32 0, i32 1
  store i32 %377, i32* %381, align 4
  %382 = load i32*, i32** %33, align 8
  %383 = load %struct.inode*, %struct.inode** %6, align 8
  %384 = call i32 @ocfs2_update_inode_fsync_trans(i32* %382, %struct.inode* %383, i32 1)
  %385 = load i32*, i32** %33, align 8
  %386 = load i32, i32* %23, align 4
  %387 = load i32, i32* %14, align 4
  %388 = call i32 @ocfs2_insert_extent(i32* %385, %struct.ocfs2_extent_tree* %34, i32 0, i32 %386, i32 %387, i32 0, i32* null)
  store i32 %388, i32* %17, align 4
  %389 = load i32, i32* %17, align 4
  %390 = icmp ne i32 %389, 0
  br i1 %390, label %391, label %394

391:                                              ; preds = %316
  %392 = load i32, i32* %17, align 4
  %393 = call i32 @mlog_errno(i32 %392)
  br label %510

394:                                              ; preds = %316
  %395 = load %struct.inode*, %struct.inode** %6, align 8
  %396 = call i32 @ocfs2_inode_sector_count(%struct.inode* %395)
  %397 = load %struct.inode*, %struct.inode** %6, align 8
  %398 = getelementptr inbounds %struct.inode, %struct.inode* %397, i32 0, i32 1
  store i32 %396, i32* %398, align 8
  %399 = load i32*, i32** %33, align 8
  %400 = load %struct.buffer_head*, %struct.buffer_head** %7, align 8
  %401 = call i32 @ocfs2_journal_dirty(i32* %399, %struct.buffer_head* %400)
  %402 = load %struct.ocfs2_super*, %struct.ocfs2_super** %25, align 8
  %403 = call i64 @ocfs2_supports_indexed_dirs(%struct.ocfs2_super* %402)
  %404 = icmp ne i64 %403, 0
  br i1 %404, label %405, label %443

405:                                              ; preds = %394
  %406 = load %struct.ocfs2_super*, %struct.ocfs2_super** %25, align 8
  %407 = load i32*, i32** %33, align 8
  %408 = load %struct.inode*, %struct.inode** %6, align 8
  %409 = load %struct.buffer_head*, %struct.buffer_head** %7, align 8
  %410 = load %struct.buffer_head*, %struct.buffer_head** %29, align 8
  %411 = load %struct.ocfs2_alloc_context*, %struct.ocfs2_alloc_context** %28, align 8
  %412 = load i32, i32* %20, align 4
  %413 = load i32, i32* %15, align 4
  %414 = call i32 @ocfs2_dx_dir_attach_index(%struct.ocfs2_super* %406, i32* %407, %struct.inode* %408, %struct.buffer_head* %409, %struct.buffer_head* %410, %struct.ocfs2_alloc_context* %411, i32 %412, i32 %413, %struct.buffer_head** %30)
  store i32 %414, i32* %17, align 4
  %415 = load i32, i32* %17, align 4
  %416 = icmp ne i32 %415, 0
  br i1 %416, label %417, label %420

417:                                              ; preds = %405
  %418 = load i32, i32* %17, align 4
  %419 = call i32 @mlog_errno(i32 %418)
  br label %510

420:                                              ; preds = %405
  %421 = load i32, i32* %20, align 4
  %422 = icmp ne i32 %421, 0
  br i1 %422, label %423, label %428

423:                                              ; preds = %420
  %424 = load %struct.inode*, %struct.inode** %6, align 8
  %425 = load %struct.buffer_head*, %struct.buffer_head** %30, align 8
  %426 = load %struct.buffer_head*, %struct.buffer_head** %29, align 8
  %427 = call i32 @ocfs2_dx_dir_index_root_block(%struct.inode* %424, %struct.buffer_head* %425, %struct.buffer_head* %426)
  br label %442

428:                                              ; preds = %420
  %429 = load %struct.inode*, %struct.inode** %6, align 8
  %430 = call i32 @INODE_CACHE(%struct.inode* %429)
  %431 = load %struct.buffer_head*, %struct.buffer_head** %30, align 8
  %432 = call i32 @ocfs2_init_dx_root_extent_tree(%struct.ocfs2_extent_tree* %35, i32 %430, %struct.buffer_head* %431)
  %433 = load i32*, i32** %33, align 8
  %434 = load i32, i32* %22, align 4
  %435 = call i32 @ocfs2_insert_extent(i32* %433, %struct.ocfs2_extent_tree* %35, i32 0, i32 %434, i32 1, i32 0, i32* null)
  store i32 %435, i32* %17, align 4
  %436 = load i32, i32* %17, align 4
  %437 = icmp ne i32 %436, 0
  br i1 %437, label %438, label %441

438:                                              ; preds = %428
  %439 = load i32, i32* %17, align 4
  %440 = call i32 @mlog_errno(i32 %439)
  br label %441

441:                                              ; preds = %438, %428
  br label %442

442:                                              ; preds = %441, %423
  br label %443

443:                                              ; preds = %442, %394
  %444 = load i32, i32* %11, align 4
  %445 = load i32, i32* %14, align 4
  %446 = icmp sgt i32 %444, %445
  br i1 %446, label %447, label %478

447:                                              ; preds = %443
  %448 = load i32*, i32** %33, align 8
  %449 = load %struct.ocfs2_alloc_context*, %struct.ocfs2_alloc_context** %27, align 8
  %450 = call i32 @ocfs2_claim_clusters(i32* %448, %struct.ocfs2_alloc_context* %449, i32 1, i32* %13, i32* %14)
  store i32 %450, i32* %17, align 4
  %451 = load i32, i32* %17, align 4
  %452 = icmp ne i32 %451, 0
  br i1 %452, label %453, label %456

453:                                              ; preds = %447
  %454 = load i32, i32* %17, align 4
  %455 = call i32 @mlog_errno(i32 %454)
  br label %510

456:                                              ; preds = %447
  %457 = load %struct.inode*, %struct.inode** %6, align 8
  %458 = getelementptr inbounds %struct.inode, %struct.inode* %457, i32 0, i32 0
  %459 = load %struct.super_block*, %struct.super_block** %458, align 8
  %460 = load i32, i32* %13, align 4
  %461 = call i32 @ocfs2_clusters_to_blocks(%struct.super_block* %459, i32 %460)
  store i32 %461, i32* %23, align 4
  %462 = load i32*, i32** %33, align 8
  %463 = load i32, i32* %23, align 4
  %464 = load i32, i32* %14, align 4
  %465 = call i32 @ocfs2_insert_extent(i32* %462, %struct.ocfs2_extent_tree* %34, i32 1, i32 %463, i32 %464, i32 0, i32* null)
  store i32 %465, i32* %17, align 4
  %466 = load i32, i32* %17, align 4
  %467 = icmp ne i32 %466, 0
  br i1 %467, label %468, label %471

468:                                              ; preds = %456
  %469 = load i32, i32* %17, align 4
  %470 = call i32 @mlog_errno(i32 %469)
  br label %510

471:                                              ; preds = %456
  %472 = load %struct.inode*, %struct.inode** %6, align 8
  %473 = getelementptr inbounds %struct.inode, %struct.inode* %472, i32 0, i32 0
  %474 = load %struct.super_block*, %struct.super_block** %473, align 8
  %475 = call i32 @ocfs2_clusters_to_bytes(%struct.super_block* %474, i32 1)
  %476 = load i32, i32* %37, align 4
  %477 = add nsw i32 %476, %475
  store i32 %477, i32* %37, align 4
  br label %478

478:                                              ; preds = %471, %443
  %479 = load %struct.buffer_head*, %struct.buffer_head** %29, align 8
  %480 = load %struct.buffer_head**, %struct.buffer_head*** %10, align 8
  store %struct.buffer_head* %479, %struct.buffer_head** %480, align 8
  store %struct.buffer_head* null, %struct.buffer_head** %29, align 8
  %481 = load %struct.ocfs2_super*, %struct.ocfs2_super** %25, align 8
  %482 = call i64 @ocfs2_supports_indexed_dirs(%struct.ocfs2_super* %481)
  %483 = icmp ne i64 %482, 0
  br i1 %483, label %484, label %509

484:                                              ; preds = %478
  %485 = load i32, i32* %20, align 4
  %486 = icmp ne i32 %485, 0
  br i1 %486, label %505, label %487

487:                                              ; preds = %484
  %488 = load %struct.ocfs2_super*, %struct.ocfs2_super** %25, align 8
  %489 = load %struct.ocfs2_dir_lookup_result*, %struct.ocfs2_dir_lookup_result** %9, align 8
  %490 = getelementptr inbounds %struct.ocfs2_dir_lookup_result, %struct.ocfs2_dir_lookup_result* %489, i32 0, i32 2
  %491 = call i32 @ocfs2_dx_dir_hash_idx(%struct.ocfs2_super* %488, i32* %490)
  store i32 %491, i32* %39, align 4
  %492 = load %struct.buffer_head**, %struct.buffer_head*** %31, align 8
  %493 = load i32, i32* %39, align 4
  %494 = zext i32 %493 to i64
  %495 = getelementptr inbounds %struct.buffer_head*, %struct.buffer_head** %492, i64 %494
  %496 = load %struct.buffer_head*, %struct.buffer_head** %495, align 8
  %497 = call i32 @get_bh(%struct.buffer_head* %496)
  %498 = load %struct.buffer_head**, %struct.buffer_head*** %31, align 8
  %499 = load i32, i32* %39, align 4
  %500 = zext i32 %499 to i64
  %501 = getelementptr inbounds %struct.buffer_head*, %struct.buffer_head** %498, i64 %500
  %502 = load %struct.buffer_head*, %struct.buffer_head** %501, align 8
  %503 = load %struct.ocfs2_dir_lookup_result*, %struct.ocfs2_dir_lookup_result** %9, align 8
  %504 = getelementptr inbounds %struct.ocfs2_dir_lookup_result, %struct.ocfs2_dir_lookup_result* %503, i32 0, i32 1
  store %struct.buffer_head* %502, %struct.buffer_head** %504, align 8
  br label %505

505:                                              ; preds = %487, %484
  %506 = load %struct.buffer_head*, %struct.buffer_head** %30, align 8
  %507 = load %struct.ocfs2_dir_lookup_result*, %struct.ocfs2_dir_lookup_result** %9, align 8
  %508 = getelementptr inbounds %struct.ocfs2_dir_lookup_result, %struct.ocfs2_dir_lookup_result* %507, i32 0, i32 0
  store %struct.buffer_head* %506, %struct.buffer_head** %508, align 8
  store %struct.buffer_head* null, %struct.buffer_head** %30, align 8
  br label %509

509:                                              ; preds = %505, %478
  br label %510

510:                                              ; preds = %509, %468, %453, %417, %391, %313, %300, %235, %217, %197, %172, %155
  %511 = load i32, i32* %17, align 4
  %512 = icmp slt i32 %511, 0
  br i1 %512, label %513, label %520

513:                                              ; preds = %510
  %514 = load i32, i32* %36, align 4
  %515 = icmp ne i32 %514, 0
  br i1 %515, label %516, label %520

516:                                              ; preds = %513
  %517 = load %struct.inode*, %struct.inode** %6, align 8
  %518 = load i32, i32* %37, align 4
  %519 = call i32 @dquot_free_space_nodirty(%struct.inode* %517, i32 %518)
  br label %520

520:                                              ; preds = %516, %513, %510
  %521 = load %struct.ocfs2_super*, %struct.ocfs2_super** %25, align 8
  %522 = load i32*, i32** %33, align 8
  %523 = call i32 @ocfs2_commit_trans(%struct.ocfs2_super* %521, i32* %522)
  br label %524

524:                                              ; preds = %520, %138, %119, %103, %92
  %525 = load %struct.ocfs2_inode_info*, %struct.ocfs2_inode_info** %26, align 8
  %526 = getelementptr inbounds %struct.ocfs2_inode_info, %struct.ocfs2_inode_info* %525, i32 0, i32 0
  %527 = call i32 @up_write(i32* %526)
  %528 = load %struct.ocfs2_alloc_context*, %struct.ocfs2_alloc_context** %27, align 8
  %529 = icmp ne %struct.ocfs2_alloc_context* %528, null
  br i1 %529, label %530, label %533

530:                                              ; preds = %524
  %531 = load %struct.ocfs2_alloc_context*, %struct.ocfs2_alloc_context** %27, align 8
  %532 = call i32 @ocfs2_free_alloc_context(%struct.ocfs2_alloc_context* %531)
  br label %533

533:                                              ; preds = %530, %524
  %534 = load %struct.ocfs2_alloc_context*, %struct.ocfs2_alloc_context** %28, align 8
  %535 = icmp ne %struct.ocfs2_alloc_context* %534, null
  br i1 %535, label %536, label %539

536:                                              ; preds = %533
  %537 = load %struct.ocfs2_alloc_context*, %struct.ocfs2_alloc_context** %28, align 8
  %538 = call i32 @ocfs2_free_alloc_context(%struct.ocfs2_alloc_context* %537)
  br label %539

539:                                              ; preds = %536, %533
  %540 = load %struct.buffer_head**, %struct.buffer_head*** %31, align 8
  %541 = icmp ne %struct.buffer_head** %540, null
  br i1 %541, label %542, label %560

542:                                              ; preds = %539
  store i32 0, i32* %18, align 4
  br label %543

543:                                              ; preds = %554, %542
  %544 = load i32, i32* %18, align 4
  %545 = load i32, i32* %19, align 4
  %546 = icmp slt i32 %544, %545
  br i1 %546, label %547, label %557

547:                                              ; preds = %543
  %548 = load %struct.buffer_head**, %struct.buffer_head*** %31, align 8
  %549 = load i32, i32* %18, align 4
  %550 = sext i32 %549 to i64
  %551 = getelementptr inbounds %struct.buffer_head*, %struct.buffer_head** %548, i64 %550
  %552 = load %struct.buffer_head*, %struct.buffer_head** %551, align 8
  %553 = call i32 @brelse(%struct.buffer_head* %552)
  br label %554

554:                                              ; preds = %547
  %555 = load i32, i32* %18, align 4
  %556 = add nsw i32 %555, 1
  store i32 %556, i32* %18, align 4
  br label %543

557:                                              ; preds = %543
  %558 = load %struct.buffer_head**, %struct.buffer_head*** %31, align 8
  %559 = call i32 @kfree(%struct.buffer_head** %558)
  br label %560

560:                                              ; preds = %557, %539
  %561 = load %struct.buffer_head*, %struct.buffer_head** %29, align 8
  %562 = call i32 @brelse(%struct.buffer_head* %561)
  %563 = load %struct.buffer_head*, %struct.buffer_head** %30, align 8
  %564 = call i32 @brelse(%struct.buffer_head* %563)
  %565 = load i32, i32* %17, align 4
  ret i32 %565
}

declare dso_local i32 @ocfs2_inline_to_extents_credits(%struct.super_block*) #1

declare dso_local %struct.ocfs2_super* @OCFS2_SB(%struct.super_block*) #1

declare dso_local %struct.ocfs2_inode_info* @OCFS2_I(%struct.inode*) #1

declare dso_local i32 @ocfs2_init_dinode_extent_tree(%struct.ocfs2_extent_tree*, i32, %struct.buffer_head*) #1

declare dso_local i32 @INODE_CACHE(%struct.inode*) #1

declare dso_local i32 @ocfs2_clusters_for_bytes(%struct.super_block*, i32) #1

declare dso_local i32 @down_write(i32*) #1

declare dso_local i64 @ocfs2_supports_indexed_dirs(%struct.ocfs2_super*) #1

declare dso_local i64 @ocfs2_add_dir_index_credits(%struct.super_block*) #1

declare dso_local i32 @ocfs2_new_dx_should_be_inline(%struct.inode*, %struct.buffer_head*) #1

declare dso_local %struct.buffer_head** @ocfs2_dx_dir_kmalloc_leaves(%struct.super_block*, i32*) #1

declare dso_local i32 @mlog_errno(i32) #1

declare dso_local i32 @ocfs2_reserve_new_metadata_blocks(%struct.ocfs2_super*, i32, %struct.ocfs2_alloc_context**) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @ocfs2_reserve_clusters(%struct.ocfs2_super*, i32, %struct.ocfs2_alloc_context**) #1

declare dso_local i32* @ocfs2_start_trans(%struct.ocfs2_super*, i32) #1

declare dso_local i64 @IS_ERR(i32*) #1

declare dso_local i32 @PTR_ERR(i32*) #1

declare dso_local i32 @dquot_alloc_space_nodirty(%struct.inode*, i32) #1

declare dso_local i32 @ocfs2_clusters_to_bytes(%struct.super_block*, i32) #1

declare dso_local i32 @__ocfs2_dx_dir_new_cluster(%struct.inode*, i32, i32*, %struct.ocfs2_alloc_context*, %struct.buffer_head**, i32, i32*) #1

declare dso_local i64 @ocfs2_dir_resv_allowed(%struct.ocfs2_super*) #1

declare dso_local i32 @ocfs2_claim_clusters(i32*, %struct.ocfs2_alloc_context*, i32, i32*, i32*) #1

declare dso_local i32 @ocfs2_clusters_to_blocks(%struct.super_block*, i32) #1

declare dso_local %struct.buffer_head* @sb_getblk(%struct.super_block*, i32) #1

declare dso_local i32 @ocfs2_set_new_buffer_uptodate(i32, %struct.buffer_head*) #1

declare dso_local i32 @ocfs2_journal_access_db(i32*, i32, %struct.buffer_head*, i32) #1

declare dso_local i32 @memcpy(i64, i32, i64) #1

declare dso_local i64 @i_size_read(%struct.inode*) #1

declare dso_local i32 @memset(i64, i32, i64) #1

declare dso_local i32 @ocfs2_expand_last_dirent(i64, i64, %struct.inode*) #1

declare dso_local i64 @ocfs2_new_dir_wants_trailer(%struct.inode*) #1

declare dso_local i32 @ocfs2_init_dir_trailer(%struct.inode*, %struct.buffer_head*, i32) #1

declare dso_local i32 @ocfs2_update_inode_fsync_trans(i32*, %struct.inode*, i32) #1

declare dso_local i32 @ocfs2_journal_dirty(i32*, %struct.buffer_head*) #1

declare dso_local i32 @ocfs2_dx_dir_index_block(%struct.inode*, i32*, %struct.buffer_head**, i32, i32*, %struct.buffer_head*) #1

declare dso_local i32 @ocfs2_journal_access_di(i32*, i32, %struct.buffer_head*, i32) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @cpu_to_le16(i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @ocfs2_dinode_new_extent_list(%struct.inode*, %struct.ocfs2_dinode*) #1

declare dso_local i32 @i_size_write(%struct.inode*, i64) #1

declare dso_local { i32, i64 } @current_time(%struct.inode*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i8* @cpu_to_le64(i64) #1

declare dso_local i32 @cpu_to_le32(i32) #1

declare dso_local i32 @ocfs2_insert_extent(i32*, %struct.ocfs2_extent_tree*, i32, i32, i32, i32, i32*) #1

declare dso_local i32 @ocfs2_inode_sector_count(%struct.inode*) #1

declare dso_local i32 @ocfs2_dx_dir_attach_index(%struct.ocfs2_super*, i32*, %struct.inode*, %struct.buffer_head*, %struct.buffer_head*, %struct.ocfs2_alloc_context*, i32, i32, %struct.buffer_head**) #1

declare dso_local i32 @ocfs2_dx_dir_index_root_block(%struct.inode*, %struct.buffer_head*, %struct.buffer_head*) #1

declare dso_local i32 @ocfs2_init_dx_root_extent_tree(%struct.ocfs2_extent_tree*, i32, %struct.buffer_head*) #1

declare dso_local i32 @ocfs2_dx_dir_hash_idx(%struct.ocfs2_super*, i32*) #1

declare dso_local i32 @get_bh(%struct.buffer_head*) #1

declare dso_local i32 @dquot_free_space_nodirty(%struct.inode*, i32) #1

declare dso_local i32 @ocfs2_commit_trans(%struct.ocfs2_super*, i32*) #1

declare dso_local i32 @up_write(i32*) #1

declare dso_local i32 @ocfs2_free_alloc_context(%struct.ocfs2_alloc_context*) #1

declare dso_local i32 @brelse(%struct.buffer_head*) #1

declare dso_local i32 @kfree(%struct.buffer_head**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
