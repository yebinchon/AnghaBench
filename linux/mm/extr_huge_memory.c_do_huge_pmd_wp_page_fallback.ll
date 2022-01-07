; ModuleID = '/home/carl/AnghaBench/linux/mm/extr_huge_memory.c_do_huge_pmd_wp_page_fallback.c'
source_filename = "/home/carl/AnghaBench/linux/mm/extr_huge_memory.c_do_huge_pmd_wp_page_fallback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vm_fault = type { i64, i32, i32*, i32*, %struct.vm_area_struct* }
%struct.vm_area_struct = type { i32, i32 }
%struct.page = type { i32 }
%struct.mem_cgroup = type { i32 }
%struct.mmu_notifier_range = type { i32 }

@HPAGE_PMD_MASK = common dso_local global i64 0, align 8
@HPAGE_PMD_NR = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@VM_FAULT_OOM = common dso_local global i32 0, align 4
@GFP_HIGHUSER_MOVABLE = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@MMU_NOTIFY_CLEAR = common dso_local global i32 0, align 4
@HPAGE_PMD_SIZE = common dso_local global i64 0, align 8
@VM_FAULT_WRITE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vm_fault*, i32, %struct.page*)* @do_huge_pmd_wp_page_fallback to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @do_huge_pmd_wp_page_fallback(%struct.vm_fault* %0, i32 %1, %struct.page* %2) #0 {
  %4 = alloca %struct.vm_fault*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.page*, align 8
  %7 = alloca %struct.vm_area_struct*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.mem_cgroup*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.page**, align 8
  %15 = alloca %struct.mmu_notifier_range, align 4
  %16 = alloca i32, align 4
  store %struct.vm_fault* %0, %struct.vm_fault** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.page* %2, %struct.page** %6, align 8
  %17 = load %struct.vm_fault*, %struct.vm_fault** %4, align 8
  %18 = getelementptr inbounds %struct.vm_fault, %struct.vm_fault* %17, i32 0, i32 4
  %19 = load %struct.vm_area_struct*, %struct.vm_area_struct** %18, align 8
  store %struct.vm_area_struct* %19, %struct.vm_area_struct** %7, align 8
  %20 = load %struct.vm_fault*, %struct.vm_fault** %4, align 8
  %21 = getelementptr inbounds %struct.vm_fault, %struct.vm_fault* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @HPAGE_PMD_MASK, align 8
  %24 = and i64 %22, %23
  store i64 %24, i64* %8, align 8
  store i32 0, i32* %13, align 4
  %25 = load i32, i32* @HPAGE_PMD_NR, align 4
  %26 = load i32, i32* @GFP_KERNEL, align 4
  %27 = call %struct.page** @kmalloc_array(i32 %25, i32 8, i32 %26)
  store %struct.page** %27, %struct.page*** %14, align 8
  %28 = load %struct.page**, %struct.page*** %14, align 8
  %29 = icmp ne %struct.page** %28, null
  %30 = xor i1 %29, true
  %31 = zext i1 %30 to i32
  %32 = call i64 @unlikely(i32 %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %38

34:                                               ; preds = %3
  %35 = load i32, i32* @VM_FAULT_OOM, align 4
  %36 = load i32, i32* %13, align 4
  %37 = or i32 %36, %35
  store i32 %37, i32* %13, align 4
  br label %349

38:                                               ; preds = %3
  store i32 0, i32* %12, align 4
  br label %39

39:                                               ; preds = %141, %38
  %40 = load i32, i32* %12, align 4
  %41 = load i32, i32* @HPAGE_PMD_NR, align 4
  %42 = icmp slt i32 %40, %41
  br i1 %42, label %43, label %144

43:                                               ; preds = %39
  %44 = load i32, i32* @GFP_HIGHUSER_MOVABLE, align 4
  %45 = load %struct.vm_area_struct*, %struct.vm_area_struct** %7, align 8
  %46 = load %struct.vm_fault*, %struct.vm_fault** %4, align 8
  %47 = getelementptr inbounds %struct.vm_fault, %struct.vm_fault* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = load %struct.page*, %struct.page** %6, align 8
  %50 = call i32 @page_to_nid(%struct.page* %49)
  %51 = call %struct.page* @alloc_page_vma_node(i32 %44, %struct.vm_area_struct* %45, i64 %48, i32 %50)
  %52 = load %struct.page**, %struct.page*** %14, align 8
  %53 = load i32, i32* %12, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds %struct.page*, %struct.page** %52, i64 %54
  store %struct.page* %51, %struct.page** %55, align 8
  %56 = load %struct.page**, %struct.page*** %14, align 8
  %57 = load i32, i32* %12, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds %struct.page*, %struct.page** %56, i64 %58
  %60 = load %struct.page*, %struct.page** %59, align 8
  %61 = icmp ne %struct.page* %60, null
  br i1 %61, label %62, label %74

62:                                               ; preds = %43
  %63 = load %struct.page**, %struct.page*** %14, align 8
  %64 = load i32, i32* %12, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds %struct.page*, %struct.page** %63, i64 %65
  %67 = load %struct.page*, %struct.page** %66, align 8
  %68 = load %struct.vm_area_struct*, %struct.vm_area_struct** %7, align 8
  %69 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = load i32, i32* @GFP_KERNEL, align 4
  %72 = call i64 @mem_cgroup_try_charge_delay(%struct.page* %67, i32 %70, i32 %71, %struct.mem_cgroup** %9, i32 0)
  %73 = icmp ne i64 %72, 0
  br label %74

74:                                               ; preds = %62, %43
  %75 = phi i1 [ true, %43 ], [ %73, %62 ]
  %76 = zext i1 %75 to i32
  %77 = call i64 @unlikely(i32 %76)
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %132

79:                                               ; preds = %74
  %80 = load %struct.page**, %struct.page*** %14, align 8
  %81 = load i32, i32* %12, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds %struct.page*, %struct.page** %80, i64 %82
  %84 = load %struct.page*, %struct.page** %83, align 8
  %85 = icmp ne %struct.page* %84, null
  br i1 %85, label %86, label %93

86:                                               ; preds = %79
  %87 = load %struct.page**, %struct.page*** %14, align 8
  %88 = load i32, i32* %12, align 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds %struct.page*, %struct.page** %87, i64 %89
  %91 = load %struct.page*, %struct.page** %90, align 8
  %92 = call i32 @put_page(%struct.page* %91)
  br label %93

93:                                               ; preds = %86, %79
  br label %94

94:                                               ; preds = %98, %93
  %95 = load i32, i32* %12, align 4
  %96 = add nsw i32 %95, -1
  store i32 %96, i32* %12, align 4
  %97 = icmp sge i32 %96, 0
  br i1 %97, label %98, label %126

98:                                               ; preds = %94
  %99 = load %struct.page**, %struct.page*** %14, align 8
  %100 = load i32, i32* %12, align 4
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds %struct.page*, %struct.page** %99, i64 %101
  %103 = load %struct.page*, %struct.page** %102, align 8
  %104 = call i64 @page_private(%struct.page* %103)
  %105 = inttoptr i64 %104 to i8*
  %106 = bitcast i8* %105 to %struct.mem_cgroup*
  store %struct.mem_cgroup* %106, %struct.mem_cgroup** %9, align 8
  %107 = load %struct.page**, %struct.page*** %14, align 8
  %108 = load i32, i32* %12, align 4
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds %struct.page*, %struct.page** %107, i64 %109
  %111 = load %struct.page*, %struct.page** %110, align 8
  %112 = call i32 @set_page_private(%struct.page* %111, i64 0)
  %113 = load %struct.page**, %struct.page*** %14, align 8
  %114 = load i32, i32* %12, align 4
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds %struct.page*, %struct.page** %113, i64 %115
  %117 = load %struct.page*, %struct.page** %116, align 8
  %118 = load %struct.mem_cgroup*, %struct.mem_cgroup** %9, align 8
  %119 = call i32 @mem_cgroup_cancel_charge(%struct.page* %117, %struct.mem_cgroup* %118, i32 0)
  %120 = load %struct.page**, %struct.page*** %14, align 8
  %121 = load i32, i32* %12, align 4
  %122 = sext i32 %121 to i64
  %123 = getelementptr inbounds %struct.page*, %struct.page** %120, i64 %122
  %124 = load %struct.page*, %struct.page** %123, align 8
  %125 = call i32 @put_page(%struct.page* %124)
  br label %94

126:                                              ; preds = %94
  %127 = load %struct.page**, %struct.page*** %14, align 8
  %128 = call i32 @kfree(%struct.page** %127)
  %129 = load i32, i32* @VM_FAULT_OOM, align 4
  %130 = load i32, i32* %13, align 4
  %131 = or i32 %130, %129
  store i32 %131, i32* %13, align 4
  br label %349

132:                                              ; preds = %74
  %133 = load %struct.page**, %struct.page*** %14, align 8
  %134 = load i32, i32* %12, align 4
  %135 = sext i32 %134 to i64
  %136 = getelementptr inbounds %struct.page*, %struct.page** %133, i64 %135
  %137 = load %struct.page*, %struct.page** %136, align 8
  %138 = load %struct.mem_cgroup*, %struct.mem_cgroup** %9, align 8
  %139 = ptrtoint %struct.mem_cgroup* %138 to i64
  %140 = call i32 @set_page_private(%struct.page* %137, i64 %139)
  br label %141

141:                                              ; preds = %132
  %142 = load i32, i32* %12, align 4
  %143 = add nsw i32 %142, 1
  store i32 %143, i32* %12, align 4
  br label %39

144:                                              ; preds = %39
  store i32 0, i32* %12, align 4
  br label %145

145:                                              ; preds = %174, %144
  %146 = load i32, i32* %12, align 4
  %147 = load i32, i32* @HPAGE_PMD_NR, align 4
  %148 = icmp slt i32 %146, %147
  br i1 %148, label %149, label %177

149:                                              ; preds = %145
  %150 = load %struct.page**, %struct.page*** %14, align 8
  %151 = load i32, i32* %12, align 4
  %152 = sext i32 %151 to i64
  %153 = getelementptr inbounds %struct.page*, %struct.page** %150, i64 %152
  %154 = load %struct.page*, %struct.page** %153, align 8
  %155 = load %struct.page*, %struct.page** %6, align 8
  %156 = load i32, i32* %12, align 4
  %157 = sext i32 %156 to i64
  %158 = getelementptr inbounds %struct.page, %struct.page* %155, i64 %157
  %159 = load i64, i64* %8, align 8
  %160 = load i32, i32* @PAGE_SIZE, align 4
  %161 = load i32, i32* %12, align 4
  %162 = mul nsw i32 %160, %161
  %163 = sext i32 %162 to i64
  %164 = add i64 %159, %163
  %165 = load %struct.vm_area_struct*, %struct.vm_area_struct** %7, align 8
  %166 = call i32 @copy_user_highpage(%struct.page* %154, %struct.page* %158, i64 %164, %struct.vm_area_struct* %165)
  %167 = load %struct.page**, %struct.page*** %14, align 8
  %168 = load i32, i32* %12, align 4
  %169 = sext i32 %168 to i64
  %170 = getelementptr inbounds %struct.page*, %struct.page** %167, i64 %169
  %171 = load %struct.page*, %struct.page** %170, align 8
  %172 = call i32 @__SetPageUptodate(%struct.page* %171)
  %173 = call i32 (...) @cond_resched()
  br label %174

174:                                              ; preds = %149
  %175 = load i32, i32* %12, align 4
  %176 = add nsw i32 %175, 1
  store i32 %176, i32* %12, align 4
  br label %145

177:                                              ; preds = %145
  %178 = load i32, i32* @MMU_NOTIFY_CLEAR, align 4
  %179 = load %struct.vm_area_struct*, %struct.vm_area_struct** %7, align 8
  %180 = load %struct.vm_area_struct*, %struct.vm_area_struct** %7, align 8
  %181 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %180, i32 0, i32 0
  %182 = load i32, i32* %181, align 4
  %183 = load i64, i64* %8, align 8
  %184 = load i64, i64* %8, align 8
  %185 = load i64, i64* @HPAGE_PMD_SIZE, align 8
  %186 = add i64 %184, %185
  %187 = call i32 @mmu_notifier_range_init(%struct.mmu_notifier_range* %15, i32 %178, i32 0, %struct.vm_area_struct* %179, i32 %182, i64 %183, i64 %186)
  %188 = call i32 @mmu_notifier_invalidate_range_start(%struct.mmu_notifier_range* %15)
  %189 = load %struct.vm_area_struct*, %struct.vm_area_struct** %7, align 8
  %190 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %189, i32 0, i32 0
  %191 = load i32, i32* %190, align 4
  %192 = load %struct.vm_fault*, %struct.vm_fault** %4, align 8
  %193 = getelementptr inbounds %struct.vm_fault, %struct.vm_fault* %192, i32 0, i32 2
  %194 = load i32*, i32** %193, align 8
  %195 = call i32 @pmd_lock(i32 %191, i32* %194)
  %196 = load %struct.vm_fault*, %struct.vm_fault** %4, align 8
  %197 = getelementptr inbounds %struct.vm_fault, %struct.vm_fault* %196, i32 0, i32 1
  store i32 %195, i32* %197, align 8
  %198 = load %struct.vm_fault*, %struct.vm_fault** %4, align 8
  %199 = getelementptr inbounds %struct.vm_fault, %struct.vm_fault* %198, i32 0, i32 2
  %200 = load i32*, i32** %199, align 8
  %201 = load i32, i32* %200, align 4
  %202 = load i32, i32* %5, align 4
  %203 = call i32 @pmd_same(i32 %201, i32 %202)
  %204 = icmp ne i32 %203, 0
  %205 = xor i1 %204, true
  %206 = zext i1 %205 to i32
  %207 = call i64 @unlikely(i32 %206)
  %208 = icmp ne i64 %207, 0
  br i1 %208, label %209, label %210

209:                                              ; preds = %177
  br label %351

210:                                              ; preds = %177
  %211 = load %struct.page*, %struct.page** %6, align 8
  %212 = call i32 @PageHead(%struct.page* %211)
  %213 = icmp ne i32 %212, 0
  %214 = xor i1 %213, true
  %215 = zext i1 %214 to i32
  %216 = load %struct.page*, %struct.page** %6, align 8
  %217 = call i32 @VM_BUG_ON_PAGE(i32 %215, %struct.page* %216)
  %218 = load %struct.vm_area_struct*, %struct.vm_area_struct** %7, align 8
  %219 = load i64, i64* %8, align 8
  %220 = load %struct.vm_fault*, %struct.vm_fault** %4, align 8
  %221 = getelementptr inbounds %struct.vm_fault, %struct.vm_fault* %220, i32 0, i32 2
  %222 = load i32*, i32** %221, align 8
  %223 = call i32 @pmdp_huge_clear_flush_notify(%struct.vm_area_struct* %218, i64 %219, i32* %222)
  %224 = load %struct.vm_area_struct*, %struct.vm_area_struct** %7, align 8
  %225 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %224, i32 0, i32 0
  %226 = load i32, i32* %225, align 4
  %227 = load %struct.vm_fault*, %struct.vm_fault** %4, align 8
  %228 = getelementptr inbounds %struct.vm_fault, %struct.vm_fault* %227, i32 0, i32 2
  %229 = load i32*, i32** %228, align 8
  %230 = call i32 @pgtable_trans_huge_withdraw(i32 %226, i32* %229)
  store i32 %230, i32* %10, align 4
  %231 = load %struct.vm_area_struct*, %struct.vm_area_struct** %7, align 8
  %232 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %231, i32 0, i32 0
  %233 = load i32, i32* %232, align 4
  %234 = load i32, i32* %10, align 4
  %235 = call i32 @pmd_populate(i32 %233, i32* %11, i32 %234)
  store i32 0, i32* %12, align 4
  br label %236

236:                                              ; preds = %318, %210
  %237 = load i32, i32* %12, align 4
  %238 = load i32, i32* @HPAGE_PMD_NR, align 4
  %239 = icmp slt i32 %237, %238
  br i1 %239, label %240, label %325

240:                                              ; preds = %236
  %241 = load %struct.page**, %struct.page*** %14, align 8
  %242 = load i32, i32* %12, align 4
  %243 = sext i32 %242 to i64
  %244 = getelementptr inbounds %struct.page*, %struct.page** %241, i64 %243
  %245 = load %struct.page*, %struct.page** %244, align 8
  %246 = load %struct.vm_area_struct*, %struct.vm_area_struct** %7, align 8
  %247 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %246, i32 0, i32 1
  %248 = load i32, i32* %247, align 4
  %249 = call i32 @mk_pte(%struct.page* %245, i32 %248)
  store i32 %249, i32* %16, align 4
  %250 = load i32, i32* %16, align 4
  %251 = call i32 @pte_mkdirty(i32 %250)
  %252 = load %struct.vm_area_struct*, %struct.vm_area_struct** %7, align 8
  %253 = call i32 @maybe_mkwrite(i32 %251, %struct.vm_area_struct* %252)
  store i32 %253, i32* %16, align 4
  %254 = load %struct.page**, %struct.page*** %14, align 8
  %255 = load i32, i32* %12, align 4
  %256 = sext i32 %255 to i64
  %257 = getelementptr inbounds %struct.page*, %struct.page** %254, i64 %256
  %258 = load %struct.page*, %struct.page** %257, align 8
  %259 = call i64 @page_private(%struct.page* %258)
  %260 = inttoptr i64 %259 to i8*
  %261 = bitcast i8* %260 to %struct.mem_cgroup*
  store %struct.mem_cgroup* %261, %struct.mem_cgroup** %9, align 8
  %262 = load %struct.page**, %struct.page*** %14, align 8
  %263 = load i32, i32* %12, align 4
  %264 = sext i32 %263 to i64
  %265 = getelementptr inbounds %struct.page*, %struct.page** %262, i64 %264
  %266 = load %struct.page*, %struct.page** %265, align 8
  %267 = call i32 @set_page_private(%struct.page* %266, i64 0)
  %268 = load %struct.page**, %struct.page*** %14, align 8
  %269 = load i32, i32* %12, align 4
  %270 = sext i32 %269 to i64
  %271 = getelementptr inbounds %struct.page*, %struct.page** %268, i64 %270
  %272 = load %struct.page*, %struct.page** %271, align 8
  %273 = load %struct.vm_fault*, %struct.vm_fault** %4, align 8
  %274 = getelementptr inbounds %struct.vm_fault, %struct.vm_fault* %273, i32 0, i32 4
  %275 = load %struct.vm_area_struct*, %struct.vm_area_struct** %274, align 8
  %276 = load i64, i64* %8, align 8
  %277 = call i32 @page_add_new_anon_rmap(%struct.page* %272, %struct.vm_area_struct* %275, i64 %276, i32 0)
  %278 = load %struct.page**, %struct.page*** %14, align 8
  %279 = load i32, i32* %12, align 4
  %280 = sext i32 %279 to i64
  %281 = getelementptr inbounds %struct.page*, %struct.page** %278, i64 %280
  %282 = load %struct.page*, %struct.page** %281, align 8
  %283 = load %struct.mem_cgroup*, %struct.mem_cgroup** %9, align 8
  %284 = call i32 @mem_cgroup_commit_charge(%struct.page* %282, %struct.mem_cgroup* %283, i32 0, i32 0)
  %285 = load %struct.page**, %struct.page*** %14, align 8
  %286 = load i32, i32* %12, align 4
  %287 = sext i32 %286 to i64
  %288 = getelementptr inbounds %struct.page*, %struct.page** %285, i64 %287
  %289 = load %struct.page*, %struct.page** %288, align 8
  %290 = load %struct.vm_area_struct*, %struct.vm_area_struct** %7, align 8
  %291 = call i32 @lru_cache_add_active_or_unevictable(%struct.page* %289, %struct.vm_area_struct* %290)
  %292 = load i64, i64* %8, align 8
  %293 = call i32* @pte_offset_map(i32* %11, i64 %292)
  %294 = load %struct.vm_fault*, %struct.vm_fault** %4, align 8
  %295 = getelementptr inbounds %struct.vm_fault, %struct.vm_fault* %294, i32 0, i32 3
  store i32* %293, i32** %295, align 8
  %296 = load %struct.vm_fault*, %struct.vm_fault** %4, align 8
  %297 = getelementptr inbounds %struct.vm_fault, %struct.vm_fault* %296, i32 0, i32 3
  %298 = load i32*, i32** %297, align 8
  %299 = load i32, i32* %298, align 4
  %300 = call i32 @pte_none(i32 %299)
  %301 = icmp ne i32 %300, 0
  %302 = xor i1 %301, true
  %303 = zext i1 %302 to i32
  %304 = call i32 @VM_BUG_ON(i32 %303)
  %305 = load %struct.vm_area_struct*, %struct.vm_area_struct** %7, align 8
  %306 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %305, i32 0, i32 0
  %307 = load i32, i32* %306, align 4
  %308 = load i64, i64* %8, align 8
  %309 = load %struct.vm_fault*, %struct.vm_fault** %4, align 8
  %310 = getelementptr inbounds %struct.vm_fault, %struct.vm_fault* %309, i32 0, i32 3
  %311 = load i32*, i32** %310, align 8
  %312 = load i32, i32* %16, align 4
  %313 = call i32 @set_pte_at(i32 %307, i64 %308, i32* %311, i32 %312)
  %314 = load %struct.vm_fault*, %struct.vm_fault** %4, align 8
  %315 = getelementptr inbounds %struct.vm_fault, %struct.vm_fault* %314, i32 0, i32 3
  %316 = load i32*, i32** %315, align 8
  %317 = call i32 @pte_unmap(i32* %316)
  br label %318

318:                                              ; preds = %240
  %319 = load i32, i32* %12, align 4
  %320 = add nsw i32 %319, 1
  store i32 %320, i32* %12, align 4
  %321 = load i32, i32* @PAGE_SIZE, align 4
  %322 = sext i32 %321 to i64
  %323 = load i64, i64* %8, align 8
  %324 = add i64 %323, %322
  store i64 %324, i64* %8, align 8
  br label %236

325:                                              ; preds = %236
  %326 = load %struct.page**, %struct.page*** %14, align 8
  %327 = call i32 @kfree(%struct.page** %326)
  %328 = call i32 (...) @smp_wmb()
  %329 = load %struct.vm_area_struct*, %struct.vm_area_struct** %7, align 8
  %330 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %329, i32 0, i32 0
  %331 = load i32, i32* %330, align 4
  %332 = load %struct.vm_fault*, %struct.vm_fault** %4, align 8
  %333 = getelementptr inbounds %struct.vm_fault, %struct.vm_fault* %332, i32 0, i32 2
  %334 = load i32*, i32** %333, align 8
  %335 = load i32, i32* %10, align 4
  %336 = call i32 @pmd_populate(i32 %331, i32* %334, i32 %335)
  %337 = load %struct.page*, %struct.page** %6, align 8
  %338 = call i32 @page_remove_rmap(%struct.page* %337, i32 1)
  %339 = load %struct.vm_fault*, %struct.vm_fault** %4, align 8
  %340 = getelementptr inbounds %struct.vm_fault, %struct.vm_fault* %339, i32 0, i32 1
  %341 = load i32, i32* %340, align 8
  %342 = call i32 @spin_unlock(i32 %341)
  %343 = call i32 @mmu_notifier_invalidate_range_only_end(%struct.mmu_notifier_range* %15)
  %344 = load i32, i32* @VM_FAULT_WRITE, align 4
  %345 = load i32, i32* %13, align 4
  %346 = or i32 %345, %344
  store i32 %346, i32* %13, align 4
  %347 = load %struct.page*, %struct.page** %6, align 8
  %348 = call i32 @put_page(%struct.page* %347)
  br label %349

349:                                              ; preds = %392, %325, %126, %34
  %350 = load i32, i32* %13, align 4
  ret i32 %350

351:                                              ; preds = %209
  %352 = load %struct.vm_fault*, %struct.vm_fault** %4, align 8
  %353 = getelementptr inbounds %struct.vm_fault, %struct.vm_fault* %352, i32 0, i32 1
  %354 = load i32, i32* %353, align 8
  %355 = call i32 @spin_unlock(i32 %354)
  %356 = call i32 @mmu_notifier_invalidate_range_end(%struct.mmu_notifier_range* %15)
  store i32 0, i32* %12, align 4
  br label %357

357:                                              ; preds = %389, %351
  %358 = load i32, i32* %12, align 4
  %359 = load i32, i32* @HPAGE_PMD_NR, align 4
  %360 = icmp slt i32 %358, %359
  br i1 %360, label %361, label %392

361:                                              ; preds = %357
  %362 = load %struct.page**, %struct.page*** %14, align 8
  %363 = load i32, i32* %12, align 4
  %364 = sext i32 %363 to i64
  %365 = getelementptr inbounds %struct.page*, %struct.page** %362, i64 %364
  %366 = load %struct.page*, %struct.page** %365, align 8
  %367 = call i64 @page_private(%struct.page* %366)
  %368 = inttoptr i64 %367 to i8*
  %369 = bitcast i8* %368 to %struct.mem_cgroup*
  store %struct.mem_cgroup* %369, %struct.mem_cgroup** %9, align 8
  %370 = load %struct.page**, %struct.page*** %14, align 8
  %371 = load i32, i32* %12, align 4
  %372 = sext i32 %371 to i64
  %373 = getelementptr inbounds %struct.page*, %struct.page** %370, i64 %372
  %374 = load %struct.page*, %struct.page** %373, align 8
  %375 = call i32 @set_page_private(%struct.page* %374, i64 0)
  %376 = load %struct.page**, %struct.page*** %14, align 8
  %377 = load i32, i32* %12, align 4
  %378 = sext i32 %377 to i64
  %379 = getelementptr inbounds %struct.page*, %struct.page** %376, i64 %378
  %380 = load %struct.page*, %struct.page** %379, align 8
  %381 = load %struct.mem_cgroup*, %struct.mem_cgroup** %9, align 8
  %382 = call i32 @mem_cgroup_cancel_charge(%struct.page* %380, %struct.mem_cgroup* %381, i32 0)
  %383 = load %struct.page**, %struct.page*** %14, align 8
  %384 = load i32, i32* %12, align 4
  %385 = sext i32 %384 to i64
  %386 = getelementptr inbounds %struct.page*, %struct.page** %383, i64 %385
  %387 = load %struct.page*, %struct.page** %386, align 8
  %388 = call i32 @put_page(%struct.page* %387)
  br label %389

389:                                              ; preds = %361
  %390 = load i32, i32* %12, align 4
  %391 = add nsw i32 %390, 1
  store i32 %391, i32* %12, align 4
  br label %357

392:                                              ; preds = %357
  %393 = load %struct.page**, %struct.page*** %14, align 8
  %394 = call i32 @kfree(%struct.page** %393)
  br label %349
}

