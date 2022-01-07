; ModuleID = '/home/carl/AnghaBench/linux/mm/extr_rmap.c_try_to_unmap_one.c'
source_filename = "/home/carl/AnghaBench/linux/mm/extr_rmap.c_try_to_unmap_one.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32 }
%struct.page = type { i32 }
%struct.vm_area_struct = type { i32, i32, %struct.mm_struct* }
%struct.mm_struct = type { i32 }
%struct.page_vma_mapped_walk = type { i64, i32*, %struct.vm_area_struct*, %struct.page* }
%struct.mmu_notifier_range = type { i64, i64 }
%struct.TYPE_7__ = type { i32 }

@TTU_MUNLOCK = common dso_local global i32 0, align 4
@VM_LOCKED = common dso_local global i32 0, align 4
@CONFIG_MIGRATION = common dso_local global i32 0, align 4
@TTU_MIGRATION = common dso_local global i32 0, align 4
@TTU_SPLIT_HUGE_PMD = common dso_local global i32 0, align 4
@TTU_SPLIT_FREEZE = common dso_local global i32 0, align 4
@MMU_NOTIFY_CLEAR = common dso_local global i32 0, align 4
@TTU_IGNORE_MLOCK = common dso_local global i32 0, align 4
@TTU_IGNORE_ACCESS = common dso_local global i32 0, align 4
@TTU_IGNORE_HWPOISON = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i64 0, align 8
@MM_ANONPAGES = common dso_local global i32 0, align 4
@mmlist_lock = common dso_local global i32 0, align 4
@init_mm = common dso_local global %struct.TYPE_8__ zeroinitializer, align 4
@MM_SWAPENTS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.page*, %struct.vm_area_struct*, i64, i8*)* @try_to_unmap_one to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @try_to_unmap_one(%struct.page* %0, %struct.vm_area_struct* %1, i64 %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.page*, align 8
  %7 = alloca %struct.vm_area_struct*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.mm_struct*, align 8
  %11 = alloca %struct.page_vma_mapped_walk, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.page*, align 8
  %14 = alloca i32, align 4
  %15 = alloca %struct.mmu_notifier_range, align 8
  %16 = alloca i32, align 4
  %17 = alloca %struct.TYPE_7__, align 4
  %18 = alloca i32, align 4
  %19 = alloca %struct.TYPE_7__, align 4
  %20 = alloca %struct.TYPE_7__, align 4
  %21 = alloca %struct.TYPE_7__, align 4
  %22 = alloca i32, align 4
  %23 = alloca %struct.TYPE_7__, align 4
  %24 = alloca %struct.TYPE_7__, align 4
  %25 = alloca i32, align 4
  store %struct.page* %0, %struct.page** %6, align 8
  store %struct.vm_area_struct* %1, %struct.vm_area_struct** %7, align 8
  store i64 %2, i64* %8, align 8
  store i8* %3, i8** %9, align 8
  %26 = load %struct.vm_area_struct*, %struct.vm_area_struct** %7, align 8
  %27 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %26, i32 0, i32 2
  %28 = load %struct.mm_struct*, %struct.mm_struct** %27, align 8
  store %struct.mm_struct* %28, %struct.mm_struct** %10, align 8
  %29 = getelementptr inbounds %struct.page_vma_mapped_walk, %struct.page_vma_mapped_walk* %11, i32 0, i32 0
  %30 = load i64, i64* %8, align 8
  store i64 %30, i64* %29, align 8
  %31 = getelementptr inbounds %struct.page_vma_mapped_walk, %struct.page_vma_mapped_walk* %11, i32 0, i32 1
  store i32* null, i32** %31, align 8
  %32 = getelementptr inbounds %struct.page_vma_mapped_walk, %struct.page_vma_mapped_walk* %11, i32 0, i32 2
  %33 = load %struct.vm_area_struct*, %struct.vm_area_struct** %7, align 8
  store %struct.vm_area_struct* %33, %struct.vm_area_struct** %32, align 8
  %34 = getelementptr inbounds %struct.page_vma_mapped_walk, %struct.page_vma_mapped_walk* %11, i32 0, i32 3
  %35 = load %struct.page*, %struct.page** %6, align 8
  store %struct.page* %35, %struct.page** %34, align 8
  store i32 1, i32* %14, align 4
  %36 = load i8*, i8** %9, align 8
  %37 = ptrtoint i8* %36 to i32
  store i32 %37, i32* %16, align 4
  %38 = load i32, i32* %16, align 4
  %39 = load i32, i32* @TTU_MUNLOCK, align 4
  %40 = and i32 %38, %39
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %50

42:                                               ; preds = %4
  %43 = load %struct.vm_area_struct*, %struct.vm_area_struct** %7, align 8
  %44 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = load i32, i32* @VM_LOCKED, align 4
  %47 = and i32 %45, %46
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %50, label %49

49:                                               ; preds = %42
  store i32 1, i32* %5, align 4
  br label %544

50:                                               ; preds = %42, %4
  %51 = load i32, i32* @CONFIG_MIGRATION, align 4
  %52 = call i64 @IS_ENABLED(i32 %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %68

54:                                               ; preds = %50
  %55 = load i32, i32* %16, align 4
  %56 = load i32, i32* @TTU_MIGRATION, align 4
  %57 = and i32 %55, %56
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %68

59:                                               ; preds = %54
  %60 = load %struct.page*, %struct.page** %6, align 8
  %61 = call i64 @is_zone_device_page(%struct.page* %60)
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %68

63:                                               ; preds = %59
  %64 = load %struct.page*, %struct.page** %6, align 8
  %65 = call i32 @is_device_private_page(%struct.page* %64)
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %68, label %67

67:                                               ; preds = %63
  store i32 1, i32* %5, align 4
  br label %544

68:                                               ; preds = %63, %59, %54, %50
  %69 = load i32, i32* %16, align 4
  %70 = load i32, i32* @TTU_SPLIT_HUGE_PMD, align 4
  %71 = and i32 %69, %70
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %81

73:                                               ; preds = %68
  %74 = load %struct.vm_area_struct*, %struct.vm_area_struct** %7, align 8
  %75 = load i64, i64* %8, align 8
  %76 = load i32, i32* %16, align 4
  %77 = load i32, i32* @TTU_SPLIT_FREEZE, align 4
  %78 = and i32 %76, %77
  %79 = load %struct.page*, %struct.page** %6, align 8
  %80 = call i32 @split_huge_pmd_address(%struct.vm_area_struct* %74, i64 %75, i32 %78, %struct.page* %79)
  br label %81

81:                                               ; preds = %73, %68
  %82 = load i32, i32* @MMU_NOTIFY_CLEAR, align 4
  %83 = load %struct.vm_area_struct*, %struct.vm_area_struct** %7, align 8
  %84 = load %struct.vm_area_struct*, %struct.vm_area_struct** %7, align 8
  %85 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %84, i32 0, i32 2
  %86 = load %struct.mm_struct*, %struct.mm_struct** %85, align 8
  %87 = load i64, i64* %8, align 8
  %88 = load %struct.vm_area_struct*, %struct.vm_area_struct** %7, align 8
  %89 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %88, i32 0, i32 1
  %90 = load i32, i32* %89, align 4
  %91 = load i64, i64* %8, align 8
  %92 = load %struct.page*, %struct.page** %6, align 8
  %93 = call i64 @page_size(%struct.page* %92)
  %94 = add i64 %91, %93
  %95 = call i32 @min(i32 %90, i64 %94)
  %96 = call i32 @mmu_notifier_range_init(%struct.mmu_notifier_range* %15, i32 %82, i32 0, %struct.vm_area_struct* %83, %struct.mm_struct* %86, i64 %87, i32 %95)
  %97 = load %struct.page*, %struct.page** %6, align 8
  %98 = call i64 @PageHuge(%struct.page* %97)
  %99 = icmp ne i64 %98, 0
  br i1 %99, label %100, label %105

100:                                              ; preds = %81
  %101 = load %struct.vm_area_struct*, %struct.vm_area_struct** %7, align 8
  %102 = getelementptr inbounds %struct.mmu_notifier_range, %struct.mmu_notifier_range* %15, i32 0, i32 0
  %103 = getelementptr inbounds %struct.mmu_notifier_range, %struct.mmu_notifier_range* %15, i32 0, i32 1
  %104 = call i32 @adjust_range_if_pmd_sharing_possible(%struct.vm_area_struct* %101, i64* %102, i64* %103)
  br label %105

105:                                              ; preds = %100, %81
  %106 = call i32 @mmu_notifier_invalidate_range_start(%struct.mmu_notifier_range* %15)
  br label %107

107:                                              ; preds = %534, %136, %105
  %108 = call i64 @page_vma_mapped_walk(%struct.page_vma_mapped_walk* %11)
  %109 = icmp ne i64 %108, 0
  br i1 %109, label %110, label %541

110:                                              ; preds = %107
  %111 = load i32, i32* %16, align 4
  %112 = load i32, i32* @TTU_IGNORE_MLOCK, align 4
  %113 = and i32 %111, %112
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %138, label %115

115:                                              ; preds = %110
  %116 = load %struct.vm_area_struct*, %struct.vm_area_struct** %7, align 8
  %117 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 8
  %119 = load i32, i32* @VM_LOCKED, align 4
  %120 = and i32 %118, %119
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %122, label %131

122:                                              ; preds = %115
  %123 = load %struct.page*, %struct.page** %6, align 8
  %124 = call i32 @PageTransCompound(%struct.page* %123)
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %129, label %126

126:                                              ; preds = %122
  %127 = load %struct.page*, %struct.page** %6, align 8
  %128 = call i32 @mlock_vma_page(%struct.page* %127)
  br label %129

129:                                              ; preds = %126, %122
  store i32 0, i32* %14, align 4
  %130 = call i32 @page_vma_mapped_walk_done(%struct.page_vma_mapped_walk* %11)
  br label %541

131:                                              ; preds = %115
  %132 = load i32, i32* %16, align 4
  %133 = load i32, i32* @TTU_MUNLOCK, align 4
  %134 = and i32 %132, %133
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %136, label %137

136:                                              ; preds = %131
  br label %107

137:                                              ; preds = %131
  br label %138

138:                                              ; preds = %137, %110
  %139 = getelementptr inbounds %struct.page_vma_mapped_walk, %struct.page_vma_mapped_walk* %11, i32 0, i32 1
  %140 = load i32*, i32** %139, align 8
  %141 = icmp ne i32* %140, null
  %142 = xor i1 %141, true
  %143 = zext i1 %142 to i32
  %144 = load %struct.page*, %struct.page** %6, align 8
  %145 = call i32 @VM_BUG_ON_PAGE(i32 %143, %struct.page* %144)
  %146 = load %struct.page*, %struct.page** %6, align 8
  %147 = load %struct.page*, %struct.page** %6, align 8
  %148 = call %struct.page* @page_to_pfn(%struct.page* %147)
  %149 = ptrtoint %struct.page* %146 to i64
  %150 = ptrtoint %struct.page* %148 to i64
  %151 = sub i64 %149, %150
  %152 = sdiv exact i64 %151, 4
  %153 = getelementptr inbounds %struct.page_vma_mapped_walk, %struct.page_vma_mapped_walk* %11, i32 0, i32 1
  %154 = load i32*, i32** %153, align 8
  %155 = load i32, i32* %154, align 4
  %156 = call %struct.page* @pte_pfn(i32 %155)
  %157 = getelementptr inbounds %struct.page, %struct.page* %156, i64 %152
  store %struct.page* %157, %struct.page** %13, align 8
  %158 = getelementptr inbounds %struct.page_vma_mapped_walk, %struct.page_vma_mapped_walk* %11, i32 0, i32 0
  %159 = load i64, i64* %158, align 8
  store i64 %159, i64* %8, align 8
  %160 = load %struct.page*, %struct.page** %6, align 8
  %161 = call i64 @PageHuge(%struct.page* %160)
  %162 = icmp ne i64 %161, 0
  br i1 %162, label %163, label %190

163:                                              ; preds = %138
  %164 = load %struct.mm_struct*, %struct.mm_struct** %10, align 8
  %165 = getelementptr inbounds %struct.page_vma_mapped_walk, %struct.page_vma_mapped_walk* %11, i32 0, i32 1
  %166 = load i32*, i32** %165, align 8
  %167 = call i64 @huge_pmd_unshare(%struct.mm_struct* %164, i64* %8, i32* %166)
  %168 = icmp ne i64 %167, 0
  br i1 %168, label %169, label %189

169:                                              ; preds = %163
  %170 = load %struct.vm_area_struct*, %struct.vm_area_struct** %7, align 8
  %171 = getelementptr inbounds %struct.mmu_notifier_range, %struct.mmu_notifier_range* %15, i32 0, i32 0
  %172 = load i64, i64* %171, align 8
  %173 = getelementptr inbounds %struct.mmu_notifier_range, %struct.mmu_notifier_range* %15, i32 0, i32 1
  %174 = load i64, i64* %173, align 8
  %175 = call i32 @flush_cache_range(%struct.vm_area_struct* %170, i64 %172, i64 %174)
  %176 = load %struct.vm_area_struct*, %struct.vm_area_struct** %7, align 8
  %177 = getelementptr inbounds %struct.mmu_notifier_range, %struct.mmu_notifier_range* %15, i32 0, i32 0
  %178 = load i64, i64* %177, align 8
  %179 = getelementptr inbounds %struct.mmu_notifier_range, %struct.mmu_notifier_range* %15, i32 0, i32 1
  %180 = load i64, i64* %179, align 8
  %181 = call i32 @flush_tlb_range(%struct.vm_area_struct* %176, i64 %178, i64 %180)
  %182 = load %struct.mm_struct*, %struct.mm_struct** %10, align 8
  %183 = getelementptr inbounds %struct.mmu_notifier_range, %struct.mmu_notifier_range* %15, i32 0, i32 0
  %184 = load i64, i64* %183, align 8
  %185 = getelementptr inbounds %struct.mmu_notifier_range, %struct.mmu_notifier_range* %15, i32 0, i32 1
  %186 = load i64, i64* %185, align 8
  %187 = call i32 @mmu_notifier_invalidate_range(%struct.mm_struct* %182, i64 %184, i64 %186)
  %188 = call i32 @page_vma_mapped_walk_done(%struct.page_vma_mapped_walk* %11)
  br label %541

189:                                              ; preds = %163
  br label %190

190:                                              ; preds = %189, %138
  %191 = load i32, i32* @CONFIG_MIGRATION, align 4
  %192 = call i64 @IS_ENABLED(i32 %191)
  %193 = icmp ne i64 %192, 0
  br i1 %193, label %194, label %233

194:                                              ; preds = %190
  %195 = load i32, i32* %16, align 4
  %196 = load i32, i32* @TTU_MIGRATION, align 4
  %197 = and i32 %195, %196
  %198 = icmp ne i32 %197, 0
  br i1 %198, label %199, label %233

199:                                              ; preds = %194
  %200 = load %struct.page*, %struct.page** %6, align 8
  %201 = call i64 @is_zone_device_page(%struct.page* %200)
  %202 = icmp ne i64 %201, 0
  br i1 %202, label %203, label %233

203:                                              ; preds = %199
  %204 = load %struct.mm_struct*, %struct.mm_struct** %10, align 8
  %205 = getelementptr inbounds %struct.page_vma_mapped_walk, %struct.page_vma_mapped_walk* %11, i32 0, i32 0
  %206 = load i64, i64* %205, align 8
  %207 = getelementptr inbounds %struct.page_vma_mapped_walk, %struct.page_vma_mapped_walk* %11, i32 0, i32 1
  %208 = load i32*, i32** %207, align 8
  %209 = call i32 @ptep_get_and_clear(%struct.mm_struct* %204, i64 %206, i32* %208)
  store i32 %209, i32* %12, align 4
  %210 = load %struct.page*, %struct.page** %6, align 8
  %211 = call i32 @make_migration_entry(%struct.page* %210, i32 0)
  %212 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %19, i32 0, i32 0
  store i32 %211, i32* %212, align 4
  %213 = bitcast %struct.TYPE_7__* %17 to i8*
  %214 = bitcast %struct.TYPE_7__* %19 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %213, i8* align 4 %214, i64 4, i1 false)
  %215 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %17, i32 0, i32 0
  %216 = load i32, i32* %215, align 4
  %217 = call i32 @swp_entry_to_pte(i32 %216)
  store i32 %217, i32* %18, align 4
  %218 = load i32, i32* %12, align 4
  %219 = call i64 @pte_soft_dirty(i32 %218)
  %220 = icmp ne i64 %219, 0
  br i1 %220, label %221, label %224

221:                                              ; preds = %203
  %222 = load i32, i32* %18, align 4
  %223 = call i32 @pte_swp_mksoft_dirty(i32 %222)
  store i32 %223, i32* %18, align 4
  br label %224

224:                                              ; preds = %221, %203
  %225 = load %struct.mm_struct*, %struct.mm_struct** %10, align 8
  %226 = getelementptr inbounds %struct.page_vma_mapped_walk, %struct.page_vma_mapped_walk* %11, i32 0, i32 0
  %227 = load i64, i64* %226, align 8
  %228 = getelementptr inbounds %struct.page_vma_mapped_walk, %struct.page_vma_mapped_walk* %11, i32 0, i32 1
  %229 = load i32*, i32** %228, align 8
  %230 = load i32, i32* %18, align 4
  %231 = call i32 @set_pte_at(%struct.mm_struct* %225, i64 %227, i32* %229, i32 %230)
  %232 = load %struct.page*, %struct.page** %6, align 8
  store %struct.page* %232, %struct.page** %13, align 8
  br label %534

233:                                              ; preds = %199, %194, %190
  %234 = load i32, i32* %16, align 4
  %235 = load i32, i32* @TTU_IGNORE_ACCESS, align 4
  %236 = and i32 %234, %235
  %237 = icmp ne i32 %236, 0
  br i1 %237, label %248, label %238

238:                                              ; preds = %233
  %239 = load %struct.vm_area_struct*, %struct.vm_area_struct** %7, align 8
  %240 = load i64, i64* %8, align 8
  %241 = getelementptr inbounds %struct.page_vma_mapped_walk, %struct.page_vma_mapped_walk* %11, i32 0, i32 1
  %242 = load i32*, i32** %241, align 8
  %243 = call i64 @ptep_clear_flush_young_notify(%struct.vm_area_struct* %239, i64 %240, i32* %242)
  %244 = icmp ne i64 %243, 0
  br i1 %244, label %245, label %247

245:                                              ; preds = %238
  store i32 0, i32* %14, align 4
  %246 = call i32 @page_vma_mapped_walk_done(%struct.page_vma_mapped_walk* %11)
  br label %541

247:                                              ; preds = %238
  br label %248

248:                                              ; preds = %247, %233
  %249 = load %struct.vm_area_struct*, %struct.vm_area_struct** %7, align 8
  %250 = load i64, i64* %8, align 8
  %251 = getelementptr inbounds %struct.page_vma_mapped_walk, %struct.page_vma_mapped_walk* %11, i32 0, i32 1
  %252 = load i32*, i32** %251, align 8
  %253 = load i32, i32* %252, align 4
  %254 = call %struct.page* @pte_pfn(i32 %253)
  %255 = call i32 @flush_cache_page(%struct.vm_area_struct* %249, i64 %250, %struct.page* %254)
  %256 = load %struct.mm_struct*, %struct.mm_struct** %10, align 8
  %257 = load i32, i32* %16, align 4
  %258 = call i64 @should_defer_flush(%struct.mm_struct* %256, i32 %257)
  %259 = icmp ne i64 %258, 0
  br i1 %259, label %260, label %270

260:                                              ; preds = %248
  %261 = load %struct.mm_struct*, %struct.mm_struct** %10, align 8
  %262 = load i64, i64* %8, align 8
  %263 = getelementptr inbounds %struct.page_vma_mapped_walk, %struct.page_vma_mapped_walk* %11, i32 0, i32 1
  %264 = load i32*, i32** %263, align 8
  %265 = call i32 @ptep_get_and_clear(%struct.mm_struct* %261, i64 %262, i32* %264)
  store i32 %265, i32* %12, align 4
  %266 = load %struct.mm_struct*, %struct.mm_struct** %10, align 8
  %267 = load i32, i32* %12, align 4
  %268 = call i64 @pte_dirty(i32 %267)
  %269 = call i32 @set_tlb_ubc_flush_pending(%struct.mm_struct* %266, i64 %268)
  br label %276

270:                                              ; preds = %248
  %271 = load %struct.vm_area_struct*, %struct.vm_area_struct** %7, align 8
  %272 = load i64, i64* %8, align 8
  %273 = getelementptr inbounds %struct.page_vma_mapped_walk, %struct.page_vma_mapped_walk* %11, i32 0, i32 1
  %274 = load i32*, i32** %273, align 8
  %275 = call i32 @ptep_clear_flush(%struct.vm_area_struct* %271, i64 %272, i32* %274)
  store i32 %275, i32* %12, align 4
  br label %276

276:                                              ; preds = %270, %260
  %277 = load i32, i32* %12, align 4
  %278 = call i64 @pte_dirty(i32 %277)
  %279 = icmp ne i64 %278, 0
  br i1 %279, label %280, label %283

280:                                              ; preds = %276
  %281 = load %struct.page*, %struct.page** %6, align 8
  %282 = call i32 @set_page_dirty(%struct.page* %281)
  br label %283

283:                                              ; preds = %280, %276
  %284 = load %struct.mm_struct*, %struct.mm_struct** %10, align 8
  %285 = call i32 @update_hiwater_rss(%struct.mm_struct* %284)
  %286 = load %struct.page*, %struct.page** %6, align 8
  %287 = call i64 @PageHWPoison(%struct.page* %286)
  %288 = icmp ne i64 %287, 0
  br i1 %288, label %289, label %329

289:                                              ; preds = %283
  %290 = load i32, i32* %16, align 4
  %291 = load i32, i32* @TTU_IGNORE_HWPOISON, align 4
  %292 = and i32 %290, %291
  %293 = icmp ne i32 %292, 0
  br i1 %293, label %329, label %294

294:                                              ; preds = %289
  %295 = load %struct.page*, %struct.page** %13, align 8
  %296 = call i32 @make_hwpoison_entry(%struct.page* %295)
  %297 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %20, i32 0, i32 0
  store i32 %296, i32* %297, align 4
  %298 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %20, i32 0, i32 0
  %299 = load i32, i32* %298, align 4
  %300 = call i32 @swp_entry_to_pte(i32 %299)
  store i32 %300, i32* %12, align 4
  %301 = load %struct.page*, %struct.page** %6, align 8
  %302 = call i64 @PageHuge(%struct.page* %301)
  %303 = icmp ne i64 %302, 0
  br i1 %303, label %304, label %317

304:                                              ; preds = %294
  %305 = load %struct.page*, %struct.page** %6, align 8
  %306 = call i32 @compound_nr(%struct.page* %305)
  %307 = load %struct.mm_struct*, %struct.mm_struct** %10, align 8
  %308 = call i32 @hugetlb_count_sub(i32 %306, %struct.mm_struct* %307)
  %309 = load %struct.mm_struct*, %struct.mm_struct** %10, align 8
  %310 = load i64, i64* %8, align 8
  %311 = getelementptr inbounds %struct.page_vma_mapped_walk, %struct.page_vma_mapped_walk* %11, i32 0, i32 1
  %312 = load i32*, i32** %311, align 8
  %313 = load i32, i32* %12, align 4
  %314 = load %struct.vm_area_struct*, %struct.vm_area_struct** %7, align 8
  %315 = call i32 @vma_mmu_pagesize(%struct.vm_area_struct* %314)
  %316 = call i32 @set_huge_swap_pte_at(%struct.mm_struct* %309, i64 %310, i32* %312, i32 %313, i32 %315)
  br label %328

317:                                              ; preds = %294
  %318 = load %struct.mm_struct*, %struct.mm_struct** %10, align 8
  %319 = load %struct.page*, %struct.page** %6, align 8
  %320 = call i32 @mm_counter(%struct.page* %319)
  %321 = call i32 @dec_mm_counter(%struct.mm_struct* %318, i32 %320)
  %322 = load %struct.mm_struct*, %struct.mm_struct** %10, align 8
  %323 = load i64, i64* %8, align 8
  %324 = getelementptr inbounds %struct.page_vma_mapped_walk, %struct.page_vma_mapped_walk* %11, i32 0, i32 1
  %325 = load i32*, i32** %324, align 8
  %326 = load i32, i32* %12, align 4
  %327 = call i32 @set_pte_at(%struct.mm_struct* %322, i64 %323, i32* %325, i32 %326)
  br label %328

328:                                              ; preds = %317, %304
  br label %533

329:                                              ; preds = %289, %283
  %330 = load i32, i32* %12, align 4
  %331 = call i64 @pte_unused(i32 %330)
  %332 = icmp ne i64 %331, 0
  br i1 %332, label %333, label %348

333:                                              ; preds = %329
  %334 = load %struct.vm_area_struct*, %struct.vm_area_struct** %7, align 8
  %335 = call i32 @userfaultfd_armed(%struct.vm_area_struct* %334)
  %336 = icmp ne i32 %335, 0
  br i1 %336, label %348, label %337

337:                                              ; preds = %333
  %338 = load %struct.mm_struct*, %struct.mm_struct** %10, align 8
  %339 = load %struct.page*, %struct.page** %6, align 8
  %340 = call i32 @mm_counter(%struct.page* %339)
  %341 = call i32 @dec_mm_counter(%struct.mm_struct* %338, i32 %340)
  %342 = load %struct.mm_struct*, %struct.mm_struct** %10, align 8
  %343 = load i64, i64* %8, align 8
  %344 = load i64, i64* %8, align 8
  %345 = load i64, i64* @PAGE_SIZE, align 8
  %346 = add i64 %344, %345
  %347 = call i32 @mmu_notifier_invalidate_range(%struct.mm_struct* %342, i64 %343, i64 %346)
  br label %532

348:                                              ; preds = %333, %329
  %349 = load i32, i32* @CONFIG_MIGRATION, align 4
  %350 = call i64 @IS_ENABLED(i32 %349)
  %351 = icmp ne i64 %350, 0
  br i1 %351, label %352, label %398

352:                                              ; preds = %348
  %353 = load i32, i32* %16, align 4
  %354 = load i32, i32* @TTU_MIGRATION, align 4
  %355 = load i32, i32* @TTU_SPLIT_FREEZE, align 4
  %356 = or i32 %354, %355
  %357 = and i32 %353, %356
  %358 = icmp ne i32 %357, 0
  br i1 %358, label %359, label %398

359:                                              ; preds = %352
  %360 = load %struct.mm_struct*, %struct.mm_struct** %10, align 8
  %361 = load %struct.vm_area_struct*, %struct.vm_area_struct** %7, align 8
  %362 = load i64, i64* %8, align 8
  %363 = load i32, i32* %12, align 4
  %364 = call i64 @arch_unmap_one(%struct.mm_struct* %360, %struct.vm_area_struct* %361, i64 %362, i32 %363)
  %365 = icmp slt i64 %364, 0
  br i1 %365, label %366, label %374

366:                                              ; preds = %359
  %367 = load %struct.mm_struct*, %struct.mm_struct** %10, align 8
  %368 = load i64, i64* %8, align 8
  %369 = getelementptr inbounds %struct.page_vma_mapped_walk, %struct.page_vma_mapped_walk* %11, i32 0, i32 1
  %370 = load i32*, i32** %369, align 8
  %371 = load i32, i32* %12, align 4
  %372 = call i32 @set_pte_at(%struct.mm_struct* %367, i64 %368, i32* %370, i32 %371)
  store i32 0, i32* %14, align 4
  %373 = call i32 @page_vma_mapped_walk_done(%struct.page_vma_mapped_walk* %11)
  br label %541

374:                                              ; preds = %359
  %375 = load %struct.page*, %struct.page** %13, align 8
  %376 = load i32, i32* %12, align 4
  %377 = call i32 @pte_write(i32 %376)
  %378 = call i32 @make_migration_entry(%struct.page* %375, i32 %377)
  %379 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %23, i32 0, i32 0
  store i32 %378, i32* %379, align 4
  %380 = bitcast %struct.TYPE_7__* %21 to i8*
  %381 = bitcast %struct.TYPE_7__* %23 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %380, i8* align 4 %381, i64 4, i1 false)
  %382 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %21, i32 0, i32 0
  %383 = load i32, i32* %382, align 4
  %384 = call i32 @swp_entry_to_pte(i32 %383)
  store i32 %384, i32* %22, align 4
  %385 = load i32, i32* %12, align 4
  %386 = call i64 @pte_soft_dirty(i32 %385)
  %387 = icmp ne i64 %386, 0
  br i1 %387, label %388, label %391

