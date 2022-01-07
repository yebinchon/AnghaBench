; ModuleID = '/home/carl/AnghaBench/linux/mm/extr_truncate.c_truncate_inode_pages_range.c'
source_filename = "/home/carl/AnghaBench/linux/mm/extr_truncate.c_truncate_inode_pages_range.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.address_space = type { i64, i64 }
%struct.pagevec = type { %struct.page** }
%struct.page = type { %struct.address_space* }

@PAGEVEC_SIZE = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@PAGE_SHIFT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @truncate_inode_pages_range(%struct.address_space* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.address_space*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.pagevec, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.pagevec, align 8
  %17 = alloca %struct.page*, align 8
  %18 = alloca %struct.page*, align 8
  %19 = alloca i32, align 4
  %20 = alloca %struct.page*, align 8
  %21 = alloca %struct.page*, align 8
  store %struct.address_space* %0, %struct.address_space** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %22 = load i32, i32* @PAGEVEC_SIZE, align 4
  %23 = zext i32 %22 to i64
  %24 = call i8* @llvm.stacksave()
  store i8* %24, i8** %12, align 8
  %25 = alloca i32, i64 %23, align 16
  store i64 %23, i64* %13, align 8
  %26 = load %struct.address_space*, %struct.address_space** %4, align 8
  %27 = getelementptr inbounds %struct.address_space, %struct.address_space* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = icmp eq i64 %28, 0
  br i1 %29, label %30, label %36

30:                                               ; preds = %3
  %31 = load %struct.address_space*, %struct.address_space** %4, align 8
  %32 = getelementptr inbounds %struct.address_space, %struct.address_space* %31, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  %34 = icmp eq i64 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %30
  br label %346

36:                                               ; preds = %30, %3
  %37 = load i32, i32* %5, align 4
  %38 = load i32, i32* @PAGE_SIZE, align 4
  %39 = sub nsw i32 %38, 1
  %40 = and i32 %37, %39
  store i32 %40, i32* %9, align 4
  %41 = load i32, i32* %6, align 4
  %42 = add nsw i32 %41, 1
  %43 = load i32, i32* @PAGE_SIZE, align 4
  %44 = sub nsw i32 %43, 1
  %45 = and i32 %42, %44
  store i32 %45, i32* %10, align 4
  %46 = load i32, i32* %5, align 4
  %47 = load i32, i32* @PAGE_SIZE, align 4
  %48 = add nsw i32 %46, %47
  %49 = sub nsw i32 %48, 1
  %50 = load i32, i32* @PAGE_SHIFT, align 4
  %51 = ashr i32 %49, %50
  store i32 %51, i32* %7, align 4
  %52 = load i32, i32* %6, align 4
  %53 = icmp eq i32 %52, -1
  br i1 %53, label %54, label %55

54:                                               ; preds = %36
  store i32 -1, i32* %8, align 4
  br label %60

55:                                               ; preds = %36
  %56 = load i32, i32* %6, align 4
  %57 = add nsw i32 %56, 1
  %58 = load i32, i32* @PAGE_SHIFT, align 4
  %59 = ashr i32 %57, %58
  store i32 %59, i32* %8, align 4
  br label %60

60:                                               ; preds = %55, %54
  %61 = call i32 @pagevec_init(%struct.pagevec* %11)
  %62 = load i32, i32* %7, align 4
  store i32 %62, i32* %14, align 4
  br label %63

63:                                               ; preds = %173, %60
  %64 = load i32, i32* %14, align 4
  %65 = load i32, i32* %8, align 4
  %66 = icmp slt i32 %64, %65
  br i1 %66, label %67, label %77

67:                                               ; preds = %63
  %68 = load %struct.address_space*, %struct.address_space** %4, align 8
  %69 = load i32, i32* %14, align 4
  %70 = load i32, i32* %8, align 4
  %71 = load i32, i32* %14, align 4
  %72 = sub nsw i32 %70, %71
  %73 = load i32, i32* @PAGEVEC_SIZE, align 4
  %74 = call i32 @min(i32 %72, i32 %73)
  %75 = call i64 @pagevec_lookup_entries(%struct.pagevec* %11, %struct.address_space* %68, i32 %69, i32 %74, i32* %25)
  %76 = icmp ne i64 %75, 0
  br label %77

77:                                               ; preds = %67, %63
  %78 = phi i1 [ false, %63 ], [ %76, %67 ]
  br i1 %78, label %79, label %181

79:                                               ; preds = %77
  %80 = call i32 @pagevec_init(%struct.pagevec* %16)
  store i32 0, i32* %15, align 4
  br label %81

81:                                               ; preds = %135, %79
  %82 = load i32, i32* %15, align 4
  %83 = call i32 @pagevec_count(%struct.pagevec* %11)
  %84 = icmp slt i32 %82, %83
  br i1 %84, label %85, label %138

85:                                               ; preds = %81
  %86 = getelementptr inbounds %struct.pagevec, %struct.pagevec* %11, i32 0, i32 0
  %87 = load %struct.page**, %struct.page*** %86, align 8
  %88 = load i32, i32* %15, align 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds %struct.page*, %struct.page** %87, i64 %89
  %91 = load %struct.page*, %struct.page** %90, align 8
  store %struct.page* %91, %struct.page** %17, align 8
  %92 = load i32, i32* %15, align 4
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds i32, i32* %25, i64 %93
  %95 = load i32, i32* %94, align 4
  store i32 %95, i32* %14, align 4
  %96 = load i32, i32* %14, align 4
  %97 = load i32, i32* %8, align 4
  %98 = icmp sge i32 %96, %97
  br i1 %98, label %99, label %100

99:                                               ; preds = %85
  br label %138

100:                                              ; preds = %85
  %101 = load %struct.page*, %struct.page** %17, align 8
  %102 = call i64 @xa_is_value(%struct.page* %101)
  %103 = icmp ne i64 %102, 0
  br i1 %103, label %104, label %105

104:                                              ; preds = %100
  br label %135

105:                                              ; preds = %100
  %106 = load %struct.page*, %struct.page** %17, align 8
  %107 = call i32 @trylock_page(%struct.page* %106)
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %110, label %109

109:                                              ; preds = %105
  br label %135

110:                                              ; preds = %105
  %111 = load %struct.page*, %struct.page** %17, align 8
  %112 = call i32 @page_to_index(%struct.page* %111)
  %113 = load i32, i32* %14, align 4
  %114 = icmp ne i32 %112, %113
  %115 = zext i1 %114 to i32
  %116 = call i32 @WARN_ON(i32 %115)
  %117 = load %struct.page*, %struct.page** %17, align 8
  %118 = call i64 @PageWriteback(%struct.page* %117)
  %119 = icmp ne i64 %118, 0
  br i1 %119, label %120, label %123

120:                                              ; preds = %110
  %121 = load %struct.page*, %struct.page** %17, align 8
  %122 = call i32 @unlock_page(%struct.page* %121)
  br label %135

123:                                              ; preds = %110
  %124 = load %struct.page*, %struct.page** %17, align 8
  %125 = getelementptr inbounds %struct.page, %struct.page* %124, i32 0, i32 0
  %126 = load %struct.address_space*, %struct.address_space** %125, align 8
  %127 = load %struct.address_space*, %struct.address_space** %4, align 8
  %128 = icmp ne %struct.address_space* %126, %127
  br i1 %128, label %129, label %132

129:                                              ; preds = %123
  %130 = load %struct.page*, %struct.page** %17, align 8
  %131 = call i32 @unlock_page(%struct.page* %130)
  br label %135

132:                                              ; preds = %123
  %133 = load %struct.page*, %struct.page** %17, align 8
  %134 = call i32 @pagevec_add(%struct.pagevec* %16, %struct.page* %133)
  br label %135

135:                                              ; preds = %132, %129, %120, %109, %104
  %136 = load i32, i32* %15, align 4
  %137 = add nsw i32 %136, 1
  store i32 %137, i32* %15, align 4
  br label %81

138:                                              ; preds = %99, %81
  store i32 0, i32* %15, align 4
  br label %139

139:                                              ; preds = %152, %138
  %140 = load i32, i32* %15, align 4
  %141 = call i32 @pagevec_count(%struct.pagevec* %16)
  %142 = icmp slt i32 %140, %141
  br i1 %142, label %143, label %155

143:                                              ; preds = %139
  %144 = load %struct.address_space*, %struct.address_space** %4, align 8
  %145 = getelementptr inbounds %struct.pagevec, %struct.pagevec* %16, i32 0, i32 0
  %146 = load %struct.page**, %struct.page*** %145, align 8
  %147 = load i32, i32* %15, align 4
  %148 = sext i32 %147 to i64
  %149 = getelementptr inbounds %struct.page*, %struct.page** %146, i64 %148
  %150 = load %struct.page*, %struct.page** %149, align 8
  %151 = call i32 @truncate_cleanup_page(%struct.address_space* %144, %struct.page* %150)
  br label %152

152:                                              ; preds = %143
  %153 = load i32, i32* %15, align 4
  %154 = add nsw i32 %153, 1
  store i32 %154, i32* %15, align 4
  br label %139

155:                                              ; preds = %139
  %156 = load %struct.address_space*, %struct.address_space** %4, align 8
  %157 = call i32 @delete_from_page_cache_batch(%struct.address_space* %156, %struct.pagevec* %16)
  store i32 0, i32* %15, align 4
  br label %158

158:                                              ; preds = %170, %155
  %159 = load i32, i32* %15, align 4
  %160 = call i32 @pagevec_count(%struct.pagevec* %16)
  %161 = icmp slt i32 %159, %160
  br i1 %161, label %162, label %173

162:                                              ; preds = %158
  %163 = getelementptr inbounds %struct.pagevec, %struct.pagevec* %16, i32 0, i32 0
  %164 = load %struct.page**, %struct.page*** %163, align 8
  %165 = load i32, i32* %15, align 4
  %166 = sext i32 %165 to i64
  %167 = getelementptr inbounds %struct.page*, %struct.page** %164, i64 %166
  %168 = load %struct.page*, %struct.page** %167, align 8
  %169 = call i32 @unlock_page(%struct.page* %168)
  br label %170

170:                                              ; preds = %162
  %171 = load i32, i32* %15, align 4
  %172 = add nsw i32 %171, 1
  store i32 %172, i32* %15, align 4
  br label %158

173:                                              ; preds = %158
  %174 = load %struct.address_space*, %struct.address_space** %4, align 8
  %175 = load i32, i32* %8, align 4
  %176 = call i32 @truncate_exceptional_pvec_entries(%struct.address_space* %174, %struct.pagevec* %11, i32* %25, i32 %175)
  %177 = call i32 @pagevec_release(%struct.pagevec* %11)
  %178 = call i32 (...) @cond_resched()
  %179 = load i32, i32* %14, align 4
  %180 = add nsw i32 %179, 1
  store i32 %180, i32* %14, align 4
  br label %63

181:                                              ; preds = %77
  %182 = load i32, i32* %9, align 4
  %183 = icmp ne i32 %182, 0
  br i1 %183, label %184, label %224

184:                                              ; preds = %181
  %185 = load %struct.address_space*, %struct.address_space** %4, align 8
  %186 = load i32, i32* %7, align 4
  %187 = sub nsw i32 %186, 1
  %188 = call %struct.page* @find_lock_page(%struct.address_space* %185, i32 %187)
  store %struct.page* %188, %struct.page** %18, align 8
  %189 = load %struct.page*, %struct.page** %18, align 8
  %190 = icmp ne %struct.page* %189, null
  br i1 %190, label %191, label %223

191:                                              ; preds = %184
  %192 = load i32, i32* @PAGE_SIZE, align 4
  store i32 %192, i32* %19, align 4
  %193 = load i32, i32* %7, align 4
  %194 = load i32, i32* %8, align 4
  %195 = icmp sgt i32 %193, %194
  br i1 %195, label %196, label %198

196:                                              ; preds = %191
  %197 = load i32, i32* %10, align 4
  store i32 %197, i32* %19, align 4
  store i32 0, i32* %10, align 4
  br label %198

198:                                              ; preds = %196, %191
  %199 = load %struct.page*, %struct.page** %18, align 8
  %200 = call i32 @wait_on_page_writeback(%struct.page* %199)
  %201 = load %struct.page*, %struct.page** %18, align 8
  %202 = load i32, i32* %9, align 4
  %203 = load i32, i32* %19, align 4
  %204 = call i32 @zero_user_segment(%struct.page* %201, i32 %202, i32 %203)
  %205 = load %struct.address_space*, %struct.address_space** %4, align 8
  %206 = load %struct.page*, %struct.page** %18, align 8
  %207 = call i32 @cleancache_invalidate_page(%struct.address_space* %205, %struct.page* %206)
  %208 = load %struct.page*, %struct.page** %18, align 8
  %209 = call i64 @page_has_private(%struct.page* %208)
  %210 = icmp ne i64 %209, 0
  br i1 %210, label %211, label %218

211:                                              ; preds = %198
  %212 = load %struct.page*, %struct.page** %18, align 8
  %213 = load i32, i32* %9, align 4
  %214 = load i32, i32* %19, align 4
  %215 = load i32, i32* %9, align 4
  %216 = sub i32 %214, %215
  %217 = call i32 @do_invalidatepage(%struct.page* %212, i32 %213, i32 %216)
  br label %218

218:                                              ; preds = %211, %198
  %219 = load %struct.page*, %struct.page** %18, align 8
  %220 = call i32 @unlock_page(%struct.page* %219)
  %221 = load %struct.page*, %struct.page** %18, align 8
  %222 = call i32 @put_page(%struct.page* %221)
  br label %223

223:                                              ; preds = %218, %184
  br label %224

224:                                              ; preds = %223, %181
  %225 = load i32, i32* %10, align 4
  %226 = icmp ne i32 %225, 0
  br i1 %226, label %227, label %255

227:                                              ; preds = %224
  %228 = load %struct.address_space*, %struct.address_space** %4, align 8
  %229 = load i32, i32* %8, align 4
  %230 = call %struct.page* @find_lock_page(%struct.address_space* %228, i32 %229)
  store %struct.page* %230, %struct.page** %20, align 8
  %231 = load %struct.page*, %struct.page** %20, align 8
  %232 = icmp ne %struct.page* %231, null
  br i1 %232, label %233, label %254

233:                                              ; preds = %227
  %234 = load %struct.page*, %struct.page** %20, align 8
  %235 = call i32 @wait_on_page_writeback(%struct.page* %234)
  %236 = load %struct.page*, %struct.page** %20, align 8
  %237 = load i32, i32* %10, align 4
  %238 = call i32 @zero_user_segment(%struct.page* %236, i32 0, i32 %237)
  %239 = load %struct.address_space*, %struct.address_space** %4, align 8
  %240 = load %struct.page*, %struct.page** %20, align 8
  %241 = call i32 @cleancache_invalidate_page(%struct.address_space* %239, %struct.page* %240)
  %242 = load %struct.page*, %struct.page** %20, align 8
  %243 = call i64 @page_has_private(%struct.page* %242)
  %244 = icmp ne i64 %243, 0
  br i1 %244, label %245, label %249

245:                                              ; preds = %233
  %246 = load %struct.page*, %struct.page** %20, align 8
  %247 = load i32, i32* %10, align 4
  %248 = call i32 @do_invalidatepage(%struct.page* %246, i32 0, i32 %247)
  br label %249

249:                                              ; preds = %245, %233
  %250 = load %struct.page*, %struct.page** %20, align 8
  %251 = call i32 @unlock_page(%struct.page* %250)
  %252 = load %struct.page*, %struct.page** %20, align 8
  %253 = call i32 @put_page(%struct.page* %252)
  br label %254

254:                                              ; preds = %249, %227
  br label %255

255:                                              ; preds = %254, %224
  %256 = load i32, i32* %7, align 4
  %257 = load i32, i32* %8, align 4
  %258 = icmp sge i32 %256, %257
  br i1 %258, label %259, label %260

259:                                              ; preds = %255
  br label %346

260:                                              ; preds = %255
  %261 = load i32, i32* %7, align 4
  store i32 %261, i32* %14, align 4
  br label %262

262:                                              ; preds = %338, %278, %260
  %263 = call i32 (...) @cond_resched()
  %264 = load %struct.address_space*, %struct.address_space** %4, align 8
  %265 = load i32, i32* %14, align 4
  %266 = load i32, i32* %8, align 4
  %267 = load i32, i32* %14, align 4
  %268 = sub nsw i32 %266, %267
  %269 = load i32, i32* @PAGEVEC_SIZE, align 4
  %270 = call i32 @min(i32 %268, i32 %269)
  %271 = call i64 @pagevec_lookup_entries(%struct.pagevec* %11, %struct.address_space* %264, i32 %265, i32 %270, i32* %25)
  %272 = icmp ne i64 %271, 0
  br i1 %272, label %280, label %273

273:                                              ; preds = %262
  %274 = load i32, i32* %14, align 4
  %275 = load i32, i32* %7, align 4
  %276 = icmp eq i32 %274, %275
  br i1 %276, label %277, label %278

277:                                              ; preds = %273
  br label %345

278:                                              ; preds = %273
  %279 = load i32, i32* %7, align 4
  store i32 %279, i32* %14, align 4
  br label %262

280:                                              ; preds = %262
  %281 = load i32, i32* %14, align 4
  %282 = load i32, i32* %7, align 4
  %283 = icmp eq i32 %281, %282
  br i1 %283, label %284, label %292

284:                                              ; preds = %280
  %285 = getelementptr inbounds i32, i32* %25, i64 0
  %286 = load i32, i32* %285, align 16
  %287 = load i32, i32* %8, align 4
  %288 = icmp sge i32 %286, %287
  br i1 %288, label %289, label %292

289:                                              ; preds = %284
  %290 = call i32 @pagevec_remove_exceptionals(%struct.pagevec* %11)
  %291 = call i32 @pagevec_release(%struct.pagevec* %11)
  br label %345

292:                                              ; preds = %284, %280
  store i32 0, i32* %15, align 4
  br label %293

293:                                              ; preds = %335, %292
  %294 = load i32, i32* %15, align 4
  %295 = call i32 @pagevec_count(%struct.pagevec* %11)
  %296 = icmp slt i32 %294, %295
  br i1 %296, label %297, label %338

297:                                              ; preds = %293
  %298 = getelementptr inbounds %struct.pagevec, %struct.pagevec* %11, i32 0, i32 0
  %299 = load %struct.page**, %struct.page*** %298, align 8
  %300 = load i32, i32* %15, align 4
  %301 = sext i32 %300 to i64
  %302 = getelementptr inbounds %struct.page*, %struct.page** %299, i64 %301
  %303 = load %struct.page*, %struct.page** %302, align 8
  store %struct.page* %303, %struct.page** %21, align 8
  %304 = load i32, i32* %15, align 4
  %305 = sext i32 %304 to i64
  %306 = getelementptr inbounds i32, i32* %25, i64 %305
  %307 = load i32, i32* %306, align 4
  store i32 %307, i32* %14, align 4
  %308 = load i32, i32* %14, align 4
  %309 = load i32, i32* %8, align 4
  %310 = icmp sge i32 %308, %309
  br i1 %310, label %311, label %314

311:                                              ; preds = %297
  %312 = load i32, i32* %7, align 4
  %313 = sub nsw i32 %312, 1
  store i32 %313, i32* %14, align 4
  br label %338

314:                                              ; preds = %297
  %315 = load %struct.page*, %struct.page** %21, align 8
  %316 = call i64 @xa_is_value(%struct.page* %315)
  %317 = icmp ne i64 %316, 0
  br i1 %317, label %318, label %319

318:                                              ; preds = %314
  br label %335

319:                                              ; preds = %314
  %320 = load %struct.page*, %struct.page** %21, align 8
  %321 = call i32 @lock_page(%struct.page* %320)
  %322 = load %struct.page*, %struct.page** %21, align 8
  %323 = call i32 @page_to_index(%struct.page* %322)
  %324 = load i32, i32* %14, align 4
  %325 = icmp ne i32 %323, %324
  %326 = zext i1 %325 to i32
  %327 = call i32 @WARN_ON(i32 %326)
  %328 = load %struct.page*, %struct.page** %21, align 8
  %329 = call i32 @wait_on_page_writeback(%struct.page* %328)
  %330 = load %struct.address_space*, %struct.address_space** %4, align 8
  %331 = load %struct.page*, %struct.page** %21, align 8
  %332 = call i32 @truncate_inode_page(%struct.address_space* %330, %struct.page* %331)
  %333 = load %struct.page*, %struct.page** %21, align 8
  %334 = call i32 @unlock_page(%struct.page* %333)
  br label %335

335:                                              ; preds = %319, %318
  %336 = load i32, i32* %15, align 4
  %337 = add nsw i32 %336, 1
  store i32 %337, i32* %15, align 4
  br label %293

338:                                              ; preds = %311, %293
  %339 = load %struct.address_space*, %struct.address_space** %4, align 8
  %340 = load i32, i32* %8, align 4
  %341 = call i32 @truncate_exceptional_pvec_entries(%struct.address_space* %339, %struct.pagevec* %11, i32* %25, i32 %340)
  %342 = call i32 @pagevec_release(%struct.pagevec* %11)
  %343 = load i32, i32* %14, align 4
  %344 = add nsw i32 %343, 1
  store i32 %344, i32* %14, align 4
  br label %262

345:                                              ; preds = %289, %277
  br label %346

346:                                              ; preds = %345, %259, %35
  %347 = load %struct.address_space*, %struct.address_space** %4, align 8
  %348 = call i32 @cleancache_invalidate_inode(%struct.address_space* %347)
  %349 = load i8*, i8** %12, align 8
  call void @llvm.stackrestore(i8* %349)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @pagevec_init(%struct.pagevec*) #2

declare dso_local i64 @pagevec_lookup_entries(%struct.pagevec*, %struct.address_space*, i32, i32, i32*) #2

declare dso_local i32 @min(i32, i32) #2

declare dso_local i32 @pagevec_count(%struct.pagevec*) #2

declare dso_local i64 @xa_is_value(%struct.page*) #2

declare dso_local i32 @trylock_page(%struct.page*) #2

declare dso_local i32 @WARN_ON(i32) #2

declare dso_local i32 @page_to_index(%struct.page*) #2

declare dso_local i64 @PageWriteback(%struct.page*) #2

declare dso_local i32 @unlock_page(%struct.page*) #2

declare dso_local i32 @pagevec_add(%struct.pagevec*, %struct.page*) #2

declare dso_local i32 @truncate_cleanup_page(%struct.address_space*, %struct.page*) #2

declare dso_local i32 @delete_from_page_cache_batch(%struct.address_space*, %struct.pagevec*) #2

declare dso_local i32 @truncate_exceptional_pvec_entries(%struct.address_space*, %struct.pagevec*, i32*, i32) #2

declare dso_local i32 @pagevec_release(%struct.pagevec*) #2

declare dso_local i32 @cond_resched(...) #2

declare dso_local %struct.page* @find_lock_page(%struct.address_space*, i32) #2

declare dso_local i32 @wait_on_page_writeback(%struct.page*) #2

declare dso_local i32 @zero_user_segment(%struct.page*, i32, i32) #2

declare dso_local i32 @cleancache_invalidate_page(%struct.address_space*, %struct.page*) #2

declare dso_local i64 @page_has_private(%struct.page*) #2

declare dso_local i32 @do_invalidatepage(%struct.page*, i32, i32) #2

declare dso_local i32 @put_page(%struct.page*) #2

declare dso_local i32 @pagevec_remove_exceptionals(%struct.pagevec*) #2

declare dso_local i32 @lock_page(%struct.page*) #2

declare dso_local i32 @truncate_inode_page(%struct.address_space*, %struct.page*) #2

declare dso_local i32 @cleancache_invalidate_inode(%struct.address_space*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
