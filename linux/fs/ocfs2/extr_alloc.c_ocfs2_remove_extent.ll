; ModuleID = '/home/carl/AnghaBench/linux/fs/ocfs2/extr_alloc.c_ocfs2_remove_extent.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ocfs2/extr_alloc.c_ocfs2_remove_extent.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ocfs2_extent_tree = type { i32 }
%struct.ocfs2_alloc_context = type { i32 }
%struct.ocfs2_cached_dealloc_ctxt = type { i32 }
%struct.ocfs2_extent_rec = type { i32 }
%struct.ocfs2_extent_list = type { %struct.ocfs2_extent_rec* }
%struct.ocfs2_path = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [66 x i8] c"Owner %llu has an extent at cpos %u which can no longer be found\0A\00", align 1
@EROFS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [42 x i8] c"Owner %llu: split at cpos %u lost record\0A\00", align 1
@.str.2 = private unnamed_addr constant [83 x i8] c"Owner %llu: error after split at cpos %u trunc len %u, existing record is (%u,%u)\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ocfs2_remove_extent(i32* %0, %struct.ocfs2_extent_tree* %1, i64 %2, i64 %3, %struct.ocfs2_alloc_context* %4, %struct.ocfs2_cached_dealloc_ctxt* %5) #0 {
  %7 = alloca i32*, align 8
  %8 = alloca %struct.ocfs2_extent_tree*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.ocfs2_alloc_context*, align 8
  %12 = alloca %struct.ocfs2_cached_dealloc_ctxt*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca %struct.ocfs2_extent_rec*, align 8
  %18 = alloca %struct.ocfs2_extent_list*, align 8
  %19 = alloca %struct.ocfs2_path*, align 8
  store i32* %0, i32** %7, align 8
  store %struct.ocfs2_extent_tree* %1, %struct.ocfs2_extent_tree** %8, align 8
  store i64 %2, i64* %9, align 8
  store i64 %3, i64* %10, align 8
  store %struct.ocfs2_alloc_context* %4, %struct.ocfs2_alloc_context** %11, align 8
  store %struct.ocfs2_cached_dealloc_ctxt* %5, %struct.ocfs2_cached_dealloc_ctxt** %12, align 8
  store %struct.ocfs2_path* null, %struct.ocfs2_path** %19, align 8
  %20 = load %struct.ocfs2_extent_tree*, %struct.ocfs2_extent_tree** %8, align 8
  %21 = call i32 @ocfs2_et_extent_map_truncate(%struct.ocfs2_extent_tree* %20, i32 0)
  %22 = load %struct.ocfs2_extent_tree*, %struct.ocfs2_extent_tree** %8, align 8
  %23 = call %struct.ocfs2_path* @ocfs2_new_path_from_et(%struct.ocfs2_extent_tree* %22)
  store %struct.ocfs2_path* %23, %struct.ocfs2_path** %19, align 8
  %24 = load %struct.ocfs2_path*, %struct.ocfs2_path** %19, align 8
  %25 = icmp ne %struct.ocfs2_path* %24, null
  br i1 %25, label %31, label %26

26:                                               ; preds = %6
  %27 = load i32, i32* @ENOMEM, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %13, align 4
  %29 = load i32, i32* %13, align 4
  %30 = call i32 @mlog_errno(i32 %29)
  br label %239

31:                                               ; preds = %6
  %32 = load %struct.ocfs2_extent_tree*, %struct.ocfs2_extent_tree** %8, align 8
  %33 = getelementptr inbounds %struct.ocfs2_extent_tree, %struct.ocfs2_extent_tree* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.ocfs2_path*, %struct.ocfs2_path** %19, align 8
  %36 = load i64, i64* %9, align 8
  %37 = call i32 @ocfs2_find_path(i32 %34, %struct.ocfs2_path* %35, i64 %36)
  store i32 %37, i32* %13, align 4
  %38 = load i32, i32* %13, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %43

40:                                               ; preds = %31
  %41 = load i32, i32* %13, align 4
  %42 = call i32 @mlog_errno(i32 %41)
  br label %239

43:                                               ; preds = %31
  %44 = load %struct.ocfs2_path*, %struct.ocfs2_path** %19, align 8
  %45 = call %struct.ocfs2_extent_list* @path_leaf_el(%struct.ocfs2_path* %44)
  store %struct.ocfs2_extent_list* %45, %struct.ocfs2_extent_list** %18, align 8
  %46 = load %struct.ocfs2_extent_list*, %struct.ocfs2_extent_list** %18, align 8
  %47 = load i64, i64* %9, align 8
  %48 = call i32 @ocfs2_search_extent_list(%struct.ocfs2_extent_list* %46, i64 %47)
  store i32 %48, i32* %14, align 4
  %49 = load i32, i32* %14, align 4
  %50 = icmp eq i32 %49, -1
  br i1 %50, label %51, label %64