388:                                              ; preds = %374
  %389 = load i32, i32* %22, align 4
  %390 = call i32 @pte_swp_mksoft_dirty(i32 %389)
  store i32 %390, i32* %22, align 4
  br label %391

391:                                              ; preds = %388, %374
  %392 = load %struct.mm_struct*, %struct.mm_struct** %10, align 8
  %393 = load i64, i64* %8, align 8
  %394 = getelementptr inbounds %struct.page_vma_mapped_walk, %struct.page_vma_mapped_walk* %11, i32 0, i32 1
  %395 = load i32*, i32** %394, align 8
  %396 = load i32, i32* %22, align 4
  %397 = call i32 @set_pte_at(%struct.mm_struct* %392, i64 %393, i32* %395, i32 %396)
  br label %531

398:                                              ; preds = %352, %348
  %399 = load %struct.page*, %struct.page** %6, align 8
  %400 = call i64 @PageAnon(%struct.page* %399)
  %401 = icmp ne i64 %400, 0
  br i1 %401, label %402, label %525

402:                                              ; preds = %398
  %403 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %24, i32 0, i32 0
  %404 = load %struct.page*, %struct.page** %13, align 8
  %405 = call i32 @page_private(%struct.page* %404)
  store i32 %405, i32* %403, align 4
  %406 = load %struct.page*, %struct.page** %6, align 8
  %407 = call i64 @PageSwapBacked(%struct.page* %406)
  %408 = load %struct.page*, %struct.page** %6, align 8
  %409 = call i64 @PageSwapCache(%struct.page* %408)
  %410 = icmp ne i64 %407, %409
  %411 = zext i1 %410 to i32
  %412 = call i64 @unlikely(i32 %411)
  %413 = icmp ne i64 %412, 0
  br i1 %413, label %414, label %423

