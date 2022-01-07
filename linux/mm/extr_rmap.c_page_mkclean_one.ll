; ModuleID = '/home/carl/AnghaBench/linux/mm/extr_rmap.c_page_mkclean_one.c'
source_filename = "/home/carl/AnghaBench/linux/mm/extr_rmap.c_page_mkclean_one.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.page = type { i32 }
%struct.vm_area_struct = type { i32, i32 }
%struct.page_vma_mapped_walk = type { i64, i32*, i32*, i32, %struct.vm_area_struct*, %struct.page* }
%struct.mmu_notifier_range = type { i32 }

@PVMW_SYNC = common dso_local global i32 0, align 4
@MMU_NOTIFY_PROTECTION_PAGE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.page*, %struct.vm_area_struct*, i64, i8*)* @page_mkclean_one to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @page_mkclean_one(%struct.page* %0, %struct.vm_area_struct* %1, i64 %2, i8* %3) #0 {
  %5 = alloca %struct.page*, align 8
  %6 = alloca %struct.vm_area_struct*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.page_vma_mapped_walk, align 8
  %10 = alloca %struct.mmu_notifier_range, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32*, align 8
  store %struct.page* %0, %struct.page** %5, align 8
  store %struct.vm_area_struct* %1, %struct.vm_area_struct** %6, align 8
  store i64 %2, i64* %7, align 8
  store i8* %3, i8** %8, align 8
  %15 = getelementptr inbounds %struct.page_vma_mapped_walk, %struct.page_vma_mapped_walk* %9, i32 0, i32 0
  %16 = load i64, i64* %7, align 8
  store i64 %16, i64* %15, align 8
  %17 = getelementptr inbounds %struct.page_vma_mapped_walk, %struct.page_vma_mapped_walk* %9, i32 0, i32 1
  store i32* null, i32** %17, align 8
  %18 = getelementptr inbounds %struct.page_vma_mapped_walk, %struct.page_vma_mapped_walk* %9, i32 0, i32 2
  store i32* null, i32** %18, align 8
  %19 = getelementptr inbounds %struct.page_vma_mapped_walk, %struct.page_vma_mapped_walk* %9, i32 0, i32 3
  %20 = load i32, i32* @PVMW_SYNC, align 4
  store i32 %20, i32* %19, align 8
  %21 = getelementptr inbounds %struct.page_vma_mapped_walk, %struct.page_vma_mapped_walk* %9, i32 0, i32 4
  %22 = load %struct.vm_area_struct*, %struct.vm_area_struct** %6, align 8
  store %struct.vm_area_struct* %22, %struct.vm_area_struct** %21, align 8
  %23 = getelementptr inbounds %struct.page_vma_mapped_walk, %struct.page_vma_mapped_walk* %9, i32 0, i32 5
  %24 = load %struct.page*, %struct.page** %5, align 8
  store %struct.page* %24, %struct.page** %23, align 8
  %25 = load i8*, i8** %8, align 8
  %26 = bitcast i8* %25 to i32*
  store i32* %26, i32** %11, align 8
  %27 = load i32, i32* @MMU_NOTIFY_PROTECTION_PAGE, align 4
  %28 = load %struct.vm_area_struct*, %struct.vm_area_struct** %6, align 8
  %29 = load %struct.vm_area_struct*, %struct.vm_area_struct** %6, align 8
  %30 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load i64, i64* %7, align 8
  %33 = load %struct.vm_area_struct*, %struct.vm_area_struct** %6, align 8
  %34 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = load i64, i64* %7, align 8
  %37 = load %struct.page*, %struct.page** %5, align 8
  %38 = call i64 @page_size(%struct.page* %37)
  %39 = add i64 %36, %38
  %40 = call i32 @min(i32 %35, i64 %39)
  %41 = call i32 @mmu_notifier_range_init(%struct.mmu_notifier_range* %10, i32 %27, i32 0, %struct.vm_area_struct* %28, i32 %31, i64 %32, i32 %40)
  %42 = call i32 @mmu_notifier_invalidate_range_start(%struct.mmu_notifier_range* %10)
  br label %43

43:                                               ; preds = %96, %64, %4
  %44 = call i64 @page_vma_mapped_walk(%struct.page_vma_mapped_walk* %9)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %97

