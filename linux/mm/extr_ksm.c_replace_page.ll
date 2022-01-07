; ModuleID = '/home/carl/AnghaBench/linux/mm/extr_ksm.c_replace_page.c'
source_filename = "/home/carl/AnghaBench/linux/mm/extr_ksm.c_replace_page.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vm_area_struct = type { i32, %struct.mm_struct* }
%struct.mm_struct = type { i32 }
%struct.page = type { i32 }
%struct.mmu_notifier_range = type { i32 }

@EFAULT = common dso_local global i64 0, align 8
@MMU_NOTIFY_CLEAR = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i64 0, align 8
@MM_ANONPAGES = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vm_area_struct*, %struct.page*, %struct.page*, i32)* @replace_page to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @replace_page(%struct.vm_area_struct* %0, %struct.page* %1, %struct.page* %2, i32 %3) #0 {
  %5 = alloca %struct.vm_area_struct*, align 8
  %6 = alloca %struct.page*, align 8
  %7 = alloca %struct.page*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.mm_struct*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca %struct.mmu_notifier_range, align 4
  store %struct.vm_area_struct* %0, %struct.vm_area_struct** %5, align 8
  store %struct.page* %1, %struct.page** %6, align 8
  store %struct.page* %2, %struct.page** %7, align 8
  store i32 %3, i32* %8, align 4
  %17 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %18 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %17, i32 0, i32 1
  %19 = load %struct.mm_struct*, %struct.mm_struct** %18, align 8
  store %struct.mm_struct* %19, %struct.mm_struct** %9, align 8
  %20 = load i64, i64* @EFAULT, align 8
  %21 = sub i64 0, %20
  %22 = trunc i64 %21 to i32
  store i32 %22, i32* %15, align 4
  %23 = load %struct.page*, %struct.page** %6, align 8
  %24 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %25 = call i64 @page_address_in_vma(%struct.page* %23, %struct.vm_area_struct* %24)
  store i64 %25, i64* %14, align 8
  %26 = load i64, i64* %14, align 8
  %27 = load i64, i64* @EFAULT, align 8
  %28 = sub i64 0, %27
  %29 = icmp eq i64 %26, %28
  br i1 %29, label %30, label %31

30:                                               ; preds = %4
  br label %121

31:                                               ; preds = %4
  %32 = load %struct.mm_struct*, %struct.mm_struct** %9, align 8
  %33 = load i64, i64* %14, align 8
  %34 = call i32* @mm_find_pmd(%struct.mm_struct* %32, i64 %33)
  store i32* %34, i32** %10, align 8
  %35 = load i32*, i32** %10, align 8
  %36 = icmp ne i32* %35, null
  br i1 %36, label %38, label %37

37:                                               ; preds = %31
  br label %121

38:                                               ; preds = %31
  %39 = load i32, i32* @MMU_NOTIFY_CLEAR, align 4
  %40 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %41 = load %struct.mm_struct*, %struct.mm_struct** %9, align 8
  %42 = load i64, i64* %14, align 8
  %43 = load i64, i64* %14, align 8
  %44 = load i64, i64* @PAGE_SIZE, align 8
  %45 = add i64 %43, %44
  %46 = call i32 @mmu_notifier_range_init(%struct.mmu_notifier_range* %16, i32 %39, i32 0, %struct.vm_area_struct* %40, %struct.mm_struct* %41, i64 %42, i64 %45)
  %47 = call i32 @mmu_notifier_invalidate_range_start(%struct.mmu_notifier_range* %16)
  %48 = load %struct.mm_struct*, %struct.mm_struct** %9, align 8
  %49 = load i32*, i32** %10, align 8
  %50 = load i64, i64* %14, align 8
  %51 = call i32* @pte_offset_map_lock(%struct.mm_struct* %48, i32* %49, i64 %50, i32** %13)
  store i32* %51, i32** %11, align 8
  %52 = load i32*, i32** %11, align 8
  %53 = load i32, i32* %52, align 4
  %54 = load i32, i32* %8, align 4
  %55 = call i32 @pte_same(i32 %53, i32 %54)
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %61, label %57

57:                                               ; preds = %38
  %58 = load i32*, i32** %11, align 8
  %59 = load i32*, i32** %13, align 8
  %60 = call i32 @pte_unmap_unlock(i32* %58, i32* %59)
  br label %119

61:                                               ; preds = %38
  %62 = load %struct.page*, %struct.page** %7, align 8
  %63 = call i32 @page_to_pfn(%struct.page* %62)
  %64 = call i32 @is_zero_pfn(i32 %63)
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %78, label %66

66:                                               ; preds = %61
  %67 = load %struct.page*, %struct.page** %7, align 8
  %68 = call i32 @get_page(%struct.page* %67)
  %69 = load %struct.page*, %struct.page** %7, align 8
  %70 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %71 = load i64, i64* %14, align 8
  %72 = call i32 @page_add_anon_rmap(%struct.page* %69, %struct.vm_area_struct* %70, i64 %71, i32 0)
  %73 = load %struct.page*, %struct.page** %7, align 8
  %74 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %75 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  %77 = call i32 @mk_pte(%struct.page* %73, i32 %76)
  store i32 %77, i32* %12, align 4
  br label %89

