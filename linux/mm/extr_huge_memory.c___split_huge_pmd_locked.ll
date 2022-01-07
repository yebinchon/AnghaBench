; ModuleID = '/home/carl/AnghaBench/linux/mm/extr_huge_memory.c___split_huge_pmd_locked.c'
source_filename = "/home/carl/AnghaBench/linux/mm/extr_huge_memory.c___split_huge_pmd_locked.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vm_area_struct = type { i64, i64, i32, %struct.mm_struct* }
%struct.mm_struct = type { i32 }
%struct.page = type { i32 }

@HPAGE_PMD_MASK = common dso_local global i64 0, align 8
@HPAGE_PMD_SIZE = common dso_local global i64 0, align 8
@THP_SPLIT_PMD = common dso_local global i32 0, align 4
@HPAGE_PMD_NR = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i64 0, align 8
@NR_ANON_THPS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vm_area_struct*, i32*, i64, i32)* @__split_huge_pmd_locked to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__split_huge_pmd_locked(%struct.vm_area_struct* %0, i32* %1, i64 %2, i32 %3) #0 {
  %5 = alloca %struct.vm_area_struct*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.mm_struct*, align 8
  %10 = alloca %struct.page*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i64, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32*, align 8
  %23 = alloca i32, align 4
  store %struct.vm_area_struct* %0, %struct.vm_area_struct** %5, align 8
  store i32* %1, i32** %6, align 8
  store i64 %2, i64* %7, align 8
  store i32 %3, i32* %8, align 4
  %24 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %25 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %24, i32 0, i32 3
  %26 = load %struct.mm_struct*, %struct.mm_struct** %25, align 8
  store %struct.mm_struct* %26, %struct.mm_struct** %9, align 8
  store i32 0, i32* %17, align 4
  %27 = load i64, i64* %7, align 8
  %28 = load i64, i64* @HPAGE_PMD_MASK, align 8
  %29 = xor i64 %28, -1
  %30 = and i64 %27, %29
  %31 = trunc i64 %30 to i32
  %32 = call i32 @VM_BUG_ON(i32 %31)
  %33 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %34 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* %7, align 8
  %37 = icmp ugt i64 %35, %36
  %38 = zext i1 %37 to i32
  %39 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %40 = call i32 @VM_BUG_ON_VMA(i32 %38, %struct.vm_area_struct* %39)
  %41 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %42 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %41, i32 0, i32 1
  %43 = load i64, i64* %42, align 8
  %44 = load i64, i64* %7, align 8
  %45 = load i64, i64* @HPAGE_PMD_SIZE, align 8
  %46 = add i64 %44, %45
  %47 = icmp ult i64 %43, %46
  %48 = zext i1 %47 to i32
  %49 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %50 = call i32 @VM_BUG_ON_VMA(i32 %48, %struct.vm_area_struct* %49)
  %51 = load i32*, i32** %6, align 8
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @is_pmd_migration_entry(i32 %52)
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %66, label %55

55:                                               ; preds = %4
  %56 = load i32*, i32** %6, align 8
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @pmd_trans_huge(i32 %57)
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %66, label %60

60:                                               ; preds = %55
  %61 = load i32*, i32** %6, align 8
  %62 = load i32, i32* %61, align 4
  %63 = call i32 @pmd_devmap(i32 %62)
  %64 = icmp ne i32 %63, 0
  %65 = xor i1 %64, true
  br label %66

66:                                               ; preds = %60, %55, %4
  %67 = phi i1 [ false, %55 ], [ false, %4 ], [ %65, %60 ]
  %68 = zext i1 %67 to i32
  %69 = call i32 @VM_BUG_ON(i32 %68)
  %70 = load i32, i32* @THP_SPLIT_PMD, align 4
  %71 = call i32 @count_vm_event(i32 %70)
  %72 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %73 = call i32 @vma_is_anonymous(%struct.vm_area_struct* %72)
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %126, label %75

75:                                               ; preds = %66
  %76 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %77 = load i64, i64* %7, align 8
  %78 = load i32*, i32** %6, align 8
  %79 = call i32 @pmdp_huge_clear_flush_notify(%struct.vm_area_struct* %76, i64 %77, i32* %78)
  store i32 %79, i32* %13, align 4
  %80 = call i64 (...) @arch_needs_pgtable_deposit()
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %86

