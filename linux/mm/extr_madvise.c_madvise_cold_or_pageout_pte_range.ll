; ModuleID = '/home/carl/AnghaBench/linux/mm/extr_madvise.c_madvise_cold_or_pageout_pte_range.c'
source_filename = "/home/carl/AnghaBench/linux/mm/extr_madvise.c_madvise_cold_or_pageout_pte_range.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mm_walk = type { %struct.vm_area_struct*, %struct.madvise_walk_private* }
%struct.vm_area_struct = type { %struct.mm_struct* }
%struct.mm_struct = type { i32 }
%struct.madvise_walk_private = type { i32, %struct.mmu_gather* }
%struct.mmu_gather = type { i32, %struct.mm_struct* }
%struct.page = type { i32 }

@page_list = common dso_local global i32 0, align 4
@current = common dso_local global i32 0, align 4
@EINTR = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i64 0, align 8
@HPAGE_PMD_SIZE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i64, i64, %struct.mm_walk*)* @madvise_cold_or_pageout_pte_range to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @madvise_cold_or_pageout_pte_range(i32* %0, i64 %1, i64 %2, %struct.mm_walk* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.mm_walk*, align 8
  %10 = alloca %struct.madvise_walk_private*, align 8
  %11 = alloca %struct.mmu_gather*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.mm_struct*, align 8
  %14 = alloca %struct.vm_area_struct*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32*, align 8
  %19 = alloca %struct.page*, align 8
  store i32* %0, i32** %6, align 8
  store i64 %1, i64* %7, align 8
  store i64 %2, i64* %8, align 8
  store %struct.mm_walk* %3, %struct.mm_walk** %9, align 8
  %20 = load %struct.mm_walk*, %struct.mm_walk** %9, align 8
  %21 = getelementptr inbounds %struct.mm_walk, %struct.mm_walk* %20, i32 0, i32 1
  %22 = load %struct.madvise_walk_private*, %struct.madvise_walk_private** %21, align 8
  store %struct.madvise_walk_private* %22, %struct.madvise_walk_private** %10, align 8
  %23 = load %struct.madvise_walk_private*, %struct.madvise_walk_private** %10, align 8
  %24 = getelementptr inbounds %struct.madvise_walk_private, %struct.madvise_walk_private* %23, i32 0, i32 1
  %25 = load %struct.mmu_gather*, %struct.mmu_gather** %24, align 8
  store %struct.mmu_gather* %25, %struct.mmu_gather** %11, align 8
  %26 = load %struct.madvise_walk_private*, %struct.madvise_walk_private** %10, align 8
  %27 = getelementptr inbounds %struct.madvise_walk_private, %struct.madvise_walk_private* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  store i32 %28, i32* %12, align 4
  %29 = load %struct.mmu_gather*, %struct.mmu_gather** %11, align 8
  %30 = getelementptr inbounds %struct.mmu_gather, %struct.mmu_gather* %29, i32 0, i32 1
  %31 = load %struct.mm_struct*, %struct.mm_struct** %30, align 8
  store %struct.mm_struct* %31, %struct.mm_struct** %13, align 8
  %32 = load %struct.mm_walk*, %struct.mm_walk** %9, align 8
  %33 = getelementptr inbounds %struct.mm_walk, %struct.mm_walk* %32, i32 0, i32 0
  %34 = load %struct.vm_area_struct*, %struct.vm_area_struct** %33, align 8
  store %struct.vm_area_struct* %34, %struct.vm_area_struct** %14, align 8
  store %struct.page* null, %struct.page** %19, align 8
  %35 = load i32, i32* @page_list, align 4
  %36 = call i32 @LIST_HEAD(i32 %35)
  %37 = load i32, i32* @current, align 4
  %38 = call i64 @fatal_signal_pending(i32 %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %43

40:                                               ; preds = %4
  %41 = load i32, i32* @EINTR, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %5, align 4
  br label %192

43:                                               ; preds = %4
  %44 = load %struct.mmu_gather*, %struct.mmu_gather** %11, align 8
  %45 = load i64, i64* @PAGE_SIZE, align 8
  %46 = call i32 @tlb_change_page_size(%struct.mmu_gather* %44, i64 %45)
  %47 = load %struct.vm_area_struct*, %struct.vm_area_struct** %14, align 8
  %48 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %47, i32 0, i32 0
  %49 = load %struct.mm_struct*, %struct.mm_struct** %48, align 8
  %50 = load i32*, i32** %6, align 8
  %51 = load i64, i64* %7, align 8
  %52 = call i32* @pte_offset_map_lock(%struct.mm_struct* %49, i32* %50, i64 %51, i32** %18)
  store i32* %52, i32** %16, align 8
  store i32* %52, i32** %15, align 8
  %53 = load %struct.mm_struct*, %struct.mm_struct** %13, align 8
  %54 = call i32 @flush_tlb_batched_pending(%struct.mm_struct* %53)
  %55 = call i32 (...) @arch_enter_lazy_mmu_mode()
  br label %56

56:                                               ; preds = %175, %43
  %57 = load i64, i64* %7, align 8
  %58 = load i64, i64* %8, align 8
  %59 = icmp ult i64 %57, %58
  br i1 %59, label %60, label %181

60:                                               ; preds = %56
  %61 = load i32*, i32** %16, align 8
  %62 = load i32, i32* %61, align 4
  store i32 %62, i32* %17, align 4
  %63 = load i32, i32* %17, align 4
  %64 = call i64 @pte_none(i32 %63)
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %67

66:                                               ; preds = %60
  br label %175

67:                                               ; preds = %60
  %68 = load i32, i32* %17, align 4
  %69 = call i32 @pte_present(i32 %68)
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %72, label %71

71:                                               ; preds = %67
  br label %175

72:                                               ; preds = %67
  %73 = load %struct.vm_area_struct*, %struct.vm_area_struct** %14, align 8
  %74 = load i64, i64* %7, align 8
  %75 = load i32, i32* %17, align 4
  %76 = call %struct.page* @vm_normal_page(%struct.vm_area_struct* %73, i64 %74, i32 %75)
  store %struct.page* %76, %struct.page** %19, align 8
  %77 = load %struct.page*, %struct.page** %19, align 8
  %78 = icmp ne %struct.page* %77, null
  br i1 %78, label %80, label %79

79:                                               ; preds = %72
  br label %175

80:                                               ; preds = %72
  %81 = load %struct.page*, %struct.page** %19, align 8
  %82 = call i64 @PageTransCompound(%struct.page* %81)
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %128

84:                                               ; preds = %80
  %85 = load %struct.page*, %struct.page** %19, align 8
  %86 = call i32 @page_mapcount(%struct.page* %85)
  %87 = icmp ne i32 %86, 1
  br i1 %87, label %88, label %89

88:                                               ; preds = %84
  br label %181

89:                                               ; preds = %84
  %90 = load %struct.page*, %struct.page** %19, align 8
  %91 = call i32 @get_page(%struct.page* %90)
  %92 = load %struct.page*, %struct.page** %19, align 8
  %93 = call i32 @trylock_page(%struct.page* %92)
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %98, label %95

95:                                               ; preds = %89
  %96 = load %struct.page*, %struct.page** %19, align 8
  %97 = call i32 @put_page(%struct.page* %96)
  br label %181

98:                                               ; preds = %89
  %99 = load i32*, i32** %15, align 8
  %100 = load i32*, i32** %18, align 8
  %101 = call i32 @pte_unmap_unlock(i32* %99, i32* %100)
  %102 = load %struct.page*, %struct.page** %19, align 8
  %103 = call i32 @split_huge_page(%struct.page* %102)
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %114

105:                                              ; preds = %98
  %106 = load %struct.page*, %struct.page** %19, align 8
  %107 = call i32 @unlock_page(%struct.page* %106)
  %108 = load %struct.page*, %struct.page** %19, align 8
  %109 = call i32 @put_page(%struct.page* %108)
  %110 = load %struct.mm_struct*, %struct.mm_struct** %13, align 8
  %111 = load i32*, i32** %6, align 8
  %112 = load i64, i64* %7, align 8
  %113 = call i32* @pte_offset_map_lock(%struct.mm_struct* %110, i32* %111, i64 %112, i32** %18)
  br label %181

114:                                              ; preds = %98
  %115 = load %struct.page*, %struct.page** %19, align 8
  %116 = call i32 @unlock_page(%struct.page* %115)
  %117 = load %struct.page*, %struct.page** %19, align 8
  %118 = call i32 @put_page(%struct.page* %117)
  %119 = load %struct.mm_struct*, %struct.mm_struct** %13, align 8
  %120 = load i32*, i32** %6, align 8
  %121 = load i64, i64* %7, align 8
  %122 = call i32* @pte_offset_map_lock(%struct.mm_struct* %119, i32* %120, i64 %121, i32** %18)
  store i32* %122, i32** %16, align 8
  %123 = load i32*, i32** %16, align 8
  %124 = getelementptr inbounds i32, i32* %123, i32 -1
  store i32* %124, i32** %16, align 8
  %125 = load i64, i64* @PAGE_SIZE, align 8
  %126 = load i64, i64* %7, align 8
  %127 = sub i64 %126, %125
  store i64 %127, i64* %7, align 8
  br label %175

128:                                              ; preds = %80
  %129 = load %struct.page*, %struct.page** %19, align 8
  %130 = call i64 @PageTransCompound(%struct.page* %129)
  %131 = load %struct.page*, %struct.page** %19, align 8
  %132 = call i32 @VM_BUG_ON_PAGE(i64 %130, %struct.page* %131)
  %133 = load i32, i32* %17, align 4
  %134 = call i64 @pte_young(i32 %133)
  %135 = icmp ne i64 %134, 0
  br i1 %135, label %136, label %155

136:                                              ; preds = %128
  %137 = load %struct.mm_struct*, %struct.mm_struct** %13, align 8
  %138 = load i64, i64* %7, align 8
  %139 = load i32*, i32** %16, align 8
  %140 = load %struct.mmu_gather*, %struct.mmu_gather** %11, align 8
  %141 = getelementptr inbounds %struct.mmu_gather, %struct.mmu_gather* %140, i32 0, i32 0
  %142 = load i32, i32* %141, align 8
  %143 = call i32 @ptep_get_and_clear_full(%struct.mm_struct* %137, i64 %138, i32* %139, i32 %142)
  store i32 %143, i32* %17, align 4
  %144 = load i32, i32* %17, align 4
  %145 = call i32 @pte_mkold(i32 %144)
  store i32 %145, i32* %17, align 4
  %146 = load %struct.mm_struct*, %struct.mm_struct** %13, align 8
  %147 = load i64, i64* %7, align 8
  %148 = load i32*, i32** %16, align 8
  %149 = load i32, i32* %17, align 4
  %150 = call i32 @set_pte_at(%struct.mm_struct* %146, i64 %147, i32* %148, i32 %149)
  %151 = load %struct.mmu_gather*, %struct.mmu_gather** %11, align 8
  %152 = load i32*, i32** %16, align 8
  %153 = load i64, i64* %7, align 8
  %154 = call i32 @tlb_remove_tlb_entry(%struct.mmu_gather* %151, i32* %152, i64 %153)
  br label %155

155:                                              ; preds = %136, %128
  %156 = load %struct.page*, %struct.page** %19, align 8
  %157 = call i32 @ClearPageReferenced(%struct.page* %156)
  %158 = load %struct.page*, %struct.page** %19, align 8
  %159 = call i32 @test_and_clear_page_young(%struct.page* %158)
  %160 = load i32, i32* %12, align 4
  %161 = icmp ne i32 %160, 0
  br i1 %161, label %162, label %171

162:                                              ; preds = %155
  %163 = load %struct.page*, %struct.page** %19, align 8
  %164 = call i32 @isolate_lru_page(%struct.page* %163)
  %165 = icmp ne i32 %164, 0
  br i1 %165, label %170, label %166

166:                                              ; preds = %162
  %167 = load %struct.page*, %struct.page** %19, align 8
  %168 = getelementptr inbounds %struct.page, %struct.page* %167, i32 0, i32 0
  %169 = call i32 @list_add(i32* %168, i32* @page_list)
  br label %170

170:                                              ; preds = %166, %162
  br label %174

171:                                              ; preds = %155
  %172 = load %struct.page*, %struct.page** %19, align 8
  %173 = call i32 @deactivate_page(%struct.page* %172)
  br label %174

174:                                              ; preds = %171, %170
  br label %175

175:                                              ; preds = %174, %114, %79, %71, %66
  %176 = load i32*, i32** %16, align 8
  %177 = getelementptr inbounds i32, i32* %176, i32 1
  store i32* %177, i32** %16, align 8
  %178 = load i64, i64* @PAGE_SIZE, align 8
  %179 = load i64, i64* %7, align 8
  %180 = add i64 %179, %178
  store i64 %180, i64* %7, align 8
  br label %56

181:                                              ; preds = %105, %95, %88, %56
  %182 = call i32 (...) @arch_leave_lazy_mmu_mode()
  %183 = load i32*, i32** %15, align 8
  %184 = load i32*, i32** %18, align 8
  %185 = call i32 @pte_unmap_unlock(i32* %183, i32* %184)
  %186 = load i32, i32* %12, align 4
  %187 = icmp ne i32 %186, 0
  br i1 %187, label %188, label %190

188:                                              ; preds = %181
  %189 = call i32 @reclaim_pages(i32* @page_list)
  br label %190

190:                                              ; preds = %188, %181
  %191 = call i32 (...) @cond_resched()
  store i32 0, i32* %5, align 4
  br label %192

192:                                              ; preds = %190, %40
  %193 = load i32, i32* %5, align 4
  ret i32 %193
}

declare dso_local i32 @LIST_HEAD(i32) #1

declare dso_local i64 @fatal_signal_pending(i32) #1

declare dso_local i32 @tlb_change_page_size(%struct.mmu_gather*, i64) #1

declare dso_local i32* @pte_offset_map_lock(%struct.mm_struct*, i32*, i64, i32**) #1

declare dso_local i32 @flush_tlb_batched_pending(%struct.mm_struct*) #1

declare dso_local i32 @arch_enter_lazy_mmu_mode(...) #1

declare dso_local i64 @pte_none(i32) #1

declare dso_local i32 @pte_present(i32) #1

declare dso_local %struct.page* @vm_normal_page(%struct.vm_area_struct*, i64, i32) #1

declare dso_local i64 @PageTransCompound(%struct.page*) #1

declare dso_local i32 @page_mapcount(%struct.page*) #1

declare dso_local i32 @get_page(%struct.page*) #1

declare dso_local i32 @trylock_page(%struct.page*) #1

declare dso_local i32 @put_page(%struct.page*) #1

declare dso_local i32 @pte_unmap_unlock(i32*, i32*) #1

declare dso_local i32 @split_huge_page(%struct.page*) #1

declare dso_local i32 @unlock_page(%struct.page*) #1

declare dso_local i32 @VM_BUG_ON_PAGE(i64, %struct.page*) #1

declare dso_local i64 @pte_young(i32) #1

declare dso_local i32 @ptep_get_and_clear_full(%struct.mm_struct*, i64, i32*, i32) #1

declare dso_local i32 @pte_mkold(i32) #1

declare dso_local i32 @set_pte_at(%struct.mm_struct*, i64, i32*, i32) #1

declare dso_local i32 @tlb_remove_tlb_entry(%struct.mmu_gather*, i32*, i64) #1

declare dso_local i32 @ClearPageReferenced(%struct.page*) #1

declare dso_local i32 @test_and_clear_page_young(%struct.page*) #1

declare dso_local i32 @isolate_lru_page(%struct.page*) #1

declare dso_local i32 @list_add(i32*, i32*) #1

declare dso_local i32 @deactivate_page(%struct.page*) #1

declare dso_local i32 @arch_leave_lazy_mmu_mode(...) #1

declare dso_local i32 @reclaim_pages(i32*) #1

declare dso_local i32 @cond_resched(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