78:                                               ; preds = %61
  %79 = load %struct.page*, %struct.page** %7, align 8
  %80 = call i32 @page_to_pfn(%struct.page* %79)
  %81 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %82 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 8
  %84 = call i32 @pfn_pte(i32 %80, i32 %83)
  %85 = call i32 @pte_mkspecial(i32 %84)
  store i32 %85, i32* %12, align 4
  %86 = load %struct.mm_struct*, %struct.mm_struct** %9, align 8
  %87 = load i32, i32* @MM_ANONPAGES, align 4
  %88 = call i32 @dec_mm_counter(%struct.mm_struct* %86, i32 %87)
  br label %89

89:                                               ; preds = %78, %66
  %90 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %91 = load i64, i64* %14, align 8
  %92 = load i32*, i32** %11, align 8
  %93 = load i32, i32* %92, align 4
  %94 = call i32 @pte_pfn(i32 %93)
  %95 = call i32 @flush_cache_page(%struct.vm_area_struct* %90, i64 %91, i32 %94)
  %96 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %97 = load i64, i64* %14, align 8
  %98 = load i32*, i32** %11, align 8
  %99 = call i32 @ptep_clear_flush(%struct.vm_area_struct* %96, i64 %97, i32* %98)
  %100 = load %struct.mm_struct*, %struct.mm_struct** %9, align 8
  %101 = load i64, i64* %14, align 8
  %102 = load i32*, i32** %11, align 8
  %103 = load i32, i32* %12, align 4
  %104 = call i32 @set_pte_at_notify(%struct.mm_struct* %100, i64 %101, i32* %102, i32 %103)
  %105 = load %struct.page*, %struct.page** %6, align 8
  %106 = call i32 @page_remove_rmap(%struct.page* %105, i32 0)
  %107 = load %struct.page*, %struct.page** %6, align 8
  %108 = call i32 @page_mapped(%struct.page* %107)
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %113, label %110

110:                                              ; preds = %89
  %111 = load %struct.page*, %struct.page** %6, align 8
  %112 = call i32 @try_to_free_swap(%struct.page* %111)
  br label %113

113:                                              ; preds = %110, %89
  %114 = load %struct.page*, %struct.page** %6, align 8
  %115 = call i32 @put_page(%struct.page* %114)
  %116 = load i32*, i32** %11, align 8
  %117 = load i32*, i32** %13, align 8
  %118 = call i32 @pte_unmap_unlock(i32* %116, i32* %117)
  store i32 0, i32* %15, align 4
  br label %119

119:                                              ; preds = %113, %57
  %120 = call i32 @mmu_notifier_invalidate_range_end(%struct.mmu_notifier_range* %16)
  br label %121

121:                                              ; preds = %119, %37, %30
  %122 = load i32, i32* %15, align 4
  ret i32 %122
}

declare dso_local i64 @page_address_in_vma(%struct.page*, %struct.vm_area_struct*) #1

declare dso_local i32* @mm_find_pmd(%struct.mm_struct*, i64) #1

declare dso_local i32 @mmu_notifier_range_init(%struct.mmu_notifier_range*, i32, i32, %struct.vm_area_struct*, %struct.mm_struct*, i64, i64) #1

declare dso_local i32 @mmu_notifier_invalidate_range_start(%struct.mmu_notifier_range*) #1

declare dso_local i32* @pte_offset_map_lock(%struct.mm_struct*, i32*, i64, i32**) #1

declare dso_local i32 @pte_same(i32, i32) #1

declare dso_local i32 @pte_unmap_unlock(i32*, i32*) #1

declare dso_local i32 @is_zero_pfn(i32) #1

declare dso_local i32 @page_to_pfn(%struct.page*) #1

declare dso_local i32 @get_page(%struct.page*) #1

declare dso_local i32 @page_add_anon_rmap(%struct.page*, %struct.vm_area_struct*, i64, i32) #1

declare dso_local i32 @mk_pte(%struct.page*, i32) #1

declare dso_local i32 @pte_mkspecial(i32) #1

declare dso_local i32 @pfn_pte(i32, i32) #1

declare dso_local i32 @dec_mm_counter(%struct.mm_struct*, i32) #1

declare dso_local i32 @flush_cache_page(%struct.vm_area_struct*, i64, i32) #1

declare dso_local i32 @pte_pfn(i32) #1

declare dso_local i32 @ptep_clear_flush(%struct.vm_area_struct*, i64, i32*) #1

declare dso_local i32 @set_pte_at_notify(%struct.mm_struct*, i64, i32*, i32) #1

declare dso_local i32 @page_remove_rmap(%struct.page*, i32) #1

declare dso_local i32 @page_mapped(%struct.page*) #1

declare dso_local i32 @try_to_free_swap(%struct.page*) #1

declare dso_local i32 @put_page(%struct.page*) #1

declare dso_local i32 @mmu_notifier_invalidate_range_end(%struct.mmu_notifier_range*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
