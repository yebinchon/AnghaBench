; ModuleID = '/home/carl/AnghaBench/linux/mm/extr_huge_memory.c_madvise_free_huge_pmd.c'
source_filename = "/home/carl/AnghaBench/linux/mm/extr_huge_memory.c_madvise_free_huge_pmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mmu_gather = type { %struct.mm_struct* }
%struct.mm_struct = type { i32 }
%struct.vm_area_struct = type { i32 }
%struct.page = type { i32 }

@HPAGE_PMD_SIZE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @madvise_free_huge_pmd(%struct.mmu_gather* %0, %struct.vm_area_struct* %1, i32* %2, i64 %3, i64 %4) #0 {
  %6 = alloca %struct.mmu_gather*, align 8
  %7 = alloca %struct.vm_area_struct*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.page*, align 8
  %14 = alloca %struct.mm_struct*, align 8
  %15 = alloca i32, align 4
  store %struct.mmu_gather* %0, %struct.mmu_gather** %6, align 8
  store %struct.vm_area_struct* %1, %struct.vm_area_struct** %7, align 8
  store i32* %2, i32** %8, align 8
  store i64 %3, i64* %9, align 8
  store i64 %4, i64* %10, align 8
  %16 = load %struct.mmu_gather*, %struct.mmu_gather** %6, align 8
  %17 = getelementptr inbounds %struct.mmu_gather, %struct.mmu_gather* %16, i32 0, i32 0
  %18 = load %struct.mm_struct*, %struct.mm_struct** %17, align 8
  store %struct.mm_struct* %18, %struct.mm_struct** %14, align 8
  store i32 0, i32* %15, align 4
  %19 = load %struct.mmu_gather*, %struct.mmu_gather** %6, align 8
  %20 = load i64, i64* @HPAGE_PMD_SIZE, align 8
  %21 = call i32 @tlb_change_page_size(%struct.mmu_gather* %19, i64 %20)
  %22 = load i32*, i32** %8, align 8
  %23 = load %struct.vm_area_struct*, %struct.vm_area_struct** %7, align 8
  %24 = call i32* @pmd_trans_huge_lock(i32* %22, %struct.vm_area_struct* %23)
  store i32* %24, i32** %11, align 8
  %25 = load i32*, i32** %11, align 8
  %26 = icmp ne i32* %25, null
  br i1 %26, label %28, label %27

27:                                               ; preds = %5
  br label %125

