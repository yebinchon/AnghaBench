; ModuleID = '/home/carl/AnghaBench/linux/fs/ocfs2/extr_alloc.c_ocfs2_commit_truncate.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ocfs2/extr_alloc.c_ocfs2_commit_truncate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ocfs2_super = type { i32 }
%struct.inode = type { i32, i32 }
%struct.buffer_head = type { i64 }
%struct.ocfs2_extent_list = type { i64, %struct.ocfs2_extent_rec*, i64 }
%struct.ocfs2_extent_rec = type { i32, i64, i32, i32 }
%struct.ocfs2_path = type { i32 }
%struct.ocfs2_dinode = type { %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { %struct.ocfs2_extent_list }
%struct.ocfs2_extent_tree = type { i32 }
%struct.ocfs2_cached_dealloc_ctxt = type { i32 }
%struct.ocfs2_refcount_tree = type { i32 }
%struct.TYPE_6__ = type { i64, i64 }
%struct.TYPE_5__ = type { i64 }

@ocfs2_journal_access_di = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@UINT_MAX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [43 x i8] c"Inode %llu has empty extent block at %llu\0A\00", align 1
@EROFS = common dso_local global i32 0, align 4
@ML_ERROR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [48 x i8] c"Inode %lu has an empty extent record, depth %u\0A\00", align 1
@OCFS2_EXT_REFCOUNTED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ocfs2_commit_truncate(%struct.ocfs2_super* %0, %struct.inode* %1, %struct.buffer_head* %2) #0 {
  %4 = alloca %struct.ocfs2_super*, align 8
  %5 = alloca %struct.inode*, align 8
  %6 = alloca %struct.buffer_head*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca %struct.ocfs2_extent_list*, align 8
  %18 = alloca %struct.ocfs2_extent_rec*, align 8
  %19 = alloca %struct.ocfs2_path*, align 8
  %20 = alloca %struct.ocfs2_dinode*, align 8
  %21 = alloca %struct.ocfs2_extent_list*, align 8
  %22 = alloca i64, align 8
  %23 = alloca %struct.ocfs2_extent_tree, align 4
  %24 = alloca %struct.ocfs2_cached_dealloc_ctxt, align 4
  %25 = alloca %struct.ocfs2_refcount_tree*, align 8
  store %struct.ocfs2_super* %0, %struct.ocfs2_super** %4, align 8
  store %struct.inode* %1, %struct.inode** %5, align 8
  store %struct.buffer_head* %2, %struct.buffer_head** %6, align 8
  store i32 0, i32* %7, align 4
  store i32 0, i32* %9, align 4
  store i64 0, i64* %16, align 8
  store %struct.ocfs2_path* null, %struct.ocfs2_path** %19, align 8
  %26 = load %struct.buffer_head*, %struct.buffer_head** %6, align 8
  %27 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = inttoptr i64 %28 to %struct.ocfs2_dinode*
  store %struct.ocfs2_dinode* %29, %struct.ocfs2_dinode** %20, align 8
  %30 = load %struct.ocfs2_dinode*, %struct.ocfs2_dinode** %20, align 8
  %31 = getelementptr inbounds %struct.ocfs2_dinode, %struct.ocfs2_dinode* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 0
  store %struct.ocfs2_extent_list* %32, %struct.ocfs2_extent_list** %21, align 8
  %33 = load %struct.ocfs2_dinode*, %struct.ocfs2_dinode** %20, align 8
  %34 = getelementptr inbounds %struct.ocfs2_dinode, %struct.ocfs2_dinode* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 8
  %36 = call i64 @le64_to_cpu(i32 %35)
  store i64 %36, i64* %22, align 8
  store %struct.ocfs2_refcount_tree* null, %struct.ocfs2_refcount_tree** %25, align 8
  %37 = load %struct.inode*, %struct.inode** %5, align 8
  %38 = call i32 @INODE_CACHE(%struct.inode* %37)
  %39 = load %struct.buffer_head*, %struct.buffer_head** %6, align 8
  %40 = call i32 @ocfs2_init_dinode_extent_tree(%struct.ocfs2_extent_tree* %23, i32 %38, %struct.buffer_head* %39)
  %41 = call i32 @ocfs2_init_dealloc_ctxt(%struct.ocfs2_cached_dealloc_ctxt* %24)
  %42 = load %struct.ocfs2_super*, %struct.ocfs2_super** %4, align 8
  %43 = getelementptr inbounds %struct.ocfs2_super, %struct.ocfs2_super* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.inode*, %struct.inode** %5, align 8
  %46 = call i32 @i_size_read(%struct.inode* %45)
  %47 = call i64 @ocfs2_clusters_for_bytes(i32 %44, i32 %46)
  store i64 %47, i64* %10, align 8
  %48 = load %struct.buffer_head*, %struct.buffer_head** %6, align 8
  %49 = load %struct.ocfs2_dinode*, %struct.ocfs2_dinode** %20, align 8
  %50 = getelementptr inbounds %struct.ocfs2_dinode, %struct.ocfs2_dinode* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 0
  %52 = load i32, i32* @ocfs2_journal_access_di, align 4
  %53 = call %struct.ocfs2_path* @ocfs2_new_path(%struct.buffer_head* %48, %struct.ocfs2_extent_list* %51, i32 %52)
  store %struct.ocfs2_path* %53, %struct.ocfs2_path** %19, align 8
  %54 = load %struct.ocfs2_path*, %struct.ocfs2_path** %19, align 8
  %55 = icmp ne %struct.ocfs2_path* %54, null
  br i1 %55, label %61, label %56

56:                                               ; preds = %3
  %57 = load i32, i32* @ENOMEM, align 4
  %58 = sub nsw i32 0, %57
  store i32 %58, i32* %7, align 4
  %59 = load i32, i32* %7, align 4
  %60 = call i32 @mlog_errno(i32 %59)
  br label %274

61:                                               ; preds = %3
  %62 = load %struct.inode*, %struct.inode** %5, align 8
  %63 = load i64, i64* %10, align 8
  %64 = call i32 @ocfs2_extent_map_trunc(%struct.inode* %62, i64 %63)
  br label %65

65:                                               ; preds = %271, %176, %61
  %66 = load %struct.inode*, %struct.inode** %5, align 8
  %67 = call %struct.TYPE_6__* @OCFS2_I(%struct.inode* %66)
  %68 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = icmp eq i64 %69, 0
  br i1 %70, label %71, label %72

71:                                               ; preds = %65
  store i32 0, i32* %7, align 4
  br label %274

72:                                               ; preds = %65
  %73 = load %struct.inode*, %struct.inode** %5, align 8
  %74 = call i32 @INODE_CACHE(%struct.inode* %73)
  %75 = load %struct.ocfs2_path*, %struct.ocfs2_path** %19, align 8
  %76 = load i32, i32* @UINT_MAX, align 4
  %77 = call i32 @ocfs2_find_path(i32 %74, %struct.ocfs2_path* %75, i32 %76)
  store i32 %77, i32* %7, align 4
  %78 = load i32, i32* %7, align 4
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %83

80:                                               ; preds = %72
  %81 = load i32, i32* %7, align 4
  %82 = call i32 @mlog_errno(i32 %81)
  br label %274

83:                                               ; preds = %72
  %84 = load %struct.inode*, %struct.inode** %5, align 8
  %85 = call %struct.TYPE_6__* @OCFS2_I(%struct.inode* %84)
  %86 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %85, i32 0, i32 1
  %87 = load i64, i64* %86, align 8
  %88 = load i64, i64* %10, align 8
  %89 = load %struct.inode*, %struct.inode** %5, align 8
  %90 = call %struct.TYPE_6__* @OCFS2_I(%struct.inode* %89)
  %91 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %90, i32 0, i32 0
  %92 = load i64, i64* %91, align 8
  %93 = load %struct.ocfs2_path*, %struct.ocfs2_path** %19, align 8
  %94 = getelementptr inbounds %struct.ocfs2_path, %struct.ocfs2_path* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 4
  %96 = call i32 @trace_ocfs2_commit_truncate(i64 %87, i64 %88, i64 %92, i32 %95)
  %97 = load %struct.ocfs2_path*, %struct.ocfs2_path** %19, align 8
  %98 = call %struct.ocfs2_extent_list* @path_leaf_el(%struct.ocfs2_path* %97)
  store %struct.ocfs2_extent_list* %98, %struct.ocfs2_extent_list** %17, align 8
  %99 = load %struct.ocfs2_extent_list*, %struct.ocfs2_extent_list** %17, align 8
  %100 = getelementptr inbounds %struct.ocfs2_extent_list, %struct.ocfs2_extent_list* %99, i32 0, i32 2
  %101 = load i64, i64* %100, align 8
  %102 = call i32 @le16_to_cpu(i64 %101)
  %103 = icmp eq i32 %102, 0
  br i1 %103, label %104, label %119

104:                                              ; preds = %83
  %105 = load %struct.inode*, %struct.inode** %5, align 8
  %106 = getelementptr inbounds %struct.inode, %struct.inode* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 4
  %108 = load %struct.inode*, %struct.inode** %5, align 8
  %109 = call %struct.TYPE_6__* @OCFS2_I(%struct.inode* %108)
  %110 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %109, i32 0, i32 1
  %111 = load i64, i64* %110, align 8
  %112 = load %struct.ocfs2_path*, %struct.ocfs2_path** %19, align 8
  %113 = call %struct.TYPE_5__* @path_leaf_bh(%struct.ocfs2_path* %112)
  %114 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %113, i32 0, i32 0
  %115 = load i64, i64* %114, align 8
  %116 = call i32 @ocfs2_error(i32 %107, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0), i64 %111, i64 %115)
  %117 = load i32, i32* @EROFS, align 4
  %118 = sub nsw i32 0, %117
  store i32 %118, i32* %7, align 4
  br label %274

