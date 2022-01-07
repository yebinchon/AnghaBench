; ModuleID = '/home/carl/AnghaBench/linux/fs/ocfs2/extr_refcounttree.c_ocfs2_split_refcount_rec.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ocfs2/extr_refcounttree.c_ocfs2_split_refcount_rec.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ocfs2_caching_info = type { i32 }
%struct.buffer_head = type { i64, i64 }
%struct.ocfs2_refcount_rec = type { i64, i8*, i8* }
%struct.ocfs2_alloc_context = type { i32 }
%struct.ocfs2_cached_dealloc_ctxt = type { i32 }
%struct.ocfs2_refcount_block = type { %struct.ocfs2_refcount_list, i8* }
%struct.ocfs2_refcount_list = type { %struct.ocfs2_refcount_rec*, i32, i32 }

@OCFS2_REFCOUNT_TREE_FL = common dso_local global i32 0, align 4
@OCFS2_JOURNAL_ACCESS_WRITE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.ocfs2_caching_info*, %struct.buffer_head*, %struct.buffer_head*, %struct.ocfs2_refcount_rec*, i32, i32, %struct.ocfs2_alloc_context*, %struct.ocfs2_cached_dealloc_ctxt*)* @ocfs2_split_refcount_rec to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ocfs2_split_refcount_rec(i32* %0, %struct.ocfs2_caching_info* %1, %struct.buffer_head* %2, %struct.buffer_head* %3, %struct.ocfs2_refcount_rec* %4, i32 %5, i32 %6, %struct.ocfs2_alloc_context* %7, %struct.ocfs2_cached_dealloc_ctxt* %8) #0 {
  %10 = alloca i32*, align 8
  %11 = alloca %struct.ocfs2_caching_info*, align 8
  %12 = alloca %struct.buffer_head*, align 8
  %13 = alloca %struct.buffer_head*, align 8
  %14 = alloca %struct.ocfs2_refcount_rec*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca %struct.ocfs2_alloc_context*, align 8
  %18 = alloca %struct.ocfs2_cached_dealloc_ctxt*, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca %struct.ocfs2_refcount_block*, align 8
  %23 = alloca %struct.ocfs2_refcount_list*, align 8
  %24 = alloca %struct.ocfs2_refcount_rec*, align 8
  %25 = alloca %struct.ocfs2_refcount_rec*, align 8
  %26 = alloca %struct.buffer_head*, align 8
  %27 = alloca %struct.ocfs2_refcount_rec, align 8
  %28 = alloca i64, align 8
  store i32* %0, i32** %10, align 8
  store %struct.ocfs2_caching_info* %1, %struct.ocfs2_caching_info** %11, align 8
  store %struct.buffer_head* %2, %struct.buffer_head** %12, align 8
  store %struct.buffer_head* %3, %struct.buffer_head** %13, align 8
  store %struct.ocfs2_refcount_rec* %4, %struct.ocfs2_refcount_rec** %14, align 8
  store i32 %5, i32* %15, align 4
  store i32 %6, i32* %16, align 4
  store %struct.ocfs2_alloc_context* %7, %struct.ocfs2_alloc_context** %17, align 8
  store %struct.ocfs2_cached_dealloc_ctxt* %8, %struct.ocfs2_cached_dealloc_ctxt** %18, align 8
  %29 = load %struct.buffer_head*, %struct.buffer_head** %13, align 8
  %30 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %29, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  %32 = inttoptr i64 %31 to %struct.ocfs2_refcount_block*
  store %struct.ocfs2_refcount_block* %32, %struct.ocfs2_refcount_block** %22, align 8
  %33 = load %struct.ocfs2_refcount_block*, %struct.ocfs2_refcount_block** %22, align 8
  %34 = getelementptr inbounds %struct.ocfs2_refcount_block, %struct.ocfs2_refcount_block* %33, i32 0, i32 0
  store %struct.ocfs2_refcount_list* %34, %struct.ocfs2_refcount_list** %23, align 8
  %35 = load %struct.ocfs2_refcount_list*, %struct.ocfs2_refcount_list** %23, align 8
  %36 = getelementptr inbounds %struct.ocfs2_refcount_list, %struct.ocfs2_refcount_list* %35, i32 0, i32 0
  %37 = load %struct.ocfs2_refcount_rec*, %struct.ocfs2_refcount_rec** %36, align 8
  %38 = load i32, i32* %15, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds %struct.ocfs2_refcount_rec, %struct.ocfs2_refcount_rec* %37, i64 %39
  store %struct.ocfs2_refcount_rec* %40, %struct.ocfs2_refcount_rec** %24, align 8
  store %struct.ocfs2_refcount_rec* null, %struct.ocfs2_refcount_rec** %25, align 8
  store %struct.buffer_head* null, %struct.buffer_head** %26, align 8
  %41 = load %struct.ocfs2_refcount_block*, %struct.ocfs2_refcount_block** %22, align 8
  %42 = getelementptr inbounds %struct.ocfs2_refcount_block, %struct.ocfs2_refcount_block* %41, i32 0, i32 1
  %43 = load i8*, i8** %42, align 8
  %44 = call i32 @le32_to_cpu(i8* %43)
  %45 = load i32, i32* @OCFS2_REFCOUNT_TREE_FL, align 4
  %46 = and i32 %44, %45
  %47 = call i32 @BUG_ON(i32 %46)
  %48 = load %struct.ocfs2_refcount_rec*, %struct.ocfs2_refcount_rec** %24, align 8
  %49 = getelementptr inbounds %struct.ocfs2_refcount_rec, %struct.ocfs2_refcount_rec* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = call i64 @le64_to_cpu(i64 %50)
  %52 = load %struct.ocfs2_refcount_rec*, %struct.ocfs2_refcount_rec** %24, align 8
  %53 = getelementptr inbounds %struct.ocfs2_refcount_rec, %struct.ocfs2_refcount_rec* %52, i32 0, i32 2
  %54 = load i8*, i8** %53, align 8
  %55 = call i32 @le32_to_cpu(i8* %54)
  %56 = load %struct.ocfs2_refcount_rec*, %struct.ocfs2_refcount_rec** %24, align 8
  %57 = getelementptr inbounds %struct.ocfs2_refcount_rec, %struct.ocfs2_refcount_rec* %56, i32 0, i32 1
  %58 = load i8*, i8** %57, align 8
  %59 = call i32 @le32_to_cpu(i8* %58)
  %60 = load %struct.ocfs2_refcount_rec*, %struct.ocfs2_refcount_rec** %14, align 8
  %61 = getelementptr inbounds %struct.ocfs2_refcount_rec, %struct.ocfs2_refcount_rec* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = call i64 @le64_to_cpu(i64 %62)
  %64 = load %struct.ocfs2_refcount_rec*, %struct.ocfs2_refcount_rec** %14, align 8
  %65 = getelementptr inbounds %struct.ocfs2_refcount_rec, %struct.ocfs2_refcount_rec* %64, i32 0, i32 2
  %66 = load i8*, i8** %65, align 8
  %67 = call i32 @le32_to_cpu(i8* %66)
  %68 = load %struct.ocfs2_refcount_rec*, %struct.ocfs2_refcount_rec** %14, align 8
  %69 = getelementptr inbounds %struct.ocfs2_refcount_rec, %struct.ocfs2_refcount_rec* %68, i32 0, i32 1
  %70 = load i8*, i8** %69, align 8
  %71 = call i32 @le32_to_cpu(i8* %70)
  %72 = call i32 @trace_ocfs2_split_refcount_rec(i64 %51, i32 %55, i32 %59, i64 %63, i32 %67, i32 %71)
  %73 = load %struct.ocfs2_refcount_rec*, %struct.ocfs2_refcount_rec** %14, align 8
  %74 = getelementptr inbounds %struct.ocfs2_refcount_rec, %struct.ocfs2_refcount_rec* %73, i32 0, i32 1
  %75 = load i8*, i8** %74, align 8
  %76 = icmp ne i8* %75, null
  br i1 %76, label %108, label %77

