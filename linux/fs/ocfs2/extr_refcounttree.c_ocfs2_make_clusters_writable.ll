; ModuleID = '/home/carl/AnghaBench/linux/fs/ocfs2/extr_refcounttree.c_ocfs2_make_clusters_writable.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ocfs2/extr_refcounttree.c_ocfs2_make_clusters_writable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.super_block = type { i32 }
%struct.ocfs2_cow_context = type { i64, i32*, i32*, i32, %struct.TYPE_4__*, i32, i32, i32, i64, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32 (i32, i32*, i32)*, i32, i64 }
%struct.TYPE_3__ = type { %struct.ocfs2_caching_info }
%struct.ocfs2_caching_info = type { i32 }
%struct.ocfs2_super = type { i32 }
%struct.buffer_head = type { i32 }
%struct.ocfs2_refcount_rec = type { i32, i32, i32 }

@ocfs2_di_get_clusters = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.super_block*, %struct.ocfs2_cow_context*, i32, i32, i32, i32)* @ocfs2_make_clusters_writable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ocfs2_make_clusters_writable(%struct.super_block* %0, %struct.ocfs2_cow_context* %1, i32 %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.super_block*, align 8
  %9 = alloca %struct.ocfs2_cow_context*, align 8
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
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca %struct.ocfs2_super*, align 8
  %23 = alloca i32*, align 8
  %24 = alloca %struct.buffer_head*, align 8
  %25 = alloca %struct.ocfs2_caching_info*, align 8
  %26 = alloca %struct.ocfs2_refcount_rec, align 4
  store %struct.super_block* %0, %struct.super_block** %8, align 8
  store %struct.ocfs2_cow_context* %1, %struct.ocfs2_cow_context** %9, align 8
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  store i32 0, i32* %17, align 4
  %27 = load %struct.super_block*, %struct.super_block** %8, align 8
  %28 = call %struct.ocfs2_super* @OCFS2_SB(%struct.super_block* %27)
  store %struct.ocfs2_super* %28, %struct.ocfs2_super** %22, align 8
  store %struct.buffer_head* null, %struct.buffer_head** %24, align 8
  %29 = load %struct.ocfs2_cow_context*, %struct.ocfs2_cow_context** %9, align 8
  %30 = getelementptr inbounds %struct.ocfs2_cow_context, %struct.ocfs2_cow_context* %29, i32 0, i32 9
  %31 = load %struct.TYPE_3__*, %struct.TYPE_3__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 0
  store %struct.ocfs2_caching_info* %32, %struct.ocfs2_caching_info** %25, align 8
  %33 = load i32, i32* %10, align 4
  %34 = load i32, i32* %11, align 4
  %35 = load i32, i32* %12, align 4
  %36 = load i32, i32* %13, align 4
  %37 = call i32 @trace_ocfs2_make_clusters_writable(i32 %33, i32 %34, i32 %35, i32 %36)
  %38 = load %struct.super_block*, %struct.super_block** %8, align 8
  %39 = load i32, i32* %11, align 4
  %40 = load i32, i32* %12, align 4
  %41 = load %struct.ocfs2_cow_context*, %struct.ocfs2_cow_context** %9, align 8
  %42 = getelementptr inbounds %struct.ocfs2_cow_context, %struct.ocfs2_cow_context* %41, i32 0, i32 7
  %43 = load %struct.ocfs2_caching_info*, %struct.ocfs2_caching_info** %25, align 8
  %44 = load %struct.ocfs2_cow_context*, %struct.ocfs2_cow_context** %9, align 8
  %45 = getelementptr inbounds %struct.ocfs2_cow_context, %struct.ocfs2_cow_context* %44, i32 0, i32 6
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.ocfs2_cow_context*, %struct.ocfs2_cow_context** %9, align 8
  %48 = getelementptr inbounds %struct.ocfs2_cow_context, %struct.ocfs2_cow_context* %47, i32 0, i32 1
  %49 = load %struct.ocfs2_cow_context*, %struct.ocfs2_cow_context** %9, align 8
  %50 = getelementptr inbounds %struct.ocfs2_cow_context, %struct.ocfs2_cow_context* %49, i32 0, i32 2
  %51 = call i32 @ocfs2_lock_refcount_allocators(%struct.super_block* %38, i32 %39, i32 %40, i32* %42, %struct.ocfs2_caching_info* %43, i32 %46, i32** %48, i32** %50, i32* %17)
  store i32 %51, i32* %14, align 4
  %52 = load i32, i32* %14, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %58

54:                                               ; preds = %6
  %55 = load i32, i32* %14, align 4
  %56 = call i32 @mlog_errno(i32 %55)
  %57 = load i32, i32* %14, align 4
  store i32 %57, i32* %7, align 4
  br label %302

58:                                               ; preds = %6
  %59 = load %struct.ocfs2_cow_context*, %struct.ocfs2_cow_context** %9, align 8
  %60 = getelementptr inbounds %struct.ocfs2_cow_context, %struct.ocfs2_cow_context* %59, i32 0, i32 4
  %61 = load %struct.TYPE_4__*, %struct.TYPE_4__** %60, align 8
  %62 = icmp ne %struct.TYPE_4__* %61, null
  br i1 %62, label %63, label %73

63:                                               ; preds = %58
  %64 = load %struct.ocfs2_cow_context*, %struct.ocfs2_cow_context** %9, align 8
  %65 = getelementptr inbounds %struct.ocfs2_cow_context, %struct.ocfs2_cow_context* %64, i32 0, i32 4
  %66 = load %struct.TYPE_4__*, %struct.TYPE_4__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %66, i32 0, i32 2
  %68 = load i64, i64* %67, align 8
  %69 = load i32, i32* %17, align 4
  %70 = sext i32 %69 to i64
  %71 = add nsw i64 %70, %68
  %72 = trunc i64 %71 to i32
  store i32 %72, i32* %17, align 4
  br label %73

73:                                               ; preds = %63, %58
  %74 = load %struct.ocfs2_cow_context*, %struct.ocfs2_cow_context** %9, align 8
  %75 = getelementptr inbounds %struct.ocfs2_cow_context, %struct.ocfs2_cow_context* %74, i32 0, i32 8
  %76 = load i64, i64* %75, align 8
  %77 = load i32, i32* %17, align 4
  %78 = sext i32 %77 to i64
  %79 = add nsw i64 %78, %76
  %80 = trunc i64 %79 to i32
  store i32 %80, i32* %17, align 4
  %81 = load %struct.ocfs2_super*, %struct.ocfs2_super** %22, align 8
  %82 = load i32, i32* %17, align 4
  %83 = call i32* @ocfs2_start_trans(%struct.ocfs2_super* %81, i32 %82)
  store i32* %83, i32** %23, align 8
  %84 = load i32*, i32** %23, align 8
  %85 = call i64 @IS_ERR(i32* %84)
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %92

87:                                               ; preds = %73
  %88 = load i32*, i32** %23, align 8
  %89 = call i32 @PTR_ERR(i32* %88)
  store i32 %89, i32* %14, align 4
  %90 = load i32, i32* %14, align 4
  %91 = call i32 @mlog_errno(i32 %90)
  br label %274

92:                                               ; preds = %73
  %93 = load i32, i32* %12, align 4
  store i32 %93, i32* %20, align 4
  br label %94

94:                                               ; preds = %203, %92
  %95 = load i32, i32* %12, align 4
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %215

97:                                               ; preds = %94
  %98 = load %struct.ocfs2_caching_info*, %struct.ocfs2_caching_info** %25, align 8
  %99 = load %struct.ocfs2_cow_context*, %struct.ocfs2_cow_context** %9, align 8
  %100 = getelementptr inbounds %struct.ocfs2_cow_context, %struct.ocfs2_cow_context* %99, i32 0, i32 6
  %101 = load i32, i32* %100, align 4
  %102 = load i32, i32* %11, align 4
  %103 = load i32, i32* %12, align 4
  %104 = call i32 @ocfs2_get_refcount_rec(%struct.ocfs2_caching_info* %98, i32 %101, i32 %102, i32 %103, %struct.ocfs2_refcount_rec* %26, i32* %16, %struct.buffer_head** %24)
  store i32 %104, i32* %14, align 4
  %105 = load i32, i32* %14, align 4
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %110

107:                                              ; preds = %97
  %108 = load i32, i32* %14, align 4
  %109 = call i32 @mlog_errno(i32 %108)
  br label %270

110:                                              ; preds = %97
  %111 = getelementptr inbounds %struct.ocfs2_refcount_rec, %struct.ocfs2_refcount_rec* %26, i32 0, i32 0
  %112 = load i32, i32* %111, align 4
  %113 = icmp ne i32 %112, 0
  %114 = xor i1 %113, true
  %115 = zext i1 %114 to i32
  %116 = call i32 @BUG_ON(i32 %115)
  %117 = load i32, i32* %11, align 4
  %118 = load i32, i32* %12, align 4
  %119 = add i32 %117, %118
  %120 = getelementptr inbounds %struct.ocfs2_refcount_rec, %struct.ocfs2_refcount_rec* %26, i32 0, i32 2
  %121 = load i32, i32* %120, align 4
  %122 = call i64 @le64_to_cpu(i32 %121)
  %123 = getelementptr inbounds %struct.ocfs2_refcount_rec, %struct.ocfs2_refcount_rec* %26, i32 0, i32 1
  %124 = load i32, i32* %123, align 4
  %125 = call i32 @le32_to_cpu(i32 %124)
  %126 = sext i32 %125 to i64
  %127 = add nsw i64 %122, %126
  %128 = call i32 @min(i32 %119, i64 %127)
  %129 = load i32, i32* %11, align 4
  %130 = sub i32 %128, %129
  store i32 %130, i32* %21, align 4
  %131 = getelementptr inbounds %struct.ocfs2_refcount_rec, %struct.ocfs2_refcount_rec* %26, i32 0, i32 0
  %132 = load i32, i32* %131, align 4
  %133 = call i32 @le32_to_cpu(i32 %132)
  %134 = icmp eq i32 %133, 1
  br i1 %134, label %135, label %155

135:                                              ; preds = %110
  store i32 0, i32* %15, align 4
  %136 = load i32*, i32** %23, align 8
  %137 = load %struct.ocfs2_cow_context*, %struct.ocfs2_cow_context** %9, align 8
  %138 = getelementptr inbounds %struct.ocfs2_cow_context, %struct.ocfs2_cow_context* %137, i32 0, i32 7
  %139 = load i32, i32* %10, align 4
  %140 = load i32, i32* %11, align 4
  %141 = load i32, i32* %21, align 4
  %142 = load i32, i32* %13, align 4
  %143 = load %struct.ocfs2_cow_context*, %struct.ocfs2_cow_context** %9, align 8
  %144 = getelementptr inbounds %struct.ocfs2_cow_context, %struct.ocfs2_cow_context* %143, i32 0, i32 1
  %145 = load i32*, i32** %144, align 8
  %146 = load %struct.ocfs2_cow_context*, %struct.ocfs2_cow_context** %9, align 8
  %147 = getelementptr inbounds %struct.ocfs2_cow_context, %struct.ocfs2_cow_context* %146, i32 0, i32 5
  %148 = call i32 @ocfs2_clear_ext_refcount(i32* %136, i32* %138, i32 %139, i32 %140, i32 %141, i32 %142, i32* %145, i32* %147)
  store i32 %148, i32* %14, align 4
  %149 = load i32, i32* %14, align 4
  %150 = icmp ne i32 %149, 0
  br i1 %150, label %151, label %154

151:                                              ; preds = %135
  %152 = load i32, i32* %14, align 4
  %153 = call i32 @mlog_errno(i32 %152)
  br label %270

154:                                              ; preds = %135
  br label %183

155:                                              ; preds = %110
  store i32 1, i32* %15, align 4
  %156 = load i32*, i32** %23, align 8
  %157 = load %struct.ocfs2_cow_context*, %struct.ocfs2_cow_context** %9, align 8
  %158 = getelementptr inbounds %struct.ocfs2_cow_context, %struct.ocfs2_cow_context* %157, i32 0, i32 2
  %159 = load i32*, i32** %158, align 8
  %160 = load i32, i32* %21, align 4
  %161 = call i32 @__ocfs2_claim_clusters(i32* %156, i32* %159, i32 1, i32 %160, i32* %18, i32* %19)
  store i32 %161, i32* %14, align 4
  %162 = load i32, i32* %14, align 4
  %163 = icmp ne i32 %162, 0
  br i1 %163, label %164, label %167

164:                                              ; preds = %155
  %165 = load i32, i32* %14, align 4
  %166 = call i32 @mlog_errno(i32 %165)
  br label %270

167:                                              ; preds = %155
  %168 = load i32*, i32** %23, align 8
  %169 = load %struct.ocfs2_cow_context*, %struct.ocfs2_cow_context** %9, align 8
  %170 = load i32, i32* %10, align 4
  %171 = load i32, i32* %11, align 4
  %172 = load i32, i32* %18, align 4
  %173 = load i32, i32* %19, align 4
  %174 = load i32, i32* %13, align 4
  %175 = call i32 @ocfs2_replace_clusters(i32* %168, %struct.ocfs2_cow_context* %169, i32 %170, i32 %171, i32 %172, i32 %173, i32 %174)
  store i32 %175, i32* %14, align 4
  %176 = load i32, i32* %14, align 4
  %177 = icmp ne i32 %176, 0
  br i1 %177, label %178, label %181

178:                                              ; preds = %167
  %179 = load i32, i32* %14, align 4
  %180 = call i32 @mlog_errno(i32 %179)
  br label %270

181:                                              ; preds = %167
  %182 = load i32, i32* %19, align 4
  store i32 %182, i32* %21, align 4
  br label %183

183:                                              ; preds = %181, %154
  %184 = load i32*, i32** %23, align 8
  %185 = load %struct.ocfs2_caching_info*, %struct.ocfs2_caching_info** %25, align 8
  %186 = load %struct.ocfs2_cow_context*, %struct.ocfs2_cow_context** %9, align 8
  %187 = getelementptr inbounds %struct.ocfs2_cow_context, %struct.ocfs2_cow_context* %186, i32 0, i32 6
  %188 = load i32, i32* %187, align 4
  %189 = load i32, i32* %11, align 4
  %190 = load i32, i32* %21, align 4
  %191 = load %struct.ocfs2_cow_context*, %struct.ocfs2_cow_context** %9, align 8
  %192 = getelementptr inbounds %struct.ocfs2_cow_context, %struct.ocfs2_cow_context* %191, i32 0, i32 1
  %193 = load i32*, i32** %192, align 8
  %194 = load %struct.ocfs2_cow_context*, %struct.ocfs2_cow_context** %9, align 8
  %195 = getelementptr inbounds %struct.ocfs2_cow_context, %struct.ocfs2_cow_context* %194, i32 0, i32 5
  %196 = load i32, i32* %15, align 4
  %197 = call i32 @__ocfs2_decrease_refcount(i32* %184, %struct.ocfs2_caching_info* %185, i32 %188, i32 %189, i32 %190, i32* %193, i32* %195, i32 %196)
  store i32 %197, i32* %14, align 4
  %198 = load i32, i32* %14, align 4
  %199 = icmp ne i32 %198, 0
  br i1 %199, label %200, label %203

200:                                              ; preds = %183
  %201 = load i32, i32* %14, align 4
  %202 = call i32 @mlog_errno(i32 %201)
  br label %270

203:                                              ; preds = %183
  %204 = load i32, i32* %21, align 4
  %205 = load i32, i32* %10, align 4
  %206 = add i32 %205, %204
  store i32 %206, i32* %10, align 4
  %207 = load i32, i32* %21, align 4
  %208 = load i32, i32* %11, align 4
  %209 = add i32 %208, %207
  store i32 %209, i32* %11, align 4
  %210 = load i32, i32* %21, align 4
  %211 = load i32, i32* %12, align 4
  %212 = sub i32 %211, %210
  store i32 %212, i32* %12, align 4
  %213 = load %struct.buffer_head*, %struct.buffer_head** %24, align 8
  %214 = call i32 @brelse(%struct.buffer_head* %213)
  store %struct.buffer_head* null, %struct.buffer_head** %24, align 8
  br label %94

215:                                              ; preds = %94
  %216 = load %struct.ocfs2_cow_context*, %struct.ocfs2_cow_context** %9, align 8
  %217 = getelementptr inbounds %struct.ocfs2_cow_context, %struct.ocfs2_cow_context* %216, i32 0, i32 4
  %218 = load %struct.TYPE_4__*, %struct.TYPE_4__** %217, align 8
  %219 = icmp ne %struct.TYPE_4__* %218, null
  br i1 %219, label %220, label %249

220:                                              ; preds = %215
  %221 = load %struct.ocfs2_cow_context*, %struct.ocfs2_cow_context** %9, align 8
  %222 = getelementptr inbounds %struct.ocfs2_cow_context, %struct.ocfs2_cow_context* %221, i32 0, i32 4
  %223 = load %struct.TYPE_4__*, %struct.TYPE_4__** %222, align 8
  %224 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %223, i32 0, i32 0
  %225 = load i32 (i32, i32*, i32)*, i32 (i32, i32*, i32)** %224, align 8
  %226 = icmp ne i32 (i32, i32*, i32)* %225, null
  br i1 %226, label %227, label %249

227:                                              ; preds = %220
  %228 = load %struct.ocfs2_cow_context*, %struct.ocfs2_cow_context** %9, align 8
  %229 = getelementptr inbounds %struct.ocfs2_cow_context, %struct.ocfs2_cow_context* %228, i32 0, i32 4
  %230 = load %struct.TYPE_4__*, %struct.TYPE_4__** %229, align 8
  %231 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %230, i32 0, i32 0
  %232 = load i32 (i32, i32*, i32)*, i32 (i32, i32*, i32)** %231, align 8
  %233 = load %struct.ocfs2_cow_context*, %struct.ocfs2_cow_context** %9, align 8
  %234 = getelementptr inbounds %struct.ocfs2_cow_context, %struct.ocfs2_cow_context* %233, i32 0, i32 3
  %235 = load i32, i32* %234, align 8
  %236 = load i32*, i32** %23, align 8
  %237 = load %struct.ocfs2_cow_context*, %struct.ocfs2_cow_context** %9, align 8
  %238 = getelementptr inbounds %struct.ocfs2_cow_context, %struct.ocfs2_cow_context* %237, i32 0, i32 4
  %239 = load %struct.TYPE_4__*, %struct.TYPE_4__** %238, align 8
  %240 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %239, i32 0, i32 1
  %241 = load i32, i32* %240, align 8
  %242 = call i32 %232(i32 %235, i32* %236, i32 %241)
  store i32 %242, i32* %14, align 4
  %243 = load i32, i32* %14, align 4
  %244 = icmp ne i32 %243, 0
  br i1 %244, label %245, label %248

245:                                              ; preds = %227
  %246 = load i32, i32* %14, align 4
  %247 = call i32 @mlog_errno(i32 %246)
  br label %270

248:                                              ; preds = %227
  br label %249

249:                                              ; preds = %248, %220, %215
  %250 = load %struct.ocfs2_cow_context*, %struct.ocfs2_cow_context** %9, align 8
  %251 = getelementptr inbounds %struct.ocfs2_cow_context, %struct.ocfs2_cow_context* %250, i32 0, i32 0
  %252 = load i64, i64* %251, align 8
  %253 = load i64, i64* @ocfs2_di_get_clusters, align 8
  %254 = icmp eq i64 %252, %253
  br i1 %254, label %255, label %269

255:                                              ; preds = %249
  %256 = load %struct.super_block*, %struct.super_block** %8, align 8
  %257 = load %struct.ocfs2_cow_context*, %struct.ocfs2_cow_context** %9, align 8
  %258 = getelementptr inbounds %struct.ocfs2_cow_context, %struct.ocfs2_cow_context* %257, i32 0, i32 3
  %259 = load i32, i32* %258, align 8
  %260 = load i32, i32* %10, align 4
  %261 = load i32, i32* %20, align 4
  %262 = call i32 @ocfs2_cow_sync_writeback(%struct.super_block* %256, i32 %259, i32 %260, i32 %261)
  store i32 %262, i32* %14, align 4
  %263 = load i32, i32* %14, align 4
  %264 = icmp ne i32 %263, 0
  br i1 %264, label %265, label %268

265:                                              ; preds = %255
  %266 = load i32, i32* %14, align 4
  %267 = call i32 @mlog_errno(i32 %266)
  br label %268

268:                                              ; preds = %265, %255
  br label %269

269:                                              ; preds = %268, %249
  br label %270

270:                                              ; preds = %269, %245, %200, %178, %164, %151, %107
  %271 = load %struct.ocfs2_super*, %struct.ocfs2_super** %22, align 8
  %272 = load i32*, i32** %23, align 8
  %273 = call i32 @ocfs2_commit_trans(%struct.ocfs2_super* %271, i32* %272)
  br label %274

274:                                              ; preds = %270, %87
  %275 = load %struct.ocfs2_cow_context*, %struct.ocfs2_cow_context** %9, align 8
  %276 = getelementptr inbounds %struct.ocfs2_cow_context, %struct.ocfs2_cow_context* %275, i32 0, i32 2
  %277 = load i32*, i32** %276, align 8
  %278 = icmp ne i32* %277, null
  br i1 %278, label %279, label %286

279:                                              ; preds = %274
  %280 = load %struct.ocfs2_cow_context*, %struct.ocfs2_cow_context** %9, align 8
  %281 = getelementptr inbounds %struct.ocfs2_cow_context, %struct.ocfs2_cow_context* %280, i32 0, i32 2
  %282 = load i32*, i32** %281, align 8
  %283 = call i32 @ocfs2_free_alloc_context(i32* %282)
  %284 = load %struct.ocfs2_cow_context*, %struct.ocfs2_cow_context** %9, align 8
  %285 = getelementptr inbounds %struct.ocfs2_cow_context, %struct.ocfs2_cow_context* %284, i32 0, i32 2
  store i32* null, i32** %285, align 8
  br label %286

286:                                              ; preds = %279, %274
  %287 = load %struct.ocfs2_cow_context*, %struct.ocfs2_cow_context** %9, align 8
  %288 = getelementptr inbounds %struct.ocfs2_cow_context, %struct.ocfs2_cow_context* %287, i32 0, i32 1
  %289 = load i32*, i32** %288, align 8
  %290 = icmp ne i32* %289, null
  br i1 %290, label %291, label %298

291:                                              ; preds = %286
  %292 = load %struct.ocfs2_cow_context*, %struct.ocfs2_cow_context** %9, align 8
  %293 = getelementptr inbounds %struct.ocfs2_cow_context, %struct.ocfs2_cow_context* %292, i32 0, i32 1
  %294 = load i32*, i32** %293, align 8
  %295 = call i32 @ocfs2_free_alloc_context(i32* %294)
  %296 = load %struct.ocfs2_cow_context*, %struct.ocfs2_cow_context** %9, align 8
  %297 = getelementptr inbounds %struct.ocfs2_cow_context, %struct.ocfs2_cow_context* %296, i32 0, i32 1
  store i32* null, i32** %297, align 8
  br label %298

298:                                              ; preds = %291, %286
  %299 = load %struct.buffer_head*, %struct.buffer_head** %24, align 8
  %300 = call i32 @brelse(%struct.buffer_head* %299)
  %301 = load i32, i32* %14, align 4
  store i32 %301, i32* %7, align 4
  br label %302

302:                                              ; preds = %298, %54
  %303 = load i32, i32* %7, align 4
  ret i32 %303
}