119:                                              ; preds = %83
  %120 = load %struct.ocfs2_extent_list*, %struct.ocfs2_extent_list** %17, align 8
  %121 = getelementptr inbounds %struct.ocfs2_extent_list, %struct.ocfs2_extent_list* %120, i32 0, i32 2
  %122 = load i64, i64* %121, align 8
  %123 = call i32 @le16_to_cpu(i64 %122)
  %124 = sub nsw i32 %123, 1
  store i32 %124, i32* %8, align 4
  %125 = load %struct.ocfs2_extent_list*, %struct.ocfs2_extent_list** %17, align 8
  %126 = getelementptr inbounds %struct.ocfs2_extent_list, %struct.ocfs2_extent_list* %125, i32 0, i32 1
  %127 = load %struct.ocfs2_extent_rec*, %struct.ocfs2_extent_rec** %126, align 8
  %128 = load i32, i32* %8, align 4
  %129 = sext i32 %128 to i64
  %130 = getelementptr inbounds %struct.ocfs2_extent_rec, %struct.ocfs2_extent_rec* %127, i64 %129
  store %struct.ocfs2_extent_rec* %130, %struct.ocfs2_extent_rec** %18, align 8
  %131 = load %struct.ocfs2_extent_rec*, %struct.ocfs2_extent_rec** %18, align 8
  %132 = getelementptr inbounds %struct.ocfs2_extent_rec, %struct.ocfs2_extent_rec* %131, i32 0, i32 0
  %133 = load i32, i32* %132, align 8
  store i32 %133, i32* %9, align 4
  %134 = load %struct.ocfs2_extent_rec*, %struct.ocfs2_extent_rec** %18, align 8
  %135 = getelementptr inbounds %struct.ocfs2_extent_rec, %struct.ocfs2_extent_rec* %134, i32 0, i32 3
  %136 = load i32, i32* %135, align 4
  %137 = call i64 @le32_to_cpu(i32 %136)
  %138 = load %struct.ocfs2_extent_list*, %struct.ocfs2_extent_list** %17, align 8
  %139 = load %struct.ocfs2_extent_rec*, %struct.ocfs2_extent_rec** %18, align 8
  %140 = call i64 @ocfs2_rec_clusters(%struct.ocfs2_extent_list* %138, %struct.ocfs2_extent_rec* %139)
  %141 = add nsw i64 %137, %140
  store i64 %141, i64* %11, align 8
  %142 = load i32, i32* %8, align 4
  %143 = icmp eq i32 %142, 0
  br i1 %143, label %144, label %185

