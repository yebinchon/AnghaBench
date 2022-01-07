; ModuleID = '/home/carl/AnghaBench/linux/fs/ocfs2/extr_alloc.c_ocfs2_truncate_rec.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ocfs2/extr_alloc.c_ocfs2_truncate_rec.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32 }
%struct.ocfs2_extent_tree = type { i32 }
%struct.ocfs2_path = type { i64 }
%struct.ocfs2_cached_dealloc_ctxt = type { i32 }
%struct.super_block = type { i32 }
%struct.ocfs2_extent_list = type { %struct.ocfs2_extent_rec*, i32 }
%struct.ocfs2_extent_rec = type { i32, i32, i32 }
%struct.ocfs2_extent_block = type { i64 }
%struct.TYPE_12__ = type { i64 }

@ENOMEM = common dso_local global i32 0, align 4
@ML_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [56 x i8] c"Owner %llu: Invalid record truncate: (%u, %u) (%u, %u)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_11__*, %struct.ocfs2_extent_tree*, %struct.ocfs2_path*, i32, %struct.ocfs2_cached_dealloc_ctxt*, i64, i64)* @ocfs2_truncate_rec to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ocfs2_truncate_rec(%struct.TYPE_11__* %0, %struct.ocfs2_extent_tree* %1, %struct.ocfs2_path* %2, i32 %3, %struct.ocfs2_cached_dealloc_ctxt* %4, i64 %5, i64 %6) #0 {
  %8 = alloca %struct.TYPE_11__*, align 8
  %9 = alloca %struct.ocfs2_extent_tree*, align 8
  %10 = alloca %struct.ocfs2_path*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.ocfs2_cached_dealloc_ctxt*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i32, align 4
  %20 = alloca %struct.super_block*, align 8
  %21 = alloca %struct.ocfs2_path*, align 8
  %22 = alloca %struct.ocfs2_extent_list*, align 8
  %23 = alloca %struct.ocfs2_extent_rec*, align 8
  %24 = alloca %struct.ocfs2_extent_block*, align 8
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %8, align 8
  store %struct.ocfs2_extent_tree* %1, %struct.ocfs2_extent_tree** %9, align 8
  store %struct.ocfs2_path* %2, %struct.ocfs2_path** %10, align 8
  store i32 %3, i32* %11, align 4
  store %struct.ocfs2_cached_dealloc_ctxt* %4, %struct.ocfs2_cached_dealloc_ctxt** %12, align 8
  store i64 %5, i64* %13, align 8
  store i64 %6, i64* %14, align 8
  store i32 0, i32* %19, align 4
  %27 = load %struct.ocfs2_extent_tree*, %struct.ocfs2_extent_tree** %9, align 8
  %28 = getelementptr inbounds %struct.ocfs2_extent_tree, %struct.ocfs2_extent_tree* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call %struct.super_block* @ocfs2_metadata_cache_get_super(i32 %29)
  store %struct.super_block* %30, %struct.super_block** %20, align 8
  store %struct.ocfs2_path* null, %struct.ocfs2_path** %21, align 8
  %31 = load %struct.ocfs2_path*, %struct.ocfs2_path** %10, align 8
  %32 = call %struct.ocfs2_extent_list* @path_leaf_el(%struct.ocfs2_path* %31)
  store %struct.ocfs2_extent_list* %32, %struct.ocfs2_extent_list** %22, align 8
  %33 = load %struct.ocfs2_extent_list*, %struct.ocfs2_extent_list** %22, align 8
  %34 = getelementptr inbounds %struct.ocfs2_extent_list, %struct.ocfs2_extent_list* %33, i32 0, i32 0
  %35 = load %struct.ocfs2_extent_rec*, %struct.ocfs2_extent_rec** %34, align 8
  %36 = getelementptr inbounds %struct.ocfs2_extent_rec, %struct.ocfs2_extent_rec* %35, i64 0
  %37 = call i64 @ocfs2_is_empty_extent(%struct.ocfs2_extent_rec* %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %68

39:                                               ; preds = %7
  %40 = load i32, i32* %11, align 4
  %41 = icmp sgt i32 %40, 0
  br i1 %41, label %42, label %68

42:                                               ; preds = %39
  %43 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %44 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %45 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.ocfs2_path*, %struct.ocfs2_path** %10, align 8
  %48 = call i32 @ocfs2_extend_rotate_transaction(%struct.TYPE_11__* %43, i32 0, i32 %46, %struct.ocfs2_path* %47)
  store i32 %48, i32* %15, align 4
  %49 = load i32, i32* %15, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %54

51:                                               ; preds = %42
  %52 = load i32, i32* %15, align 4
  %53 = call i32 @mlog_errno(i32 %52)
  br label %334

54:                                               ; preds = %42
  %55 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %56 = load %struct.ocfs2_extent_tree*, %struct.ocfs2_extent_tree** %9, align 8
  %57 = load %struct.ocfs2_path*, %struct.ocfs2_path** %10, align 8
  %58 = load %struct.ocfs2_cached_dealloc_ctxt*, %struct.ocfs2_cached_dealloc_ctxt** %12, align 8
  %59 = call i32 @ocfs2_rotate_tree_left(%struct.TYPE_11__* %55, %struct.ocfs2_extent_tree* %56, %struct.ocfs2_path* %57, %struct.ocfs2_cached_dealloc_ctxt* %58)
  store i32 %59, i32* %15, align 4
  %60 = load i32, i32* %15, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %65

62:                                               ; preds = %54
  %63 = load i32, i32* %15, align 4
  %64 = call i32 @mlog_errno(i32 %63)
  br label %334

65:                                               ; preds = %54
  %66 = load i32, i32* %11, align 4
  %67 = add nsw i32 %66, -1
  store i32 %67, i32* %11, align 4
  br label %68

68:                                               ; preds = %65, %39, %7
  %69 = load i32, i32* %11, align 4
  %70 = load %struct.ocfs2_extent_list*, %struct.ocfs2_extent_list** %22, align 8
  %71 = getelementptr inbounds %struct.ocfs2_extent_list, %struct.ocfs2_extent_list* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 8
  %73 = call i32 @le16_to_cpu(i32 %72)
  %74 = sub nsw i32 %73, 1
  %75 = icmp eq i32 %69, %74
  br i1 %75, label %76, label %93

76:                                               ; preds = %68
  %77 = load %struct.ocfs2_path*, %struct.ocfs2_path** %10, align 8
  %78 = getelementptr inbounds %struct.ocfs2_path, %struct.ocfs2_path* %77, i32 0, i32 0
  %79 = load i64, i64* %78, align 8
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %93

81:                                               ; preds = %76
  %82 = load %struct.ocfs2_path*, %struct.ocfs2_path** %10, align 8
  %83 = call %struct.TYPE_12__* @path_leaf_bh(%struct.ocfs2_path* %82)
  %84 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %83, i32 0, i32 0
  %85 = load i64, i64* %84, align 8
  %86 = inttoptr i64 %85 to %struct.ocfs2_extent_block*
  store %struct.ocfs2_extent_block* %86, %struct.ocfs2_extent_block** %24, align 8
  %87 = load %struct.ocfs2_extent_block*, %struct.ocfs2_extent_block** %24, align 8
  %88 = getelementptr inbounds %struct.ocfs2_extent_block, %struct.ocfs2_extent_block* %87, i32 0, i32 0
  %89 = load i64, i64* %88, align 8
  %90 = icmp eq i64 %89, 0
  br i1 %90, label %91, label %92

91:                                               ; preds = %81
  store i32 1, i32* %19, align 4
  br label %92

92:                                               ; preds = %91, %81
  br label %93

93:                                               ; preds = %92, %76, %68
  %94 = load %struct.ocfs2_extent_list*, %struct.ocfs2_extent_list** %22, align 8
  %95 = getelementptr inbounds %struct.ocfs2_extent_list, %struct.ocfs2_extent_list* %94, i32 0, i32 0
  %96 = load %struct.ocfs2_extent_rec*, %struct.ocfs2_extent_rec** %95, align 8
  %97 = load i32, i32* %11, align 4
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds %struct.ocfs2_extent_rec, %struct.ocfs2_extent_rec* %96, i64 %98
  store %struct.ocfs2_extent_rec* %99, %struct.ocfs2_extent_rec** %23, align 8
  %100 = load i32, i32* %11, align 4
  %101 = icmp eq i32 %100, 0
  br i1 %101, label %102, label %156

102:                                              ; preds = %93
  %103 = load %struct.ocfs2_path*, %struct.ocfs2_path** %10, align 8
  %104 = getelementptr inbounds %struct.ocfs2_path, %struct.ocfs2_path* %103, i32 0, i32 0
  %105 = load i64, i64* %104, align 8
  %106 = icmp ne i64 %105, 0
  br i1 %106, label %107, label %156

107:                                              ; preds = %102
  %108 = load %struct.ocfs2_extent_rec*, %struct.ocfs2_extent_rec** %23, align 8
  %109 = getelementptr inbounds %struct.ocfs2_extent_rec, %struct.ocfs2_extent_rec* %108, i32 0, i32 1
  %110 = load i32, i32* %109, align 4
  %111 = call i64 @le32_to_cpu(i32 %110)
  %112 = load i64, i64* %13, align 8
  %113 = icmp eq i64 %111, %112
  br i1 %113, label %114, label %156

114:                                              ; preds = %107
  %115 = load %struct.super_block*, %struct.super_block** %20, align 8
  %116 = load %struct.ocfs2_path*, %struct.ocfs2_path** %10, align 8
  %117 = call i32 @ocfs2_find_cpos_for_left_leaf(%struct.super_block* %115, %struct.ocfs2_path* %116, i64* %16)
  store i32 %117, i32* %15, align 4
  %118 = load i32, i32* %15, align 4
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %120, label %123

120:                                              ; preds = %114
  %121 = load i32, i32* %15, align 4
  %122 = call i32 @mlog_errno(i32 %121)
  br label %334

123:                                              ; preds = %114
  %124 = load i64, i64* %16, align 8
  %125 = icmp ne i64 %124, 0
  br i1 %125, label %126, label %155

126:                                              ; preds = %123
  %127 = load %struct.ocfs2_extent_list*, %struct.ocfs2_extent_list** %22, align 8
  %128 = getelementptr inbounds %struct.ocfs2_extent_list, %struct.ocfs2_extent_list* %127, i32 0, i32 1
  %129 = load i32, i32* %128, align 8
  %130 = call i32 @le16_to_cpu(i32 %129)
  %131 = icmp sgt i32 %130, 1
  br i1 %131, label %132, label %155

132:                                              ; preds = %126
  %133 = load %struct.ocfs2_path*, %struct.ocfs2_path** %10, align 8
  %134 = call %struct.ocfs2_path* @ocfs2_new_path_from_path(%struct.ocfs2_path* %133)
  store %struct.ocfs2_path* %134, %struct.ocfs2_path** %21, align 8
  %135 = load %struct.ocfs2_path*, %struct.ocfs2_path** %21, align 8
  %136 = icmp ne %struct.ocfs2_path* %135, null
  br i1 %136, label %142, label %137

137:                                              ; preds = %132
  %138 = load i32, i32* @ENOMEM, align 4
  %139 = sub nsw i32 0, %138
  store i32 %139, i32* %15, align 4
  %140 = load i32, i32* %15, align 4
  %141 = call i32 @mlog_errno(i32 %140)
  br label %334

142:                                              ; preds = %132
  %143 = load %struct.ocfs2_extent_tree*, %struct.ocfs2_extent_tree** %9, align 8
  %144 = getelementptr inbounds %struct.ocfs2_extent_tree, %struct.ocfs2_extent_tree* %143, i32 0, i32 0
  %145 = load i32, i32* %144, align 4
  %146 = load %struct.ocfs2_path*, %struct.ocfs2_path** %21, align 8
  %147 = load i64, i64* %16, align 8
  %148 = call i32 @ocfs2_find_path(i32 %145, %struct.ocfs2_path* %146, i64 %147)
  store i32 %148, i32* %15, align 4
  %149 = load i32, i32* %15, align 4
  %150 = icmp ne i32 %149, 0
  br i1 %150, label %151, label %154

151:                                              ; preds = %142
  %152 = load i32, i32* %15, align 4
  %153 = call i32 @mlog_errno(i32 %152)
  br label %334

154:                                              ; preds = %142
  br label %155

155:                                              ; preds = %154, %126, %123
  br label %156

156:                                              ; preds = %155, %107, %102, %93
  %157 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %158 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %159 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %158, i32 0, i32 0
  %160 = load i32, i32* %159, align 4
  %161 = load %struct.ocfs2_path*, %struct.ocfs2_path** %10, align 8
  %162 = call i32 @ocfs2_extend_rotate_transaction(%struct.TYPE_11__* %157, i32 0, i32 %160, %struct.ocfs2_path* %161)
  store i32 %162, i32* %15, align 4
  %163 = load i32, i32* %15, align 4
  %164 = icmp ne i32 %163, 0
  br i1 %164, label %165, label %168

165:                                              ; preds = %156
  %166 = load i32, i32* %15, align 4
  %167 = call i32 @mlog_errno(i32 %166)
  br label %334

168:                                              ; preds = %156
  %169 = load %struct.ocfs2_extent_tree*, %struct.ocfs2_extent_tree** %9, align 8
  %170 = getelementptr inbounds %struct.ocfs2_extent_tree, %struct.ocfs2_extent_tree* %169, i32 0, i32 0
  %171 = load i32, i32* %170, align 4
  %172 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %173 = load %struct.ocfs2_path*, %struct.ocfs2_path** %10, align 8
  %174 = call i32 @ocfs2_journal_access_path(i32 %171, %struct.TYPE_11__* %172, %struct.ocfs2_path* %173)
  store i32 %174, i32* %15, align 4
  %175 = load i32, i32* %15, align 4
  %176 = icmp ne i32 %175, 0
  br i1 %176, label %177, label %180

177:                                              ; preds = %168
  %178 = load i32, i32* %15, align 4
  %179 = call i32 @mlog_errno(i32 %178)
  br label %334

180:                                              ; preds = %168
  %181 = load %struct.ocfs2_extent_tree*, %struct.ocfs2_extent_tree** %9, align 8
  %182 = getelementptr inbounds %struct.ocfs2_extent_tree, %struct.ocfs2_extent_tree* %181, i32 0, i32 0
  %183 = load i32, i32* %182, align 4
  %184 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %185 = load %struct.ocfs2_path*, %struct.ocfs2_path** %21, align 8
  %186 = call i32 @ocfs2_journal_access_path(i32 %183, %struct.TYPE_11__* %184, %struct.ocfs2_path* %185)
  store i32 %186, i32* %15, align 4
  %187 = load i32, i32* %15, align 4
  %188 = icmp ne i32 %187, 0
  br i1 %188, label %189, label %192

189:                                              ; preds = %180
  %190 = load i32, i32* %15, align 4
  %191 = call i32 @mlog_errno(i32 %190)
  br label %334

192:                                              ; preds = %180
  %193 = load %struct.ocfs2_extent_rec*, %struct.ocfs2_extent_rec** %23, align 8
  %194 = getelementptr inbounds %struct.ocfs2_extent_rec, %struct.ocfs2_extent_rec* %193, i32 0, i32 1
  %195 = load i32, i32* %194, align 4
  %196 = call i64 @le32_to_cpu(i32 %195)
  %197 = load %struct.ocfs2_extent_list*, %struct.ocfs2_extent_list** %22, align 8
  %198 = load %struct.ocfs2_extent_rec*, %struct.ocfs2_extent_rec** %23, align 8
  %199 = call i64 @ocfs2_rec_clusters(%struct.ocfs2_extent_list* %197, %struct.ocfs2_extent_rec* %198)
  %200 = add nsw i64 %196, %199
  store i64 %200, i64* %17, align 8
  %201 = load i64, i64* %13, align 8
  %202 = load i64, i64* %14, align 8
  %203 = add nsw i64 %201, %202
  store i64 %203, i64* %18, align 8
  %204 = load %struct.ocfs2_extent_rec*, %struct.ocfs2_extent_rec** %23, align 8
  %205 = getelementptr inbounds %struct.ocfs2_extent_rec, %struct.ocfs2_extent_rec* %204, i32 0, i32 1
  %206 = load i32, i32* %205, align 4
  %207 = call i64 @le32_to_cpu(i32 %206)
  %208 = load i64, i64* %13, align 8
  %209 = icmp eq i64 %207, %208
  br i1 %209, label %210, label %243

210:                                              ; preds = %192
  %211 = load i64, i64* %17, align 8
  %212 = load i64, i64* %18, align 8
  %213 = icmp eq i64 %211, %212
  br i1 %213, label %214, label %243

214:                                              ; preds = %210
  %215 = load %struct.ocfs2_extent_rec*, %struct.ocfs2_extent_rec** %23, align 8
  %216 = call i32 @memset(%struct.ocfs2_extent_rec* %215, i32 0, i32 12)
  %217 = load %struct.ocfs2_extent_list*, %struct.ocfs2_extent_list** %22, align 8
  %218 = load i32, i32* %11, align 4
  %219 = call i32 @ocfs2_cleanup_merge(%struct.ocfs2_extent_list* %217, i32 %218)
  %220 = load %struct.ocfs2_extent_list*, %struct.ocfs2_extent_list** %22, align 8
  %221 = getelementptr inbounds %struct.ocfs2_extent_list, %struct.ocfs2_extent_list* %220, i32 0, i32 1
  %222 = load i32, i32* %221, align 8
  %223 = call i32 @le16_to_cpu(i32 %222)
  store i32 %223, i32* %25, align 4
  %224 = load i32, i32* %19, align 4
  %225 = icmp ne i32 %224, 0
  br i1 %225, label %226, label %242

226:                                              ; preds = %214
  %227 = load i32, i32* %25, align 4
  %228 = icmp sgt i32 %227, 1
  br i1 %228, label %229, label %242

229:                                              ; preds = %226
  %230 = load %struct.ocfs2_extent_list*, %struct.ocfs2_extent_list** %22, align 8
  %231 = getelementptr inbounds %struct.ocfs2_extent_list, %struct.ocfs2_extent_list* %230, i32 0, i32 0
  %232 = load %struct.ocfs2_extent_rec*, %struct.ocfs2_extent_rec** %231, align 8
  %233 = load i32, i32* %25, align 4
  %234 = sub nsw i32 %233, 1
  %235 = sext i32 %234 to i64
  %236 = getelementptr inbounds %struct.ocfs2_extent_rec, %struct.ocfs2_extent_rec* %232, i64 %235
  store %struct.ocfs2_extent_rec* %236, %struct.ocfs2_extent_rec** %23, align 8
  %237 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %238 = load %struct.ocfs2_extent_tree*, %struct.ocfs2_extent_tree** %9, align 8
  %239 = load %struct.ocfs2_path*, %struct.ocfs2_path** %10, align 8
  %240 = load %struct.ocfs2_extent_rec*, %struct.ocfs2_extent_rec** %23, align 8
  %241 = call i32 @ocfs2_adjust_rightmost_records(%struct.TYPE_11__* %237, %struct.ocfs2_extent_tree* %238, %struct.ocfs2_path* %239, %struct.ocfs2_extent_rec* %240)
  br label %242

242:                                              ; preds = %229, %226, %214
  br label %305

243:                                              ; preds = %210, %192
  %244 = load %struct.ocfs2_extent_rec*, %struct.ocfs2_extent_rec** %23, align 8
  %245 = getelementptr inbounds %struct.ocfs2_extent_rec, %struct.ocfs2_extent_rec* %244, i32 0, i32 1
  %246 = load i32, i32* %245, align 4
  %247 = call i64 @le32_to_cpu(i32 %246)
  %248 = load i64, i64* %13, align 8
  %249 = icmp eq i64 %247, %248
  br i1 %249, label %250, label %266

250:                                              ; preds = %243
  %251 = load %struct.ocfs2_extent_rec*, %struct.ocfs2_extent_rec** %23, align 8
  %252 = getelementptr inbounds %struct.ocfs2_extent_rec, %struct.ocfs2_extent_rec* %251, i32 0, i32 1
  %253 = load i64, i64* %14, align 8
  %254 = call i32 @le32_add_cpu(i32* %252, i64 %253)
  %255 = load %struct.ocfs2_extent_rec*, %struct.ocfs2_extent_rec** %23, align 8
  %256 = getelementptr inbounds %struct.ocfs2_extent_rec, %struct.ocfs2_extent_rec* %255, i32 0, i32 2
  %257 = load %struct.super_block*, %struct.super_block** %20, align 8
  %258 = load i64, i64* %14, align 8
  %259 = call i32 @ocfs2_clusters_to_blocks(%struct.super_block* %257, i64 %258)
  %260 = call i32 @le64_add_cpu(i32* %256, i32 %259)
  %261 = load %struct.ocfs2_extent_rec*, %struct.ocfs2_extent_rec** %23, align 8
  %262 = getelementptr inbounds %struct.ocfs2_extent_rec, %struct.ocfs2_extent_rec* %261, i32 0, i32 0
  %263 = load i64, i64* %14, align 8
  %264 = sub nsw i64 0, %263
  %265 = call i32 @le16_add_cpu(i32* %262, i64 %264)
  br label %304

266:                                              ; preds = %243
  %267 = load i64, i64* %17, align 8
  %268 = load i64, i64* %18, align 8
  %269 = icmp eq i64 %267, %268
  br i1 %269, label %270, label %285

270:                                              ; preds = %266
  %271 = load %struct.ocfs2_extent_rec*, %struct.ocfs2_extent_rec** %23, align 8
  %272 = getelementptr inbounds %struct.ocfs2_extent_rec, %struct.ocfs2_extent_rec* %271, i32 0, i32 0
  %273 = load i64, i64* %14, align 8
  %274 = sub nsw i64 0, %273
  %275 = call i32 @le16_add_cpu(i32* %272, i64 %274)
  %276 = load i32, i32* %19, align 4
  %277 = icmp ne i32 %276, 0
  br i1 %277, label %278, label %284

278:                                              ; preds = %270
  %279 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %280 = load %struct.ocfs2_extent_tree*, %struct.ocfs2_extent_tree** %9, align 8
  %281 = load %struct.ocfs2_path*, %struct.ocfs2_path** %10, align 8
  %282 = load %struct.ocfs2_extent_rec*, %struct.ocfs2_extent_rec** %23, align 8
  %283 = call i32 @ocfs2_adjust_rightmost_records(%struct.TYPE_11__* %279, %struct.ocfs2_extent_tree* %280, %struct.ocfs2_path* %281, %struct.ocfs2_extent_rec* %282)
  br label %284

284:                                              ; preds = %278, %270
  br label %303

285:                                              ; preds = %266
  %286 = load i32, i32* @ML_ERROR, align 4
  %287 = load %struct.ocfs2_extent_tree*, %struct.ocfs2_extent_tree** %9, align 8
  %288 = getelementptr inbounds %struct.ocfs2_extent_tree, %struct.ocfs2_extent_tree* %287, i32 0, i32 0
  %289 = load i32, i32* %288, align 4
  %290 = call i64 @ocfs2_metadata_cache_owner(i32 %289)
  %291 = load %struct.ocfs2_extent_rec*, %struct.ocfs2_extent_rec** %23, align 8
  %292 = getelementptr inbounds %struct.ocfs2_extent_rec, %struct.ocfs2_extent_rec* %291, i32 0, i32 1
  %293 = load i32, i32* %292, align 4
  %294 = call i64 @le32_to_cpu(i32 %293)
  %295 = load %struct.ocfs2_extent_rec*, %struct.ocfs2_extent_rec** %23, align 8
  %296 = getelementptr inbounds %struct.ocfs2_extent_rec, %struct.ocfs2_extent_rec* %295, i32 0, i32 0
  %297 = load i32, i32* %296, align 4
  %298 = call i32 @le16_to_cpu(i32 %297)
  %299 = load i64, i64* %13, align 8
  %300 = load i64, i64* %14, align 8
  %301 = call i32 @mlog(i32 %286, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str, i64 0, i64 0), i64 %290, i64 %294, i32 %298, i64 %299, i64 %300)
  %302 = call i32 (...) @BUG()
  br label %303

