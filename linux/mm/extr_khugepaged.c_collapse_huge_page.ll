; ModuleID = '/home/carl/AnghaBench/linux/mm/extr_khugepaged.c_collapse_huge_page.c'
source_filename = "/home/carl/AnghaBench/linux/mm/extr_khugepaged.c_collapse_huge_page.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mm_struct = type { i32 }
%struct.page = type { i32 }
%struct.mem_cgroup = type { i32 }
%struct.vm_area_struct = type { i32, i32 }
%struct.mmu_notifier_range = type { i32 }

@HPAGE_PMD_MASK = common dso_local global i64 0, align 8
@__GFP_THISNODE = common dso_local global i32 0, align 4
@SCAN_ALLOC_HUGE_PAGE_FAIL = common dso_local global i32 0, align 4
@SCAN_CGROUP_CHARGE_FAIL = common dso_local global i32 0, align 4
@SCAN_PMD_NULL = common dso_local global i32 0, align 4
@SCAN_ANY_PROCESS = common dso_local global i32 0, align 4
@MMU_NOTIFY_CLEAR = common dso_local global i32 0, align 4
@HPAGE_PMD_SIZE = common dso_local global i64 0, align 8
@SCAN_FAIL = common dso_local global i32 0, align 4
@THP_COLLAPSE_ALLOC = common dso_local global i32 0, align 4
@khugepaged_pages_collapsed = common dso_local global i32 0, align 4
@SCAN_SUCCEED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mm_struct*, i64, %struct.page**, i32, i32)* @collapse_huge_page to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @collapse_huge_page(%struct.mm_struct* %0, i64 %1, %struct.page** %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.mm_struct*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.page**, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca %struct.page*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i32*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca %struct.mem_cgroup*, align 8
  %21 = alloca %struct.vm_area_struct*, align 8
  %22 = alloca %struct.mmu_notifier_range, align 4
  %23 = alloca i32, align 4
  store %struct.mm_struct* %0, %struct.mm_struct** %6, align 8
  store i64 %1, i64* %7, align 8
  store %struct.page** %2, %struct.page*** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  store i32 0, i32* %18, align 4
  store i32 0, i32* %19, align 4
  %24 = load i64, i64* %7, align 8
  %25 = load i64, i64* @HPAGE_PMD_MASK, align 8
  %26 = xor i64 %25, -1
  %27 = and i64 %24, %26
  %28 = call i32 @VM_BUG_ON(i64 %27)
  %29 = call i32 (...) @alloc_hugepage_khugepaged_gfpmask()
  %30 = load i32, i32* @__GFP_THISNODE, align 4
  %31 = or i32 %29, %30
  store i32 %31, i32* %23, align 4
  %32 = load %struct.mm_struct*, %struct.mm_struct** %6, align 8
  %33 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %32, i32 0, i32 0
  %34 = call i32 @up_read(i32* %33)
  %35 = load %struct.page**, %struct.page*** %8, align 8
  %36 = load i32, i32* %23, align 4
  %37 = load i32, i32* %9, align 4
  %38 = call %struct.page* @khugepaged_alloc_page(%struct.page** %35, i32 %36, i32 %37)
  store %struct.page* %38, %struct.page** %15, align 8
  %39 = load %struct.page*, %struct.page** %15, align 8
  %40 = icmp ne %struct.page* %39, null
  br i1 %40, label %43, label %41

41:                                               ; preds = %5
  %42 = load i32, i32* @SCAN_ALLOC_HUGE_PAGE_FAIL, align 4
  store i32 %42, i32* %19, align 4
  br label %262

43:                                               ; preds = %5
  %44 = load %struct.page*, %struct.page** %15, align 8
  %45 = load %struct.mm_struct*, %struct.mm_struct** %6, align 8
  %46 = load i32, i32* %23, align 4
  %47 = call i32 @mem_cgroup_try_charge(%struct.page* %44, %struct.mm_struct* %45, i32 %46, %struct.mem_cgroup** %20, i32 1)
  %48 = call i64 @unlikely(i32 %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %52

50:                                               ; preds = %43
  %51 = load i32, i32* @SCAN_CGROUP_CHARGE_FAIL, align 4
  store i32 %51, i32* %19, align 4
  br label %262

52:                                               ; preds = %43
  %53 = load %struct.mm_struct*, %struct.mm_struct** %6, align 8
  %54 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %53, i32 0, i32 0
  %55 = call i32 @down_read(i32* %54)
  %56 = load %struct.mm_struct*, %struct.mm_struct** %6, align 8
  %57 = load i64, i64* %7, align 8
  %58 = call i32 @hugepage_vma_revalidate(%struct.mm_struct* %56, i64 %57, %struct.vm_area_struct** %21)
  store i32 %58, i32* %19, align 4
  %59 = load i32, i32* %19, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %68

61:                                               ; preds = %52
  %62 = load %struct.page*, %struct.page** %15, align 8
  %63 = load %struct.mem_cgroup*, %struct.mem_cgroup** %20, align 8
  %64 = call i32 @mem_cgroup_cancel_charge(%struct.page* %62, %struct.mem_cgroup* %63, i32 1)
  %65 = load %struct.mm_struct*, %struct.mm_struct** %6, align 8
  %66 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %65, i32 0, i32 0
  %67 = call i32 @up_read(i32* %66)
  br label %262

68:                                               ; preds = %52
  %69 = load %struct.mm_struct*, %struct.mm_struct** %6, align 8
  %70 = load i64, i64* %7, align 8
  %71 = call i32* @mm_find_pmd(%struct.mm_struct* %69, i64 %70)
  store i32* %71, i32** %11, align 8
  %72 = load i32*, i32** %11, align 8
  %73 = icmp ne i32* %72, null
  br i1 %73, label %82, label %74

74:                                               ; preds = %68
  %75 = load i32, i32* @SCAN_PMD_NULL, align 4
  store i32 %75, i32* %19, align 4
  %76 = load %struct.page*, %struct.page** %15, align 8
  %77 = load %struct.mem_cgroup*, %struct.mem_cgroup** %20, align 8
  %78 = call i32 @mem_cgroup_cancel_charge(%struct.page* %76, %struct.mem_cgroup* %77, i32 1)
  %79 = load %struct.mm_struct*, %struct.mm_struct** %6, align 8
  %80 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %79, i32 0, i32 0
  %81 = call i32 @up_read(i32* %80)
  br label %262

82:                                               ; preds = %68
  %83 = load %struct.mm_struct*, %struct.mm_struct** %6, align 8
  %84 = load %struct.vm_area_struct*, %struct.vm_area_struct** %21, align 8
  %85 = load i64, i64* %7, align 8
  %86 = load i32*, i32** %11, align 8
  %87 = load i32, i32* %10, align 4
  %88 = call i32 @__collapse_huge_page_swapin(%struct.mm_struct* %83, %struct.vm_area_struct* %84, i64 %85, i32* %86, i32 %87)
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %97, label %90

90:                                               ; preds = %82
  %91 = load %struct.page*, %struct.page** %15, align 8
  %92 = load %struct.mem_cgroup*, %struct.mem_cgroup** %20, align 8
  %93 = call i32 @mem_cgroup_cancel_charge(%struct.page* %91, %struct.mem_cgroup* %92, i32 1)
  %94 = load %struct.mm_struct*, %struct.mm_struct** %6, align 8
  %95 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %94, i32 0, i32 0
  %96 = call i32 @up_read(i32* %95)
  br label %262

97:                                               ; preds = %82
  %98 = load %struct.mm_struct*, %struct.mm_struct** %6, align 8
  %99 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %98, i32 0, i32 0
  %100 = call i32 @up_read(i32* %99)
  %101 = load %struct.mm_struct*, %struct.mm_struct** %6, align 8
  %102 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %101, i32 0, i32 0
  %103 = call i32 @down_write(i32* %102)
  %104 = load i32, i32* @SCAN_ANY_PROCESS, align 4
  store i32 %104, i32* %19, align 4
  %105 = load %struct.mm_struct*, %struct.mm_struct** %6, align 8
  %106 = call i32 @mmget_still_valid(%struct.mm_struct* %105)
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %109, label %108

108:                                              ; preds = %97
  br label %267

109:                                              ; preds = %97
  %110 = load %struct.mm_struct*, %struct.mm_struct** %6, align 8
  %111 = load i64, i64* %7, align 8
  %112 = call i32 @hugepage_vma_revalidate(%struct.mm_struct* %110, i64 %111, %struct.vm_area_struct** %21)
  store i32 %112, i32* %19, align 4
  %113 = load i32, i32* %19, align 4
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %115, label %116

115:                                              ; preds = %109
  br label %267

116:                                              ; preds = %109
  %117 = load %struct.mm_struct*, %struct.mm_struct** %6, align 8
  %118 = load i64, i64* %7, align 8
  %119 = call i32* @mm_find_pmd(%struct.mm_struct* %117, i64 %118)
  %120 = load i32*, i32** %11, align 8
  %121 = icmp ne i32* %119, %120
  br i1 %121, label %122, label %123

122:                                              ; preds = %116
  br label %267

123:                                              ; preds = %116
  %124 = load %struct.vm_area_struct*, %struct.vm_area_struct** %21, align 8
  %125 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %124, i32 0, i32 1
  %126 = load i32, i32* %125, align 4
  %127 = call i32 @anon_vma_lock_write(i32 %126)
  %128 = load i32, i32* @MMU_NOTIFY_CLEAR, align 4
  %129 = load %struct.mm_struct*, %struct.mm_struct** %6, align 8
  %130 = load i64, i64* %7, align 8
  %131 = load i64, i64* %7, align 8
  %132 = load i64, i64* @HPAGE_PMD_SIZE, align 8
  %133 = add i64 %131, %132
  %134 = call i32 @mmu_notifier_range_init(%struct.mmu_notifier_range* %22, i32 %128, i32 0, i32* null, %struct.mm_struct* %129, i64 %130, i64 %133)
  %135 = call i32 @mmu_notifier_invalidate_range_start(%struct.mmu_notifier_range* %22)
  %136 = load i32*, i32** %11, align 8
  %137 = load i64, i64* %7, align 8
  %138 = call i32* @pte_offset_map(i32* %136, i64 %137)
  store i32* %138, i32** %13, align 8
  %139 = load %struct.mm_struct*, %struct.mm_struct** %6, align 8
  %140 = load i32*, i32** %11, align 8
  %141 = call i32* @pte_lockptr(%struct.mm_struct* %139, i32* %140)
  store i32* %141, i32** %17, align 8
  %142 = load %struct.mm_struct*, %struct.mm_struct** %6, align 8
  %143 = load i32*, i32** %11, align 8
  %144 = call i32* @pmd_lock(%struct.mm_struct* %142, i32* %143)
  store i32* %144, i32** %16, align 8
  %145 = load %struct.vm_area_struct*, %struct.vm_area_struct** %21, align 8
  %146 = load i64, i64* %7, align 8
  %147 = load i32*, i32** %11, align 8
  %148 = call i32 @pmdp_collapse_flush(%struct.vm_area_struct* %145, i64 %146, i32* %147)
  store i32 %148, i32* %12, align 4
  %149 = load i32*, i32** %16, align 8
  %150 = call i32 @spin_unlock(i32* %149)
  %151 = call i32 @mmu_notifier_invalidate_range_end(%struct.mmu_notifier_range* %22)
  %152 = load i32*, i32** %17, align 8
  %153 = call i32 @spin_lock(i32* %152)
  %154 = load %struct.vm_area_struct*, %struct.vm_area_struct** %21, align 8
  %155 = load i64, i64* %7, align 8
  %156 = load i32*, i32** %13, align 8
  %157 = call i32 @__collapse_huge_page_isolate(%struct.vm_area_struct* %154, i64 %155, i32* %156)
  store i32 %157, i32* %18, align 4
  %158 = load i32*, i32** %17, align 8
  %159 = call i32 @spin_unlock(i32* %158)
  %160 = load i32, i32* %18, align 4
  %161 = icmp ne i32 %160, 0
  %162 = xor i1 %161, true
  %163 = zext i1 %162 to i32
  %164 = call i64 @unlikely(i32 %163)
  %165 = icmp ne i64 %164, 0
  br i1 %165, label %166, label %190

166:                                              ; preds = %123
  %167 = load i32*, i32** %13, align 8
  %168 = call i32 @pte_unmap(i32* %167)
  %169 = load i32*, i32** %16, align 8
  %170 = call i32 @spin_lock(i32* %169)
  %171 = load i32*, i32** %11, align 8
  %172 = load i32, i32* %171, align 4
  %173 = call i32 @pmd_none(i32 %172)
  %174 = icmp ne i32 %173, 0
  %175 = xor i1 %174, true
  %176 = zext i1 %175 to i32
  %177 = call i32 @BUG_ON(i32 %176)
  %178 = load %struct.mm_struct*, %struct.mm_struct** %6, align 8
  %179 = load i32*, i32** %11, align 8
  %180 = load i32, i32* %12, align 4
  %181 = call i32 @pmd_pgtable(i32 %180)
  %182 = call i32 @pmd_populate(%struct.mm_struct* %178, i32* %179, i32 %181)
  %183 = load i32*, i32** %16, align 8
  %184 = call i32 @spin_unlock(i32* %183)
  %185 = load %struct.vm_area_struct*, %struct.vm_area_struct** %21, align 8
  %186 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %185, i32 0, i32 1
  %187 = load i32, i32* %186, align 4
  %188 = call i32 @anon_vma_unlock_write(i32 %187)
  %189 = load i32, i32* @SCAN_FAIL, align 4
  store i32 %189, i32* %19, align 4
  br label %267

190:                                              ; preds = %123
  %191 = load %struct.vm_area_struct*, %struct.vm_area_struct** %21, align 8
  %192 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %191, i32 0, i32 1
  %193 = load i32, i32* %192, align 4
  %194 = call i32 @anon_vma_unlock_write(i32 %193)
  %195 = load i32*, i32** %13, align 8
  %196 = load %struct.page*, %struct.page** %15, align 8
  %197 = load %struct.vm_area_struct*, %struct.vm_area_struct** %21, align 8
  %198 = load i64, i64* %7, align 8
  %199 = load i32*, i32** %17, align 8
  %200 = call i32 @__collapse_huge_page_copy(i32* %195, %struct.page* %196, %struct.vm_area_struct* %197, i64 %198, i32* %199)
  %201 = load i32*, i32** %13, align 8
  %202 = call i32 @pte_unmap(i32* %201)
  %203 = load %struct.page*, %struct.page** %15, align 8
  %204 = call i32 @__SetPageUptodate(%struct.page* %203)
  %205 = load i32, i32* %12, align 4
  %206 = call i32 @pmd_pgtable(i32 %205)
  store i32 %206, i32* %14, align 4
  %207 = load %struct.page*, %struct.page** %15, align 8
  %208 = load %struct.vm_area_struct*, %struct.vm_area_struct** %21, align 8
  %209 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %208, i32 0, i32 0
  %210 = load i32, i32* %209, align 4
  %211 = call i32 @mk_huge_pmd(%struct.page* %207, i32 %210)
  store i32 %211, i32* %12, align 4
  %212 = load i32, i32* %12, align 4
  %213 = call i32 @pmd_mkdirty(i32 %212)
  %214 = load %struct.vm_area_struct*, %struct.vm_area_struct** %21, align 8
  %215 = call i32 @maybe_pmd_mkwrite(i32 %213, %struct.vm_area_struct* %214)
  store i32 %215, i32* %12, align 4
  %216 = call i32 (...) @smp_wmb()
  %217 = load i32*, i32** %16, align 8
  %218 = call i32 @spin_lock(i32* %217)
  %219 = load i32*, i32** %11, align 8
  %220 = load i32, i32* %219, align 4
  %221 = call i32 @pmd_none(i32 %220)
  %222 = icmp ne i32 %221, 0
  %223 = xor i1 %222, true
  %224 = zext i1 %223 to i32
  %225 = call i32 @BUG_ON(i32 %224)
  %226 = load %struct.page*, %struct.page** %15, align 8
  %227 = load %struct.vm_area_struct*, %struct.vm_area_struct** %21, align 8
  %228 = load i64, i64* %7, align 8
  %229 = call i32 @page_add_new_anon_rmap(%struct.page* %226, %struct.vm_area_struct* %227, i64 %228, i32 1)
  %230 = load %struct.page*, %struct.page** %15, align 8
  %231 = load %struct.mem_cgroup*, %struct.mem_cgroup** %20, align 8
  %232 = call i32 @mem_cgroup_commit_charge(%struct.page* %230, %struct.mem_cgroup* %231, i32 0, i32 1)
  %233 = load %struct.mem_cgroup*, %struct.mem_cgroup** %20, align 8
  %234 = load i32, i32* @THP_COLLAPSE_ALLOC, align 4
  %235 = call i32 @count_memcg_events(%struct.mem_cgroup* %233, i32 %234, i32 1)
  %236 = load %struct.page*, %struct.page** %15, align 8
  %237 = load %struct.vm_area_struct*, %struct.vm_area_struct** %21, align 8
  %238 = call i32 @lru_cache_add_active_or_unevictable(%struct.page* %236, %struct.vm_area_struct* %237)
  %239 = load %struct.mm_struct*, %struct.mm_struct** %6, align 8
  %240 = load i32*, i32** %11, align 8
  %241 = load i32, i32* %14, align 4
  %242 = call i32 @pgtable_trans_huge_deposit(%struct.mm_struct* %239, i32* %240, i32 %241)
  %243 = load %struct.mm_struct*, %struct.mm_struct** %6, align 8
  %244 = load i64, i64* %7, align 8
  %245 = load i32*, i32** %11, align 8
  %246 = load i32, i32* %12, align 4
  %247 = call i32 @set_pmd_at(%struct.mm_struct* %243, i64 %244, i32* %245, i32 %246)
  %248 = load %struct.vm_area_struct*, %struct.vm_area_struct** %21, align 8
  %249 = load i64, i64* %7, align 8
  %250 = load i32*, i32** %11, align 8
  %251 = call i32 @update_mmu_cache_pmd(%struct.vm_area_struct* %248, i64 %249, i32* %250)
  %252 = load i32*, i32** %16, align 8
  %253 = call i32 @spin_unlock(i32* %252)
  %254 = load %struct.page**, %struct.page*** %8, align 8
  store %struct.page* null, %struct.page** %254, align 8
  %255 = load i32, i32* @khugepaged_pages_collapsed, align 4
  %256 = add nsw i32 %255, 1
  store i32 %256, i32* @khugepaged_pages_collapsed, align 4
  %257 = load i32, i32* @SCAN_SUCCEED, align 4
  store i32 %257, i32* %19, align 4
  br label %258

258:                                              ; preds = %267, %190
  %259 = load %struct.mm_struct*, %struct.mm_struct** %6, align 8
  %260 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %259, i32 0, i32 0
  %261 = call i32 @up_write(i32* %260)
  br label %262

262:                                              ; preds = %258, %90, %74, %61, %50, %41
  %263 = load %struct.mm_struct*, %struct.mm_struct** %6, align 8
  %264 = load i32, i32* %18, align 4
  %265 = load i32, i32* %19, align 4
  %266 = call i32 @trace_mm_collapse_huge_page(%struct.mm_struct* %263, i32 %264, i32 %265)
  ret void

267:                                              ; preds = %166, %122, %115, %108
  %268 = load %struct.page*, %struct.page** %15, align 8
  %269 = load %struct.mem_cgroup*, %struct.mem_cgroup** %20, align 8
  %270 = call i32 @mem_cgroup_cancel_charge(%struct.page* %268, %struct.mem_cgroup* %269, i32 1)
  br label %258
}

declare dso_local i32 @VM_BUG_ON(i64) #1

declare dso_local i32 @alloc_hugepage_khugepaged_gfpmask(...) #1

declare dso_local i32 @up_read(i32*) #1

declare dso_local %struct.page* @khugepaged_alloc_page(%struct.page**, i32, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @mem_cgroup_try_charge(%struct.page*, %struct.mm_struct*, i32, %struct.mem_cgroup**, i32) #1

declare dso_local i32 @down_read(i32*) #1

declare dso_local i32 @hugepage_vma_revalidate(%struct.mm_struct*, i64, %struct.vm_area_struct**) #1

declare dso_local i32 @mem_cgroup_cancel_charge(%struct.page*, %struct.mem_cgroup*, i32) #1

declare dso_local i32* @mm_find_pmd(%struct.mm_struct*, i64) #1

declare dso_local i32 @__collapse_huge_page_swapin(%struct.mm_struct*, %struct.vm_area_struct*, i64, i32*, i32) #1

declare dso_local i32 @down_write(i32*) #1

declare dso_local i32 @mmget_still_valid(%struct.mm_struct*) #1

declare dso_local i32 @anon_vma_lock_write(i32) #1

declare dso_local i32 @mmu_notifier_range_init(%struct.mmu_notifier_range*, i32, i32, i32*, %struct.mm_struct*, i64, i64) #1

declare dso_local i32 @mmu_notifier_invalidate_range_start(%struct.mmu_notifier_range*) #1

declare dso_local i32* @pte_offset_map(i32*, i64) #1

declare dso_local i32* @pte_lockptr(%struct.mm_struct*, i32*) #1

declare dso_local i32* @pmd_lock(%struct.mm_struct*, i32*) #1

declare dso_local i32 @pmdp_collapse_flush(%struct.vm_area_struct*, i64, i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @mmu_notifier_invalidate_range_end(%struct.mmu_notifier_range*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @__collapse_huge_page_isolate(%struct.vm_area_struct*, i64, i32*) #1

declare dso_local i32 @pte_unmap(i32*) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @pmd_none(i32) #1

declare dso_local i32 @pmd_populate(%struct.mm_struct*, i32*, i32) #1

declare dso_local i32 @pmd_pgtable(i32) #1

declare dso_local i32 @anon_vma_unlock_write(i32) #1

declare dso_local i32 @__collapse_huge_page_copy(i32*, %struct.page*, %struct.vm_area_struct*, i64, i32*) #1

declare dso_local i32 @__SetPageUptodate(%struct.page*) #1

declare dso_local i32 @mk_huge_pmd(%struct.page*, i32) #1

declare dso_local i32 @maybe_pmd_mkwrite(i32, %struct.vm_area_struct*) #1

declare dso_local i32 @pmd_mkdirty(i32) #1

declare dso_local i32 @smp_wmb(...) #1

declare dso_local i32 @page_add_new_anon_rmap(%struct.page*, %struct.vm_area_struct*, i64, i32) #1

declare dso_local i32 @mem_cgroup_commit_charge(%struct.page*, %struct.mem_cgroup*, i32, i32) #1

declare dso_local i32 @count_memcg_events(%struct.mem_cgroup*, i32, i32) #1

declare dso_local i32 @lru_cache_add_active_or_unevictable(%struct.page*, %struct.vm_area_struct*) #1

declare dso_local i32 @pgtable_trans_huge_deposit(%struct.mm_struct*, i32*, i32) #1

declare dso_local i32 @set_pmd_at(%struct.mm_struct*, i64, i32*, i32) #1

declare dso_local i32 @update_mmu_cache_pmd(%struct.vm_area_struct*, i64, i32*) #1

declare dso_local i32 @up_write(i32*) #1

declare dso_local i32 @trace_mm_collapse_huge_page(%struct.mm_struct*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