144:                                              ; preds = %119
  %145 = load %struct.ocfs2_extent_rec*, %struct.ocfs2_extent_rec** %18, align 8
  %146 = call i64 @ocfs2_is_empty_extent(%struct.ocfs2_extent_rec* %145)
  %147 = icmp ne i64 %146, 0
  br i1 %147, label %148, label %185

148:                                              ; preds = %144
  %149 = load %struct.ocfs2_extent_list*, %struct.ocfs2_extent_list** %21, align 8
  %150 = getelementptr inbounds %struct.ocfs2_extent_list, %struct.ocfs2_extent_list* %149, i32 0, i32 0
  %151 = load i64, i64* %150, align 8
  %152 = icmp ne i64 %151, 0
  br i1 %152, label %153, label %179

153:                                              ; preds = %148
  %154 = load %struct.ocfs2_extent_rec*, %struct.ocfs2_extent_rec** %18, align 8
  %155 = getelementptr inbounds %struct.ocfs2_extent_rec, %struct.ocfs2_extent_rec* %154, i32 0, i32 1
  %156 = load i64, i64* %155, align 8
  %157 = icmp eq i64 %156, 0
  br i1 %157, label %158, label %179

158:                                              ; preds = %153
  %159 = load i32, i32* @ML_ERROR, align 4
  %160 = load %struct.inode*, %struct.inode** %5, align 8
  %161 = getelementptr inbounds %struct.inode, %struct.inode* %160, i32 0, i32 1
  %162 = load i32, i32* %161, align 4
  %163 = load %struct.ocfs2_extent_list*, %struct.ocfs2_extent_list** %21, align 8
  %164 = getelementptr inbounds %struct.ocfs2_extent_list, %struct.ocfs2_extent_list* %163, i32 0, i32 0
  %165 = load i64, i64* %164, align 8
  %166 = call i32 @le16_to_cpu(i64 %165)
  %167 = call i32 @mlog(i32 %159, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.1, i64 0, i64 0), i32 %162, i32 %166)
  %168 = load %struct.ocfs2_super*, %struct.ocfs2_super** %4, align 8
  %169 = load %struct.ocfs2_path*, %struct.ocfs2_path** %19, align 8
  %170 = call i32 @ocfs2_remove_rightmost_empty_extent(%struct.ocfs2_super* %168, %struct.ocfs2_extent_tree* %23, %struct.ocfs2_path* %169, %struct.ocfs2_cached_dealloc_ctxt* %24)
  store i32 %170, i32* %7, align 4
  %171 = load i32, i32* %7, align 4
  %172 = icmp ne i32 %171, 0
  br i1 %172, label %173, label %176