77:                                               ; preds = %9
  %78 = load %struct.ocfs2_refcount_rec*, %struct.ocfs2_refcount_rec** %14, align 8
  %79 = getelementptr inbounds %struct.ocfs2_refcount_rec, %struct.ocfs2_refcount_rec* %78, i32 0, i32 0
  %80 = load i64, i64* %79, align 8
  %81 = load %struct.ocfs2_refcount_rec*, %struct.ocfs2_refcount_rec** %24, align 8
  %82 = getelementptr inbounds %struct.ocfs2_refcount_rec, %struct.ocfs2_refcount_rec* %81, i32 0, i32 0
  %83 = load i64, i64* %82, align 8
  %84 = icmp eq i64 %80, %83
  br i1 %84, label %107, label %85

85:                                               ; preds = %77
  %86 = load %struct.ocfs2_refcount_rec*, %struct.ocfs2_refcount_rec** %14, align 8
  %87 = getelementptr inbounds %struct.ocfs2_refcount_rec, %struct.ocfs2_refcount_rec* %86, i32 0, i32 0
  %88 = load i64, i64* %87, align 8
  %89 = call i64 @le64_to_cpu(i64 %88)
  %90 = load %struct.ocfs2_refcount_rec*, %struct.ocfs2_refcount_rec** %14, align 8
  %91 = getelementptr inbounds %struct.ocfs2_refcount_rec, %struct.ocfs2_refcount_rec* %90, i32 0, i32 2
  %92 = load i8*, i8** %91, align 8
  %93 = call i32 @le32_to_cpu(i8* %92)
  %94 = sext i32 %93 to i64
  %95 = add nsw i64 %89, %94
  %96 = load %struct.ocfs2_refcount_rec*, %struct.ocfs2_refcount_rec** %24, align 8
  %97 = getelementptr inbounds %struct.ocfs2_refcount_rec, %struct.ocfs2_refcount_rec* %96, i32 0, i32 0
  %98 = load i64, i64* %97, align 8
  %99 = call i64 @le64_to_cpu(i64 %98)
  %100 = load %struct.ocfs2_refcount_rec*, %struct.ocfs2_refcount_rec** %24, align 8
  %101 = getelementptr inbounds %struct.ocfs2_refcount_rec, %struct.ocfs2_refcount_rec* %100, i32 0, i32 2
  %102 = load i8*, i8** %101, align 8
  %103 = call i32 @le32_to_cpu(i8* %102)
  %104 = sext i32 %103 to i64
  %105 = add nsw i64 %99, %104
  %106 = icmp eq i64 %95, %105
  br i1 %106, label %107, label %108