303:                                              ; preds = %285, %284
  br label %304

304:                                              ; preds = %303, %250
  br label %305

305:                                              ; preds = %304, %242
  %306 = load %struct.ocfs2_path*, %struct.ocfs2_path** %21, align 8
  %307 = icmp ne %struct.ocfs2_path* %306, null
  br i1 %307, label %308, label %318

308:                                              ; preds = %305
  %309 = load %struct.ocfs2_extent_tree*, %struct.ocfs2_extent_tree** %9, align 8
  %310 = load %struct.ocfs2_path*, %struct.ocfs2_path** %21, align 8
  %311 = load %struct.ocfs2_path*, %struct.ocfs2_path** %10, align 8
  %312 = call i32 @ocfs2_find_subtree_root(%struct.ocfs2_extent_tree* %309, %struct.ocfs2_path* %310, %struct.ocfs2_path* %311)
  store i32 %312, i32* %26, align 4
  %313 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %314 = load %struct.ocfs2_path*, %struct.ocfs2_path** %21, align 8
  %315 = load %struct.ocfs2_path*, %struct.ocfs2_path** %10, align 8
  %316 = load i32, i32* %26, align 4
  %317 = call i32 @ocfs2_complete_edge_insert(%struct.TYPE_11__* %313, %struct.ocfs2_path* %314, %struct.ocfs2_path* %315, i32 %316)
  br label %318