414:                                              ; preds = %402
  %415 = call i32 @WARN_ON_ONCE(i32 1)
  store i32 0, i32* %14, align 4
  %416 = load %struct.mm_struct*, %struct.mm_struct** %10, align 8
  %417 = load i64, i64* %8, align 8
  %418 = load i64, i64* %8, align 8
  %419 = load i64, i64* @PAGE_SIZE, align 8
  %420 = add i64 %418, %419
  %421 = call i32 @mmu_notifier_invalidate_range(%struct.mm_struct* %416, i64 %417, i64 %420)
  %422 = call i32 @page_vma_mapped_walk_done(%struct.page_vma_mapped_walk* %11)
  br label %541

423:                                              ; preds = %402
  %424 = load %struct.page*, %struct.page** %6, align 8
  %425 = call i64 @PageSwapBacked(%struct.page* %424)
  %426 = icmp ne i64 %425, 0
  br i1 %426, label %451, label %427

427:                                              ; preds = %423
  %428 = load %struct.page*, %struct.page** %6, align 8
  %429 = call i32 @PageDirty(%struct.page* %428)
  %430 = icmp ne i32 %429, 0
  br i1 %430, label %441, label %431

431:                                              ; preds = %427
  %432 = load %struct.mm_struct*, %struct.mm_struct** %10, align 8
  %433 = load i64, i64* %8, align 8
  %434 = load i64, i64* %8, align 8
  %435 = load i64, i64* @PAGE_SIZE, align 8
  %436 = add i64 %434, %435
  %437 = call i32 @mmu_notifier_invalidate_range(%struct.mm_struct* %432, i64 %433, i64 %436)
  %438 = load %struct.mm_struct*, %struct.mm_struct** %10, align 8
  %439 = load i32, i32* @MM_ANONPAGES, align 4
  %440 = call i32 @dec_mm_counter(%struct.mm_struct* %438, i32 %439)
  br label %534