107:                                              ; preds = %85, %77
  store i32 0, i32* %20, align 4
  br label %109

108:                                              ; preds = %85, %9
  store i32 1, i32* %20, align 4
  br label %109

109:                                              ; preds = %108, %107
  %110 = load %struct.ocfs2_refcount_rec*, %struct.ocfs2_refcount_rec** %14, align 8
  %111 = getelementptr inbounds %struct.ocfs2_refcount_rec, %struct.ocfs2_refcount_rec* %110, i32 0, i32 1
  %112 = load i8*, i8** %111, align 8
  %113 = icmp ne i8* %112, null
  br i1 %113, label %114, label %147

114:                                              ; preds = %109
  %115 = load %struct.ocfs2_refcount_rec*, %struct.ocfs2_refcount_rec** %14, align 8
  %116 = getelementptr inbounds %struct.ocfs2_refcount_rec, %struct.ocfs2_refcount_rec* %115, i32 0, i32 0
  %117 = load i64, i64* %116, align 8
  %118 = load %struct.ocfs2_refcount_rec*, %struct.ocfs2_refcount_rec** %24, align 8
  %119 = getelementptr inbounds %struct.ocfs2_refcount_rec, %struct.ocfs2_refcount_rec* %118, i32 0, i32 0
  %120 = load i64, i64* %119, align 8
  %121 = icmp ne i64 %117, %120
  br i1 %121, label %122, label %147

122:                                              ; preds = %114
  %123 = load %struct.ocfs2_refcount_rec*, %struct.ocfs2_refcount_rec** %14, align 8
  %124 = getelementptr inbounds %struct.ocfs2_refcount_rec, %struct.ocfs2_refcount_rec* %123, i32 0, i32 0
  %125 = load i64, i64* %124, align 8
  %126 = call i64 @le64_to_cpu(i64 %125)
  %127 = load %struct.ocfs2_refcount_rec*, %struct.ocfs2_refcount_rec** %14, align 8
  %128 = getelementptr inbounds %struct.ocfs2_refcount_rec, %struct.ocfs2_refcount_rec* %127, i32 0, i32 2
  %129 = load i8*, i8** %128, align 8
  %130 = call i32 @le32_to_cpu(i8* %129)
  %131 = sext i32 %130 to i64
  %132 = add nsw i64 %126, %131
  %133 = load %struct.ocfs2_refcount_rec*, %struct.ocfs2_refcount_rec** %24, align 8
  %134 = getelementptr inbounds %struct.ocfs2_refcount_rec, %struct.ocfs2_refcount_rec* %133, i32 0, i32 0
  %135 = load i64, i64* %134, align 8
  %136 = call i64 @le64_to_cpu(i64 %135)
  %137 = load %struct.ocfs2_refcount_rec*, %struct.ocfs2_refcount_rec** %24, align 8
  %138 = getelementptr inbounds %struct.ocfs2_refcount_rec, %struct.ocfs2_refcount_rec* %137, i32 0, i32 2
  %139 = load i8*, i8** %138, align 8
  %140 = call i32 @le32_to_cpu(i8* %139)
  %141 = sext i32 %140 to i64
  %142 = add nsw i64 %136, %141
  %143 = icmp ne i64 %132, %142
  br i1 %143, label %144, label %147