declare dso_local %struct.page** @kmalloc_array(i32, i32, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local %struct.page* @alloc_page_vma_node(i32, %struct.vm_area_struct*, i64, i32) #1

declare dso_local i32 @page_to_nid(%struct.page*) #1

declare dso_local i64 @mem_cgroup_try_charge_delay(%struct.page*, i32, i32, %struct.mem_cgroup**, i32) #1

declare dso_local i32 @put_page(%struct.page*) #1

declare dso_local i64 @page_private(%struct.page*) #1

declare dso_local i32 @set_page_private(%struct.page*, i64) #1

declare dso_local i32 @mem_cgroup_cancel_charge(%struct.page*, %struct.mem_cgroup*, i32) #1

declare dso_local i32 @kfree(%struct.page**) #1

declare dso_local i32 @copy_user_highpage(%struct.page*, %struct.page*, i64, %struct.vm_area_struct*) #1

declare dso_local i32 @__SetPageUptodate(%struct.page*) #1

declare dso_local i32 @cond_resched(...) #1

declare dso_local i32 @mmu_notifier_range_init(%struct.mmu_notifier_range*, i32, i32, %struct.vm_area_struct*, i32, i64, i64) #1

declare dso_local i32 @mmu_notifier_invalidate_range_start(%struct.mmu_notifier_range*) #1

declare dso_local i32 @pmd_lock(i32, i32*) #1

declare dso_local i32 @pmd_same(i32, i32) #1

declare dso_local i32 @VM_BUG_ON_PAGE(i32, %struct.page*) #1

declare dso_local i32 @PageHead(%struct.page*) #1

declare dso_local i32 @pmdp_huge_clear_flush_notify(%struct.vm_area_struct*, i64, i32*) #1

declare dso_local i32 @pgtable_trans_huge_withdraw(i32, i32*) #1

declare dso_local i32 @pmd_populate(i32, i32*, i32) #1

declare dso_local i32 @mk_pte(%struct.page*, i32) #1

declare dso_local i32 @maybe_mkwrite(i32, %struct.vm_area_struct*) #1

declare dso_local i32 @pte_mkdirty(i32) #1

declare dso_local i32 @page_add_new_anon_rmap(%struct.page*, %struct.vm_area_struct*, i64, i32) #1

declare dso_local i32 @mem_cgroup_commit_charge(%struct.page*, %struct.mem_cgroup*, i32, i32) #1

declare dso_local i32 @lru_cache_add_active_or_unevictable(%struct.page*, %struct.vm_area_struct*) #1

declare dso_local i32* @pte_offset_map(i32*, i64) #1

declare dso_local i32 @VM_BUG_ON(i32) #1

declare dso_local i32 @pte_none(i32) #1

declare dso_local i32 @set_pte_at(i32, i64, i32*, i32) #1

declare dso_local i32 @pte_unmap(i32*) #1

declare dso_local i32 @smp_wmb(...) #1

declare dso_local i32 @page_remove_rmap(%struct.page*, i32) #1

declare dso_local i32 @spin_unlock(i32) #1

declare dso_local i32 @mmu_notifier_invalidate_range_only_end(%struct.mmu_notifier_range*) #1

declare dso_local i32 @mmu_notifier_invalidate_range_end(%struct.mmu_notifier_range*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