51:                                               ; preds = %43
  %52 = load %struct.ocfs2_extent_tree*, %struct.ocfs2_extent_tree** %8, align 8
  %53 = getelementptr inbounds %struct.ocfs2_extent_tree, %struct.ocfs2_extent_tree* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @ocfs2_metadata_cache_get_super(i32 %54)
  %56 = load %struct.ocfs2_extent_tree*, %struct.ocfs2_extent_tree** %8, align 8
  %57 = getelementptr inbounds %struct.ocfs2_extent_tree, %struct.ocfs2_extent_tree* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = call i64 @ocfs2_metadata_cache_owner(i32 %58)
  %60 = load i64, i64* %9, align 8
  %61 = call i32 (i32, i8*, i64, i64, ...) @ocfs2_error(i32 %55, i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str, i64 0, i64 0), i64 %59, i64 %60)
  %62 = load i32, i32* @EROFS, align 4
  %63 = sub nsw i32 0, %62
  store i32 %63, i32* %13, align 4
  br label %239

64:                                               ; preds = %43
  %65 = load %struct.ocfs2_extent_list*, %struct.ocfs2_extent_list** %18, align 8
  %66 = getelementptr inbounds %struct.ocfs2_extent_list, %struct.ocfs2_extent_list* %65, i32 0, i32 0
  %67 = load %struct.ocfs2_extent_rec*, %struct.ocfs2_extent_rec** %66, align 8
  %68 = load i32, i32* %14, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds %struct.ocfs2_extent_rec, %struct.ocfs2_extent_rec* %67, i64 %69
  store %struct.ocfs2_extent_rec* %70, %struct.ocfs2_extent_rec** %17, align 8
  %71 = load %struct.ocfs2_extent_rec*, %struct.ocfs2_extent_rec** %17, align 8
  %72 = getelementptr inbounds %struct.ocfs2_extent_rec, %struct.ocfs2_extent_rec* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = call i64 @le32_to_cpu(i32 %73)
  %75 = load %struct.ocfs2_extent_list*, %struct.ocfs2_extent_list** %18, align 8
  %76 = load %struct.ocfs2_extent_rec*, %struct.ocfs2_extent_rec** %17, align 8
  %77 = call i64 @ocfs2_rec_clusters(%struct.ocfs2_extent_list* %75, %struct.ocfs2_extent_rec* %76)
  %78 = add nsw i64 %74, %77
  store i64 %78, i64* %15, align 8
  %79 = load i64, i64* %9, align 8
  %80 = load i64, i64* %10, align 8
  %81 = add nsw i64 %79, %80
  store i64 %81, i64* %16, align 8
  %82 = load i64, i64* %9, align 8
  %83 = load %struct.ocfs2_extent_rec*, %struct.ocfs2_extent_rec** %17, align 8
  %84 = getelementptr inbounds %struct.ocfs2_extent_rec, %struct.ocfs2_extent_rec* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = call i64 @le32_to_cpu(i32 %85)
  %87 = icmp slt i64 %82, %86
  br i1 %87, label %92, label %88

88:                                               ; preds = %64
  %89 = load i64, i64* %16, align 8
  %90 = load i64, i64* %15, align 8
  %91 = icmp sgt i64 %89, %90
  br label %92

92:                                               ; preds = %88, %64
  %93 = phi i1 [ true, %64 ], [ %91, %88 ]
  %94 = zext i1 %93 to i32
  %95 = call i32 @BUG_ON(i32 %94)
  %96 = load %struct.ocfs2_extent_tree*, %struct.ocfs2_extent_tree** %8, align 8
  %97 = getelementptr inbounds %struct.ocfs2_extent_tree, %struct.ocfs2_extent_tree* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 4
  %99 = call i64 @ocfs2_metadata_cache_owner(i32 %98)
  %100 = load i64, i64* %9, align 8
  %101 = load i64, i64* %10, align 8
  %102 = load i32, i32* %14, align 4
  %103 = load %struct.ocfs2_extent_rec*, %struct.ocfs2_extent_rec** %17, align 8
  %104 = getelementptr inbounds %struct.ocfs2_extent_rec, %struct.ocfs2_extent_rec* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 4
  %106 = call i64 @le32_to_cpu(i32 %105)
  %107 = load %struct.ocfs2_extent_list*, %struct.ocfs2_extent_list** %18, align 8
  %108 = load %struct.ocfs2_extent_rec*, %struct.ocfs2_extent_rec** %17, align 8
  %109 = call i64 @ocfs2_rec_clusters(%struct.ocfs2_extent_list* %107, %struct.ocfs2_extent_rec* %108)
  %110 = call i32 @trace_ocfs2_remove_extent(i64 %99, i64 %100, i64 %101, i32 %102, i64 %106, i64 %109)
  %111 = load %struct.ocfs2_extent_rec*, %struct.ocfs2_extent_rec** %17, align 8
  %112 = getelementptr inbounds %struct.ocfs2_extent_rec, %struct.ocfs2_extent_rec* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 4
  %114 = call i64 @le32_to_cpu(i32 %113)
  %115 = load i64, i64* %9, align 8
  %116 = icmp eq i64 %114, %115
  br i1 %116, label %121, label %117