441:                                              ; preds = %427
  %442 = load %struct.mm_struct*, %struct.mm_struct** %10, align 8
  %443 = load i64, i64* %8, align 8
  %444 = getelementptr inbounds %struct.page_vma_mapped_walk, %struct.page_vma_mapped_walk* %11, i32 0, i32 1
  %445 = load i32*, i32** %444, align 8
  %446 = load i32, i32* %12, align 4
  %447 = call i32 @set_pte_at(%struct.mm_struct* %442, i64 %443, i32* %445, i32 %446)
  %448 = load %struct.page*, %struct.page** %6, align 8
  %449 = call i32 @SetPageSwapBacked(%struct.page* %448)
  store i32 0, i32* %14, align 4
  %450 = call i32 @page_vma_mapped_walk_done(%struct.page_vma_mapped_walk* %11)
  br label %541

451:                                              ; preds = %423
  %452 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %24, i32 0, i32 0
  %453 = load i32, i32* %452, align 4
  %454 = call i64 @swap_duplicate(i32 %453)
  %455 = icmp slt i64 %454, 0
  br i1 %455, label %456, label %464

456:                                              ; preds = %451
  %457 = load %struct.mm_struct*, %struct.mm_struct** %10, align 8
  %458 = load i64, i64* %8, align 8
  %459 = getelementptr inbounds %struct.page_vma_mapped_walk, %struct.page_vma_mapped_walk* %11, i32 0, i32 1
  %460 = load i32*, i32** %459, align 8
  %461 = load i32, i32* %12, align 4
  %462 = call i32 @set_pte_at(%struct.mm_struct* %457, i64 %458, i32* %460, i32 %461)
  store i32 0, i32* %14, align 4
  %463 = call i32 @page_vma_mapped_walk_done(%struct.page_vma_mapped_walk* %11)
  br label %541

