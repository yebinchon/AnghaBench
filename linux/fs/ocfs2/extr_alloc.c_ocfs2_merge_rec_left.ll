; ModuleID = '/home/carl/AnghaBench/linux/fs/ocfs2/extr_alloc.c_ocfs2_merge_rec_left.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ocfs2/extr_alloc.c_ocfs2_merge_rec_left.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ocfs2_path = type { %struct.TYPE_9__* }
%struct.TYPE_9__ = type { %struct.buffer_head* }
%struct.buffer_head = type { i32 }
%struct.TYPE_10__ = type { i32 }
%struct.ocfs2_extent_tree = type { i32 }
%struct.ocfs2_extent_rec = type { i32, i32, i32 }
%struct.ocfs2_cached_dealloc_ctxt = type { i32 }
%struct.ocfs2_extent_list = type { i32, %struct.ocfs2_extent_rec*, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ocfs2_path*, %struct.TYPE_10__*, %struct.ocfs2_extent_tree*, %struct.ocfs2_extent_rec*, %struct.ocfs2_cached_dealloc_ctxt*, i32)* @ocfs2_merge_rec_left to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ocfs2_merge_rec_left(%struct.ocfs2_path* %0, %struct.TYPE_10__* %1, %struct.ocfs2_extent_tree* %2, %struct.ocfs2_extent_rec* %3, %struct.ocfs2_cached_dealloc_ctxt* %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.ocfs2_path*, align 8
  %9 = alloca %struct.TYPE_10__*, align 8
  %10 = alloca %struct.ocfs2_extent_tree*, align 8
  %11 = alloca %struct.ocfs2_extent_rec*, align 8
  %12 = alloca %struct.ocfs2_cached_dealloc_ctxt*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca %struct.ocfs2_extent_rec*, align 8
  %20 = alloca %struct.ocfs2_extent_rec*, align 8
  %21 = alloca %struct.ocfs2_extent_list*, align 8
  %22 = alloca %struct.buffer_head*, align 8
  %23 = alloca %struct.buffer_head*, align 8
  %24 = alloca %struct.ocfs2_path*, align 8
  %25 = alloca %struct.ocfs2_extent_list*, align 8
  store %struct.ocfs2_path* %0, %struct.ocfs2_path** %8, align 8
  store %struct.TYPE_10__* %1, %struct.TYPE_10__** %9, align 8
  store %struct.ocfs2_extent_tree* %2, %struct.ocfs2_extent_tree** %10, align 8
  store %struct.ocfs2_extent_rec* %3, %struct.ocfs2_extent_rec** %11, align 8
  store %struct.ocfs2_cached_dealloc_ctxt* %4, %struct.ocfs2_cached_dealloc_ctxt** %12, align 8
  store i32 %5, i32* %13, align 4
  store i32 0, i32* %16, align 4
  store i32 0, i32* %17, align 4
  %26 = load %struct.ocfs2_extent_rec*, %struct.ocfs2_extent_rec** %11, align 8
  %27 = getelementptr inbounds %struct.ocfs2_extent_rec, %struct.ocfs2_extent_rec* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @le16_to_cpu(i32 %28)
  store i32 %29, i32* %18, align 4
  %30 = load %struct.ocfs2_path*, %struct.ocfs2_path** %8, align 8
  %31 = call %struct.ocfs2_extent_list* @path_leaf_el(%struct.ocfs2_path* %30)
  store %struct.ocfs2_extent_list* %31, %struct.ocfs2_extent_list** %21, align 8
  %32 = load %struct.ocfs2_path*, %struct.ocfs2_path** %8, align 8
  %33 = call %struct.buffer_head* @path_leaf_bh(%struct.ocfs2_path* %32)
  store %struct.buffer_head* %33, %struct.buffer_head** %22, align 8
  store %struct.buffer_head* null, %struct.buffer_head** %23, align 8
  store %struct.ocfs2_path* null, %struct.ocfs2_path** %24, align 8
  %34 = load i32, i32* %13, align 4
  %35 = icmp slt i32 %34, 0
  %36 = zext i1 %35 to i32
  %37 = call i32 @BUG_ON(i32 %36)
  %38 = load %struct.ocfs2_extent_list*, %struct.ocfs2_extent_list** %21, align 8
  %39 = getelementptr inbounds %struct.ocfs2_extent_list, %struct.ocfs2_extent_list* %38, i32 0, i32 1
  %40 = load %struct.ocfs2_extent_rec*, %struct.ocfs2_extent_rec** %39, align 8
  %41 = load i32, i32* %13, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds %struct.ocfs2_extent_rec, %struct.ocfs2_extent_rec* %40, i64 %42
  store %struct.ocfs2_extent_rec* %43, %struct.ocfs2_extent_rec** %20, align 8
  %44 = load i32, i32* %13, align 4
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %46, label %185

46:                                               ; preds = %6
  %47 = load %struct.ocfs2_extent_tree*, %struct.ocfs2_extent_tree** %10, align 8
  %48 = load %struct.ocfs2_path*, %struct.ocfs2_path** %8, align 8
  %49 = call i32 @ocfs2_get_left_path(%struct.ocfs2_extent_tree* %47, %struct.ocfs2_path* %48, %struct.ocfs2_path** %24)
  store i32 %49, i32* %14, align 4
  %50 = load i32, i32* %14, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %56

52:                                               ; preds = %46
  %53 = load i32, i32* %14, align 4
  %54 = call i32 @mlog_errno(i32 %53)
  %55 = load i32, i32* %14, align 4
  store i32 %55, i32* %7, align 4
  br label %314

56:                                               ; preds = %46
  %57 = load %struct.ocfs2_path*, %struct.ocfs2_path** %24, align 8
  %58 = call %struct.ocfs2_extent_list* @path_leaf_el(%struct.ocfs2_path* %57)
  store %struct.ocfs2_extent_list* %58, %struct.ocfs2_extent_list** %25, align 8
  %59 = load %struct.ocfs2_extent_list*, %struct.ocfs2_extent_list** %25, align 8
  %60 = getelementptr inbounds %struct.ocfs2_extent_list, %struct.ocfs2_extent_list* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = call i32 @le16_to_cpu(i32 %61)
  %63 = load %struct.ocfs2_extent_list*, %struct.ocfs2_extent_list** %25, align 8
  %64 = getelementptr inbounds %struct.ocfs2_extent_list, %struct.ocfs2_extent_list* %63, i32 0, i32 2
  %65 = load i32, i32* %64, align 8
  %66 = call i32 @le16_to_cpu(i32 %65)
  %67 = icmp ne i32 %62, %66
  %68 = zext i1 %67 to i32
  %69 = call i32 @BUG_ON(i32 %68)
  %70 = load %struct.ocfs2_extent_list*, %struct.ocfs2_extent_list** %25, align 8
  %71 = getelementptr inbounds %struct.ocfs2_extent_list, %struct.ocfs2_extent_list* %70, i32 0, i32 1
  %72 = load %struct.ocfs2_extent_rec*, %struct.ocfs2_extent_rec** %71, align 8
  %73 = load %struct.ocfs2_extent_list*, %struct.ocfs2_extent_list** %25, align 8
  %74 = getelementptr inbounds %struct.ocfs2_extent_list, %struct.ocfs2_extent_list* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = call i32 @le16_to_cpu(i32 %75)
  %77 = sub nsw i32 %76, 1
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds %struct.ocfs2_extent_rec, %struct.ocfs2_extent_rec* %72, i64 %78
  store %struct.ocfs2_extent_rec* %79, %struct.ocfs2_extent_rec** %19, align 8
  %80 = load %struct.ocfs2_extent_rec*, %struct.ocfs2_extent_rec** %19, align 8
  %81 = getelementptr inbounds %struct.ocfs2_extent_rec, %struct.ocfs2_extent_rec* %80, i32 0, i32 2
  %82 = load i32, i32* %81, align 4
  %83 = call i64 @le32_to_cpu(i32 %82)
  %84 = load %struct.ocfs2_extent_rec*, %struct.ocfs2_extent_rec** %19, align 8
  %85 = getelementptr inbounds %struct.ocfs2_extent_rec, %struct.ocfs2_extent_rec* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = call i32 @le16_to_cpu(i32 %86)
  %88 = sext i32 %87 to i64
  %89 = add nsw i64 %83, %88
  %90 = load %struct.ocfs2_extent_rec*, %struct.ocfs2_extent_rec** %11, align 8
  %91 = getelementptr inbounds %struct.ocfs2_extent_rec, %struct.ocfs2_extent_rec* %90, i32 0, i32 2
  %92 = load i32, i32* %91, align 4
  %93 = call i64 @le32_to_cpu(i32 %92)
  %94 = icmp ne i64 %89, %93
  %95 = zext i1 %94 to i32
  %96 = call i32 @BUG_ON(i32 %95)
  %97 = load %struct.ocfs2_extent_tree*, %struct.ocfs2_extent_tree** %10, align 8
  %98 = load %struct.ocfs2_path*, %struct.ocfs2_path** %24, align 8
  %99 = load %struct.ocfs2_path*, %struct.ocfs2_path** %8, align 8
  %100 = call i32 @ocfs2_find_subtree_root(%struct.ocfs2_extent_tree* %97, %struct.ocfs2_path* %98, %struct.ocfs2_path* %99)
  store i32 %100, i32* %16, align 4
  %101 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %102 = load i32, i32* %16, align 4
  %103 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %104 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 4
  %106 = load %struct.ocfs2_path*, %struct.ocfs2_path** %24, align 8
  %107 = call i32 @ocfs2_extend_rotate_transaction(%struct.TYPE_10__* %101, i32 %102, i32 %105, %struct.ocfs2_path* %106)
  store i32 %107, i32* %14, align 4
  %108 = load i32, i32* %14, align 4
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %110, label %113

110:                                              ; preds = %56
  %111 = load i32, i32* %14, align 4
  %112 = call i32 @mlog_errno(i32 %111)
  br label %310

113:                                              ; preds = %56
  %114 = load %struct.ocfs2_path*, %struct.ocfs2_path** %24, align 8
  %115 = getelementptr inbounds %struct.ocfs2_path, %struct.ocfs2_path* %114, i32 0, i32 0
  %116 = load %struct.TYPE_9__*, %struct.TYPE_9__** %115, align 8
  %117 = load i32, i32* %16, align 4
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %116, i64 %118
  %120 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %119, i32 0, i32 0
  %121 = load %struct.buffer_head*, %struct.buffer_head** %120, align 8
  store %struct.buffer_head* %121, %struct.buffer_head** %23, align 8
  %122 = load %struct.buffer_head*, %struct.buffer_head** %23, align 8
  %123 = load %struct.ocfs2_path*, %struct.ocfs2_path** %8, align 8
  %124 = getelementptr inbounds %struct.ocfs2_path, %struct.ocfs2_path* %123, i32 0, i32 0
  %125 = load %struct.TYPE_9__*, %struct.TYPE_9__** %124, align 8
  %126 = load i32, i32* %16, align 4
  %127 = sext i32 %126 to i64
  %128 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %125, i64 %127
  %129 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %128, i32 0, i32 0
  %130 = load %struct.buffer_head*, %struct.buffer_head** %129, align 8
  %131 = icmp ne %struct.buffer_head* %122, %130
  %132 = zext i1 %131 to i32
  %133 = call i32 @BUG_ON(i32 %132)
  %134 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %135 = load %struct.ocfs2_extent_tree*, %struct.ocfs2_extent_tree** %10, align 8
  %136 = getelementptr inbounds %struct.ocfs2_extent_tree, %struct.ocfs2_extent_tree* %135, i32 0, i32 0
  %137 = load i32, i32* %136, align 4
  %138 = load %struct.ocfs2_path*, %struct.ocfs2_path** %8, align 8
  %139 = load i32, i32* %16, align 4
  %140 = call i32 @ocfs2_path_bh_journal_access(%struct.TYPE_10__* %134, i32 %137, %struct.ocfs2_path* %138, i32 %139)
  store i32 %140, i32* %14, align 4
  %141 = load i32, i32* %14, align 4
  %142 = icmp ne i32 %141, 0
  br i1 %142, label %143, label %146

143:                                              ; preds = %113
  %144 = load i32, i32* %14, align 4
  %145 = call i32 @mlog_errno(i32 %144)
  br label %310

146:                                              ; preds = %113
  %147 = load i32, i32* %16, align 4
  %148 = add nsw i32 %147, 1
  store i32 %148, i32* %15, align 4
  br label %149

149:                                              ; preds = %181, %146
  %150 = load i32, i32* %15, align 4
  %151 = load %struct.ocfs2_path*, %struct.ocfs2_path** %8, align 8
  %152 = call i32 @path_num_items(%struct.ocfs2_path* %151)
  %153 = icmp slt i32 %150, %152
  br i1 %153, label %154, label %184

154:                                              ; preds = %149
  %155 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %156 = load %struct.ocfs2_extent_tree*, %struct.ocfs2_extent_tree** %10, align 8
  %157 = getelementptr inbounds %struct.ocfs2_extent_tree, %struct.ocfs2_extent_tree* %156, i32 0, i32 0
  %158 = load i32, i32* %157, align 4
  %159 = load %struct.ocfs2_path*, %struct.ocfs2_path** %8, align 8
  %160 = load i32, i32* %15, align 4
  %161 = call i32 @ocfs2_path_bh_journal_access(%struct.TYPE_10__* %155, i32 %158, %struct.ocfs2_path* %159, i32 %160)
  store i32 %161, i32* %14, align 4
  %162 = load i32, i32* %14, align 4
  %163 = icmp ne i32 %162, 0
  br i1 %163, label %164, label %167

164:                                              ; preds = %154
  %165 = load i32, i32* %14, align 4
  %166 = call i32 @mlog_errno(i32 %165)
  br label %310

167:                                              ; preds = %154
  %168 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %169 = load %struct.ocfs2_extent_tree*, %struct.ocfs2_extent_tree** %10, align 8
  %170 = getelementptr inbounds %struct.ocfs2_extent_tree, %struct.ocfs2_extent_tree* %169, i32 0, i32 0
  %171 = load i32, i32* %170, align 4
  %172 = load %struct.ocfs2_path*, %struct.ocfs2_path** %24, align 8
  %173 = load i32, i32* %15, align 4
  %174 = call i32 @ocfs2_path_bh_journal_access(%struct.TYPE_10__* %168, i32 %171, %struct.ocfs2_path* %172, i32 %173)
  store i32 %174, i32* %14, align 4
  %175 = load i32, i32* %14, align 4
  %176 = icmp ne i32 %175, 0
  br i1 %176, label %177, label %180

177:                                              ; preds = %167
  %178 = load i32, i32* %14, align 4
  %179 = call i32 @mlog_errno(i32 %178)
  br label %310

180:                                              ; preds = %167
  br label %181

181:                                              ; preds = %180
  %182 = load i32, i32* %15, align 4
  %183 = add nsw i32 %182, 1
  store i32 %183, i32* %15, align 4
  br label %149

184:                                              ; preds = %149
  br label %201

185:                                              ; preds = %6
  %186 = load %struct.ocfs2_extent_list*, %struct.ocfs2_extent_list** %21, align 8
  %187 = getelementptr inbounds %struct.ocfs2_extent_list, %struct.ocfs2_extent_list* %186, i32 0, i32 1
  %188 = load %struct.ocfs2_extent_rec*, %struct.ocfs2_extent_rec** %187, align 8
  %189 = load i32, i32* %13, align 4
  %190 = sub nsw i32 %189, 1
  %191 = sext i32 %190 to i64
  %192 = getelementptr inbounds %struct.ocfs2_extent_rec, %struct.ocfs2_extent_rec* %188, i64 %191
  store %struct.ocfs2_extent_rec* %192, %struct.ocfs2_extent_rec** %19, align 8
  %193 = load %struct.ocfs2_extent_list*, %struct.ocfs2_extent_list** %21, align 8
  %194 = getelementptr inbounds %struct.ocfs2_extent_list, %struct.ocfs2_extent_list* %193, i32 0, i32 1
  %195 = load %struct.ocfs2_extent_rec*, %struct.ocfs2_extent_rec** %194, align 8
  %196 = getelementptr inbounds %struct.ocfs2_extent_rec, %struct.ocfs2_extent_rec* %195, i64 0
  %197 = call i64 @ocfs2_is_empty_extent(%struct.ocfs2_extent_rec* %196)
  %198 = icmp ne i64 %197, 0
  br i1 %198, label %199, label %200

199:                                              ; preds = %185
  store i32 1, i32* %17, align 4
  br label %200

200:                                              ; preds = %199, %185
  br label %201

201:                                              ; preds = %200, %184
  %202 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %203 = load %struct.ocfs2_extent_tree*, %struct.ocfs2_extent_tree** %10, align 8
  %204 = getelementptr inbounds %struct.ocfs2_extent_tree, %struct.ocfs2_extent_tree* %203, i32 0, i32 0
  %205 = load i32, i32* %204, align 4
  %206 = load %struct.ocfs2_path*, %struct.ocfs2_path** %8, align 8
  %207 = load %struct.ocfs2_path*, %struct.ocfs2_path** %8, align 8
  %208 = call i32 @path_num_items(%struct.ocfs2_path* %207)
  %209 = sub nsw i32 %208, 1
  %210 = call i32 @ocfs2_path_bh_journal_access(%struct.TYPE_10__* %202, i32 %205, %struct.ocfs2_path* %206, i32 %209)
  store i32 %210, i32* %14, align 4
  %211 = load i32, i32* %14, align 4
  %212 = icmp ne i32 %211, 0
  br i1 %212, label %213, label %216

213:                                              ; preds = %201
  %214 = load i32, i32* %14, align 4
  %215 = call i32 @mlog_errno(i32 %214)
  br label %310

216:                                              ; preds = %201
  %217 = load i32, i32* %17, align 4
  %218 = icmp ne i32 %217, 0
  br i1 %218, label %219, label %227

219:                                              ; preds = %216
  %220 = load i32, i32* %13, align 4
  %221 = icmp eq i32 %220, 1
  br i1 %221, label %222, label %227

222:                                              ; preds = %219
  %223 = load %struct.ocfs2_extent_rec*, %struct.ocfs2_extent_rec** %19, align 8
  %224 = load %struct.ocfs2_extent_rec*, %struct.ocfs2_extent_rec** %11, align 8
  %225 = bitcast %struct.ocfs2_extent_rec* %223 to i8*
  %226 = bitcast %struct.ocfs2_extent_rec* %224 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %225, i8* align 4 %226, i64 12, i1 false)
  br label %232