173:                                              ; preds = %158
  %174 = load i32, i32* %7, align 4
  %175 = call i32 @mlog_errno(i32 %174)
  br label %274

176:                                              ; preds = %158
  %177 = load %struct.ocfs2_path*, %struct.ocfs2_path** %19, align 8
  %178 = call i32 @ocfs2_reinit_path(%struct.ocfs2_path* %177, i32 1)
  br label %65

179:                                              ; preds = %153, %148
  %180 = load %struct.ocfs2_extent_rec*, %struct.ocfs2_extent_rec** %18, align 8
  %181 = getelementptr inbounds %struct.ocfs2_extent_rec, %struct.ocfs2_extent_rec* %180, i32 0, i32 3
  %182 = load i32, i32* %181, align 4
  %183 = call i64 @le32_to_cpu(i32 %182)
  store i64 %183, i64* %12, align 8
  store i64 0, i64* %13, align 8
  store i64 0, i64* %16, align 8
  br label %184

184:                                              ; preds = %179
  br label %232

185:                                              ; preds = %144, %119
  %186 = load %struct.ocfs2_extent_rec*, %struct.ocfs2_extent_rec** %18, align 8
  %187 = getelementptr inbounds %struct.ocfs2_extent_rec, %struct.ocfs2_extent_rec* %186, i32 0, i32 3
  %188 = load i32, i32* %187, align 4
  %189 = call i64 @le32_to_cpu(i32 %188)
  %190 = load i64, i64* %10, align 8
  %191 = icmp sge i64 %189, %190
  br i1 %191, label %192, label %204