117:                                              ; preds = %92
  %118 = load i64, i64* %15, align 8
  %119 = load i64, i64* %16, align 8
  %120 = icmp eq i64 %118, %119
  br i1 %120, label %121, label %136

121:                                              ; preds = %117, %92
  %122 = load i32*, i32** %7, align 8
  %123 = load %struct.ocfs2_extent_tree*, %struct.ocfs2_extent_tree** %8, align 8
  %124 = load %struct.ocfs2_path*, %struct.ocfs2_path** %19, align 8
  %125 = load i32, i32* %14, align 4
  %126 = load %struct.ocfs2_cached_dealloc_ctxt*, %struct.ocfs2_cached_dealloc_ctxt** %12, align 8
  %127 = load i64, i64* %9, align 8
  %128 = load i64, i64* %10, align 8
  %129 = call i32 @ocfs2_truncate_rec(i32* %122, %struct.ocfs2_extent_tree* %123, %struct.ocfs2_path* %124, i32 %125, %struct.ocfs2_cached_dealloc_ctxt* %126, i64 %127, i64 %128)
  store i32 %129, i32* %13, align 4
  %130 = load i32, i32* %13, align 4
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %132, label %135

132:                                              ; preds = %121
  %133 = load i32, i32* %13, align 4
  %134 = call i32 @mlog_errno(i32 %133)
  br label %239

135:                                              ; preds = %121
  br label %238

136:                                              ; preds = %117
  %137 = load i32*, i32** %7, align 8
  %138 = load %struct.ocfs2_extent_tree*, %struct.ocfs2_extent_tree** %8, align 8
  %139 = load %struct.ocfs2_path*, %struct.ocfs2_path** %19, align 8
  %140 = load i32, i32* %14, align 4
  %141 = load i64, i64* %16, align 8
  %142 = load %struct.ocfs2_alloc_context*, %struct.ocfs2_alloc_context** %11, align 8
  %143 = call i32 @ocfs2_split_tree(i32* %137, %struct.ocfs2_extent_tree* %138, %struct.ocfs2_path* %139, i32 %140, i64 %141, %struct.ocfs2_alloc_context* %142)
  store i32 %143, i32* %13, align 4
  %144 = load i32, i32* %13, align 4
  %145 = icmp ne i32 %144, 0
  br i1 %145, label %146, label %149

146:                                              ; preds = %136
  %147 = load i32, i32* %13, align 4
  %148 = call i32 @mlog_errno(i32 %147)
  br label %239

149:                                              ; preds = %136
  %150 = load %struct.ocfs2_path*, %struct.ocfs2_path** %19, align 8
  %151 = call i32 @ocfs2_reinit_path(%struct.ocfs2_path* %150, i32 1)
  %152 = load %struct.ocfs2_extent_tree*, %struct.ocfs2_extent_tree** %8, align 8
  %153 = getelementptr inbounds %struct.ocfs2_extent_tree, %struct.ocfs2_extent_tree* %152, i32 0, i32 0
  %154 = load i32, i32* %153, align 4
  %155 = load %struct.ocfs2_path*, %struct.ocfs2_path** %19, align 8
  %156 = load i64, i64* %9, align 8
  %157 = call i32 @ocfs2_find_path(i32 %154, %struct.ocfs2_path* %155, i64 %156)
  store i32 %157, i32* %13, align 4
  %158 = load i32, i32* %13, align 4
  %159 = icmp ne i32 %158, 0
  br i1 %159, label %160, label %163

160:                                              ; preds = %149
  %161 = load i32, i32* %13, align 4
  %162 = call i32 @mlog_errno(i32 %161)
  br label %239