464:                                              ; preds = %451
  %465 = load %struct.mm_struct*, %struct.mm_struct** %10, align 8
  %466 = load %struct.vm_area_struct*, %struct.vm_area_struct** %7, align 8
  %467 = load i64, i64* %8, align 8
  %468 = load i32, i32* %12, align 4
  %469 = call i64 @arch_unmap_one(%struct.mm_struct* %465, %struct.vm_area_struct* %466, i64 %467, i32 %468)
  %470 = icmp slt i64 %469, 0
  br i1 %470, label %471, label %479

471:                                              ; preds = %464
  %472 = load %struct.mm_struct*, %struct.mm_struct** %10, align 8
  %473 = load i64, i64* %8, align 8
  %474 = getelementptr inbounds %struct.page_vma_mapped_walk, %struct.page_vma_mapped_walk* %11, i32 0, i32 1
  %475 = load i32*, i32** %474, align 8
  %476 = load i32, i32* %12, align 4
  %477 = call i32 @set_pte_at(%struct.mm_struct* %472, i64 %473, i32* %475, i32 %476)
  store i32 0, i32* %14, align 4
  %478 = call i32 @page_vma_mapped_walk_done(%struct.page_vma_mapped_walk* %11)
  br label %541

479:                                              ; preds = %464
  %480 = load %struct.mm_struct*, %struct.mm_struct** %10, align 8
  %481 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %480, i32 0, i32 0
  %482 = call i64 @list_empty(i32* %481)
  %483 = icmp ne i64 %482, 0
  br i1 %483, label %484, label %496