28:                                               ; preds = %5
  %29 = load i32*, i32** %8, align 8
  %30 = load i32, i32* %29, align 4
  store i32 %30, i32* %12, align 4
  %31 = load i32, i32* %12, align 4
  %32 = call i64 @is_huge_zero_pmd(i32 %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %28
  br label %122

35:                                               ; preds = %28
  %36 = load i32, i32* %12, align 4
  %37 = call i32 @pmd_present(i32 %36)
  %38 = icmp ne i32 %37, 0
  %39 = xor i1 %38, true
  %40 = zext i1 %39 to i32
  %41 = call i64 @unlikely(i32 %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %55

43:                                               ; preds = %35
  %44 = call i64 (...) @thp_migration_supported()
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %51

46:                                               ; preds = %43
  %47 = load i32, i32* %12, align 4
  %48 = call i32 @is_pmd_migration_entry(i32 %47)
  %49 = icmp ne i32 %48, 0
  %50 = xor i1 %49, true
  br label %51

51:                                               ; preds = %46, %43
  %52 = phi i1 [ false, %43 ], [ %50, %46 ]
  %53 = zext i1 %52 to i32
  %54 = call i32 @VM_BUG_ON(i32 %53)
  br label %122

55:                                               ; preds = %35
  %56 = load i32, i32* %12, align 4
  %57 = call %struct.page* @pmd_page(i32 %56)
  store %struct.page* %57, %struct.page** %13, align 8
  %58 = load %struct.page*, %struct.page** %13, align 8
  %59 = call i32 @page_mapcount(%struct.page* %58)
  %60 = icmp ne i32 %59, 1
  br i1 %60, label %61, label %62

61:                                               ; preds = %55
  br label %122

62:                                               ; preds = %55
  %63 = load %struct.page*, %struct.page** %13, align 8
  %64 = call i32 @trylock_page(%struct.page* %63)
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %67, label %66

66:                                               ; preds = %62
  br label %122

67:                                               ; preds = %62
  %68 = load i64, i64* %10, align 8
  %69 = load i64, i64* %9, align 8
  %70 = sub i64 %68, %69
  %71 = load i64, i64* @HPAGE_PMD_SIZE, align 8
  %72 = icmp ne i64 %70, %71
  br i1 %72, label %73, label %84

73:                                               ; preds = %67
  %74 = load %struct.page*, %struct.page** %13, align 8
  %75 = call i32 @get_page(%struct.page* %74)
  %76 = load i32*, i32** %11, align 8
  %77 = call i32 @spin_unlock(i32* %76)
  %78 = load %struct.page*, %struct.page** %13, align 8
  %79 = call i32 @split_huge_page(%struct.page* %78)
  %80 = load %struct.page*, %struct.page** %13, align 8
  %81 = call i32 @unlock_page(%struct.page* %80)
  %82 = load %struct.page*, %struct.page** %13, align 8
  %83 = call i32 @put_page(%struct.page* %82)
  br label %125

84:                                               ; preds = %67
  %85 = load %struct.page*, %struct.page** %13, align 8
  %86 = call i64 @PageDirty(%struct.page* %85)
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %88, label %91

88:                                               ; preds = %84
  %89 = load %struct.page*, %struct.page** %13, align 8
  %90 = call i32 @ClearPageDirty(%struct.page* %89)
  br label %91

91:                                               ; preds = %88, %84
  %92 = load %struct.page*, %struct.page** %13, align 8
  %93 = call i32 @unlock_page(%struct.page* %92)
  %94 = load i32, i32* %12, align 4
  %95 = call i64 @pmd_young(i32 %94)
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %101, label %97

97:                                               ; preds = %91
  %98 = load i32, i32* %12, align 4
  %99 = call i64 @pmd_dirty(i32 %98)
  %100 = icmp ne i64 %99, 0
  br i1 %100, label %101, label %119

101:                                              ; preds = %97, %91
  %102 = load %struct.vm_area_struct*, %struct.vm_area_struct** %7, align 8
  %103 = load i64, i64* %9, align 8
  %104 = load i32*, i32** %8, align 8
  %105 = call i32 @pmdp_invalidate(%struct.vm_area_struct* %102, i64 %103, i32* %104)
  %106 = load i32, i32* %12, align 4
  %107 = call i32 @pmd_mkold(i32 %106)
  store i32 %107, i32* %12, align 4
  %108 = load i32, i32* %12, align 4
  %109 = call i32 @pmd_mkclean(i32 %108)
  store i32 %109, i32* %12, align 4
  %110 = load %struct.mm_struct*, %struct.mm_struct** %14, align 8
  %111 = load i64, i64* %9, align 8
  %112 = load i32*, i32** %8, align 8
  %113 = load i32, i32* %12, align 4
  %114 = call i32 @set_pmd_at(%struct.mm_struct* %110, i64 %111, i32* %112, i32 %113)
  %115 = load %struct.mmu_gather*, %struct.mmu_gather** %6, align 8
  %116 = load i32*, i32** %8, align 8
  %117 = load i64, i64* %9, align 8
  %118 = call i32 @tlb_remove_pmd_tlb_entry(%struct.mmu_gather* %115, i32* %116, i64 %117)
  br label %119

119:                                              ; preds = %101, %97
  %120 = load %struct.page*, %struct.page** %13, align 8
  %121 = call i32 @mark_page_lazyfree(%struct.page* %120)
  store i32 1, i32* %15, align 4
  br label %122

122:                                              ; preds = %119, %66, %61, %51, %34
  %123 = load i32*, i32** %11, align 8
  %124 = call i32 @spin_unlock(i32* %123)
  br label %125

125:                                              ; preds = %122, %73, %27
  %126 = load i32, i32* %15, align 4
  ret i32 %126
}

declare dso_local i32 @tlb_change_page_size(%struct.mmu_gather*, i64) #1

declare dso_local i32* @pmd_trans_huge_lock(i32*, %struct.vm_area_struct*) #1

declare dso_local i64 @is_huge_zero_pmd(i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @pmd_present(i32) #1

declare dso_local i32 @VM_BUG_ON(i32) #1

declare dso_local i64 @thp_migration_supported(...) #1

declare dso_local i32 @is_pmd_migration_entry(i32) #1

declare dso_local %struct.page* @pmd_page(i32) #1

declare dso_local i32 @page_mapcount(%struct.page*) #1

declare dso_local i32 @trylock_page(%struct.page*) #1

declare dso_local i32 @get_page(%struct.page*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @split_huge_page(%struct.page*) #1

declare dso_local i32 @unlock_page(%struct.page*) #1

declare dso_local i32 @put_page(%struct.page*) #1

declare dso_local i64 @PageDirty(%struct.page*) #1

declare dso_local i32 @ClearPageDirty(%struct.page*) #1

declare dso_local i64 @pmd_young(i32) #1

declare dso_local i64 @pmd_dirty(i32) #1

declare dso_local i32 @pmdp_invalidate(%struct.vm_area_struct*, i64, i32*) #1

declare dso_local i32 @pmd_mkold(i32) #1

declare dso_local i32 @pmd_mkclean(i32) #1

declare dso_local i32 @set_pmd_at(%struct.mm_struct*, i64, i32*, i32) #1

declare dso_local i32 @tlb_remove_pmd_tlb_entry(%struct.mmu_gather*, i32*, i64) #1

declare dso_local i32 @mark_page_lazyfree(%struct.page*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