163:                                              ; preds = %149
  %164 = load %struct.ocfs2_path*, %struct.ocfs2_path** %19, align 8
  %165 = call %struct.ocfs2_extent_list* @path_leaf_el(%struct.ocfs2_path* %164)
  store %struct.ocfs2_extent_list* %165, %struct.ocfs2_extent_list** %18, align 8
  %166 = load %struct.ocfs2_extent_list*, %struct.ocfs2_extent_list** %18, align 8
  %167 = load i64, i64* %9, align 8
  %168 = call i32 @ocfs2_search_extent_list(%struct.ocfs2_extent_list* %166, i64 %167)
  store i32 %168, i32* %14, align 4
  %169 = load i32, i32* %14, align 4
  %170 = icmp eq i32 %169, -1
  br i1 %170, label %171, label %184

171:                                              ; preds = %163
  %172 = load %struct.ocfs2_extent_tree*, %struct.ocfs2_extent_tree** %8, align 8
  %173 = getelementptr inbounds %struct.ocfs2_extent_tree, %struct.ocfs2_extent_tree* %172, i32 0, i32 0
  %174 = load i32, i32* %173, align 4
  %175 = call i32 @ocfs2_metadata_cache_get_super(i32 %174)
  %176 = load %struct.ocfs2_extent_tree*, %struct.ocfs2_extent_tree** %8, align 8
  %177 = getelementptr inbounds %struct.ocfs2_extent_tree, %struct.ocfs2_extent_tree* %176, i32 0, i32 0
  %178 = load i32, i32* %177, align 4
  %179 = call i64 @ocfs2_metadata_cache_owner(i32 %178)
  %180 = load i64, i64* %9, align 8
  %181 = call i32 (i32, i8*, i64, i64, ...) @ocfs2_error(i32 %175, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i64 0, i64 0), i64 %179, i64 %180)
  %182 = load i32, i32* @EROFS, align 4
  %183 = sub nsw i32 0, %182
  store i32 %183, i32* %13, align 4
  br label %239

184:                                              ; preds = %163
  %185 = load %struct.ocfs2_extent_list*, %struct.ocfs2_extent_list** %18, align 8
  %186 = getelementptr inbounds %struct.ocfs2_extent_list, %struct.ocfs2_extent_list* %185, i32 0, i32 0
  %187 = load %struct.ocfs2_extent_rec*, %struct.ocfs2_extent_rec** %186, align 8
  %188 = load i32, i32* %14, align 4
  %189 = sext i32 %188 to i64
  %190 = getelementptr inbounds %struct.ocfs2_extent_rec, %struct.ocfs2_extent_rec* %187, i64 %189
  store %struct.ocfs2_extent_rec* %190, %struct.ocfs2_extent_rec** %17, align 8
  %191 = load %struct.ocfs2_extent_rec*, %struct.ocfs2_extent_rec** %17, align 8
  %192 = getelementptr inbounds %struct.ocfs2_extent_rec, %struct.ocfs2_extent_rec* %191, i32 0, i32 0
  %193 = load i32, i32* %192, align 4
  %194 = call i64 @le32_to_cpu(i32 %193)
  %195 = load %struct.ocfs2_extent_list*, %struct.ocfs2_extent_list** %18, align 8
  %196 = load %struct.ocfs2_extent_rec*, %struct.ocfs2_extent_rec** %17, align 8
  %197 = call i64 @ocfs2_rec_clusters(%struct.ocfs2_extent_list* %195, %struct.ocfs2_extent_rec* %196)
  %198 = add nsw i64 %194, %197
  store i64 %198, i64* %15, align 8
  %199 = load i64, i64* %15, align 8
  %200 = load i64, i64* %16, align 8
  %201 = icmp ne i64 %199, %200
  br i1 %201, label %202, label %223