82:                                               ; preds = %75
  %83 = load %struct.mm_struct*, %struct.mm_struct** %9, align 8
  %84 = load i32*, i32** %6, align 8
  %85 = call i32 @zap_deposited_table(%struct.mm_struct* %83, i32* %84)
  br label %86

86:                                               ; preds = %82, %75
  %87 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %88 = call i64 @vma_is_dax(%struct.vm_area_struct* %87)
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %90, label %91

90:                                               ; preds = %86
  br label %357

91:                                               ; preds = %86
  %92 = load i32, i32* %13, align 4
  %93 = call %struct.page* @pmd_page(i32 %92)
  store %struct.page* %93, %struct.page** %10, align 8
  %94 = load %struct.page*, %struct.page** %10, align 8
  %95 = call i32 @PageDirty(%struct.page* %94)
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %104, label %97

97:                                               ; preds = %91
  %98 = load i32, i32* %13, align 4
  %99 = call i64 @pmd_dirty(i32 %98)
  %100 = icmp ne i64 %99, 0
  br i1 %100, label %101, label %104

101:                                              ; preds = %97
  %102 = load %struct.page*, %struct.page** %10, align 8
  %103 = call i32 @set_page_dirty(%struct.page* %102)
  br label %104

104:                                              ; preds = %101, %97, %91
  %105 = load %struct.page*, %struct.page** %10, align 8
  %106 = call i32 @PageReferenced(%struct.page* %105)
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %115, label %108

108:                                              ; preds = %104
  %109 = load i32, i32* %13, align 4
  %110 = call i32 @pmd_young(i32 %109)
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %112, label %115

112:                                              ; preds = %108
  %113 = load %struct.page*, %struct.page** %10, align 8
  %114 = call i32 @SetPageReferenced(%struct.page* %113)
  br label %115

115:                                              ; preds = %112, %108, %104
  %116 = load %struct.page*, %struct.page** %10, align 8
  %117 = call i32 @page_remove_rmap(%struct.page* %116, i32 1)
  %118 = load %struct.page*, %struct.page** %10, align 8
  %119 = call i32 @put_page(%struct.page* %118)
  %120 = load %struct.mm_struct*, %struct.mm_struct** %9, align 8
  %121 = load %struct.page*, %struct.page** %10, align 8
  %122 = call i32 @mm_counter_file(%struct.page* %121)
  %123 = load i32, i32* @HPAGE_PMD_NR, align 4
  %124 = sub nsw i32 0, %123
  %125 = call i32 @add_mm_counter(%struct.mm_struct* %120, i32 %122, i32 %124)
  br label %357

126:                                              ; preds = %66
  %127 = load i32*, i32** %6, align 8
  %128 = load i32, i32* %127, align 4
  %129 = call i64 @is_huge_zero_pmd(i32 %128)
  %130 = icmp ne i64 %129, 0
  br i1 %130, label %131, label %135

131:                                              ; preds = %126
  %132 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %133 = load i64, i64* %7, align 8
  %134 = load i32*, i32** %6, align 8
  call void @__split_huge_zero_page_pmd(%struct.vm_area_struct* %132, i64 %133, i32* %134)
  br label %357

135:                                              ; preds = %126
  br label %136

136:                                              ; preds = %135
  %137 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %138 = load i64, i64* %7, align 8
  %139 = load i32*, i32** %6, align 8
  %140 = call i32 @pmdp_invalidate(%struct.vm_area_struct* %137, i64 %138, i32* %139)
  store i32 %140, i32* %12, align 4
  %141 = load i32, i32* %12, align 4
  %142 = call i32 @is_pmd_migration_entry(i32 %141)
  store i32 %142, i32* %17, align 4
  %143 = load i32, i32* %17, align 4
  %144 = call i64 @unlikely(i32 %143)
  %145 = icmp ne i64 %144, 0
  br i1 %145, label %146, label %156

146:                                              ; preds = %136
  %147 = load i32, i32* %12, align 4
  %148 = call i32 @pmd_to_swp_entry(i32 %147)
  store i32 %148, i32* %20, align 4
  %149 = load i32, i32* %20, align 4
  %150 = call i32 @swp_offset(i32 %149)
  %151 = call %struct.page* @pfn_to_page(i32 %150)
  store %struct.page* %151, %struct.page** %10, align 8
  %152 = load i32, i32* %20, align 4
  %153 = call i32 @is_write_migration_entry(i32 %152)
  store i32 %153, i32* %15, align 4
  store i32 0, i32* %14, align 4
  %154 = load i32, i32* %12, align 4
  %155 = call i32 @pmd_swp_soft_dirty(i32 %154)
  store i32 %155, i32* %16, align 4
  br label %172

