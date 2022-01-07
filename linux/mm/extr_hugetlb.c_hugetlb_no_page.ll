; ModuleID = '/home/carl/AnghaBench/linux/mm/extr_hugetlb.c_hugetlb_no_page.c'
source_filename = "/home/carl/AnghaBench/linux/mm/extr_hugetlb.c_hugetlb_no_page.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.mm_struct = type { i32 }
%struct.vm_area_struct = type { i32 }
%struct.address_space = type { i32 }
%struct.hstate = type { i32 }
%struct.page = type { i32 }
%struct.vm_fault = type { i64, i32, %struct.vm_area_struct* }

@VM_FAULT_SIGBUS = common dso_local global i32 0, align 4
@HPAGE_RESV_UNMAPPED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [47 x i8] c"PID %d killed due to inadequate hugepage pool\0A\00", align 1
@current = common dso_local global %struct.TYPE_2__* null, align 8
@hugetlb_fault_mutex_table = common dso_local global i32* null, align 8
@VM_UFFD_MISSING = common dso_local global i32 0, align 4
@VM_MAYSHARE = common dso_local global i32 0, align 4
@EEXIST = common dso_local global i32 0, align 4
@VM_FAULT_OOM = common dso_local global i32 0, align 4
@VM_FAULT_HWPOISON = common dso_local global i32 0, align 4
@FAULT_FLAG_WRITE = common dso_local global i32 0, align 4
@VM_SHARED = common dso_local global i32 0, align 4
@VM_WRITE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mm_struct*, %struct.vm_area_struct*, %struct.address_space*, i64, i64, i32*, i32)* @hugetlb_no_page to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hugetlb_no_page(%struct.mm_struct* %0, %struct.vm_area_struct* %1, %struct.address_space* %2, i64 %3, i64 %4, i32* %5, i32 %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.mm_struct*, align 8
  %10 = alloca %struct.vm_area_struct*, align 8
  %11 = alloca %struct.address_space*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32, align 4
  %16 = alloca %struct.hstate*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i64, align 8
  %20 = alloca %struct.page*, align 8
  %21 = alloca i32, align 4
  %22 = alloca i32*, align 8
  %23 = alloca i64, align 8
  %24 = alloca i32, align 4
  %25 = alloca i64, align 8
  %26 = alloca %struct.vm_fault, align 8
  %27 = alloca i32, align 4
  store %struct.mm_struct* %0, %struct.mm_struct** %9, align 8
  store %struct.vm_area_struct* %1, %struct.vm_area_struct** %10, align 8
  store %struct.address_space* %2, %struct.address_space** %11, align 8
  store i64 %3, i64* %12, align 8
  store i64 %4, i64* %13, align 8
  store i32* %5, i32** %14, align 8
  store i32 %6, i32* %15, align 4
  %28 = load %struct.vm_area_struct*, %struct.vm_area_struct** %10, align 8
  %29 = call %struct.hstate* @hstate_vma(%struct.vm_area_struct* %28)
  store %struct.hstate* %29, %struct.hstate** %16, align 8
  %30 = load i32, i32* @VM_FAULT_SIGBUS, align 4
  store i32 %30, i32* %17, align 4
  store i32 0, i32* %18, align 4
  %31 = load i64, i64* %13, align 8
  %32 = load %struct.hstate*, %struct.hstate** %16, align 8
  %33 = call i64 @huge_page_mask(%struct.hstate* %32)
  %34 = and i64 %31, %33
  store i64 %34, i64* %23, align 8
  store i32 0, i32* %24, align 4
  %35 = load %struct.vm_area_struct*, %struct.vm_area_struct** %10, align 8
  %36 = load i32, i32* @HPAGE_RESV_UNMAPPED, align 4
  %37 = call i64 @is_vma_resv_set(%struct.vm_area_struct* %35, i32 %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %45

39:                                               ; preds = %7
  %40 = load %struct.TYPE_2__*, %struct.TYPE_2__** @current, align 8
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @pr_warn_ratelimited(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0), i32 %42)
  %44 = load i32, i32* %17, align 4
  store i32 %44, i32* %8, align 4
  br label %303

45:                                               ; preds = %7
  br label %46

46:                                               ; preds = %143, %45
  %47 = load %struct.address_space*, %struct.address_space** %11, align 8
  %48 = load i64, i64* %12, align 8
  %49 = call %struct.page* @find_lock_page(%struct.address_space* %47, i64 %48)
  store %struct.page* %49, %struct.page** %20, align 8
  %50 = load %struct.page*, %struct.page** %20, align 8
  %51 = icmp ne %struct.page* %50, null
  br i1 %51, label %157, label %52

52:                                               ; preds = %46
  %53 = load %struct.address_space*, %struct.address_space** %11, align 8
  %54 = getelementptr inbounds %struct.address_space, %struct.address_space* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = call i64 @i_size_read(i32 %55)
  %57 = load %struct.hstate*, %struct.hstate** %16, align 8
  %58 = call i64 @huge_page_shift(%struct.hstate* %57)
  %59 = lshr i64 %56, %58
  store i64 %59, i64* %19, align 8
  %60 = load i64, i64* %12, align 8
  %61 = load i64, i64* %19, align 8
  %62 = icmp uge i64 %60, %61
  br i1 %62, label %63, label %64

63:                                               ; preds = %52
  br label %288

64:                                               ; preds = %52
  %65 = load %struct.vm_area_struct*, %struct.vm_area_struct** %10, align 8
  %66 = call i64 @userfaultfd_missing(%struct.vm_area_struct* %65)
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %90

68:                                               ; preds = %64
  %69 = getelementptr inbounds %struct.vm_fault, %struct.vm_fault* %26, i32 0, i32 0
  %70 = load i64, i64* %23, align 8
  store i64 %70, i64* %69, align 8
  %71 = getelementptr inbounds %struct.vm_fault, %struct.vm_fault* %26, i32 0, i32 1
  %72 = load i32, i32* %15, align 4
  store i32 %72, i32* %71, align 8
  %73 = getelementptr inbounds %struct.vm_fault, %struct.vm_fault* %26, i32 0, i32 2
  %74 = load %struct.vm_area_struct*, %struct.vm_area_struct** %10, align 8
  store %struct.vm_area_struct* %74, %struct.vm_area_struct** %73, align 8
  %75 = load %struct.hstate*, %struct.hstate** %16, align 8
  %76 = load %struct.address_space*, %struct.address_space** %11, align 8
  %77 = load i64, i64* %12, align 8
  %78 = load i64, i64* %23, align 8
  %79 = call i64 @hugetlb_fault_mutex_hash(%struct.hstate* %75, %struct.address_space* %76, i64 %77, i64 %78)
  store i64 %79, i64* %25, align 8
  %80 = load i32*, i32** @hugetlb_fault_mutex_table, align 8
  %81 = load i64, i64* %25, align 8
  %82 = getelementptr inbounds i32, i32* %80, i64 %81
  %83 = call i32 @mutex_unlock(i32* %82)
  %84 = load i32, i32* @VM_UFFD_MISSING, align 4
  %85 = call i32 @handle_userfault(%struct.vm_fault* %26, i32 %84)
  store i32 %85, i32* %17, align 4
  %86 = load i32*, i32** @hugetlb_fault_mutex_table, align 8
  %87 = load i64, i64* %25, align 8
  %88 = getelementptr inbounds i32, i32* %86, i64 %87
  %89 = call i32 @mutex_lock(i32* %88)
  br label %288

90:                                               ; preds = %64
  %91 = load %struct.vm_area_struct*, %struct.vm_area_struct** %10, align 8
  %92 = load i64, i64* %23, align 8
  %93 = call %struct.page* @alloc_huge_page(%struct.vm_area_struct* %91, i64 %92, i32 0)
  store %struct.page* %93, %struct.page** %20, align 8
  %94 = load %struct.page*, %struct.page** %20, align 8
  %95 = call i64 @IS_ERR(%struct.page* %94)
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %97, label %115

97:                                               ; preds = %90
  %98 = load %struct.hstate*, %struct.hstate** %16, align 8
  %99 = load %struct.mm_struct*, %struct.mm_struct** %9, align 8
  %100 = load i32*, i32** %14, align 8
  %101 = call i32* @huge_pte_lock(%struct.hstate* %98, %struct.mm_struct* %99, i32* %100)
  store i32* %101, i32** %22, align 8
  %102 = load i32*, i32** %14, align 8
  %103 = call i32 @huge_ptep_get(i32* %102)
  %104 = call i32 @huge_pte_none(i32 %103)
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %109, label %106

106:                                              ; preds = %97
  store i32 0, i32* %17, align 4
  %107 = load i32*, i32** %22, align 8
  %108 = call i32 @spin_unlock(i32* %107)
  br label %288

109:                                              ; preds = %97
  %110 = load i32*, i32** %22, align 8
  %111 = call i32 @spin_unlock(i32* %110)
  %112 = load %struct.page*, %struct.page** %20, align 8
  %113 = call i32 @PTR_ERR(%struct.page* %112)
  %114 = call i32 @vmf_error(i32 %113)
  store i32 %114, i32* %17, align 4
  br label %288

115:                                              ; preds = %90
  %116 = load %struct.page*, %struct.page** %20, align 8
  %117 = load i64, i64* %13, align 8
  %118 = load %struct.hstate*, %struct.hstate** %16, align 8
  %119 = call i32 @pages_per_huge_page(%struct.hstate* %118)
  %120 = call i32 @clear_huge_page(%struct.page* %116, i64 %117, i32 %119)
  %121 = load %struct.page*, %struct.page** %20, align 8
  %122 = call i32 @__SetPageUptodate(%struct.page* %121)
  store i32 1, i32* %24, align 4
  %123 = load %struct.vm_area_struct*, %struct.vm_area_struct** %10, align 8
  %124 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 4
  %126 = load i32, i32* @VM_MAYSHARE, align 4
  %127 = and i32 %125, %126
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %129, label %146

129:                                              ; preds = %115
  %130 = load %struct.page*, %struct.page** %20, align 8
  %131 = load %struct.address_space*, %struct.address_space** %11, align 8
  %132 = load i64, i64* %12, align 8
  %133 = call i32 @huge_add_to_page_cache(%struct.page* %130, %struct.address_space* %131, i64 %132)
  store i32 %133, i32* %27, align 4
  %134 = load i32, i32* %27, align 4
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %136, label %145

136:                                              ; preds = %129
  %137 = load %struct.page*, %struct.page** %20, align 8
  %138 = call i32 @put_page(%struct.page* %137)
  %139 = load i32, i32* %27, align 4
  %140 = load i32, i32* @EEXIST, align 4
  %141 = sub nsw i32 0, %140
  %142 = icmp eq i32 %139, %141
  br i1 %142, label %143, label %144

143:                                              ; preds = %136
  br label %46

144:                                              ; preds = %136
  br label %288

145:                                              ; preds = %129
  br label %156

146:                                              ; preds = %115
  %147 = load %struct.page*, %struct.page** %20, align 8
  %148 = call i32 @lock_page(%struct.page* %147)
  %149 = load %struct.vm_area_struct*, %struct.vm_area_struct** %10, align 8
  %150 = call i32 @anon_vma_prepare(%struct.vm_area_struct* %149)
  %151 = call i64 @unlikely(i32 %150)
  %152 = icmp ne i64 %151, 0
  br i1 %152, label %153, label %155

153:                                              ; preds = %146
  %154 = load i32, i32* @VM_FAULT_OOM, align 4
  store i32 %154, i32* %17, align 4
  br label %293

155:                                              ; preds = %146
  store i32 1, i32* %18, align 4
  br label %156

156:                                              ; preds = %155, %145
  br label %169

157:                                              ; preds = %46
  %158 = load %struct.page*, %struct.page** %20, align 8
  %159 = call i32 @PageHWPoison(%struct.page* %158)
  %160 = call i64 @unlikely(i32 %159)
  %161 = icmp ne i64 %160, 0
  br i1 %161, label %162, label %168

162:                                              ; preds = %157
  %163 = load i32, i32* @VM_FAULT_HWPOISON, align 4
  %164 = load %struct.hstate*, %struct.hstate** %16, align 8
  %165 = call i32 @hstate_index(%struct.hstate* %164)
  %166 = call i32 @VM_FAULT_SET_HINDEX(i32 %165)
  %167 = or i32 %163, %166
  store i32 %167, i32* %17, align 4
  br label %293

168:                                              ; preds = %157
  br label %169

169:                                              ; preds = %168, %156
  %170 = load i32, i32* %15, align 4
  %171 = load i32, i32* @FAULT_FLAG_WRITE, align 4
  %172 = and i32 %170, %171
  %173 = icmp ne i32 %172, 0
  br i1 %173, label %174, label %194

174:                                              ; preds = %169
  %175 = load %struct.vm_area_struct*, %struct.vm_area_struct** %10, align 8
  %176 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %175, i32 0, i32 0
  %177 = load i32, i32* %176, align 4
  %178 = load i32, i32* @VM_SHARED, align 4
  %179 = and i32 %177, %178
  %180 = icmp ne i32 %179, 0
  br i1 %180, label %194, label %181

181:                                              ; preds = %174
  %182 = load %struct.hstate*, %struct.hstate** %16, align 8
  %183 = load %struct.vm_area_struct*, %struct.vm_area_struct** %10, align 8
  %184 = load i64, i64* %23, align 8
  %185 = call i64 @vma_needs_reservation(%struct.hstate* %182, %struct.vm_area_struct* %183, i64 %184)
  %186 = icmp slt i64 %185, 0
  br i1 %186, label %187, label %189

187:                                              ; preds = %181
  %188 = load i32, i32* @VM_FAULT_OOM, align 4
  store i32 %188, i32* %17, align 4
  br label %293

189:                                              ; preds = %181
  %190 = load %struct.hstate*, %struct.hstate** %16, align 8
  %191 = load %struct.vm_area_struct*, %struct.vm_area_struct** %10, align 8
  %192 = load i64, i64* %23, align 8
  %193 = call i32 @vma_end_reservation(%struct.hstate* %190, %struct.vm_area_struct* %191, i64 %192)
  br label %194

194:                                              ; preds = %189, %174, %169
  %195 = load %struct.hstate*, %struct.hstate** %16, align 8
  %196 = load %struct.mm_struct*, %struct.mm_struct** %9, align 8
  %197 = load i32*, i32** %14, align 8
  %198 = call i32* @huge_pte_lock(%struct.hstate* %195, %struct.mm_struct* %196, i32* %197)
  store i32* %198, i32** %22, align 8
  %199 = load %struct.address_space*, %struct.address_space** %11, align 8
  %200 = getelementptr inbounds %struct.address_space, %struct.address_space* %199, i32 0, i32 0
  %201 = load i32, i32* %200, align 4
  %202 = call i64 @i_size_read(i32 %201)
  %203 = load %struct.hstate*, %struct.hstate** %16, align 8
  %204 = call i64 @huge_page_shift(%struct.hstate* %203)
  %205 = lshr i64 %202, %204
  store i64 %205, i64* %19, align 8
  %206 = load i64, i64* %12, align 8
  %207 = load i64, i64* %19, align 8
  %208 = icmp uge i64 %206, %207
  br i1 %208, label %209, label %210

209:                                              ; preds = %194
  br label %290

210:                                              ; preds = %194
  store i32 0, i32* %17, align 4
  %211 = load i32*, i32** %14, align 8
  %212 = call i32 @huge_ptep_get(i32* %211)
  %213 = call i32 @huge_pte_none(i32 %212)
  %214 = icmp ne i32 %213, 0
  br i1 %214, label %216, label %215

215:                                              ; preds = %210
  br label %290

216:                                              ; preds = %210
  %217 = load i32, i32* %18, align 4
  %218 = icmp ne i32 %217, 0
  br i1 %218, label %219, label %226

219:                                              ; preds = %216
  %220 = load %struct.page*, %struct.page** %20, align 8
  %221 = call i32 @ClearPagePrivate(%struct.page* %220)
  %222 = load %struct.page*, %struct.page** %20, align 8
  %223 = load %struct.vm_area_struct*, %struct.vm_area_struct** %10, align 8
  %224 = load i64, i64* %23, align 8
  %225 = call i32 @hugepage_add_new_anon_rmap(%struct.page* %222, %struct.vm_area_struct* %223, i64 %224)
  br label %229

226:                                              ; preds = %216
  %227 = load %struct.page*, %struct.page** %20, align 8
  %228 = call i32 @page_dup_rmap(%struct.page* %227, i32 1)
  br label %229

229:                                              ; preds = %226, %219
  %230 = load %struct.vm_area_struct*, %struct.vm_area_struct** %10, align 8
  %231 = load %struct.page*, %struct.page** %20, align 8
  %232 = load %struct.vm_area_struct*, %struct.vm_area_struct** %10, align 8
  %233 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %232, i32 0, i32 0
  %234 = load i32, i32* %233, align 4
  %235 = load i32, i32* @VM_WRITE, align 4
  %236 = and i32 %234, %235
  %237 = icmp ne i32 %236, 0
  br i1 %237, label %238, label %245

238:                                              ; preds = %229
  %239 = load %struct.vm_area_struct*, %struct.vm_area_struct** %10, align 8
  %240 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %239, i32 0, i32 0
  %241 = load i32, i32* %240, align 4
  %242 = load i32, i32* @VM_SHARED, align 4
  %243 = and i32 %241, %242
  %244 = icmp ne i32 %243, 0
  br label %245

245:                                              ; preds = %238, %229
  %246 = phi i1 [ false, %229 ], [ %244, %238 ]
  %247 = zext i1 %246 to i32
  %248 = call i32 @make_huge_pte(%struct.vm_area_struct* %230, %struct.page* %231, i32 %247)
  store i32 %248, i32* %21, align 4
  %249 = load %struct.mm_struct*, %struct.mm_struct** %9, align 8
  %250 = load i64, i64* %23, align 8
  %251 = load i32*, i32** %14, align 8
  %252 = load i32, i32* %21, align 4
  %253 = call i32 @set_huge_pte_at(%struct.mm_struct* %249, i64 %250, i32* %251, i32 %252)
  %254 = load %struct.hstate*, %struct.hstate** %16, align 8
  %255 = call i32 @pages_per_huge_page(%struct.hstate* %254)
  %256 = load %struct.mm_struct*, %struct.mm_struct** %9, align 8
  %257 = call i32 @hugetlb_count_add(i32 %255, %struct.mm_struct* %256)
  %258 = load i32, i32* %15, align 4
  %259 = load i32, i32* @FAULT_FLAG_WRITE, align 4
  %260 = and i32 %258, %259
  %261 = icmp ne i32 %260, 0
  br i1 %261, label %262, label %277

262:                                              ; preds = %245
  %263 = load %struct.vm_area_struct*, %struct.vm_area_struct** %10, align 8
  %264 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %263, i32 0, i32 0
  %265 = load i32, i32* %264, align 4
  %266 = load i32, i32* @VM_SHARED, align 4
  %267 = and i32 %265, %266
  %268 = icmp ne i32 %267, 0
  br i1 %268, label %277, label %269

269:                                              ; preds = %262
  %270 = load %struct.mm_struct*, %struct.mm_struct** %9, align 8
  %271 = load %struct.vm_area_struct*, %struct.vm_area_struct** %10, align 8
  %272 = load i64, i64* %13, align 8
  %273 = load i32*, i32** %14, align 8
  %274 = load %struct.page*, %struct.page** %20, align 8
  %275 = load i32*, i32** %22, align 8
  %276 = call i32 @hugetlb_cow(%struct.mm_struct* %270, %struct.vm_area_struct* %271, i64 %272, i32* %273, %struct.page* %274, i32* %275)
  store i32 %276, i32* %17, align 4
  br label %277

277:                                              ; preds = %269, %262, %245
  %278 = load i32*, i32** %22, align 8
  %279 = call i32 @spin_unlock(i32* %278)
  %280 = load i32, i32* %24, align 4
  %281 = icmp ne i32 %280, 0
  br i1 %281, label %282, label %285

282:                                              ; preds = %277
  %283 = load %struct.page*, %struct.page** %20, align 8
  %284 = call i32 @set_page_huge_active(%struct.page* %283)
  br label %285

285:                                              ; preds = %282, %277
  %286 = load %struct.page*, %struct.page** %20, align 8
  %287 = call i32 @unlock_page(%struct.page* %286)
  br label %288

288:                                              ; preds = %293, %285, %144, %109, %106, %68, %63
  %289 = load i32, i32* %17, align 4
  store i32 %289, i32* %8, align 4
  br label %303

290:                                              ; preds = %215, %209
  %291 = load i32*, i32** %22, align 8
  %292 = call i32 @spin_unlock(i32* %291)
  br label %293

293:                                              ; preds = %290, %187, %162, %153
  %294 = load %struct.page*, %struct.page** %20, align 8
  %295 = call i32 @unlock_page(%struct.page* %294)
  %296 = load %struct.hstate*, %struct.hstate** %16, align 8
  %297 = load %struct.vm_area_struct*, %struct.vm_area_struct** %10, align 8
  %298 = load i64, i64* %23, align 8
  %299 = load %struct.page*, %struct.page** %20, align 8
  %300 = call i32 @restore_reserve_on_error(%struct.hstate* %296, %struct.vm_area_struct* %297, i64 %298, %struct.page* %299)
  %301 = load %struct.page*, %struct.page** %20, align 8
  %302 = call i32 @put_page(%struct.page* %301)
  br label %288

303:                                              ; preds = %288, %39
  %304 = load i32, i32* %8, align 4
  ret i32 %304
}