318:                                              ; preds = %308, %305
  %319 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %320 = load %struct.ocfs2_path*, %struct.ocfs2_path** %10, align 8
  %321 = call %struct.TYPE_12__* @path_leaf_bh(%struct.ocfs2_path* %320)
  %322 = call i32 @ocfs2_journal_dirty(%struct.TYPE_11__* %319, %struct.TYPE_12__* %321)
  %323 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %324 = load %struct.ocfs2_extent_tree*, %struct.ocfs2_extent_tree** %9, align 8
  %325 = load %struct.ocfs2_path*, %struct.ocfs2_path** %10, align 8
  %326 = load %struct.ocfs2_cached_dealloc_ctxt*, %struct.ocfs2_cached_dealloc_ctxt** %12, align 8
  %327 = call i32 @ocfs2_rotate_tree_left(%struct.TYPE_11__* %323, %struct.ocfs2_extent_tree* %324, %struct.ocfs2_path* %325, %struct.ocfs2_cached_dealloc_ctxt* %326)
  store i32 %327, i32* %15, align 4
  %328 = load i32, i32* %15, align 4
  %329 = icmp ne i32 %328, 0
  br i1 %329, label %330, label %333

330:                                              ; preds = %318
  %331 = load i32, i32* %15, align 4
  %332 = call i32 @mlog_errno(i32 %331)
  br label %333