156:                                              ; preds = %136
  %157 = load i32, i32* %12, align 4
  %158 = call %struct.page* @pmd_page(i32 %157)
  store %struct.page* %158, %struct.page** %10, align 8
  %159 = load i32, i32* %12, align 4
  %160 = call i64 @pmd_dirty(i32 %159)
  %161 = icmp ne i64 %160, 0
  br i1 %161, label %162, label %165

162:                                              ; preds = %156
  %163 = load %struct.page*, %struct.page** %10, align 8
  %164 = call i32 @SetPageDirty(%struct.page* %163)
  br label %165

165:                                              ; preds = %162, %156
  %166 = load i32, i32* %12, align 4
  %167 = call i32 @pmd_write(i32 %166)
  store i32 %167, i32* %15, align 4
  %168 = load i32, i32* %12, align 4
  %169 = call i32 @pmd_young(i32 %168)
  store i32 %169, i32* %14, align 4
  %170 = load i32, i32* %12, align 4
  %171 = call i32 @pmd_soft_dirty(i32 %170)
  store i32 %171, i32* %16, align 4
  br label %172

172:                                              ; preds = %165, %146
  %173 = load %struct.page*, %struct.page** %10, align 8
  %174 = call i32 @page_count(%struct.page* %173)
  %175 = icmp ne i32 %174, 0
  %176 = xor i1 %175, true
  %177 = zext i1 %176 to i32
  %178 = load %struct.page*, %struct.page** %10, align 8
  %179 = call i32 @VM_BUG_ON_PAGE(i32 %177, %struct.page* %178)
  %180 = load %struct.page*, %struct.page** %10, align 8
  %181 = load i32, i32* @HPAGE_PMD_NR, align 4
  %182 = sub nsw i32 %181, 1
  %183 = call i32 @page_ref_add(%struct.page* %180, i32 %182)
  %184 = load %struct.mm_struct*, %struct.mm_struct** %9, align 8
  %185 = load i32*, i32** %6, align 8
  %186 = call i32 @pgtable_trans_huge_withdraw(%struct.mm_struct* %184, i32* %185)
  store i32 %186, i32* %11, align 4
  %187 = load %struct.mm_struct*, %struct.mm_struct** %9, align 8
  %188 = load i32, i32* %11, align 4
  %189 = call i32 @pmd_populate(%struct.mm_struct* %187, i32* %13, i32 %188)
  store i32 0, i32* %19, align 4
  %190 = load i64, i64* %7, align 8
  store i64 %190, i64* %18, align 8
  br label %191

191:                                              ; preds = %270, %172
  %192 = load i32, i32* %19, align 4
  %193 = load i32, i32* @HPAGE_PMD_NR, align 4
  %194 = icmp slt i32 %192, %193
  br i1 %194, label %195, label %276

195:                                              ; preds = %191
  %196 = load i32, i32* %8, align 4
  %197 = icmp ne i32 %196, 0
  br i1 %197, label %201, label %198

198:                                              ; preds = %195
  %199 = load i32, i32* %17, align 4
  %200 = icmp ne i32 %199, 0
  br i1 %200, label %201, label %216

201:                                              ; preds = %198, %195
  %202 = load %struct.page*, %struct.page** %10, align 8
  %203 = load i32, i32* %19, align 4
  %204 = sext i32 %203 to i64
  %205 = getelementptr inbounds %struct.page, %struct.page* %202, i64 %204
  %206 = load i32, i32* %15, align 4
  %207 = call i32 @make_migration_entry(%struct.page* %205, i32 %206)
  store i32 %207, i32* %23, align 4
  %208 = load i32, i32* %23, align 4
  %209 = call i32 @swp_entry_to_pte(i32 %208)
  store i32 %209, i32* %21, align 4
  %210 = load i32, i32* %16, align 4
  %211 = icmp ne i32 %210, 0
  br i1 %211, label %212, label %215

212:                                              ; preds = %201
  %213 = load i32, i32* %21, align 4
  %214 = call i32 @pte_swp_mksoft_dirty(i32 %213)
  store i32 %214, i32* %21, align 4
  br label %215

215:                                              ; preds = %212, %201
  br label %247

