; ModuleID = '/home/carl/AnghaBench/linux/mm/extr_madvise.c_madvise_free_pte_range.c'
source_filename = "/home/carl/AnghaBench/linux/mm/extr_madvise.c_madvise_free_pte_range.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { %struct.mm_struct* }
%struct.mm_struct = type { i32 }
%struct.mm_walk = type { %struct.vm_area_struct*, %struct.mmu_gather* }
%struct.vm_area_struct = type { i32 }
%struct.mmu_gather = type { i32, %struct.mm_struct* }
%struct.page = type { i32 }

@PAGE_SIZE = common dso_local global i64 0, align 8
@current = common dso_local global %struct.TYPE_2__* null, align 8
@MM_SWAPENTS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i64, i64, %struct.mm_walk*)* @madvise_free_pte_range to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @madvise_free_pte_range(i32* %0, i64 %1, i64 %2, %struct.mm_walk* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.mm_walk*, align 8
  %10 = alloca %struct.mmu_gather*, align 8
  %11 = alloca %struct.mm_struct*, align 8
  %12 = alloca %struct.vm_area_struct*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32, align 4
  %17 = alloca %struct.page*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i64, align 8
  %20 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store i64 %1, i64* %7, align 8
  store i64 %2, i64* %8, align 8
  store %struct.mm_walk* %3, %struct.mm_walk** %9, align 8
  %21 = load %struct.mm_walk*, %struct.mm_walk** %9, align 8
  %22 = getelementptr inbounds %struct.mm_walk, %struct.mm_walk* %21, i32 0, i32 1
  %23 = load %struct.mmu_gather*, %struct.mmu_gather** %22, align 8
  store %struct.mmu_gather* %23, %struct.mmu_gather** %10, align 8
  %24 = load %struct.mmu_gather*, %struct.mmu_gather** %10, align 8
  %25 = getelementptr inbounds %struct.mmu_gather, %struct.mmu_gather* %24, i32 0, i32 1
  %26 = load %struct.mm_struct*, %struct.mm_struct** %25, align 8
  store %struct.mm_struct* %26, %struct.mm_struct** %11, align 8
  %27 = load %struct.mm_walk*, %struct.mm_walk** %9, align 8
  %28 = getelementptr inbounds %struct.mm_walk, %struct.mm_walk* %27, i32 0, i32 0
  %29 = load %struct.vm_area_struct*, %struct.vm_area_struct** %28, align 8
  store %struct.vm_area_struct* %29, %struct.vm_area_struct** %12, align 8
  store i32 0, i32* %18, align 4
  %30 = load i64, i64* %7, align 8
  %31 = load i64, i64* %8, align 8
  %32 = call i64 @pmd_addr_end(i64 %30, i64 %31)
  store i64 %32, i64* %19, align 8
  %33 = load i32*, i32** %6, align 8
  %34 = load i32, i32* %33, align 4
  %35 = call i64 @pmd_trans_huge(i32 %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %47

37:                                               ; preds = %4
  %38 = load %struct.mmu_gather*, %struct.mmu_gather** %10, align 8
  %39 = load %struct.vm_area_struct*, %struct.vm_area_struct** %12, align 8
  %40 = load i32*, i32** %6, align 8
  %41 = load i64, i64* %7, align 8
  %42 = load i64, i64* %19, align 8
  %43 = call i64 @madvise_free_huge_pmd(%struct.mmu_gather* %38, %struct.vm_area_struct* %39, i32* %40, i64 %41, i64 %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %37
  br label %255

46:                                               ; preds = %37
  br label %47

47:                                               ; preds = %46, %4
  %48 = load i32*, i32** %6, align 8
  %49 = call i64 @pmd_trans_unstable(i32* %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %52

51:                                               ; preds = %47
  store i32 0, i32* %5, align 4
  br label %256

52:                                               ; preds = %47
  %53 = load %struct.mmu_gather*, %struct.mmu_gather** %10, align 8
  %54 = load i64, i64* @PAGE_SIZE, align 8
  %55 = call i32 @tlb_change_page_size(%struct.mmu_gather* %53, i64 %54)
  %56 = load %struct.mm_struct*, %struct.mm_struct** %11, align 8
  %57 = load i32*, i32** %6, align 8
  %58 = load i64, i64* %7, align 8
  %59 = call i32* @pte_offset_map_lock(%struct.mm_struct* %56, i32* %57, i64 %58, i32** %13)
  store i32* %59, i32** %15, align 8
  store i32* %59, i32** %14, align 8
  %60 = load %struct.mm_struct*, %struct.mm_struct** %11, align 8
  %61 = call i32 @flush_tlb_batched_pending(%struct.mm_struct* %60)
  %62 = call i32 (...) @arch_enter_lazy_mmu_mode()
  br label %63

63:                                               ; preds = %225, %52
  %64 = load i64, i64* %7, align 8
  %65 = load i64, i64* %8, align 8
  %66 = icmp ne i64 %64, %65
  br i1 %66, label %67, label %231

67:                                               ; preds = %63
  %68 = load i32*, i32** %15, align 8
  %69 = load i32, i32* %68, align 4
  store i32 %69, i32* %16, align 4
  %70 = load i32, i32* %16, align 4
  %71 = call i64 @pte_none(i32 %70)
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %74

73:                                               ; preds = %67
  br label %225

74:                                               ; preds = %67
  %75 = load i32, i32* %16, align 4
  %76 = call i32 @pte_present(i32 %75)
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %97, label %78

78:                                               ; preds = %74
  %79 = load i32, i32* %16, align 4
  %80 = call i32 @pte_to_swp_entry(i32 %79)
  store i32 %80, i32* %20, align 4
  %81 = load i32, i32* %20, align 4
  %82 = call i64 @non_swap_entry(i32 %81)
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %85

84:                                               ; preds = %78
  br label %225

85:                                               ; preds = %78
  %86 = load i32, i32* %18, align 4
  %87 = add nsw i32 %86, -1
  store i32 %87, i32* %18, align 4
  %88 = load i32, i32* %20, align 4
  %89 = call i32 @free_swap_and_cache(i32 %88)
  %90 = load %struct.mm_struct*, %struct.mm_struct** %11, align 8
  %91 = load i64, i64* %7, align 8
  %92 = load i32*, i32** %15, align 8
  %93 = load %struct.mmu_gather*, %struct.mmu_gather** %10, align 8
  %94 = getelementptr inbounds %struct.mmu_gather, %struct.mmu_gather* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 8
  %96 = call i32 @pte_clear_not_present_full(%struct.mm_struct* %90, i64 %91, i32* %92, i32 %95)
  br label %225

97:                                               ; preds = %74
  %98 = load %struct.vm_area_struct*, %struct.vm_area_struct** %12, align 8
  %99 = load i64, i64* %7, align 8
  %100 = load i32, i32* %16, align 4
  %101 = call %struct.page* @vm_normal_page(%struct.vm_area_struct* %98, i64 %99, i32 %100)
  store %struct.page* %101, %struct.page** %17, align 8
  %102 = load %struct.page*, %struct.page** %17, align 8
  %103 = icmp ne %struct.page* %102, null
  br i1 %103, label %105, label %104

104:                                              ; preds = %97
  br label %225

105:                                              ; preds = %97
  %106 = load %struct.page*, %struct.page** %17, align 8
  %107 = call i64 @PageTransCompound(%struct.page* %106)
  %108 = icmp ne i64 %107, 0
  br i1 %108, label %109, label %153

109:                                              ; preds = %105
  %110 = load %struct.page*, %struct.page** %17, align 8
  %111 = call i32 @page_mapcount(%struct.page* %110)
  %112 = icmp ne i32 %111, 1
  br i1 %112, label %113, label %114

113:                                              ; preds = %109
  br label %232

114:                                              ; preds = %109
  %115 = load %struct.page*, %struct.page** %17, align 8
  %116 = call i32 @get_page(%struct.page* %115)
  %117 = load %struct.page*, %struct.page** %17, align 8
  %118 = call i32 @trylock_page(%struct.page* %117)
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %123, label %120

120:                                              ; preds = %114
  %121 = load %struct.page*, %struct.page** %17, align 8
  %122 = call i32 @put_page(%struct.page* %121)
  br label %232

123:                                              ; preds = %114
  %124 = load i32*, i32** %14, align 8
  %125 = load i32*, i32** %13, align 8
  %126 = call i32 @pte_unmap_unlock(i32* %124, i32* %125)
  %127 = load %struct.page*, %struct.page** %17, align 8
  %128 = call i64 @split_huge_page(%struct.page* %127)
  %129 = icmp ne i64 %128, 0
  br i1 %129, label %130, label %139

130:                                              ; preds = %123
  %131 = load %struct.page*, %struct.page** %17, align 8
  %132 = call i32 @unlock_page(%struct.page* %131)
  %133 = load %struct.page*, %struct.page** %17, align 8
  %134 = call i32 @put_page(%struct.page* %133)
  %135 = load %struct.mm_struct*, %struct.mm_struct** %11, align 8
  %136 = load i32*, i32** %6, align 8
  %137 = load i64, i64* %7, align 8
  %138 = call i32* @pte_offset_map_lock(%struct.mm_struct* %135, i32* %136, i64 %137, i32** %13)
  br label %232

139:                                              ; preds = %123
  %140 = load %struct.page*, %struct.page** %17, align 8
  %141 = call i32 @unlock_page(%struct.page* %140)
  %142 = load %struct.page*, %struct.page** %17, align 8
  %143 = call i32 @put_page(%struct.page* %142)
  %144 = load %struct.mm_struct*, %struct.mm_struct** %11, align 8
  %145 = load i32*, i32** %6, align 8
  %146 = load i64, i64* %7, align 8
  %147 = call i32* @pte_offset_map_lock(%struct.mm_struct* %144, i32* %145, i64 %146, i32** %13)
  store i32* %147, i32** %15, align 8
  %148 = load i32*, i32** %15, align 8
  %149 = getelementptr inbounds i32, i32* %148, i32 -1
  store i32* %149, i32** %15, align 8
  %150 = load i64, i64* @PAGE_SIZE, align 8
  %151 = load i64, i64* %7, align 8
  %152 = sub i64 %151, %150
  store i64 %152, i64* %7, align 8
  br label %225

153:                                              ; preds = %105
  %154 = load %struct.page*, %struct.page** %17, align 8
  %155 = call i64 @PageTransCompound(%struct.page* %154)
  %156 = load %struct.page*, %struct.page** %17, align 8
  %157 = call i32 @VM_BUG_ON_PAGE(i64 %155, %struct.page* %156)
  %158 = load %struct.page*, %struct.page** %17, align 8
  %159 = call i64 @PageSwapCache(%struct.page* %158)
  %160 = icmp ne i64 %159, 0
  br i1 %160, label %165, label %161

161:                                              ; preds = %153
  %162 = load %struct.page*, %struct.page** %17, align 8
  %163 = call i64 @PageDirty(%struct.page* %162)
  %164 = icmp ne i64 %163, 0
  br i1 %164, label %165, label %193

165:                                              ; preds = %161, %153
  %166 = load %struct.page*, %struct.page** %17, align 8
  %167 = call i32 @trylock_page(%struct.page* %166)
  %168 = icmp ne i32 %167, 0
  br i1 %168, label %170, label %169

169:                                              ; preds = %165
  br label %225

170:                                              ; preds = %165
  %171 = load %struct.page*, %struct.page** %17, align 8
  %172 = call i32 @page_mapcount(%struct.page* %171)
  %173 = icmp ne i32 %172, 1
  br i1 %173, label %174, label %177

174:                                              ; preds = %170
  %175 = load %struct.page*, %struct.page** %17, align 8
  %176 = call i32 @unlock_page(%struct.page* %175)
  br label %225

177:                                              ; preds = %170
  %178 = load %struct.page*, %struct.page** %17, align 8
  %179 = call i64 @PageSwapCache(%struct.page* %178)
  %180 = icmp ne i64 %179, 0
  br i1 %180, label %181, label %188

181:                                              ; preds = %177
  %182 = load %struct.page*, %struct.page** %17, align 8
  %183 = call i32 @try_to_free_swap(%struct.page* %182)
  %184 = icmp ne i32 %183, 0
  br i1 %184, label %188, label %185

185:                                              ; preds = %181
  %186 = load %struct.page*, %struct.page** %17, align 8
  %187 = call i32 @unlock_page(%struct.page* %186)
  br label %225

188:                                              ; preds = %181, %177
  %189 = load %struct.page*, %struct.page** %17, align 8
  %190 = call i32 @ClearPageDirty(%struct.page* %189)
  %191 = load %struct.page*, %struct.page** %17, align 8
  %192 = call i32 @unlock_page(%struct.page* %191)
  br label %193

193:                                              ; preds = %188, %161
  %194 = load i32, i32* %16, align 4
  %195 = call i64 @pte_young(i32 %194)
  %196 = icmp ne i64 %195, 0
  br i1 %196, label %201, label %197

197:                                              ; preds = %193
  %198 = load i32, i32* %16, align 4
  %199 = call i64 @pte_dirty(i32 %198)
  %200 = icmp ne i64 %199, 0
  br i1 %200, label %201, label %222

201:                                              ; preds = %197, %193
  %202 = load %struct.mm_struct*, %struct.mm_struct** %11, align 8
  %203 = load i64, i64* %7, align 8
  %204 = load i32*, i32** %15, align 8
  %205 = load %struct.mmu_gather*, %struct.mmu_gather** %10, align 8
  %206 = getelementptr inbounds %struct.mmu_gather, %struct.mmu_gather* %205, i32 0, i32 0
  %207 = load i32, i32* %206, align 8
  %208 = call i32 @ptep_get_and_clear_full(%struct.mm_struct* %202, i64 %203, i32* %204, i32 %207)
  store i32 %208, i32* %16, align 4
  %209 = load i32, i32* %16, align 4
  %210 = call i32 @pte_mkold(i32 %209)
  store i32 %210, i32* %16, align 4
  %211 = load i32, i32* %16, align 4
  %212 = call i32 @pte_mkclean(i32 %211)
  store i32 %212, i32* %16, align 4
  %213 = load %struct.mm_struct*, %struct.mm_struct** %11, align 8
  %214 = load i64, i64* %7, align 8
  %215 = load i32*, i32** %15, align 8
  %216 = load i32, i32* %16, align 4
  %217 = call i32 @set_pte_at(%struct.mm_struct* %213, i64 %214, i32* %215, i32 %216)
  %218 = load %struct.mmu_gather*, %struct.mmu_gather** %10, align 8
  %219 = load i32*, i32** %15, align 8
  %220 = load i64, i64* %7, align 8
  %221 = call i32 @tlb_remove_tlb_entry(%struct.mmu_gather* %218, i32* %219, i64 %220)
  br label %222

222:                                              ; preds = %201, %197
  %223 = load %struct.page*, %struct.page** %17, align 8
  %224 = call i32 @mark_page_lazyfree(%struct.page* %223)
  br label %225

225:                                              ; preds = %222, %185, %174, %169, %139, %104, %85, %84, %73
  %226 = load i32*, i32** %15, align 8
  %227 = getelementptr inbounds i32, i32* %226, i32 1
  store i32* %227, i32** %15, align 8
  %228 = load i64, i64* @PAGE_SIZE, align 8
  %229 = load i64, i64* %7, align 8
  %230 = add i64 %229, %228
  store i64 %230, i64* %7, align 8
  br label %63

231:                                              ; preds = %63
  br label %232

232:                                              ; preds = %231, %130, %120, %113
  %233 = load i32, i32* %18, align 4
  %234 = icmp ne i32 %233, 0
  br i1 %234, label %235, label %249

235:                                              ; preds = %232
  %236 = load %struct.TYPE_2__*, %struct.TYPE_2__** @current, align 8
  %237 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %236, i32 0, i32 0
  %238 = load %struct.mm_struct*, %struct.mm_struct** %237, align 8
  %239 = load %struct.mm_struct*, %struct.mm_struct** %11, align 8
  %240 = icmp eq %struct.mm_struct* %238, %239
  br i1 %240, label %241, label %244

241:                                              ; preds = %235
  %242 = load %struct.mm_struct*, %struct.mm_struct** %11, align 8
  %243 = call i32 @sync_mm_rss(%struct.mm_struct* %242)
  br label %244

244:                                              ; preds = %241, %235
  %245 = load %struct.mm_struct*, %struct.mm_struct** %11, align 8
  %246 = load i32, i32* @MM_SWAPENTS, align 4
  %247 = load i32, i32* %18, align 4
  %248 = call i32 @add_mm_counter(%struct.mm_struct* %245, i32 %246, i32 %247)
  br label %249

249:                                              ; preds = %244, %232
  %250 = call i32 (...) @arch_leave_lazy_mmu_mode()
  %251 = load i32*, i32** %14, align 8
  %252 = load i32*, i32** %13, align 8
  %253 = call i32 @pte_unmap_unlock(i32* %251, i32* %252)
  %254 = call i32 (...) @cond_resched()
  br label %255

255:                                              ; preds = %249, %45
  store i32 0, i32* %5, align 4
  br label %256

256:                                              ; preds = %255, %51
  %257 = load i32, i32* %5, align 4
  ret i32 %257
}

declare dso_local i64 @pmd_addr_end(i64, i64) #1

declare dso_local i64 @pmd_trans_huge(i32) #1

declare dso_local i64 @madvise_free_huge_pmd(%struct.mmu_gather*, %struct.vm_area_struct*, i32*, i64, i64) #1

declare dso_local i64 @pmd_trans_unstable(i32*) #1

declare dso_local i32 @tlb_change_page_size(%struct.mmu_gather*, i64) #1

declare dso_local i32* @pte_offset_map_lock(%struct.mm_struct*, i32*, i64, i32**) #1

declare dso_local i32 @flush_tlb_batched_pending(%struct.mm_struct*) #1

declare dso_local i32 @arch_enter_lazy_mmu_mode(...) #1

declare dso_local i64 @pte_none(i32) #1

declare dso_local i32 @pte_present(i32) #1

declare dso_local i32 @pte_to_swp_entry(i32) #1

declare dso_local i64 @non_swap_entry(i32) #1

declare dso_local i32 @free_swap_and_cache(i32) #1

declare dso_local i32 @pte_clear_not_present_full(%struct.mm_struct*, i64, i32*, i32) #1

declare dso_local %struct.page* @vm_normal_page(%struct.vm_area_struct*, i64, i32) #1

declare dso_local i64 @PageTransCompound(%struct.page*) #1

declare dso_local i32 @page_mapcount(%struct.page*) #1

declare dso_local i32 @get_page(%struct.page*) #1

declare dso_local i32 @trylock_page(%struct.page*) #1

declare dso_local i32 @put_page(%struct.page*) #1

declare dso_local i32 @pte_unmap_unlock(i32*, i32*) #1

declare dso_local i64 @split_huge_page(%struct.page*) #1

declare dso_local i32 @unlock_page(%struct.page*) #1

declare dso_local i32 @VM_BUG_ON_PAGE(i64, %struct.page*) #1

declare dso_local i64 @PageSwapCache(%struct.page*) #1

declare dso_local i64 @PageDirty(%struct.page*) #1

declare dso_local i32 @try_to_free_swap(%struct.page*) #1

declare dso_local i32 @ClearPageDirty(%struct.page*) #1

declare dso_local i64 @pte_young(i32) #1

declare dso_local i64 @pte_dirty(i32) #1

declare dso_local i32 @ptep_get_and_clear_full(%struct.mm_struct*, i64, i32*, i32) #1

declare dso_local i32 @pte_mkold(i32) #1

declare dso_local i32 @pte_mkclean(i32) #1

declare dso_local i32 @set_pte_at(%struct.mm_struct*, i64, i32*, i32) #1

declare dso_local i32 @tlb_remove_tlb_entry(%struct.mmu_gather*, i32*, i64) #1

declare dso_local i32 @mark_page_lazyfree(%struct.page*) #1

declare dso_local i32 @sync_mm_rss(%struct.mm_struct*) #1

declare dso_local i32 @add_mm_counter(%struct.mm_struct*, i32, i32) #1

declare dso_local i32 @arch_leave_lazy_mmu_mode(...) #1

declare dso_local i32 @cond_resched(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