333:                                              ; preds = %330, %318
  br label %334

334:                                              ; preds = %333, %189, %177, %165, %151, %137, %120, %62, %51
  %335 = load %struct.ocfs2_path*, %struct.ocfs2_path** %21, align 8
  %336 = call i32 @ocfs2_free_path(%struct.ocfs2_path* %335)
  %337 = load i32, i32* %15, align 4
  ret i32 %337
}

declare dso_local %struct.super_block* @ocfs2_metadata_cache_get_super(i32) #1

declare dso_local %struct.ocfs2_extent_list* @path_leaf_el(%struct.ocfs2_path*) #1

declare dso_local i64 @ocfs2_is_empty_extent(%struct.ocfs2_extent_rec*) #1

declare dso_local i32 @ocfs2_extend_rotate_transaction(%struct.TYPE_11__*, i32, i32, %struct.ocfs2_path*) #1

declare dso_local i32 @mlog_errno(i32) #1

declare dso_local i32 @ocfs2_rotate_tree_left(%struct.TYPE_11__*, %struct.ocfs2_extent_tree*, %struct.ocfs2_path*, %struct.ocfs2_cached_dealloc_ctxt*) #1

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local %struct.TYPE_12__* @path_leaf_bh(%struct.ocfs2_path*) #1

declare dso_local i64 @le32_to_cpu(i32) #1