202:                                              ; preds = %184
  %203 = load %struct.ocfs2_extent_tree*, %struct.ocfs2_extent_tree** %8, align 8
  %204 = getelementptr inbounds %struct.ocfs2_extent_tree, %struct.ocfs2_extent_tree* %203, i32 0, i32 0
  %205 = load i32, i32* %204, align 4
  %206 = call i32 @ocfs2_metadata_cache_get_super(i32 %205)
  %207 = load %struct.ocfs2_extent_tree*, %struct.ocfs2_extent_tree** %8, align 8
  %208 = getelementptr inbounds %struct.ocfs2_extent_tree, %struct.ocfs2_extent_tree* %207, i32 0, i32 0
  %209 = load i32, i32* %208, align 4
  %210 = call i64 @ocfs2_metadata_cache_owner(i32 %209)
  %211 = load i64, i64* %9, align 8
  %212 = load i64, i64* %10, align 8
  %213 = load %struct.ocfs2_extent_rec*, %struct.ocfs2_extent_rec** %17, align 8
  %214 = getelementptr inbounds %struct.ocfs2_extent_rec, %struct.ocfs2_extent_rec* %213, i32 0, i32 0
  %215 = load i32, i32* %214, align 4
  %216 = call i64 @le32_to_cpu(i32 %215)
  %217 = load %struct.ocfs2_extent_list*, %struct.ocfs2_extent_list** %18, align 8
  %218 = load %struct.ocfs2_extent_rec*, %struct.ocfs2_extent_rec** %17, align 8
  %219 = call i64 @ocfs2_rec_clusters(%struct.ocfs2_extent_list* %217, %struct.ocfs2_extent_rec* %218)
  %220 = call i32 (i32, i8*, i64, i64, ...) @ocfs2_error(i32 %206, i8* getelementptr inbounds ([83 x i8], [83 x i8]* @.str.2, i64 0, i64 0), i64 %210, i64 %211, i64 %212, i64 %216, i64 %219)
  %221 = load i32, i32* @EROFS, align 4
  %222 = sub nsw i32 0, %221
  store i32 %222, i32* %13, align 4
  br label %239

223:                                              ; preds = %184
  %224 = load i32*, i32** %7, align 8
  %225 = load %struct.ocfs2_extent_tree*, %struct.ocfs2_extent_tree** %8, align 8
  %226 = load %struct.ocfs2_path*, %struct.ocfs2_path** %19, align 8
  %227 = load i32, i32* %14, align 4
  %228 = load %struct.ocfs2_cached_dealloc_ctxt*, %struct.ocfs2_cached_dealloc_ctxt** %12, align 8
  %229 = load i64, i64* %9, align 8
  %230 = load i64, i64* %10, align 8
  %231 = call i32 @ocfs2_truncate_rec(i32* %224, %struct.ocfs2_extent_tree* %225, %struct.ocfs2_path* %226, i32 %227, %struct.ocfs2_cached_dealloc_ctxt* %228, i64 %229, i64 %230)
  store i32 %231, i32* %13, align 4
  %232 = load i32, i32* %13, align 4
  %233 = icmp ne i32 %232, 0
  br i1 %233, label %234, label %237

234:                                              ; preds = %223
  %235 = load i32, i32* %13, align 4
  %236 = call i32 @mlog_errno(i32 %235)
  br label %237

237:                                              ; preds = %234, %223
  br label %238

238:                                              ; preds = %237, %135
  br label %239

239:                                              ; preds = %238, %202, %171, %160, %146, %132, %51, %40, %26
  %240 = load %struct.ocfs2_path*, %struct.ocfs2_path** %19, align 8
  %241 = call i32 @ocfs2_free_path(%struct.ocfs2_path* %240)
  %242 = load i32, i32* %13, align 4
  ret i32 %242
}

declare dso_local i32 @ocfs2_et_extent_map_truncate(%struct.ocfs2_extent_tree*, i32) #1

declare dso_local %struct.ocfs2_path* @ocfs2_new_path_from_et(%struct.ocfs2_extent_tree*) #1

declare dso_local i32 @mlog_errno(i32) #1

declare dso_local i32 @ocfs2_find_path(i32, %struct.ocfs2_path*, i64) #1

declare dso_local %struct.ocfs2_extent_list* @path_leaf_el(%struct.ocfs2_path*) #1

declare dso_local i32 @ocfs2_search_extent_list(%struct.ocfs2_extent_list*, i64) #1

declare dso_local i32 @ocfs2_error(i32, i8*, i64, i64, ...) #1

declare dso_local i32 @ocfs2_metadata_cache_get_super(i32) #1

declare dso_local i64 @ocfs2_metadata_cache_owner(i32) #1

declare dso_local i64 @le32_to_cpu(i32) #1

declare dso_local i64 @ocfs2_rec_clusters(%struct.ocfs2_extent_list*, %struct.ocfs2_extent_rec*) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @trace_ocfs2_remove_extent(i64, i64, i64, i32, i64, i64) #1

declare dso_local i32 @ocfs2_truncate_rec(i32*, %struct.ocfs2_extent_tree*, %struct.ocfs2_path*, i32, %struct.ocfs2_cached_dealloc_ctxt*, i64, i64) #1

declare dso_local i32 @ocfs2_split_tree(i32*, %struct.ocfs2_extent_tree*, %struct.ocfs2_path*, i32, i64, %struct.ocfs2_alloc_context*) #1

declare dso_local i32 @ocfs2_reinit_path(%struct.ocfs2_path*, i32) #1

declare dso_local i32 @ocfs2_free_path(%struct.ocfs2_path*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