46:                                               ; preds = %43
  store i32 0, i32* %12, align 4
  %47 = getelementptr inbounds %struct.page_vma_mapped_walk, %struct.page_vma_mapped_walk* %9, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  store i64 %48, i64* %7, align 8
  %49 = getelementptr inbounds %struct.page_vma_mapped_walk, %struct.page_vma_mapped_walk* %9, i32 0, i32 2
  %50 = load i32*, i32** %49, align 8
  %51 = icmp ne i32* %50, null
  br i1 %51, label %52, label %87

52:                                               ; preds = %46
  %53 = getelementptr inbounds %struct.page_vma_mapped_walk, %struct.page_vma_mapped_walk* %9, i32 0, i32 2
  %54 = load i32*, i32** %53, align 8
  store i32* %54, i32** %14, align 8
  %55 = load i32*, i32** %14, align 8
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @pte_dirty(i32 %56)
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %65, label %59

59:                                               ; preds = %52
  %60 = load i32*, i32** %14, align 8
  %61 = load i32, i32* %60, align 4
  %62 = call i32 @pte_write(i32 %61)
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %65, label %64

64:                                               ; preds = %59
  br label %43

65:                                               ; preds = %59, %52
  %66 = load %struct.vm_area_struct*, %struct.vm_area_struct** %6, align 8
  %67 = load i64, i64* %7, align 8
  %68 = load i32*, i32** %14, align 8
  %69 = load i32, i32* %68, align 4
  %70 = call i32 @pte_pfn(i32 %69)
  %71 = call i32 @flush_cache_page(%struct.vm_area_struct* %66, i64 %67, i32 %70)
  %72 = load %struct.vm_area_struct*, %struct.vm_area_struct** %6, align 8
  %73 = load i64, i64* %7, align 8
  %74 = load i32*, i32** %14, align 8
  %75 = call i32 @ptep_clear_flush(%struct.vm_area_struct* %72, i64 %73, i32* %74)
  store i32 %75, i32* %13, align 4
  %76 = load i32, i32* %13, align 4
  %77 = call i32 @pte_wrprotect(i32 %76)
  store i32 %77, i32* %13, align 4
  %78 = load i32, i32* %13, align 4
  %79 = call i32 @pte_mkclean(i32 %78)
  store i32 %79, i32* %13, align 4
  %80 = load %struct.vm_area_struct*, %struct.vm_area_struct** %6, align 8
  %81 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = load i64, i64* %7, align 8
  %84 = load i32*, i32** %14, align 8
  %85 = load i32, i32* %13, align 4
  %86 = call i32 @set_pte_at(i32 %82, i64 %83, i32* %84, i32 %85)
  store i32 1, i32* %12, align 4
  br label %89

87:                                               ; preds = %46
  %88 = call i32 @WARN_ON_ONCE(i32 1)
  br label %89

89:                                               ; preds = %87, %65
  %90 = load i32, i32* %12, align 4
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %96

92:                                               ; preds = %89
  %93 = load i32*, i32** %11, align 8
  %94 = load i32, i32* %93, align 4
  %95 = add nsw i32 %94, 1
  store i32 %95, i32* %93, align 4
  br label %96

96:                                               ; preds = %92, %89
  br label %43

97:                                               ; preds = %43
  %98 = call i32 @mmu_notifier_invalidate_range_end(%struct.mmu_notifier_range* %10)
  ret i32 1
}

declare dso_local i32 @mmu_notifier_range_init(%struct.mmu_notifier_range*, i32, i32, %struct.vm_area_struct*, i32, i64, i32) #1

declare dso_local i32 @min(i32, i64) #1

declare dso_local i64 @page_size(%struct.page*) #1

declare dso_local i32 @mmu_notifier_invalidate_range_start(%struct.mmu_notifier_range*) #1

declare dso_local i64 @page_vma_mapped_walk(%struct.page_vma_mapped_walk*) #1

declare dso_local i32 @pte_dirty(i32) #1

declare dso_local i32 @pte_write(i32) #1

declare dso_local i32 @flush_cache_page(%struct.vm_area_struct*, i64, i32) #1

declare dso_local i32 @pte_pfn(i32) #1

declare dso_local i32 @ptep_clear_flush(%struct.vm_area_struct*, i64, i32*) #1

declare dso_local i32 @pte_wrprotect(i32) #1

declare dso_local i32 @pte_mkclean(i32) #1

declare dso_local i32 @set_pte_at(i32, i64, i32*, i32) #1

declare dso_local i32 @WARN_ON_ONCE(i32) #1

declare dso_local i32 @mmu_notifier_invalidate_range_end(%struct.mmu_notifier_range*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