227:                                              ; preds = %219, %216
  %228 = load %struct.ocfs2_extent_rec*, %struct.ocfs2_extent_rec** %19, align 8
  %229 = getelementptr inbounds %struct.ocfs2_extent_rec, %struct.ocfs2_extent_rec* %228, i32 0, i32 0
  %230 = load i32, i32* %18, align 4
  %231 = call i32 @le16_add_cpu(i32* %229, i32 %230)
  br label %232

232:                                              ; preds = %227, %222
  %233 = load %struct.ocfs2_extent_rec*, %struct.ocfs2_extent_rec** %20, align 8
  %234 = getelementptr inbounds %struct.ocfs2_extent_rec, %struct.ocfs2_extent_rec* %233, i32 0, i32 2
  %235 = load i32, i32* %18, align 4
  %236 = call i32 @le32_add_cpu(i32* %234, i32 %235)
  %237 = load %struct.ocfs2_extent_rec*, %struct.ocfs2_extent_rec** %20, align 8
  %238 = getelementptr inbounds %struct.ocfs2_extent_rec, %struct.ocfs2_extent_rec* %237, i32 0, i32 1
  %239 = load %struct.ocfs2_extent_tree*, %struct.ocfs2_extent_tree** %10, align 8
  %240 = getelementptr inbounds %struct.ocfs2_extent_tree, %struct.ocfs2_extent_tree* %239, i32 0, i32 0
  %241 = load i32, i32* %240, align 4
  %242 = call i32 @ocfs2_metadata_cache_get_super(i32 %241)
  %243 = load i32, i32* %18, align 4
  %244 = call i32 @ocfs2_clusters_to_blocks(i32 %242, i32 %243)
  %245 = call i32 @le64_add_cpu(i32* %238, i32 %244)
  %246 = load %struct.ocfs2_extent_rec*, %struct.ocfs2_extent_rec** %20, align 8
  %247 = getelementptr inbounds %struct.ocfs2_extent_rec, %struct.ocfs2_extent_rec* %246, i32 0, i32 0
  %248 = load i32, i32* %18, align 4
  %249 = sub i32 0, %248
  %250 = call i32 @le16_add_cpu(i32* %247, i32 %249)
  %251 = load %struct.ocfs2_extent_list*, %struct.ocfs2_extent_list** %21, align 8
  %252 = load i32, i32* %13, align 4
  %253 = call i32 @ocfs2_cleanup_merge(%struct.ocfs2_extent_list* %251, i32 %252)
  %254 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %255 = load %struct.buffer_head*, %struct.buffer_head** %22, align 8
  %256 = call i32 @ocfs2_journal_dirty(%struct.TYPE_10__* %254, %struct.buffer_head* %255)
  %257 = load %struct.ocfs2_path*, %struct.ocfs2_path** %24, align 8
  %258 = icmp ne %struct.ocfs2_path* %257, null
  br i1 %258, label %259, label %309