144:                                              ; preds = %122
  %145 = load i32, i32* %20, align 4
  %146 = add nsw i32 %145, 1
  store i32 %146, i32* %20, align 4
  br label %147

147:                                              ; preds = %144, %122, %114, %109
  %148 = load %struct.ocfs2_refcount_list*, %struct.ocfs2_refcount_list** %23, align 8
  %149 = getelementptr inbounds %struct.ocfs2_refcount_list, %struct.ocfs2_refcount_list* %148, i32 0, i32 1
  %150 = load i32, i32* %149, align 8
  %151 = call i32 @le16_to_cpu(i32 %150)
  %152 = load i32, i32* %20, align 4
  %153 = add nsw i32 %151, %152
  %154 = load %struct.ocfs2_refcount_list*, %struct.ocfs2_refcount_list** %23, align 8
  %155 = getelementptr inbounds %struct.ocfs2_refcount_list, %struct.ocfs2_refcount_list* %154, i32 0, i32 2
  %156 = load i32, i32* %155, align 4
  %157 = call i32 @le16_to_cpu(i32 %156)
  %158 = icmp sgt i32 %153, %157
  br i1 %158, label %159, label %204

159:                                              ; preds = %147
  %160 = load %struct.ocfs2_refcount_rec*, %struct.ocfs2_refcount_rec** %24, align 8
  %161 = getelementptr inbounds %struct.ocfs2_refcount_rec, %struct.ocfs2_refcount_rec* %160, i32 0, i32 0
  %162 = load i64, i64* %161, align 8
  %163 = call i64 @le64_to_cpu(i64 %162)
  store i64 %163, i64* %28, align 8
  %164 = load %struct.ocfs2_refcount_rec*, %struct.ocfs2_refcount_rec** %24, align 8
  %165 = getelementptr inbounds %struct.ocfs2_refcount_rec, %struct.ocfs2_refcount_rec* %164, i32 0, i32 2
  %166 = load i8*, i8** %165, align 8
  %167 = call i32 @le32_to_cpu(i8* %166)
  store i32 %167, i32* %21, align 4
  %168 = load i32*, i32** %10, align 8
  %169 = load %struct.ocfs2_caching_info*, %struct.ocfs2_caching_info** %11, align 8
  %170 = load %struct.buffer_head*, %struct.buffer_head** %12, align 8
  %171 = load %struct.buffer_head*, %struct.buffer_head** %13, align 8
  %172 = load %struct.ocfs2_alloc_context*, %struct.ocfs2_alloc_context** %17, align 8
  %173 = call i32 @ocfs2_expand_refcount_tree(i32* %168, %struct.ocfs2_caching_info* %169, %struct.buffer_head* %170, %struct.buffer_head* %171, %struct.ocfs2_alloc_context* %172)
  store i32 %173, i32* %19, align 4
  %174 = load i32, i32* %19, align 4
  %175 = icmp ne i32 %174, 0
  br i1 %175, label %176, label %179

176:                                              ; preds = %159
  %177 = load i32, i32* %19, align 4
  %178 = call i32 @mlog_errno(i32 %177)
  br label %377

179:                                              ; preds = %159
  %180 = load %struct.ocfs2_caching_info*, %struct.ocfs2_caching_info** %11, align 8
  %181 = load %struct.buffer_head*, %struct.buffer_head** %12, align 8
  %182 = load i64, i64* %28, align 8
  %183 = load i32, i32* %21, align 4
  %184 = call i32 @ocfs2_get_refcount_rec(%struct.ocfs2_caching_info* %180, %struct.buffer_head* %181, i64 %182, i32 %183, %struct.ocfs2_refcount_rec* %27, i32* %15, %struct.buffer_head** %26)
  store i32 %184, i32* %19, align 4
  %185 = load i32, i32* %19, align 4
  %186 = icmp ne i32 %185, 0
  br i1 %186, label %187, label %190

187:                                              ; preds = %179
  %188 = load i32, i32* %19, align 4
  %189 = call i32 @mlog_errno(i32 %188)
  br label %377