192:                                              ; preds = %185
  %193 = load %struct.ocfs2_extent_rec*, %struct.ocfs2_extent_rec** %18, align 8
  %194 = getelementptr inbounds %struct.ocfs2_extent_rec, %struct.ocfs2_extent_rec* %193, i32 0, i32 3
  %195 = load i32, i32* %194, align 4
  %196 = call i64 @le32_to_cpu(i32 %195)
  store i64 %196, i64* %12, align 8
  %197 = load %struct.ocfs2_extent_list*, %struct.ocfs2_extent_list** %17, align 8
  %198 = load %struct.ocfs2_extent_rec*, %struct.ocfs2_extent_rec** %18, align 8
  %199 = call i64 @ocfs2_rec_clusters(%struct.ocfs2_extent_list* %197, %struct.ocfs2_extent_rec* %198)
  store i64 %199, i64* %13, align 8
  %200 = load %struct.ocfs2_extent_rec*, %struct.ocfs2_extent_rec** %18, align 8
  %201 = getelementptr inbounds %struct.ocfs2_extent_rec, %struct.ocfs2_extent_rec* %200, i32 0, i32 2
  %202 = load i32, i32* %201, align 8
  %203 = call i64 @le64_to_cpu(i32 %202)
  store i64 %203, i64* %16, align 8
  br label %231

204:                                              ; preds = %185
  %205 = load i64, i64* %11, align 8
  %206 = load i64, i64* %10, align 8
  %207 = icmp sgt i64 %205, %206
  br i1 %207, label %208, label %229

208:                                              ; preds = %204
  %209 = load i64, i64* %10, align 8
  store i64 %209, i64* %12, align 8
  %210 = load i64, i64* %11, align 8
  %211 = load i64, i64* %10, align 8
  %212 = sub nsw i64 %210, %211
  store i64 %212, i64* %13, align 8
  %213 = load i64, i64* %10, align 8
  %214 = load %struct.ocfs2_extent_rec*, %struct.ocfs2_extent_rec** %18, align 8
  %215 = getelementptr inbounds %struct.ocfs2_extent_rec, %struct.ocfs2_extent_rec* %214, i32 0, i32 3
  %216 = load i32, i32* %215, align 4
  %217 = call i64 @le32_to_cpu(i32 %216)
  %218 = sub nsw i64 %213, %217
  store i64 %218, i64* %15, align 8
  %219 = load %struct.ocfs2_extent_rec*, %struct.ocfs2_extent_rec** %18, align 8
  %220 = getelementptr inbounds %struct.ocfs2_extent_rec, %struct.ocfs2_extent_rec* %219, i32 0, i32 2
  %221 = load i32, i32* %220, align 8
  %222 = call i64 @le64_to_cpu(i32 %221)
  %223 = load %struct.inode*, %struct.inode** %5, align 8
  %224 = getelementptr inbounds %struct.inode, %struct.inode* %223, i32 0, i32 0
  %225 = load i32, i32* %224, align 4
  %226 = load i64, i64* %15, align 8
  %227 = call i64 @ocfs2_clusters_to_blocks(i32 %225, i64 %226)
  %228 = add nsw i64 %222, %227
  store i64 %228, i64* %16, align 8
  br label %230

229:                                              ; preds = %204
  store i32 0, i32* %7, align 4
  br label %274

230:                                              ; preds = %208
  br label %231

231:                                              ; preds = %230, %192
  br label %232