259:                                              ; preds = %232
  %260 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %261 = load %struct.ocfs2_path*, %struct.ocfs2_path** %24, align 8
  %262 = call %struct.buffer_head* @path_leaf_bh(%struct.ocfs2_path* %261)
  %263 = call i32 @ocfs2_journal_dirty(%struct.TYPE_10__* %260, %struct.buffer_head* %262)
  %264 = load %struct.ocfs2_extent_rec*, %struct.ocfs2_extent_rec** %20, align 8
  %265 = getelementptr inbounds %struct.ocfs2_extent_rec, %struct.ocfs2_extent_rec* %264, i32 0, i32 0
  %266 = load i32, i32* %265, align 4
  %267 = call i32 @le16_to_cpu(i32 %266)
  %268 = icmp eq i32 %267, 0
  br i1 %268, label %269, label %302

269:                                              ; preds = %259
  %270 = load %struct.ocfs2_extent_list*, %struct.ocfs2_extent_list** %21, align 8
  %271 = getelementptr inbounds %struct.ocfs2_extent_list, %struct.ocfs2_extent_list* %270, i32 0, i32 0
  %272 = load i32, i32* %271, align 8
  %273 = call i32 @le16_to_cpu(i32 %272)
  %274 = icmp eq i32 %273, 1
  br i1 %274, label %275, label %302