190:                                              ; preds = %179
  %191 = load %struct.buffer_head*, %struct.buffer_head** %26, align 8
  store %struct.buffer_head* %191, %struct.buffer_head** %13, align 8
  %192 = load %struct.buffer_head*, %struct.buffer_head** %13, align 8
  %193 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %192, i32 0, i32 1
  %194 = load i64, i64* %193, align 8
  %195 = inttoptr i64 %194 to %struct.ocfs2_refcount_block*
  store %struct.ocfs2_refcount_block* %195, %struct.ocfs2_refcount_block** %22, align 8
  %196 = load %struct.ocfs2_refcount_block*, %struct.ocfs2_refcount_block** %22, align 8
  %197 = getelementptr inbounds %struct.ocfs2_refcount_block, %struct.ocfs2_refcount_block* %196, i32 0, i32 0
  store %struct.ocfs2_refcount_list* %197, %struct.ocfs2_refcount_list** %23, align 8
  %198 = load %struct.ocfs2_refcount_list*, %struct.ocfs2_refcount_list** %23, align 8
  %199 = getelementptr inbounds %struct.ocfs2_refcount_list, %struct.ocfs2_refcount_list* %198, i32 0, i32 0
  %200 = load %struct.ocfs2_refcount_rec*, %struct.ocfs2_refcount_rec** %199, align 8
  %201 = load i32, i32* %15, align 4
  %202 = sext i32 %201 to i64
  %203 = getelementptr inbounds %struct.ocfs2_refcount_rec, %struct.ocfs2_refcount_rec* %200, i64 %202
  store %struct.ocfs2_refcount_rec* %203, %struct.ocfs2_refcount_rec** %24, align 8
  br label %204

204:                                              ; preds = %190, %147
  %205 = load i32*, i32** %10, align 8
  %206 = load %struct.ocfs2_caching_info*, %struct.ocfs2_caching_info** %11, align 8
  %207 = load %struct.buffer_head*, %struct.buffer_head** %13, align 8
  %208 = load i32, i32* @OCFS2_JOURNAL_ACCESS_WRITE, align 4
  %209 = call i32 @ocfs2_journal_access_rb(i32* %205, %struct.ocfs2_caching_info* %206, %struct.buffer_head* %207, i32 %208)
  store i32 %209, i32* %19, align 4
  %210 = load i32, i32* %19, align 4
  %211 = icmp ne i32 %210, 0
  br i1 %211, label %212, label %215

212:                                              ; preds = %204
  %213 = load i32, i32* %19, align 4
  %214 = call i32 @mlog_errno(i32 %213)
  br label %377

215:                                              ; preds = %204
  %216 = load i32, i32* %15, align 4
  %217 = load %struct.ocfs2_refcount_list*, %struct.ocfs2_refcount_list** %23, align 8
  %218 = getelementptr inbounds %struct.ocfs2_refcount_list, %struct.ocfs2_refcount_list* %217, i32 0, i32 1
  %219 = load i32, i32* %218, align 8
  %220 = call i32 @le16_to_cpu(i32 %219)
  %221 = sub nsw i32 %220, 1
  %222 = icmp ne i32 %216, %221
  br i1 %222, label %223, label %251

223:                                              ; preds = %215
  %224 = load %struct.ocfs2_refcount_list*, %struct.ocfs2_refcount_list** %23, align 8
  %225 = getelementptr inbounds %struct.ocfs2_refcount_list, %struct.ocfs2_refcount_list* %224, i32 0, i32 0
  %226 = load %struct.ocfs2_refcount_rec*, %struct.ocfs2_refcount_rec** %225, align 8
  %227 = load i32, i32* %15, align 4
  %228 = add nsw i32 %227, 1
  %229 = load i32, i32* %20, align 4
  %230 = add nsw i32 %228, %229
  %231 = sext i32 %230 to i64
  %232 = getelementptr inbounds %struct.ocfs2_refcount_rec, %struct.ocfs2_refcount_rec* %226, i64 %231
  %233 = load %struct.ocfs2_refcount_list*, %struct.ocfs2_refcount_list** %23, align 8
  %234 = getelementptr inbounds %struct.ocfs2_refcount_list, %struct.ocfs2_refcount_list* %233, i32 0, i32 0
  %235 = load %struct.ocfs2_refcount_rec*, %struct.ocfs2_refcount_rec** %234, align 8
  %236 = load i32, i32* %15, align 4
  %237 = add nsw i32 %236, 1
  %238 = sext i32 %237 to i64
  %239 = getelementptr inbounds %struct.ocfs2_refcount_rec, %struct.ocfs2_refcount_rec* %235, i64 %238
  %240 = load %struct.ocfs2_refcount_list*, %struct.ocfs2_refcount_list** %23, align 8
  %241 = getelementptr inbounds %struct.ocfs2_refcount_list, %struct.ocfs2_refcount_list* %240, i32 0, i32 1
  %242 = load i32, i32* %241, align 8
  %243 = call i32 @le16_to_cpu(i32 %242)
  %244 = load i32, i32* %15, align 4
  %245 = sub nsw i32 %243, %244
  %246 = sub nsw i32 %245, 1
  %247 = sext i32 %246 to i64
  %248 = mul i64 %247, 24
  %249 = trunc i64 %248 to i32
  %250 = call i32 @memmove(%struct.ocfs2_refcount_rec* %232, %struct.ocfs2_refcount_rec* %239, i32 %249)
  br label %251