484:                                              ; preds = %479
  %485 = call i32 @spin_lock(i32* @mmlist_lock)
  %486 = load %struct.mm_struct*, %struct.mm_struct** %10, align 8
  %487 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %486, i32 0, i32 0
  %488 = call i64 @list_empty(i32* %487)
  %489 = icmp ne i64 %488, 0
  br i1 %489, label %490, label %494

490:                                              ; preds = %484
  %491 = load %struct.mm_struct*, %struct.mm_struct** %10, align 8
  %492 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %491, i32 0, i32 0
  %493 = call i32 @list_add(i32* %492, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @init_mm, i32 0, i32 0))
  br label %494

494:                                              ; preds = %490, %484
  %495 = call i32 @spin_unlock(i32* @mmlist_lock)
  br label %496

496:                                              ; preds = %494, %479
  %497 = load %struct.mm_struct*, %struct.mm_struct** %10, align 8
  %498 = load i32, i32* @MM_ANONPAGES, align 4
  %499 = call i32 @dec_mm_counter(%struct.mm_struct* %497, i32 %498)
  %500 = load %struct.mm_struct*, %struct.mm_struct** %10, align 8
  %501 = load i32, i32* @MM_SWAPENTS, align 4
  %502 = call i32 @inc_mm_counter(%struct.mm_struct* %500, i32 %501)
  %503 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %24, i32 0, i32 0
  %504 = load i32, i32* %503, align 4
  %505 = call i32 @swp_entry_to_pte(i32 %504)
  store i32 %505, i32* %25, align 4
  %506 = load i32, i32* %12, align 4
  %507 = call i64 @pte_soft_dirty(i32 %506)
  %508 = icmp ne i64 %507, 0
  br i1 %508, label %509, label %512