275:                                              ; preds = %269
  %276 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %277 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %278 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %277, i32 0, i32 0
  %279 = load i32, i32* %278, align 4
  %280 = load %struct.ocfs2_path*, %struct.ocfs2_path** %8, align 8
  %281 = call i32 @ocfs2_extend_rotate_transaction(%struct.TYPE_10__* %276, i32 0, i32 %279, %struct.ocfs2_path* %280)
  store i32 %281, i32* %14, align 4
  %282 = load i32, i32* %14, align 4
  %283 = icmp ne i32 %282, 0
  br i1 %283, label %284, label %287

284:                                              ; preds = %275
  %285 = load i32, i32* %14, align 4
  %286 = call i32 @mlog_errno(i32 %285)
  br label %310

287:                                              ; preds = %275
  %288 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %289 = load %struct.ocfs2_extent_tree*, %struct.ocfs2_extent_tree** %10, align 8
  %290 = load %struct.ocfs2_path*, %struct.ocfs2_path** %8, align 8
  %291 = load %struct.ocfs2_cached_dealloc_ctxt*, %struct.ocfs2_cached_dealloc_ctxt** %12, align 8
  %292 = call i32 @ocfs2_remove_rightmost_path(%struct.TYPE_10__* %288, %struct.ocfs2_extent_tree* %289, %struct.ocfs2_path* %290, %struct.ocfs2_cached_dealloc_ctxt* %291)
  store i32 %292, i32* %14, align 4
  %293 = load i32, i32* %14, align 4
  %294 = icmp ne i32 %293, 0
  br i1 %294, label %295, label %298