251:                                              ; preds = %223, %215
  %252 = load %struct.ocfs2_refcount_rec*, %struct.ocfs2_refcount_rec** %24, align 8
  %253 = getelementptr inbounds %struct.ocfs2_refcount_rec, %struct.ocfs2_refcount_rec* %252, i32 0, i32 0
  %254 = load i64, i64* %253, align 8
  %255 = call i64 @le64_to_cpu(i64 %254)
  %256 = load %struct.ocfs2_refcount_rec*, %struct.ocfs2_refcount_rec** %24, align 8
  %257 = getelementptr inbounds %struct.ocfs2_refcount_rec, %struct.ocfs2_refcount_rec* %256, i32 0, i32 2
  %258 = load i8*, i8** %257, align 8
  %259 = call i32 @le32_to_cpu(i8* %258)
  %260 = sext i32 %259 to i64
  %261 = add nsw i64 %255, %260
  %262 = load %struct.ocfs2_refcount_rec*, %struct.ocfs2_refcount_rec** %14, align 8
  %263 = getelementptr inbounds %struct.ocfs2_refcount_rec, %struct.ocfs2_refcount_rec* %262, i32 0, i32 0
  %264 = load i64, i64* %263, align 8
  %265 = call i64 @le64_to_cpu(i64 %264)
  %266 = load %struct.ocfs2_refcount_rec*, %struct.ocfs2_refcount_rec** %14, align 8
  %267 = getelementptr inbounds %struct.ocfs2_refcount_rec, %struct.ocfs2_refcount_rec* %266, i32 0, i32 2
  %268 = load i8*, i8** %267, align 8
  %269 = call i32 @le32_to_cpu(i8* %268)
  %270 = sext i32 %269 to i64
  %271 = add nsw i64 %265, %270
  %272 = sub nsw i64 %261, %271
  %273 = trunc i64 %272 to i32
  store i32 %273, i32* %21, align 4
  %274 = load i32, i32* %21, align 4
  %275 = icmp ne i32 %274, 0
  br i1 %275, label %276, label %301

276:                                              ; preds = %251
  %277 = load %struct.ocfs2_refcount_list*, %struct.ocfs2_refcount_list** %23, align 8
  %278 = getelementptr inbounds %struct.ocfs2_refcount_list, %struct.ocfs2_refcount_list* %277, i32 0, i32 0
  %279 = load %struct.ocfs2_refcount_rec*, %struct.ocfs2_refcount_rec** %278, align 8
  %280 = load i32, i32* %15, align 4
  %281 = load i32, i32* %20, align 4
  %282 = add nsw i32 %280, %281
  %283 = sext i32 %282 to i64
  %284 = getelementptr inbounds %struct.ocfs2_refcount_rec, %struct.ocfs2_refcount_rec* %279, i64 %283
  store %struct.ocfs2_refcount_rec* %284, %struct.ocfs2_refcount_rec** %25, align 8
  %285 = load %struct.ocfs2_refcount_rec*, %struct.ocfs2_refcount_rec** %25, align 8
  %286 = load %struct.ocfs2_refcount_rec*, %struct.ocfs2_refcount_rec** %24, align 8
  %287 = call i32 @memcpy(%struct.ocfs2_refcount_rec* %285, %struct.ocfs2_refcount_rec* %286, i32 24)
  %288 = load %struct.ocfs2_refcount_rec*, %struct.ocfs2_refcount_rec** %25, align 8
  %289 = getelementptr inbounds %struct.ocfs2_refcount_rec, %struct.ocfs2_refcount_rec* %288, i32 0, i32 0
  %290 = load %struct.ocfs2_refcount_rec*, %struct.ocfs2_refcount_rec** %25, align 8
  %291 = getelementptr inbounds %struct.ocfs2_refcount_rec, %struct.ocfs2_refcount_rec* %290, i32 0, i32 2
  %292 = load i8*, i8** %291, align 8
  %293 = call i32 @le32_to_cpu(i8* %292)
  %294 = load i32, i32* %21, align 4
  %295 = sub nsw i32 %293, %294
  %296 = call i32 @le64_add_cpu(i64* %289, i32 %295)
  %297 = load i32, i32* %21, align 4
  %298 = call i8* @cpu_to_le32(i32 %297)
  %299 = load %struct.ocfs2_refcount_rec*, %struct.ocfs2_refcount_rec** %25, align 8
  %300 = getelementptr inbounds %struct.ocfs2_refcount_rec, %struct.ocfs2_refcount_rec* %299, i32 0, i32 2
  store i8* %298, i8** %300, align 8
  br label %301