216:                                              ; preds = %198
  %217 = load %struct.page*, %struct.page** %10, align 8
  %218 = load i32, i32* %19, align 4
  %219 = sext i32 %218 to i64
  %220 = getelementptr inbounds %struct.page, %struct.page* %217, i64 %219
  %221 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %222 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %221, i32 0, i32 2
  %223 = load i32, i32* %222, align 8
  %224 = call i32 @READ_ONCE(i32 %223)
  %225 = call i32 @mk_pte(%struct.page* %220, i32 %224)
  store i32 %225, i32* %21, align 4
  %226 = load i32, i32* %21, align 4
  %227 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %228 = call i32 @maybe_mkwrite(i32 %226, %struct.vm_area_struct* %227)
  store i32 %228, i32* %21, align 4
  %229 = load i32, i32* %15, align 4
  %230 = icmp ne i32 %229, 0
  br i1 %230, label %234, label %231

231:                                              ; preds = %216
  %232 = load i32, i32* %21, align 4
  %233 = call i32 @pte_wrprotect(i32 %232)
  store i32 %233, i32* %21, align 4
  br label %234

234:                                              ; preds = %231, %216
  %235 = load i32, i32* %14, align 4
  %236 = icmp ne i32 %235, 0
  br i1 %236, label %240, label %237

237:                                              ; preds = %234
  %238 = load i32, i32* %21, align 4
  %239 = call i32 @pte_mkold(i32 %238)
  store i32 %239, i32* %21, align 4
  br label %240

240:                                              ; preds = %237, %234
  %241 = load i32, i32* %16, align 4
  %242 = icmp ne i32 %241, 0
  br i1 %242, label %243, label %246

243:                                              ; preds = %240
  %244 = load i32, i32* %21, align 4
  %245 = call i32 @pte_mksoft_dirty(i32 %244)
  store i32 %245, i32* %21, align 4
  br label %246

246:                                              ; preds = %243, %240
  br label %247

247:                                              ; preds = %246, %215
  %248 = load i64, i64* %18, align 8
  %249 = call i32* @pte_offset_map(i32* %13, i64 %248)
  store i32* %249, i32** %22, align 8
  %250 = load i32*, i32** %22, align 8
  %251 = load i32, i32* %250, align 4
  %252 = call i32 @pte_none(i32 %251)
  %253 = icmp ne i32 %252, 0
  %254 = xor i1 %253, true
  %255 = zext i1 %254 to i32
  %256 = call i32 @BUG_ON(i32 %255)
  %257 = load %struct.mm_struct*, %struct.mm_struct** %9, align 8
  %258 = load i64, i64* %18, align 8
  %259 = load i32*, i32** %22, align 8
  %260 = load i32, i32* %21, align 4
  %261 = call i32 @set_pte_at(%struct.mm_struct* %257, i64 %258, i32* %259, i32 %260)
  %262 = load %struct.page*, %struct.page** %10, align 8
  %263 = load i32, i32* %19, align 4
  %264 = sext i32 %263 to i64
  %265 = getelementptr inbounds %struct.page, %struct.page* %262, i64 %264
  %266 = getelementptr inbounds %struct.page, %struct.page* %265, i32 0, i32 0
  %267 = call i32 @atomic_inc(i32* %266)
  %268 = load i32*, i32** %22, align 8
  %269 = call i32 @pte_unmap(i32* %268)
  br label %270

270:                                              ; preds = %247
  %271 = load i32, i32* %19, align 4
  %272 = add nsw i32 %271, 1
  store i32 %272, i32* %19, align 4
  %273 = load i64, i64* @PAGE_SIZE, align 8
  %274 = load i64, i64* %18, align 8
  %275 = add i64 %274, %273
  store i64 %275, i64* %18, align 8
  br label %191

276:                                              ; preds = %191
  %277 = load %struct.page*, %struct.page** %10, align 8
  %278 = call i32 @compound_mapcount(%struct.page* %277)
  %279 = icmp sgt i32 %278, 1
  br i1 %279, label %280, label %300

280:                                              ; preds = %276
  %281 = load %struct.page*, %struct.page** %10, align 8
  %282 = call i32 @TestSetPageDoubleMap(%struct.page* %281)
  %283 = icmp ne i32 %282, 0
  br i1 %283, label %300, label %284

284:                                              ; preds = %280
  store i32 0, i32* %19, align 4
  br label %285

285:                                              ; preds = %296, %284
  %286 = load i32, i32* %19, align 4
  %287 = load i32, i32* @HPAGE_PMD_NR, align 4
  %288 = icmp slt i32 %286, %287
  br i1 %288, label %289, label %299