declare dso_local %struct.hstate* @hstate_vma(%struct.vm_area_struct*) #1

declare dso_local i64 @huge_page_mask(%struct.hstate*) #1

declare dso_local i64 @is_vma_resv_set(%struct.vm_area_struct*, i32) #1

declare dso_local i32 @pr_warn_ratelimited(i8*, i32) #1

declare dso_local %struct.page* @find_lock_page(%struct.address_space*, i64) #1

declare dso_local i64 @i_size_read(i32) #1

declare dso_local i64 @huge_page_shift(%struct.hstate*) #1

declare dso_local i64 @userfaultfd_missing(%struct.vm_area_struct*) #1

declare dso_local i64 @hugetlb_fault_mutex_hash(%struct.hstate*, %struct.address_space*, i64, i64) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @handle_userfault(%struct.vm_fault*, i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local %struct.page* @alloc_huge_page(%struct.vm_area_struct*, i64, i32) #1

declare dso_local i64 @IS_ERR(%struct.page*) #1

declare dso_local i32* @huge_pte_lock(%struct.hstate*, %struct.mm_struct*, i32*) #1

declare dso_local i32 @huge_pte_none(i32) #1

declare dso_local i32 @huge_ptep_get(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @vmf_error(i32) #1

declare dso_local i32 @PTR_ERR(%struct.page*) #1

declare dso_local i32 @clear_huge_page(%struct.page*, i64, i32) #1

declare dso_local i32 @pages_per_huge_page(%struct.hstate*) #1

declare dso_local i32 @__SetPageUptodate(%struct.page*) #1

declare dso_local i32 @huge_add_to_page_cache(%struct.page*, %struct.address_space*, i64) #1

declare dso_local i32 @put_page(%struct.page*) #1

declare dso_local i32 @lock_page(%struct.page*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @anon_vma_prepare(%struct.vm_area_struct*) #1

declare dso_local i32 @PageHWPoison(%struct.page*) #1

declare dso_local i32 @VM_FAULT_SET_HINDEX(i32) #1

declare dso_local i32 @hstate_index(%struct.hstate*) #1

declare dso_local i64 @vma_needs_reservation(%struct.hstate*, %struct.vm_area_struct*, i64) #1

declare dso_local i32 @vma_end_reservation(%struct.hstate*, %struct.vm_area_struct*, i64) #1

declare dso_local i32 @ClearPagePrivate(%struct.page*) #1

declare dso_local i32 @hugepage_add_new_anon_rmap(%struct.page*, %struct.vm_area_struct*, i64) #1

declare dso_local i32 @page_dup_rmap(%struct.page*, i32) #1

declare dso_local i32 @make_huge_pte(%struct.vm_area_struct*, %struct.page*, i32) #1

declare dso_local i32 @set_huge_pte_at(%struct.mm_struct*, i64, i32*, i32) #1

declare dso_local i32 @hugetlb_count_add(i32, %struct.mm_struct*) #1

declare dso_local i32 @hugetlb_cow(%struct.mm_struct*, %struct.vm_area_struct*, i64, i32*, %struct.page*, i32*) #1

declare dso_local i32 @set_page_huge_active(%struct.page*) #1

declare dso_local i32 @unlock_page(%struct.page*) #1

declare dso_local i32 @restore_reserve_on_error(%struct.hstate*, %struct.vm_area_struct*, i64, %struct.page*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