509:                                              ; preds = %496
  %510 = load i32, i32* %25, align 4
  %511 = call i32 @pte_swp_mksoft_dirty(i32 %510)
  store i32 %511, i32* %25, align 4
  br label %512

512:                                              ; preds = %509, %496
  %513 = load %struct.mm_struct*, %struct.mm_struct** %10, align 8
  %514 = load i64, i64* %8, align 8
  %515 = getelementptr inbounds %struct.page_vma_mapped_walk, %struct.page_vma_mapped_walk* %11, i32 0, i32 1
  %516 = load i32*, i32** %515, align 8
  %517 = load i32, i32* %25, align 4
  %518 = call i32 @set_pte_at(%struct.mm_struct* %513, i64 %514, i32* %516, i32 %517)
  %519 = load %struct.mm_struct*, %struct.mm_struct** %10, align 8
  %520 = load i64, i64* %8, align 8
  %521 = load i64, i64* %8, align 8
  %522 = load i64, i64* @PAGE_SIZE, align 8
  %523 = add i64 %521, %522
  %524 = call i32 @mmu_notifier_invalidate_range(%struct.mm_struct* %519, i64 %520, i64 %523)
  br label %530

525:                                              ; preds = %398
  %526 = load %struct.mm_struct*, %struct.mm_struct** %10, align 8
  %527 = load %struct.page*, %struct.page** %6, align 8
  %528 = call i32 @mm_counter_file(%struct.page* %527)
  %529 = call i32 @dec_mm_counter(%struct.mm_struct* %526, i32 %528)
  br label %530

530:                                              ; preds = %525, %512
  br label %531

531:                                              ; preds = %530, %391
  br label %532

532:                                              ; preds = %531, %337
  br label %533

533:                                              ; preds = %532, %328
  br label %534

534:                                              ; preds = %533, %431, %224
  %535 = load %struct.page*, %struct.page** %13, align 8
  %536 = load %struct.page*, %struct.page** %6, align 8
  %537 = call i64 @PageHuge(%struct.page* %536)
  %538 = call i32 @page_remove_rmap(%struct.page* %535, i64 %537)
  %539 = load %struct.page*, %struct.page** %6, align 8
  %540 = call i32 @put_page(%struct.page* %539)
  br label %107