289:                                              ; preds = %285
  %290 = load %struct.page*, %struct.page** %10, align 8
  %291 = load i32, i32* %19, align 4
  %292 = sext i32 %291 to i64
  %293 = getelementptr inbounds %struct.page, %struct.page* %290, i64 %292
  %294 = getelementptr inbounds %struct.page, %struct.page* %293, i32 0, i32 0
  %295 = call i32 @atomic_inc(i32* %294)
  br label %296

296:                                              ; preds = %289
  %297 = load i32, i32* %19, align 4
  %298 = add nsw i32 %297, 1
  store i32 %298, i32* %19, align 4
  br label %285

299:                                              ; preds = %285
  br label %300

300:                                              ; preds = %299, %280, %276
  %301 = load %struct.page*, %struct.page** %10, align 8
  %302 = call i32 @compound_mapcount_ptr(%struct.page* %301)
  %303 = call i64 @atomic_add_negative(i32 -1, i32 %302)
  %304 = icmp ne i64 %303, 0
  br i1 %304, label %305, label %329

305:                                              ; preds = %300
  %306 = load %struct.page*, %struct.page** %10, align 8
  %307 = load i32, i32* @NR_ANON_THPS, align 4
  %308 = call i32 @__dec_node_page_state(%struct.page* %306, i32 %307)
  %309 = load %struct.page*, %struct.page** %10, align 8
  %310 = call i64 @TestClearPageDoubleMap(%struct.page* %309)
  %311 = icmp ne i64 %310, 0
  br i1 %311, label %312, label %328

312:                                              ; preds = %305
  store i32 0, i32* %19, align 4
  br label %313

313:                                              ; preds = %324, %312
  %314 = load i32, i32* %19, align 4
  %315 = load i32, i32* @HPAGE_PMD_NR, align 4
  %316 = icmp slt i32 %314, %315
  br i1 %316, label %317, label %327

317:                                              ; preds = %313
  %318 = load %struct.page*, %struct.page** %10, align 8
  %319 = load i32, i32* %19, align 4
  %320 = sext i32 %319 to i64
  %321 = getelementptr inbounds %struct.page, %struct.page* %318, i64 %320
  %322 = getelementptr inbounds %struct.page, %struct.page* %321, i32 0, i32 0
  %323 = call i32 @atomic_dec(i32* %322)
  br label %324

324:                                              ; preds = %317
  %325 = load i32, i32* %19, align 4
  %326 = add nsw i32 %325, 1
  store i32 %326, i32* %19, align 4
  br label %313

327:                                              ; preds = %313
  br label %328

328:                                              ; preds = %327, %305
  br label %329

329:                                              ; preds = %328, %300
  %330 = call i32 (...) @smp_wmb()
  %331 = load %struct.mm_struct*, %struct.mm_struct** %9, align 8
  %332 = load i32*, i32** %6, align 8
  %333 = load i32, i32* %11, align 4
  %334 = call i32 @pmd_populate(%struct.mm_struct* %331, i32* %332, i32 %333)
  %335 = load i32, i32* %8, align 4
  %336 = icmp ne i32 %335, 0
  br i1 %336, label %337, label %357

337:                                              ; preds = %329
  store i32 0, i32* %19, align 4
  br label %338

338:                                              ; preds = %353, %337
  %339 = load i32, i32* %19, align 4
  %340 = load i32, i32* @HPAGE_PMD_NR, align 4
  %341 = icmp slt i32 %339, %340
  br i1 %341, label %342, label %356

342:                                              ; preds = %338
  %343 = load %struct.page*, %struct.page** %10, align 8
  %344 = load i32, i32* %19, align 4
  %345 = sext i32 %344 to i64
  %346 = getelementptr inbounds %struct.page, %struct.page* %343, i64 %345
  %347 = call i32 @page_remove_rmap(%struct.page* %346, i32 0)
  %348 = load %struct.page*, %struct.page** %10, align 8
  %349 = load i32, i32* %19, align 4
  %350 = sext i32 %349 to i64
  %351 = getelementptr inbounds %struct.page, %struct.page* %348, i64 %350
  %352 = call i32 @put_page(%struct.page* %351)
  br label %353

353:                                              ; preds = %342
  %354 = load i32, i32* %19, align 4
  %355 = add nsw i32 %354, 1
  store i32 %355, i32* %19, align 4
  br label %338

356:                                              ; preds = %338
  br label %357

357:                                              ; preds = %90, %115, %131, %356, %329
  ret void
}