301:                                              ; preds = %276, %251
  %302 = load %struct.ocfs2_refcount_rec*, %struct.ocfs2_refcount_rec** %14, align 8
  %303 = getelementptr inbounds %struct.ocfs2_refcount_rec, %struct.ocfs2_refcount_rec* %302, i32 0, i32 0
  %304 = load i64, i64* %303, align 8
  %305 = load %struct.ocfs2_refcount_rec*, %struct.ocfs2_refcount_rec** %24, align 8
  %306 = getelementptr inbounds %struct.ocfs2_refcount_rec, %struct.ocfs2_refcount_rec* %305, i32 0, i32 0
  %307 = load i64, i64* %306, align 8
  %308 = icmp ne i64 %304, %307
  br i1 %308, label %309, label %330

309:                                              ; preds = %301
  %310 = load %struct.ocfs2_refcount_rec*, %struct.ocfs2_refcount_rec** %25, align 8
  %311 = load %struct.ocfs2_refcount_rec*, %struct.ocfs2_refcount_rec** %24, align 8
  %312 = icmp ne %struct.ocfs2_refcount_rec* %310, %311
  br i1 %312, label %313, label %330

313:                                              ; preds = %309
  %314 = load %struct.ocfs2_refcount_rec*, %struct.ocfs2_refcount_rec** %14, align 8
  %315 = getelementptr inbounds %struct.ocfs2_refcount_rec, %struct.ocfs2_refcount_rec* %314, i32 0, i32 0
  %316 = load i64, i64* %315, align 8
  %317 = call i64 @le64_to_cpu(i64 %316)
  %318 = load %struct.ocfs2_refcount_rec*, %struct.ocfs2_refcount_rec** %24, align 8
  %319 = getelementptr inbounds %struct.ocfs2_refcount_rec, %struct.ocfs2_refcount_rec* %318, i32 0, i32 0
  %320 = load i64, i64* %319, align 8
  %321 = call i64 @le64_to_cpu(i64 %320)
  %322 = sub nsw i64 %317, %321
  %323 = trunc i64 %322 to i32
  store i32 %323, i32* %21, align 4
  %324 = load i32, i32* %21, align 4
  %325 = call i8* @cpu_to_le32(i32 %324)
  %326 = load %struct.ocfs2_refcount_rec*, %struct.ocfs2_refcount_rec** %24, align 8
  %327 = getelementptr inbounds %struct.ocfs2_refcount_rec, %struct.ocfs2_refcount_rec* %326, i32 0, i32 2
  store i8* %325, i8** %327, align 8
  %328 = load i32, i32* %15, align 4
  %329 = add nsw i32 %328, 1
  store i32 %329, i32* %15, align 4
  br label %330

330:                                              ; preds = %313, %309, %301
  %331 = load %struct.ocfs2_refcount_list*, %struct.ocfs2_refcount_list** %23, align 8
  %332 = getelementptr inbounds %struct.ocfs2_refcount_list, %struct.ocfs2_refcount_list* %331, i32 0, i32 1
  %333 = load i32, i32* %20, align 4
  %334 = call i32 @le16_add_cpu(i32* %332, i32 %333)
  %335 = load %struct.ocfs2_refcount_rec*, %struct.ocfs2_refcount_rec** %14, align 8
  %336 = getelementptr inbounds %struct.ocfs2_refcount_rec, %struct.ocfs2_refcount_rec* %335, i32 0, i32 1
  %337 = load i8*, i8** %336, align 8
  %338 = icmp ne i8* %337, null
  br i1 %338, label %339, label %373