295:                                              ; preds = %287
  %296 = load i32, i32* %14, align 4
  %297 = call i32 @mlog_errno(i32 %296)
  br label %310

298:                                              ; preds = %287
  %299 = load %struct.ocfs2_path*, %struct.ocfs2_path** %8, align 8
  %300 = load %struct.ocfs2_path*, %struct.ocfs2_path** %24, align 8
  %301 = call i32 @ocfs2_mv_path(%struct.ocfs2_path* %299, %struct.ocfs2_path* %300)
  store %struct.ocfs2_path* null, %struct.ocfs2_path** %24, align 8
  br label %308

302:                                              ; preds = %269, %259
  %303 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %304 = load %struct.ocfs2_path*, %struct.ocfs2_path** %24, align 8
  %305 = load %struct.ocfs2_path*, %struct.ocfs2_path** %8, align 8
  %306 = load i32, i32* %16, align 4
  %307 = call i32 @ocfs2_complete_edge_insert(%struct.TYPE_10__* %303, %struct.ocfs2_path* %304, %struct.ocfs2_path* %305, i32 %306)
  br label %308

308:                                              ; preds = %302, %298
  br label %309

309:                                              ; preds = %308, %232
  br label %310

310:                                              ; preds = %309, %295, %284, %213, %177, %164, %143, %110
  %311 = load %struct.ocfs2_path*, %struct.ocfs2_path** %24, align 8
  %312 = call i32 @ocfs2_free_path(%struct.ocfs2_path* %311)
  %313 = load i32, i32* %14, align 4
  store i32 %313, i32* %7, align 4
  br label %314