declare dso_local i32 @VM_BUG_ON(i32) #1

declare dso_local i32 @VM_BUG_ON_VMA(i32, %struct.vm_area_struct*) #1

declare dso_local i32 @is_pmd_migration_entry(i32) #1

declare dso_local i32 @pmd_trans_huge(i32) #1

declare dso_local i32 @pmd_devmap(i32) #1

declare dso_local i32 @count_vm_event(i32) #1

declare dso_local i32 @vma_is_anonymous(%struct.vm_area_struct*) #1

declare dso_local i32 @pmdp_huge_clear_flush_notify(%struct.vm_area_struct*, i64, i32*) #1

declare dso_local i64 @arch_needs_pgtable_deposit(...) #1

declare dso_local i32 @zap_deposited_table(%struct.mm_struct*, i32*) #1

declare dso_local i64 @vma_is_dax(%struct.vm_area_struct*) #1

declare dso_local %struct.page* @pmd_page(i32) #1

declare dso_local i32 @PageDirty(%struct.page*) #1

declare dso_local i64 @pmd_dirty(i32) #1

declare dso_local i32 @set_page_dirty(%struct.page*) #1

declare dso_local i32 @PageReferenced(%struct.page*) #1

declare dso_local i32 @pmd_young(i32) #1

declare dso_local i32 @SetPageReferenced(%struct.page*) #1

declare dso_local i32 @page_remove_rmap(%struct.page*, i32) #1

declare dso_local i32 @put_page(%struct.page*) #1

declare dso_local i32 @add_mm_counter(%struct.mm_struct*, i32, i32) #1

declare dso_local i32 @mm_counter_file(%struct.page*) #1

declare dso_local i64 @is_huge_zero_pmd(i32) #1

declare dso_local void @__split_huge_zero_page_pmd(%struct.vm_area_struct*, i64, i32*) #1

declare dso_local i32 @pmdp_invalidate(%struct.vm_area_struct*, i64, i32*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @pmd_to_swp_entry(i32) #1

declare dso_local %struct.page* @pfn_to_page(i32) #1

declare dso_local i32 @swp_offset(i32) #1

declare dso_local i32 @is_write_migration_entry(i32) #1

declare dso_local i32 @pmd_swp_soft_dirty(i32) #1

declare dso_local i32 @SetPageDirty(%struct.page*) #1

declare dso_local i32 @pmd_write(i32) #1

declare dso_local i32 @pmd_soft_dirty(i32) #1

declare dso_local i32 @VM_BUG_ON_PAGE(i32, %struct.page*) #1

declare dso_local i32 @page_count(%struct.page*) #1

declare dso_local i32 @page_ref_add(%struct.page*, i32) #1

declare dso_local i32 @pgtable_trans_huge_withdraw(%struct.mm_struct*, i32*) #1

declare dso_local i32 @pmd_populate(%struct.mm_struct*, i32*, i32) #1

declare dso_local i32 @make_migration_entry(%struct.page*, i32) #1

declare dso_local i32 @swp_entry_to_pte(i32) #1

declare dso_local i32 @pte_swp_mksoft_dirty(i32) #1

declare dso_local i32 @mk_pte(%struct.page*, i32) #1

declare dso_local i32 @READ_ONCE(i32) #1

declare dso_local i32 @maybe_mkwrite(i32, %struct.vm_area_struct*) #1

declare dso_local i32 @pte_wrprotect(i32) #1

declare dso_local i32 @pte_mkold(i32) #1

declare dso_local i32 @pte_mksoft_dirty(i32) #1

declare dso_local i32* @pte_offset_map(i32*, i64) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @pte_none(i32) #1

declare dso_local i32 @set_pte_at(%struct.mm_struct*, i64, i32*, i32) #1

declare dso_local i32 @atomic_inc(i32*) #1

declare dso_local i32 @pte_unmap(i32*) #1

declare dso_local i32 @compound_mapcount(%struct.page*) #1

declare dso_local i32 @TestSetPageDoubleMap(%struct.page*) #1

declare dso_local i64 @atomic_add_negative(i32, i32) #1

declare dso_local i32 @compound_mapcount_ptr(%struct.page*) #1

declare dso_local i32 @__dec_node_page_state(%struct.page*, i32) #1

declare dso_local i64 @TestClearPageDoubleMap(%struct.page*) #1

declare dso_local i32 @atomic_dec(i32*) #1

declare dso_local i32 @smp_wmb(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