declare dso_local i32 @ocfs2_find_cpos_for_left_leaf(%struct.super_block*, %struct.ocfs2_path*, i64*) #1

declare dso_local %struct.ocfs2_path* @ocfs2_new_path_from_path(%struct.ocfs2_path*) #1

declare dso_local i32 @ocfs2_find_path(i32, %struct.ocfs2_path*, i64) #1

declare dso_local i32 @ocfs2_journal_access_path(i32, %struct.TYPE_11__*, %struct.ocfs2_path*) #1

declare dso_local i64 @ocfs2_rec_clusters(%struct.ocfs2_extent_list*, %struct.ocfs2_extent_rec*) #1

declare dso_local i32 @memset(%struct.ocfs2_extent_rec*, i32, i32) #1

declare dso_local i32 @ocfs2_cleanup_merge(%struct.ocfs2_extent_list*, i32) #1

declare dso_local i32 @ocfs2_adjust_rightmost_records(%struct.TYPE_11__*, %struct.ocfs2_extent_tree*, %struct.ocfs2_path*, %struct.ocfs2_extent_rec*) #1

declare dso_local i32 @le32_add_cpu(i32*, i64) #1

declare dso_local i32 @le64_add_cpu(i32*, i32) #1

declare dso_local i32 @ocfs2_clusters_to_blocks(%struct.super_block*, i64) #1

declare dso_local i32 @le16_add_cpu(i32*, i64) #1

declare dso_local i32 @mlog(i32, i8*, i64, i64, i32, i64, i64) #1

declare dso_local i64 @ocfs2_metadata_cache_owner(i32) #1

declare dso_local i32 @BUG(...) #1

declare dso_local i32 @ocfs2_find_subtree_root(%struct.ocfs2_extent_tree*, %struct.ocfs2_path*, %struct.ocfs2_path*) #1

declare dso_local i32 @ocfs2_complete_edge_insert(%struct.TYPE_11__*, %struct.ocfs2_path*, %struct.ocfs2_path*, i32) #1

declare dso_local i32 @ocfs2_journal_dirty(%struct.TYPE_11__*, %struct.TYPE_12__*) #1

declare dso_local i32 @ocfs2_free_path(%struct.ocfs2_path*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