314:                                              ; preds = %310, %52
  %315 = load i32, i32* %7, align 4
  ret i32 %315
}

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local %struct.ocfs2_extent_list* @path_leaf_el(%struct.ocfs2_path*) #1

declare dso_local %struct.buffer_head* @path_leaf_bh(%struct.ocfs2_path*) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @ocfs2_get_left_path(%struct.ocfs2_extent_tree*, %struct.ocfs2_path*, %struct.ocfs2_path**) #1

declare dso_local i32 @mlog_errno(i32) #1

declare dso_local i64 @le32_to_cpu(i32) #1

declare dso_local i32 @ocfs2_find_subtree_root(%struct.ocfs2_extent_tree*, %struct.ocfs2_path*, %struct.ocfs2_path*) #1

declare dso_local i32 @ocfs2_extend_rotate_transaction(%struct.TYPE_10__*, i32, i32, %struct.ocfs2_path*) #1

declare dso_local i32 @ocfs2_path_bh_journal_access(%struct.TYPE_10__*, i32, %struct.ocfs2_path*, i32) #1

declare dso_local i32 @path_num_items(%struct.ocfs2_path*) #1

declare dso_local i64 @ocfs2_is_empty_extent(%struct.ocfs2_extent_rec*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @le16_add_cpu(i32*, i32) #1

declare dso_local i32 @le32_add_cpu(i32*, i32) #1

declare dso_local i32 @le64_add_cpu(i32*, i32) #1

declare dso_local i32 @ocfs2_clusters_to_blocks(i32, i32) #1

declare dso_local i32 @ocfs2_metadata_cache_get_super(i32) #1

declare dso_local i32 @ocfs2_cleanup_merge(%struct.ocfs2_extent_list*, i32) #1

declare dso_local i32 @ocfs2_journal_dirty(%struct.TYPE_10__*, %struct.buffer_head*) #1

declare dso_local i32 @ocfs2_remove_rightmost_path(%struct.TYPE_10__*, %struct.ocfs2_extent_tree*, %struct.ocfs2_path*, %struct.ocfs2_cached_dealloc_ctxt*) #1

declare dso_local i32 @ocfs2_mv_path(%struct.ocfs2_path*, %struct.ocfs2_path*) #1

declare dso_local i32 @ocfs2_complete_edge_insert(%struct.TYPE_10__*, %struct.ocfs2_path*, %struct.ocfs2_path*, i32) #1

declare dso_local i32 @ocfs2_free_path(%struct.ocfs2_path*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