541:                                              ; preds = %471, %456, %441, %414, %366, %245, %169, %129, %107
  %542 = call i32 @mmu_notifier_invalidate_range_end(%struct.mmu_notifier_range* %15)
  %543 = load i32, i32* %14, align 4
  store i32 %543, i32* %5, align 4
  br label %544

544:                                              ; preds = %541, %67, %49
  %545 = load i32, i32* %5, align 4
  ret i32 %545
}

declare dso_local i64 @IS_ENABLED(i32) #1

declare dso_local i64 @is_zone_device_page(%struct.page*) #1

declare dso_local i32 @is_device_private_page(%struct.page*) #1

declare dso_local i32 @split_huge_pmd_address(%struct.vm_area_struct*, i64, i32, %struct.page*) #1

declare dso_local i32 @mmu_notifier_range_init(%struct.mmu_notifier_range*, i32, i32, %struct.vm_area_struct*, %struct.mm_struct*, i64, i32) #1

declare dso_local i32 @min(i32, i64) #1

declare dso_local i64 @page_size(%struct.page*) #1

declare dso_local i64 @PageHuge(%struct.page*) #1

declare dso_local i32 @adjust_range_if_pmd_sharing_possible(%struct.vm_area_struct*, i64*, i64*) #1

declare dso_local i32 @mmu_notifier_invalidate_range_start(%struct.mmu_notifier_range*) #1

declare dso_local i64 @page_vma_mapped_walk(%struct.page_vma_mapped_walk*) #1

declare dso_local i32 @PageTransCompound(%struct.page*) #1

declare dso_local i32 @mlock_vma_page(%struct.page*) #1

declare dso_local i32 @page_vma_mapped_walk_done(%struct.page_vma_mapped_walk*) #1

declare dso_local i32 @VM_BUG_ON_PAGE(i32, %struct.page*) #1

declare dso_local %struct.page* @page_to_pfn(%struct.page*) #1

declare dso_local %struct.page* @pte_pfn(i32) #1

declare dso_local i64 @huge_pmd_unshare(%struct.mm_struct*, i64*, i32*) #1

declare dso_local i32 @flush_cache_range(%struct.vm_area_struct*, i64, i64) #1

declare dso_local i32 @flush_tlb_range(%struct.vm_area_struct*, i64, i64) #1

declare dso_local i32 @mmu_notifier_invalidate_range(%struct.mm_struct*, i64, i64) #1

declare dso_local i32 @ptep_get_and_clear(%struct.mm_struct*, i64, i32*) #1

declare dso_local i32 @make_migration_entry(%struct.page*, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @swp_entry_to_pte(i32) #1

declare dso_local i64 @pte_soft_dirty(i32) #1

declare dso_local i32 @pte_swp_mksoft_dirty(i32) #1

declare dso_local i32 @set_pte_at(%struct.mm_struct*, i64, i32*, i32) #1

declare dso_local i64 @ptep_clear_flush_young_notify(%struct.vm_area_struct*, i64, i32*) #1

declare dso_local i32 @flush_cache_page(%struct.vm_area_struct*, i64, %struct.page*) #1

declare dso_local i64 @should_defer_flush(%struct.mm_struct*, i32) #1

declare dso_local i32 @set_tlb_ubc_flush_pending(%struct.mm_struct*, i64) #1

declare dso_local i64 @pte_dirty(i32) #1

declare dso_local i32 @ptep_clear_flush(%struct.vm_area_struct*, i64, i32*) #1

declare dso_local i32 @set_page_dirty(%struct.page*) #1

declare dso_local i32 @update_hiwater_rss(%struct.mm_struct*) #1

declare dso_local i64 @PageHWPoison(%struct.page*) #1

declare dso_local i32 @make_hwpoison_entry(%struct.page*) #1

declare dso_local i32 @hugetlb_count_sub(i32, %struct.mm_struct*) #1

declare dso_local i32 @compound_nr(%struct.page*) #1

declare dso_local i32 @set_huge_swap_pte_at(%struct.mm_struct*, i64, i32*, i32, i32) #1

declare dso_local i32 @vma_mmu_pagesize(%struct.vm_area_struct*) #1

declare dso_local i32 @dec_mm_counter(%struct.mm_struct*, i32) #1

declare dso_local i32 @mm_counter(%struct.page*) #1

declare dso_local i64 @pte_unused(i32) #1

declare dso_local i32 @userfaultfd_armed(%struct.vm_area_struct*) #1

declare dso_local i64 @arch_unmap_one(%struct.mm_struct*, %struct.vm_area_struct*, i64, i32) #1

declare dso_local i32 @pte_write(i32) #1

declare dso_local i64 @PageAnon(%struct.page*) #1

declare dso_local i32 @page_private(%struct.page*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i64 @PageSwapBacked(%struct.page*) #1

declare dso_local i64 @PageSwapCache(%struct.page*) #1

declare dso_local i32 @WARN_ON_ONCE(i32) #1

declare dso_local i32 @PageDirty(%struct.page*) #1

declare dso_local i32 @SetPageSwapBacked(%struct.page*) #1

declare dso_local i64 @swap_duplicate(i32) #1

declare dso_local i64 @list_empty(i32*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @list_add(i32*, i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @inc_mm_counter(%struct.mm_struct*, i32) #1

declare dso_local i32 @mm_counter_file(%struct.page*) #1

declare dso_local i32 @page_remove_rmap(%struct.page*, i64) #1

declare dso_local i32 @put_page(%struct.page*) #1

declare dso_local i32 @mmu_notifier_invalidate_range_end(%struct.mmu_notifier_range*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