declare dso_local %struct.ocfs2_super* @OCFS2_SB(%struct.super_block*) #1

declare dso_local i32 @trace_ocfs2_make_clusters_writable(i32, i32, i32, i32) #1

declare dso_local i32 @ocfs2_lock_refcount_allocators(%struct.super_block*, i32, i32, i32*, %struct.ocfs2_caching_info*, i32, i32**, i32**, i32*) #1

declare dso_local i32 @mlog_errno(i32) #1

declare dso_local i32* @ocfs2_start_trans(%struct.ocfs2_super*, i32) #1

declare dso_local i64 @IS_ERR(i32*) #1

declare dso_local i32 @PTR_ERR(i32*) #1

declare dso_local i32 @ocfs2_get_refcount_rec(%struct.ocfs2_caching_info*, i32, i32, i32, %struct.ocfs2_refcount_rec*, i32*, %struct.buffer_head**) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @min(i32, i64) #1

declare dso_local i64 @le64_to_cpu(i32) #1

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i32 @ocfs2_clear_ext_refcount(i32*, i32*, i32, i32, i32, i32, i32*, i32*) #1

declare dso_local i32 @__ocfs2_claim_clusters(i32*, i32*, i32, i32, i32*, i32*) #1

declare dso_local i32 @ocfs2_replace_clusters(i32*, %struct.ocfs2_cow_context*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @__ocfs2_decrease_refcount(i32*, %struct.ocfs2_caching_info*, i32, i32, i32, i32*, i32*, i32) #1

declare dso_local i32 @brelse(%struct.buffer_head*) #1

declare dso_local i32 @ocfs2_cow_sync_writeback(%struct.super_block*, i32, i32, i32) #1

declare dso_local i32 @ocfs2_commit_trans(%struct.ocfs2_super*, i32*) #1

declare dso_local i32 @ocfs2_free_alloc_context(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