232:                                              ; preds = %231, %184
  %233 = load %struct.inode*, %struct.inode** %5, align 8
  %234 = getelementptr inbounds %struct.inode, %struct.inode* %233, i32 0, i32 0
  %235 = load i32, i32* %234, align 4
  %236 = load i64, i64* %16, align 8
  %237 = call i64 @ocfs2_blocks_to_clusters(i32 %235, i64 %236)
  store i64 %237, i64* %14, align 8
  %238 = load i32, i32* %9, align 4
  %239 = load i32, i32* @OCFS2_EXT_REFCOUNTED, align 4
  %240 = and i32 %238, %239
  %241 = icmp ne i32 %240, 0
  br i1 %241, label %242, label %258

242:                                              ; preds = %232
  %243 = load i64, i64* %13, align 8
  %244 = icmp ne i64 %243, 0
  br i1 %244, label %245, label %258

245:                                              ; preds = %242
  %246 = load %struct.ocfs2_refcount_tree*, %struct.ocfs2_refcount_tree** %25, align 8
  %247 = icmp ne %struct.ocfs2_refcount_tree* %246, null
  br i1 %247, label %258, label %248

248:                                              ; preds = %245
  %249 = load %struct.ocfs2_super*, %struct.ocfs2_super** %4, align 8
  %250 = load i64, i64* %22, align 8
  %251 = call i32 @ocfs2_lock_refcount_tree(%struct.ocfs2_super* %249, i64 %250, i32 1, %struct.ocfs2_refcount_tree** %25, i32* null)
  store i32 %251, i32* %7, align 4
  %252 = load i32, i32* %7, align 4
  %253 = icmp ne i32 %252, 0
  br i1 %253, label %254, label %257

254:                                              ; preds = %248
  %255 = load i32, i32* %7, align 4
  %256 = call i32 @mlog_errno(i32 %255)
  br label %274

257:                                              ; preds = %248
  br label %258

258:                                              ; preds = %257, %245, %242, %232
  %259 = load %struct.inode*, %struct.inode** %5, align 8
  %260 = load i64, i64* %12, align 8
  %261 = load i64, i64* %14, align 8
  %262 = load i64, i64* %13, align 8
  %263 = load i32, i32* %9, align 4
  %264 = load i64, i64* %22, align 8
  %265 = call i32 @ocfs2_remove_btree_range(%struct.inode* %259, %struct.ocfs2_extent_tree* %23, i64 %260, i64 %261, i64 %262, i32 %263, %struct.ocfs2_cached_dealloc_ctxt* %24, i64 %264, i32 1)
  store i32 %265, i32* %7, align 4
  %266 = load i32, i32* %7, align 4
  %267 = icmp slt i32 %266, 0
  br i1 %267, label %268, label %271

268:                                              ; preds = %258
  %269 = load i32, i32* %7, align 4
  %270 = call i32 @mlog_errno(i32 %269)
  br label %274

271:                                              ; preds = %258
  %272 = load %struct.ocfs2_path*, %struct.ocfs2_path** %19, align 8
  %273 = call i32 @ocfs2_reinit_path(%struct.ocfs2_path* %272, i32 1)
  br label %65

274:                                              ; preds = %268, %254, %229, %173, %104, %80, %71, %56
  %275 = load %struct.ocfs2_refcount_tree*, %struct.ocfs2_refcount_tree** %25, align 8
  %276 = icmp ne %struct.ocfs2_refcount_tree* %275, null
  br i1 %276, label %277, label %281

277:                                              ; preds = %274
  %278 = load %struct.ocfs2_super*, %struct.ocfs2_super** %4, align 8
  %279 = load %struct.ocfs2_refcount_tree*, %struct.ocfs2_refcount_tree** %25, align 8
  %280 = call i32 @ocfs2_unlock_refcount_tree(%struct.ocfs2_super* %278, %struct.ocfs2_refcount_tree* %279, i32 1)
  br label %281

