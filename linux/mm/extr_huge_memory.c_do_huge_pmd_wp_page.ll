; ModuleID = '/home/carl/AnghaBench/linux/mm/extr_huge_memory.c_do_huge_pmd_wp_page.c'
source_filename = "/home/carl/AnghaBench/linux/mm/extr_huge_memory.c_do_huge_pmd_wp_page.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vm_fault = type { i64, i32, i32*, %struct.vm_area_struct* }
%struct.vm_area_struct = type { i32, i32, i32 }
%struct.page = type { i32 }
%struct.mem_cgroup = type { i32 }
%struct.mmu_notifier_range = type { i32 }

@HPAGE_PMD_MASK = common dso_local global i64 0, align 8
@VM_FAULT_WRITE = common dso_local global i32 0, align 4
@HPAGE_PMD_ORDER = common dso_local global i32 0, align 4
@VM_FAULT_FALLBACK = common dso_local global i32 0, align 4
@VM_FAULT_OOM = common dso_local global i32 0, align 4
@THP_FAULT_FALLBACK = common dso_local global i32 0, align 4
@THP_FAULT_ALLOC = common dso_local global i32 0, align 4
@HPAGE_PMD_NR = common dso_local global i32 0, align 4
@MMU_NOTIFY_CLEAR = common dso_local global i32 0, align 4
@HPAGE_PMD_SIZE = common dso_local global i64 0, align 8
@MM_ANONPAGES = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @do_huge_pmd_wp_page(%struct.vm_fault* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.vm_fault*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.vm_area_struct*, align 8
  %7 = alloca %struct.page*, align 8
  %8 = alloca %struct.page*, align 8
  %9 = alloca %struct.mem_cgroup*, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.mmu_notifier_range, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.vm_fault* %0, %struct.vm_fault** %4, align 8
  store i32 %1, i32* %5, align 4
  %16 = load %struct.vm_fault*, %struct.vm_fault** %4, align 8
  %17 = getelementptr inbounds %struct.vm_fault, %struct.vm_fault* %16, i32 0, i32 3
  %18 = load %struct.vm_area_struct*, %struct.vm_area_struct** %17, align 8
  store %struct.vm_area_struct* %18, %struct.vm_area_struct** %6, align 8
  store %struct.page* null, %struct.page** %7, align 8
  %19 = load %struct.vm_fault*, %struct.vm_fault** %4, align 8
  %20 = getelementptr inbounds %struct.vm_fault, %struct.vm_fault* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @HPAGE_PMD_MASK, align 8
  %23 = and i64 %21, %22
  store i64 %23, i64* %10, align 8
  store i32 0, i32* %13, align 4
  %24 = load %struct.vm_area_struct*, %struct.vm_area_struct** %6, align 8
  %25 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.vm_fault*, %struct.vm_fault** %4, align 8
  %28 = getelementptr inbounds %struct.vm_fault, %struct.vm_fault* %27, i32 0, i32 2
  %29 = load i32*, i32** %28, align 8
  %30 = call i32 @pmd_lockptr(i32 %26, i32* %29)
  %31 = load %struct.vm_fault*, %struct.vm_fault** %4, align 8
  %32 = getelementptr inbounds %struct.vm_fault, %struct.vm_fault* %31, i32 0, i32 1
  store i32 %30, i32* %32, align 8
  %33 = load %struct.vm_area_struct*, %struct.vm_area_struct** %6, align 8
  %34 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %33, i32 0, i32 2
  %35 = load i32, i32* %34, align 4
  %36 = icmp ne i32 %35, 0
  %37 = xor i1 %36, true
  %38 = zext i1 %37 to i32
  %39 = load %struct.vm_area_struct*, %struct.vm_area_struct** %6, align 8
  %40 = call i32 @VM_BUG_ON_VMA(i32 %38, %struct.vm_area_struct* %39)
  %41 = load i32, i32* %5, align 4
  %42 = call i64 @is_huge_zero_pmd(i32 %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %2
  br label %156

45:                                               ; preds = %2
  %46 = load %struct.vm_fault*, %struct.vm_fault** %4, align 8
  %47 = getelementptr inbounds %struct.vm_fault, %struct.vm_fault* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 8
  %49 = call i32 @spin_lock(i32 %48)
  %50 = load %struct.vm_fault*, %struct.vm_fault** %4, align 8
  %51 = getelementptr inbounds %struct.vm_fault, %struct.vm_fault* %50, i32 0, i32 2
  %52 = load i32*, i32** %51, align 8
  %53 = load i32, i32* %52, align 4
  %54 = load i32, i32* %5, align 4
  %55 = call i32 @pmd_same(i32 %53, i32 %54)
  %56 = icmp ne i32 %55, 0
  %57 = xor i1 %56, true
  %58 = zext i1 %57 to i32
  %59 = call i64 @unlikely(i32 %58)
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %62

61:                                               ; preds = %45
  br label %398

62:                                               ; preds = %45
  %63 = load i32, i32* %5, align 4
  %64 = call %struct.page* @pmd_page(i32 %63)
  store %struct.page* %64, %struct.page** %7, align 8
  %65 = load %struct.page*, %struct.page** %7, align 8
  %66 = call i32 @PageCompound(%struct.page* %65)
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %73

68:                                               ; preds = %62
  %69 = load %struct.page*, %struct.page** %7, align 8
  %70 = call i32 @PageHead(%struct.page* %69)
  %71 = icmp ne i32 %70, 0
  %72 = xor i1 %71, true
  br label %73

73:                                               ; preds = %68, %62
  %74 = phi i1 [ true, %62 ], [ %72, %68 ]
  %75 = zext i1 %74 to i32
  %76 = load %struct.page*, %struct.page** %7, align 8
  %77 = call i32 @VM_BUG_ON_PAGE(i32 %75, %struct.page* %76)
  %78 = load %struct.page*, %struct.page** %7, align 8
  %79 = call i32 @trylock_page(%struct.page* %78)
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %113, label %81

81:                                               ; preds = %73
  %82 = load %struct.page*, %struct.page** %7, align 8
  %83 = call i32 @get_page(%struct.page* %82)
  %84 = load %struct.vm_fault*, %struct.vm_fault** %4, align 8
  %85 = getelementptr inbounds %struct.vm_fault, %struct.vm_fault* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 8
  %87 = call i32 @spin_unlock(i32 %86)
  %88 = load %struct.page*, %struct.page** %7, align 8
  %89 = call i32 @lock_page(%struct.page* %88)
  %90 = load %struct.vm_fault*, %struct.vm_fault** %4, align 8
  %91 = getelementptr inbounds %struct.vm_fault, %struct.vm_fault* %90, i32 0, i32 1
  %92 = load i32, i32* %91, align 8
  %93 = call i32 @spin_lock(i32 %92)
  %94 = load %struct.vm_fault*, %struct.vm_fault** %4, align 8
  %95 = getelementptr inbounds %struct.vm_fault, %struct.vm_fault* %94, i32 0, i32 2
  %96 = load i32*, i32** %95, align 8
  %97 = load i32, i32* %96, align 4
  %98 = load i32, i32* %5, align 4
  %99 = call i32 @pmd_same(i32 %97, i32 %98)
  %100 = icmp ne i32 %99, 0
  %101 = xor i1 %100, true
  %102 = zext i1 %101 to i32
  %103 = call i64 @unlikely(i32 %102)
  %104 = icmp ne i64 %103, 0
  br i1 %104, label %105, label %110

105:                                              ; preds = %81
  %106 = load %struct.page*, %struct.page** %7, align 8
  %107 = call i32 @unlock_page(%struct.page* %106)
  %108 = load %struct.page*, %struct.page** %7, align 8
  %109 = call i32 @put_page(%struct.page* %108)
  br label %398

110:                                              ; preds = %81
  %111 = load %struct.page*, %struct.page** %7, align 8
  %112 = call i32 @put_page(%struct.page* %111)
  br label %113

113:                                              ; preds = %110, %73
  %114 = load %struct.page*, %struct.page** %7, align 8
  %115 = call i64 @reuse_swap_page(%struct.page* %114, i32* null)
  %116 = icmp ne i64 %115, 0
  br i1 %116, label %117, label %147

117:                                              ; preds = %113
  %118 = load i32, i32* %5, align 4
  %119 = call i32 @pmd_mkyoung(i32 %118)
  store i32 %119, i32* %14, align 4
  %120 = load i32, i32* %14, align 4
  %121 = call i32 @pmd_mkdirty(i32 %120)
  %122 = load %struct.vm_area_struct*, %struct.vm_area_struct** %6, align 8
  %123 = call i32 @maybe_pmd_mkwrite(i32 %121, %struct.vm_area_struct* %122)
  store i32 %123, i32* %14, align 4
  %124 = load %struct.vm_area_struct*, %struct.vm_area_struct** %6, align 8
  %125 = load i64, i64* %10, align 8
  %126 = load %struct.vm_fault*, %struct.vm_fault** %4, align 8
  %127 = getelementptr inbounds %struct.vm_fault, %struct.vm_fault* %126, i32 0, i32 2
  %128 = load i32*, i32** %127, align 8
  %129 = load i32, i32* %14, align 4
  %130 = call i64 @pmdp_set_access_flags(%struct.vm_area_struct* %124, i64 %125, i32* %128, i32 %129, i32 1)
  %131 = icmp ne i64 %130, 0
  br i1 %131, label %132, label %141

132:                                              ; preds = %117
  %133 = load %struct.vm_area_struct*, %struct.vm_area_struct** %6, align 8
  %134 = load %struct.vm_fault*, %struct.vm_fault** %4, align 8
  %135 = getelementptr inbounds %struct.vm_fault, %struct.vm_fault* %134, i32 0, i32 0
  %136 = load i64, i64* %135, align 8
  %137 = load %struct.vm_fault*, %struct.vm_fault** %4, align 8
  %138 = getelementptr inbounds %struct.vm_fault, %struct.vm_fault* %137, i32 0, i32 2
  %139 = load i32*, i32** %138, align 8
  %140 = call i32 @update_mmu_cache_pmd(%struct.vm_area_struct* %133, i64 %136, i32* %139)
  br label %141

141:                                              ; preds = %132, %117
  %142 = load i32, i32* @VM_FAULT_WRITE, align 4
  %143 = load i32, i32* %13, align 4
  %144 = or i32 %143, %142
  store i32 %144, i32* %13, align 4
  %145 = load %struct.page*, %struct.page** %7, align 8
  %146 = call i32 @unlock_page(%struct.page* %145)
  br label %398

147:                                              ; preds = %113
  %148 = load %struct.page*, %struct.page** %7, align 8
  %149 = call i32 @unlock_page(%struct.page* %148)
  %150 = load %struct.page*, %struct.page** %7, align 8
  %151 = call i32 @get_page(%struct.page* %150)
  %152 = load %struct.vm_fault*, %struct.vm_fault** %4, align 8
  %153 = getelementptr inbounds %struct.vm_fault, %struct.vm_fault* %152, i32 0, i32 1
  %154 = load i32, i32* %153, align 8
  %155 = call i32 @spin_unlock(i32 %154)
  br label %156

156:                                              ; preds = %147, %44
  %157 = load %struct.vm_area_struct*, %struct.vm_area_struct** %6, align 8
  %158 = call i64 @__transparent_hugepage_enabled(%struct.vm_area_struct* %157)
  %159 = icmp ne i64 %158, 0
  br i1 %159, label %160, label %171

160:                                              ; preds = %156
  %161 = call i32 (...) @transparent_hugepage_debug_cow()
  %162 = icmp ne i32 %161, 0
  br i1 %162, label %171, label %163

163:                                              ; preds = %160
  %164 = load %struct.vm_area_struct*, %struct.vm_area_struct** %6, align 8
  %165 = call i32 @alloc_hugepage_direct_gfpmask(%struct.vm_area_struct* %164)
  store i32 %165, i32* %12, align 4
  %166 = load i32, i32* %12, align 4
  %167 = load %struct.vm_area_struct*, %struct.vm_area_struct** %6, align 8
  %168 = load i64, i64* %10, align 8
  %169 = load i32, i32* @HPAGE_PMD_ORDER, align 4
  %170 = call %struct.page* @alloc_hugepage_vma(i32 %166, %struct.vm_area_struct* %167, i64 %168, i32 %169)
  store %struct.page* %170, %struct.page** %8, align 8
  br label %172

171:                                              ; preds = %160, %156
  store %struct.page* null, %struct.page** %8, align 8
  br label %172

172:                                              ; preds = %171, %163
  %173 = load %struct.page*, %struct.page** %8, align 8
  %174 = call i64 @likely(%struct.page* %173)
  %175 = icmp ne i64 %174, 0
  br i1 %175, label %176, label %179

176:                                              ; preds = %172
  %177 = load %struct.page*, %struct.page** %8, align 8
  %178 = call i32 @prep_transhuge_page(%struct.page* %177)
  br label %221

179:                                              ; preds = %172
  %180 = load %struct.page*, %struct.page** %7, align 8
  %181 = icmp ne %struct.page* %180, null
  br i1 %181, label %194, label %182

182:                                              ; preds = %179
  %183 = load %struct.vm_area_struct*, %struct.vm_area_struct** %6, align 8
  %184 = load %struct.vm_fault*, %struct.vm_fault** %4, align 8
  %185 = getelementptr inbounds %struct.vm_fault, %struct.vm_fault* %184, i32 0, i32 2
  %186 = load i32*, i32** %185, align 8
  %187 = load %struct.vm_fault*, %struct.vm_fault** %4, align 8
  %188 = getelementptr inbounds %struct.vm_fault, %struct.vm_fault* %187, i32 0, i32 0
  %189 = load i64, i64* %188, align 8
  %190 = call i32 @split_huge_pmd(%struct.vm_area_struct* %183, i32* %186, i64 %189)
  %191 = load i32, i32* @VM_FAULT_FALLBACK, align 4
  %192 = load i32, i32* %13, align 4
  %193 = or i32 %192, %191
  store i32 %193, i32* %13, align 4
  br label %218

194:                                              ; preds = %179
  %195 = load %struct.vm_fault*, %struct.vm_fault** %4, align 8
  %196 = load i32, i32* %5, align 4
  %197 = load %struct.page*, %struct.page** %7, align 8
  %198 = call i32 @do_huge_pmd_wp_page_fallback(%struct.vm_fault* %195, i32 %196, %struct.page* %197)
  store i32 %198, i32* %13, align 4
  %199 = load i32, i32* %13, align 4
  %200 = load i32, i32* @VM_FAULT_OOM, align 4
  %201 = and i32 %199, %200
  %202 = icmp ne i32 %201, 0
  br i1 %202, label %203, label %215

203:                                              ; preds = %194
  %204 = load %struct.vm_area_struct*, %struct.vm_area_struct** %6, align 8
  %205 = load %struct.vm_fault*, %struct.vm_fault** %4, align 8
  %206 = getelementptr inbounds %struct.vm_fault, %struct.vm_fault* %205, i32 0, i32 2
  %207 = load i32*, i32** %206, align 8
  %208 = load %struct.vm_fault*, %struct.vm_fault** %4, align 8
  %209 = getelementptr inbounds %struct.vm_fault, %struct.vm_fault* %208, i32 0, i32 0
  %210 = load i64, i64* %209, align 8
  %211 = call i32 @split_huge_pmd(%struct.vm_area_struct* %204, i32* %207, i64 %210)
  %212 = load i32, i32* @VM_FAULT_FALLBACK, align 4
  %213 = load i32, i32* %13, align 4
  %214 = or i32 %213, %212
  store i32 %214, i32* %13, align 4
  br label %215

215:                                              ; preds = %203, %194
  %216 = load %struct.page*, %struct.page** %7, align 8
  %217 = call i32 @put_page(%struct.page* %216)
  br label %218

218:                                              ; preds = %215, %182
  %219 = load i32, i32* @THP_FAULT_FALLBACK, align 4
  %220 = call i32 @count_vm_event(i32 %219)
  br label %396

221:                                              ; preds = %176
  %222 = load %struct.page*, %struct.page** %8, align 8
  %223 = load %struct.vm_area_struct*, %struct.vm_area_struct** %6, align 8
  %224 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %223, i32 0, i32 0
  %225 = load i32, i32* %224, align 4
  %226 = load i32, i32* %12, align 4
  %227 = call i32 @mem_cgroup_try_charge_delay(%struct.page* %222, i32 %225, i32 %226, %struct.mem_cgroup** %9, i32 1)
  %228 = call i64 @unlikely(i32 %227)
  %229 = icmp ne i64 %228, 0
  br i1 %229, label %230, label %252

230:                                              ; preds = %221
  %231 = load %struct.page*, %struct.page** %8, align 8
  %232 = call i32 @put_page(%struct.page* %231)
  %233 = load %struct.vm_area_struct*, %struct.vm_area_struct** %6, align 8
  %234 = load %struct.vm_fault*, %struct.vm_fault** %4, align 8
  %235 = getelementptr inbounds %struct.vm_fault, %struct.vm_fault* %234, i32 0, i32 2
  %236 = load i32*, i32** %235, align 8
  %237 = load %struct.vm_fault*, %struct.vm_fault** %4, align 8
  %238 = getelementptr inbounds %struct.vm_fault, %struct.vm_fault* %237, i32 0, i32 0
  %239 = load i64, i64* %238, align 8
  %240 = call i32 @split_huge_pmd(%struct.vm_area_struct* %233, i32* %236, i64 %239)
  %241 = load %struct.page*, %struct.page** %7, align 8
  %242 = icmp ne %struct.page* %241, null
  br i1 %242, label %243, label %246

243:                                              ; preds = %230
  %244 = load %struct.page*, %struct.page** %7, align 8
  %245 = call i32 @put_page(%struct.page* %244)
  br label %246

246:                                              ; preds = %243, %230
  %247 = load i32, i32* @VM_FAULT_FALLBACK, align 4
  %248 = load i32, i32* %13, align 4
  %249 = or i32 %248, %247
  store i32 %249, i32* %13, align 4
  %250 = load i32, i32* @THP_FAULT_FALLBACK, align 4
  %251 = call i32 @count_vm_event(i32 %250)
  br label %396

252:                                              ; preds = %221
  %253 = load i32, i32* @THP_FAULT_ALLOC, align 4
  %254 = call i32 @count_vm_event(i32 %253)
  %255 = load %struct.mem_cgroup*, %struct.mem_cgroup** %9, align 8
  %256 = load i32, i32* @THP_FAULT_ALLOC, align 4
  %257 = call i32 @count_memcg_events(%struct.mem_cgroup* %255, i32 %256, i32 1)
  %258 = load %struct.page*, %struct.page** %7, align 8
  %259 = icmp ne %struct.page* %258, null
  br i1 %259, label %267, label %260

260:                                              ; preds = %252
  %261 = load %struct.page*, %struct.page** %8, align 8
  %262 = load %struct.vm_fault*, %struct.vm_fault** %4, align 8
  %263 = getelementptr inbounds %struct.vm_fault, %struct.vm_fault* %262, i32 0, i32 0
  %264 = load i64, i64* %263, align 8
  %265 = load i32, i32* @HPAGE_PMD_NR, align 4
  %266 = call i32 @clear_huge_page(%struct.page* %261, i64 %264, i32 %265)
  br label %276

267:                                              ; preds = %252
  %268 = load %struct.page*, %struct.page** %8, align 8
  %269 = load %struct.page*, %struct.page** %7, align 8
  %270 = load %struct.vm_fault*, %struct.vm_fault** %4, align 8
  %271 = getelementptr inbounds %struct.vm_fault, %struct.vm_fault* %270, i32 0, i32 0
  %272 = load i64, i64* %271, align 8
  %273 = load %struct.vm_area_struct*, %struct.vm_area_struct** %6, align 8
  %274 = load i32, i32* @HPAGE_PMD_NR, align 4
  %275 = call i32 @copy_user_huge_page(%struct.page* %268, %struct.page* %269, i64 %272, %struct.vm_area_struct* %273, i32 %274)
  br label %276

276:                                              ; preds = %267, %260
  %277 = load %struct.page*, %struct.page** %8, align 8
  %278 = call i32 @__SetPageUptodate(%struct.page* %277)
  %279 = load i32, i32* @MMU_NOTIFY_CLEAR, align 4
  %280 = load %struct.vm_area_struct*, %struct.vm_area_struct** %6, align 8
  %281 = load %struct.vm_area_struct*, %struct.vm_area_struct** %6, align 8
  %282 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %281, i32 0, i32 0
  %283 = load i32, i32* %282, align 4
  %284 = load i64, i64* %10, align 8
  %285 = load i64, i64* %10, align 8
  %286 = load i64, i64* @HPAGE_PMD_SIZE, align 8
  %287 = add i64 %285, %286
  %288 = call i32 @mmu_notifier_range_init(%struct.mmu_notifier_range* %11, i32 %279, i32 0, %struct.vm_area_struct* %280, i32 %283, i64 %284, i64 %287)
  %289 = call i32 @mmu_notifier_invalidate_range_start(%struct.mmu_notifier_range* %11)
  %290 = load %struct.vm_fault*, %struct.vm_fault** %4, align 8
  %291 = getelementptr inbounds %struct.vm_fault, %struct.vm_fault* %290, i32 0, i32 1
  %292 = load i32, i32* %291, align 8
  %293 = call i32 @spin_lock(i32 %292)
  %294 = load %struct.page*, %struct.page** %7, align 8
  %295 = icmp ne %struct.page* %294, null
  br i1 %295, label %296, label %299

296:                                              ; preds = %276
  %297 = load %struct.page*, %struct.page** %7, align 8
  %298 = call i32 @put_page(%struct.page* %297)
  br label %299

299:                                              ; preds = %296, %276
  %300 = load %struct.vm_fault*, %struct.vm_fault** %4, align 8
  %301 = getelementptr inbounds %struct.vm_fault, %struct.vm_fault* %300, i32 0, i32 2
  %302 = load i32*, i32** %301, align 8
  %303 = load i32, i32* %302, align 4
  %304 = load i32, i32* %5, align 4
  %305 = call i32 @pmd_same(i32 %303, i32 %304)
  %306 = icmp ne i32 %305, 0
  %307 = xor i1 %306, true
  %308 = zext i1 %307 to i32
  %309 = call i64 @unlikely(i32 %308)
  %310 = icmp ne i64 %309, 0
  br i1 %310, label %311, label %321

311:                                              ; preds = %299
  %312 = load %struct.vm_fault*, %struct.vm_fault** %4, align 8
  %313 = getelementptr inbounds %struct.vm_fault, %struct.vm_fault* %312, i32 0, i32 1
  %314 = load i32, i32* %313, align 8
  %315 = call i32 @spin_unlock(i32 %314)
  %316 = load %struct.page*, %struct.page** %8, align 8
  %317 = load %struct.mem_cgroup*, %struct.mem_cgroup** %9, align 8
  %318 = call i32 @mem_cgroup_cancel_charge(%struct.page* %316, %struct.mem_cgroup* %317, i32 1)
  %319 = load %struct.page*, %struct.page** %8, align 8
  %320 = call i32 @put_page(%struct.page* %319)
  br label %394

321:                                              ; preds = %299
  %322 = load %struct.page*, %struct.page** %8, align 8
  %323 = load %struct.vm_area_struct*, %struct.vm_area_struct** %6, align 8
  %324 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %323, i32 0, i32 1
  %325 = load i32, i32* %324, align 4
  %326 = call i32 @mk_huge_pmd(%struct.page* %322, i32 %325)
  store i32 %326, i32* %15, align 4
  %327 = load i32, i32* %15, align 4
  %328 = call i32 @pmd_mkdirty(i32 %327)
  %329 = load %struct.vm_area_struct*, %struct.vm_area_struct** %6, align 8
  %330 = call i32 @maybe_pmd_mkwrite(i32 %328, %struct.vm_area_struct* %329)
  store i32 %330, i32* %15, align 4
  %331 = load %struct.vm_area_struct*, %struct.vm_area_struct** %6, align 8
  %332 = load i64, i64* %10, align 8
  %333 = load %struct.vm_fault*, %struct.vm_fault** %4, align 8
  %334 = getelementptr inbounds %struct.vm_fault, %struct.vm_fault* %333, i32 0, i32 2
  %335 = load i32*, i32** %334, align 8
  %336 = call i32 @pmdp_huge_clear_flush_notify(%struct.vm_area_struct* %331, i64 %332, i32* %335)
  %337 = load %struct.page*, %struct.page** %8, align 8
  %338 = load %struct.vm_area_struct*, %struct.vm_area_struct** %6, align 8
  %339 = load i64, i64* %10, align 8
  %340 = call i32 @page_add_new_anon_rmap(%struct.page* %337, %struct.vm_area_struct* %338, i64 %339, i32 1)
  %341 = load %struct.page*, %struct.page** %8, align 8
  %342 = load %struct.mem_cgroup*, %struct.mem_cgroup** %9, align 8
  %343 = call i32 @mem_cgroup_commit_charge(%struct.page* %341, %struct.mem_cgroup* %342, i32 0, i32 1)
  %344 = load %struct.page*, %struct.page** %8, align 8
  %345 = load %struct.vm_area_struct*, %struct.vm_area_struct** %6, align 8
  %346 = call i32 @lru_cache_add_active_or_unevictable(%struct.page* %344, %struct.vm_area_struct* %345)
  %347 = load %struct.vm_area_struct*, %struct.vm_area_struct** %6, align 8
  %348 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %347, i32 0, i32 0
  %349 = load i32, i32* %348, align 4
  %350 = load i64, i64* %10, align 8
  %351 = load %struct.vm_fault*, %struct.vm_fault** %4, align 8
  %352 = getelementptr inbounds %struct.vm_fault, %struct.vm_fault* %351, i32 0, i32 2
  %353 = load i32*, i32** %352, align 8
  %354 = load i32, i32* %15, align 4
  %355 = call i32 @set_pmd_at(i32 %349, i64 %350, i32* %353, i32 %354)
  %356 = load %struct.vm_area_struct*, %struct.vm_area_struct** %6, align 8
  %357 = load %struct.vm_fault*, %struct.vm_fault** %4, align 8
  %358 = getelementptr inbounds %struct.vm_fault, %struct.vm_fault* %357, i32 0, i32 0
  %359 = load i64, i64* %358, align 8
  %360 = load %struct.vm_fault*, %struct.vm_fault** %4, align 8
  %361 = getelementptr inbounds %struct.vm_fault, %struct.vm_fault* %360, i32 0, i32 2
  %362 = load i32*, i32** %361, align 8
  %363 = call i32 @update_mmu_cache_pmd(%struct.vm_area_struct* %356, i64 %359, i32* %362)
  %364 = load %struct.page*, %struct.page** %7, align 8
  %365 = icmp ne %struct.page* %364, null
  br i1 %365, label %373, label %366

366:                                              ; preds = %321
  %367 = load %struct.vm_area_struct*, %struct.vm_area_struct** %6, align 8
  %368 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %367, i32 0, i32 0
  %369 = load i32, i32* %368, align 4
  %370 = load i32, i32* @MM_ANONPAGES, align 4
  %371 = load i32, i32* @HPAGE_PMD_NR, align 4
  %372 = call i32 @add_mm_counter(i32 %369, i32 %370, i32 %371)
  br label %385

373:                                              ; preds = %321
  %374 = load %struct.page*, %struct.page** %7, align 8
  %375 = call i32 @PageHead(%struct.page* %374)
  %376 = icmp ne i32 %375, 0
  %377 = xor i1 %376, true
  %378 = zext i1 %377 to i32
  %379 = load %struct.page*, %struct.page** %7, align 8
  %380 = call i32 @VM_BUG_ON_PAGE(i32 %378, %struct.page* %379)
  %381 = load %struct.page*, %struct.page** %7, align 8
  %382 = call i32 @page_remove_rmap(%struct.page* %381, i32 1)
  %383 = load %struct.page*, %struct.page** %7, align 8
  %384 = call i32 @put_page(%struct.page* %383)
  br label %385

385:                                              ; preds = %373, %366
  %386 = load i32, i32* @VM_FAULT_WRITE, align 4
  %387 = load i32, i32* %13, align 4
  %388 = or i32 %387, %386
  store i32 %388, i32* %13, align 4
  br label %389

389:                                              ; preds = %385
  %390 = load %struct.vm_fault*, %struct.vm_fault** %4, align 8
  %391 = getelementptr inbounds %struct.vm_fault, %struct.vm_fault* %390, i32 0, i32 1
  %392 = load i32, i32* %391, align 8
  %393 = call i32 @spin_unlock(i32 %392)
  br label %394

394:                                              ; preds = %389, %311
  %395 = call i32 @mmu_notifier_invalidate_range_only_end(%struct.mmu_notifier_range* %11)
  br label %396

396:                                              ; preds = %394, %246, %218
  %397 = load i32, i32* %13, align 4
  store i32 %397, i32* %3, align 4
  br label %404

398:                                              ; preds = %141, %105, %61
  %399 = load %struct.vm_fault*, %struct.vm_fault** %4, align 8
  %400 = getelementptr inbounds %struct.vm_fault, %struct.vm_fault* %399, i32 0, i32 1
  %401 = load i32, i32* %400, align 8
  %402 = call i32 @spin_unlock(i32 %401)
  %403 = load i32, i32* %13, align 4
  store i32 %403, i32* %3, align 4
  br label %404

404:                                              ; preds = %398, %396
  %405 = load i32, i32* %3, align 4
  ret i32 %405
}

declare dso_local i32 @pmd_lockptr(i32, i32*) #1

declare dso_local i32 @VM_BUG_ON_VMA(i32, %struct.vm_area_struct*) #1

declare dso_local i64 @is_huge_zero_pmd(i32) #1

declare dso_local i32 @spin_lock(i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @pmd_same(i32, i32) #1

declare dso_local %struct.page* @pmd_page(i32) #1

declare dso_local i32 @VM_BUG_ON_PAGE(i32, %struct.page*) #1

declare dso_local i32 @PageCompound(%struct.page*) #1

declare dso_local i32 @PageHead(%struct.page*) #1

declare dso_local i32 @trylock_page(%struct.page*) #1

declare dso_local i32 @get_page(%struct.page*) #1

declare dso_local i32 @spin_unlock(i32) #1

declare dso_local i32 @lock_page(%struct.page*) #1

declare dso_local i32 @unlock_page(%struct.page*) #1

declare dso_local i32 @put_page(%struct.page*) #1

declare dso_local i64 @reuse_swap_page(%struct.page*, i32*) #1

declare dso_local i32 @pmd_mkyoung(i32) #1

declare dso_local i32 @maybe_pmd_mkwrite(i32, %struct.vm_area_struct*) #1

declare dso_local i32 @pmd_mkdirty(i32) #1

declare dso_local i64 @pmdp_set_access_flags(%struct.vm_area_struct*, i64, i32*, i32, i32) #1

declare dso_local i32 @update_mmu_cache_pmd(%struct.vm_area_struct*, i64, i32*) #1

declare dso_local i64 @__transparent_hugepage_enabled(%struct.vm_area_struct*) #1

declare dso_local i32 @transparent_hugepage_debug_cow(...) #1

declare dso_local i32 @alloc_hugepage_direct_gfpmask(%struct.vm_area_struct*) #1

declare dso_local %struct.page* @alloc_hugepage_vma(i32, %struct.vm_area_struct*, i64, i32) #1

declare dso_local i64 @likely(%struct.page*) #1

declare dso_local i32 @prep_transhuge_page(%struct.page*) #1

declare dso_local i32 @split_huge_pmd(%struct.vm_area_struct*, i32*, i64) #1

declare dso_local i32 @do_huge_pmd_wp_page_fallback(%struct.vm_fault*, i32, %struct.page*) #1

declare dso_local i32 @count_vm_event(i32) #1

declare dso_local i32 @mem_cgroup_try_charge_delay(%struct.page*, i32, i32, %struct.mem_cgroup**, i32) #1

declare dso_local i32 @count_memcg_events(%struct.mem_cgroup*, i32, i32) #1

declare dso_local i32 @clear_huge_page(%struct.page*, i64, i32) #1

declare dso_local i32 @copy_user_huge_page(%struct.page*, %struct.page*, i64, %struct.vm_area_struct*, i32) #1

declare dso_local i32 @__SetPageUptodate(%struct.page*) #1

declare dso_local i32 @mmu_notifier_range_init(%struct.mmu_notifier_range*, i32, i32, %struct.vm_area_struct*, i32, i64, i64) #1

declare dso_local i32 @mmu_notifier_invalidate_range_start(%struct.mmu_notifier_range*) #1

declare dso_local i32 @mem_cgroup_cancel_charge(%struct.page*, %struct.mem_cgroup*, i32) #1

declare dso_local i32 @mk_huge_pmd(%struct.page*, i32) #1

declare dso_local i32 @pmdp_huge_clear_flush_notify(%struct.vm_area_struct*, i64, i32*) #1

declare dso_local i32 @page_add_new_anon_rmap(%struct.page*, %struct.vm_area_struct*, i64, i32) #1

declare dso_local i32 @mem_cgroup_commit_charge(%struct.page*, %struct.mem_cgroup*, i32, i32) #1

declare dso_local i32 @lru_cache_add_active_or_unevictable(%struct.page*, %struct.vm_area_struct*) #1

declare dso_local i32 @set_pmd_at(i32, i64, i32*, i32) #1

declare dso_local i32 @add_mm_counter(i32, i32, i32) #1

declare dso_local i32 @page_remove_rmap(%struct.page*, i32) #1

declare dso_local i32 @mmu_notifier_invalidate_range_only_end(%struct.mmu_notifier_range*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