339:                                              ; preds = %330
  %340 = load %struct.ocfs2_refcount_list*, %struct.ocfs2_refcount_list** %23, align 8
  %341 = getelementptr inbounds %struct.ocfs2_refcount_list, %struct.ocfs2_refcount_list* %340, i32 0, i32 0
  %342 = load %struct.ocfs2_refcount_rec*, %struct.ocfs2_refcount_rec** %341, align 8
  %343 = load i32, i32* %15, align 4
  %344 = sext i32 %343 to i64
  %345 = getelementptr inbounds %struct.ocfs2_refcount_rec, %struct.ocfs2_refcount_rec* %342, i64 %344
  %346 = load %struct.ocfs2_refcount_rec*, %struct.ocfs2_refcount_rec** %14, align 8
  %347 = bitcast %struct.ocfs2_refcount_rec* %345 to i8*
  %348 = bitcast %struct.ocfs2_refcount_rec* %346 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %347, i8* align 8 %348, i64 24, i1 false)
  %349 = load %struct.buffer_head*, %struct.buffer_head** %13, align 8
  %350 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %349, i32 0, i32 0
  %351 = load i64, i64* %350, align 8
  %352 = load i32, i32* %15, align 4
  %353 = load %struct.ocfs2_refcount_rec*, %struct.ocfs2_refcount_rec** %14, align 8
  %354 = getelementptr inbounds %struct.ocfs2_refcount_rec, %struct.ocfs2_refcount_rec* %353, i32 0, i32 0
  %355 = load i64, i64* %354, align 8
  %356 = call i64 @le64_to_cpu(i64 %355)
  %357 = load %struct.ocfs2_refcount_rec*, %struct.ocfs2_refcount_rec** %14, align 8
  %358 = getelementptr inbounds %struct.ocfs2_refcount_rec, %struct.ocfs2_refcount_rec* %357, i32 0, i32 2
  %359 = load i8*, i8** %358, align 8
  %360 = call i32 @le32_to_cpu(i8* %359)
  %361 = load %struct.ocfs2_refcount_rec*, %struct.ocfs2_refcount_rec** %14, align 8
  %362 = getelementptr inbounds %struct.ocfs2_refcount_rec, %struct.ocfs2_refcount_rec* %361, i32 0, i32 1
  %363 = load i8*, i8** %362, align 8
  %364 = call i32 @le32_to_cpu(i8* %363)
  %365 = call i32 @trace_ocfs2_split_refcount_rec_insert(i64 %351, i32 %352, i64 %356, i32 %360, i32 %364)
  %366 = load i32, i32* %16, align 4
  %367 = icmp ne i32 %366, 0
  br i1 %367, label %368, label %372

368:                                              ; preds = %339
  %369 = load %struct.ocfs2_refcount_block*, %struct.ocfs2_refcount_block** %22, align 8
  %370 = load i32, i32* %15, align 4
  %371 = call i32 @ocfs2_refcount_rec_merge(%struct.ocfs2_refcount_block* %369, i32 %370)
  br label %372

372:                                              ; preds = %368, %339
  br label %373

373:                                              ; preds = %372, %330
  %374 = load i32*, i32** %10, align 8
  %375 = load %struct.buffer_head*, %struct.buffer_head** %13, align 8
  %376 = call i32 @ocfs2_journal_dirty(i32* %374, %struct.buffer_head* %375)
  br label %377

377:                                              ; preds = %373, %212, %187, %176
  %378 = load %struct.buffer_head*, %struct.buffer_head** %26, align 8
  %379 = call i32 @brelse(%struct.buffer_head* %378)
  %380 = load i32, i32* %19, align 4
  ret i32 %380
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @le32_to_cpu(i8*) #1

declare dso_local i32 @trace_ocfs2_split_refcount_rec(i64, i32, i32, i64, i32, i32) #1

declare dso_local i64 @le64_to_cpu(i64) #1

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i32 @ocfs2_expand_refcount_tree(i32*, %struct.ocfs2_caching_info*, %struct.buffer_head*, %struct.buffer_head*, %struct.ocfs2_alloc_context*) #1

declare dso_local i32 @mlog_errno(i32) #1

declare dso_local i32 @ocfs2_get_refcount_rec(%struct.ocfs2_caching_info*, %struct.buffer_head*, i64, i32, %struct.ocfs2_refcount_rec*, i32*, %struct.buffer_head**) #1

declare dso_local i32 @ocfs2_journal_access_rb(i32*, %struct.ocfs2_caching_info*, %struct.buffer_head*, i32) #1

declare dso_local i32 @memmove(%struct.ocfs2_refcount_rec*, %struct.ocfs2_refcount_rec*, i32) #1

declare dso_local i32 @memcpy(%struct.ocfs2_refcount_rec*, %struct.ocfs2_refcount_rec*, i32) #1

declare dso_local i32 @le64_add_cpu(i64*, i32) #1

declare dso_local i8* @cpu_to_le32(i32) #1

declare dso_local i32 @le16_add_cpu(i32*, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @trace_ocfs2_split_refcount_rec_insert(i64, i32, i64, i32, i32) #1

declare dso_local i32 @ocfs2_refcount_rec_merge(%struct.ocfs2_refcount_block*, i32) #1

declare dso_local i32 @ocfs2_journal_dirty(i32*, %struct.buffer_head*) #1

declare dso_local i32 @brelse(%struct.buffer_head*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