281:                                              ; preds = %277, %274
  %282 = load %struct.ocfs2_super*, %struct.ocfs2_super** %4, align 8
  %283 = call i32 @ocfs2_schedule_truncate_log_flush(%struct.ocfs2_super* %282, i32 1)
  %284 = load %struct.ocfs2_super*, %struct.ocfs2_super** %4, align 8
  %285 = call i32 @ocfs2_run_deallocs(%struct.ocfs2_super* %284, %struct.ocfs2_cached_dealloc_ctxt* %24)
  %286 = load %struct.ocfs2_path*, %struct.ocfs2_path** %19, align 8
  %287 = call i32 @ocfs2_free_path(%struct.ocfs2_path* %286)
  %288 = load i32, i32* %7, align 4
  ret i32 %288
}

declare dso_local i64 @le64_to_cpu(i32) #1

declare dso_local i32 @ocfs2_init_dinode_extent_tree(%struct.ocfs2_extent_tree*, i32, %struct.buffer_head*) #1

declare dso_local i32 @INODE_CACHE(%struct.inode*) #1

declare dso_local i32 @ocfs2_init_dealloc_ctxt(%struct.ocfs2_cached_dealloc_ctxt*) #1

declare dso_local i64 @ocfs2_clusters_for_bytes(i32, i32) #1

declare dso_local i32 @i_size_read(%struct.inode*) #1

declare dso_local %struct.ocfs2_path* @ocfs2_new_path(%struct.buffer_head*, %struct.ocfs2_extent_list*, i32) #1

declare dso_local i32 @mlog_errno(i32) #1

declare dso_local i32 @ocfs2_extent_map_trunc(%struct.inode*, i64) #1

declare dso_local %struct.TYPE_6__* @OCFS2_I(%struct.inode*) #1

declare dso_local i32 @ocfs2_find_path(i32, %struct.ocfs2_path*, i32) #1

declare dso_local i32 @trace_ocfs2_commit_truncate(i64, i64, i64, i32) #1

declare dso_local %struct.ocfs2_extent_list* @path_leaf_el(%struct.ocfs2_path*) #1

declare dso_local i32 @le16_to_cpu(i64) #1

declare dso_local i32 @ocfs2_error(i32, i8*, i64, i64) #1

declare dso_local %struct.TYPE_5__* @path_leaf_bh(%struct.ocfs2_path*) #1

declare dso_local i64 @le32_to_cpu(i32) #1

declare dso_local i64 @ocfs2_rec_clusters(%struct.ocfs2_extent_list*, %struct.ocfs2_extent_rec*) #1

declare dso_local i64 @ocfs2_is_empty_extent(%struct.ocfs2_extent_rec*) #1

declare dso_local i32 @mlog(i32, i8*, i32, i32) #1

declare dso_local i32 @ocfs2_remove_rightmost_empty_extent(%struct.ocfs2_super*, %struct.ocfs2_extent_tree*, %struct.ocfs2_path*, %struct.ocfs2_cached_dealloc_ctxt*) #1

declare dso_local i32 @ocfs2_reinit_path(%struct.ocfs2_path*, i32) #1

declare dso_local i64 @ocfs2_clusters_to_blocks(i32, i64) #1

declare dso_local i64 @ocfs2_blocks_to_clusters(i32, i64) #1

declare dso_local i32 @ocfs2_lock_refcount_tree(%struct.ocfs2_super*, i64, i32, %struct.ocfs2_refcount_tree**, i32*) #1

declare dso_local i32 @ocfs2_remove_btree_range(%struct.inode*, %struct.ocfs2_extent_tree*, i64, i64, i64, i32, %struct.ocfs2_cached_dealloc_ctxt*, i64, i32) #1

declare dso_local i32 @ocfs2_unlock_refcount_tree(%struct.ocfs2_super*, %struct.ocfs2_refcount_tree*, i32) #1

declare dso_local i32 @ocfs2_schedule_truncate_log_flush(%struct.ocfs2_super*, i32) #1

declare dso_local i32 @ocfs2_run_deallocs(%struct.ocfs2_super*, %struct.ocfs2_cached_dealloc_ctxt*) #1

declare dso_local i32 @ocfs2_free_path(%struct.ocfs2_path*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
