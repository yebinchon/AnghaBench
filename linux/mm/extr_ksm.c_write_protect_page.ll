; ModuleID = '/home/carl/AnghaBench/linux/mm/extr_ksm.c_write_protect_page.c'
source_filename = "/home/carl/AnghaBench/linux/mm/extr_ksm.c_write_protect_page.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vm_area_struct = type { %struct.mm_struct* }
%struct.mm_struct = type { i32 }
%struct.page = type { i32 }
%struct.page_vma_mapped_walk = type { i32, i32*, %struct.vm_area_struct*, %struct.page* }
%struct.mmu_notifier_range = type { i32 }

@EFAULT = common dso_local global i32 0, align 4
@MMU_NOTIFY_CLEAR = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [24 x i8] c"Unexpected PMD mapping?\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vm_area_struct*, %struct.page*, i32*)* @write_protect_page to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @write_protect_page(%struct.vm_area_struct* %0, %struct.page* %1, i32* %2) #0 {
  %4 = alloca %struct.vm_area_struct*, align 8
  %5 = alloca %struct.page*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.mm_struct*, align 8
  %8 = alloca %struct.page_vma_mapped_walk, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.mmu_notifier_range, align 4
  %12 = alloca i32, align 4
  store %struct.vm_area_struct* %0, %struct.vm_area_struct** %4, align 8
  store %struct.page* %1, %struct.page** %5, align 8
  store i32* %2, i32** %6, align 8
  %13 = load %struct.vm_area_struct*, %struct.vm_area_struct** %4, align 8
  %14 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %13, i32 0, i32 0
  %15 = load %struct.mm_struct*, %struct.mm_struct** %14, align 8
  store %struct.mm_struct* %15, %struct.mm_struct** %7, align 8
  %16 = getelementptr inbounds %struct.page_vma_mapped_walk, %struct.page_vma_mapped_walk* %8, i32 0, i32 0
  store i32 0, i32* %16, align 8
  %17 = getelementptr inbounds %struct.page_vma_mapped_walk, %struct.page_vma_mapped_walk* %8, i32 0, i32 1
  store i32* null, i32** %17, align 8
  %18 = getelementptr inbounds %struct.page_vma_mapped_walk, %struct.page_vma_mapped_walk* %8, i32 0, i32 2
  %19 = load %struct.vm_area_struct*, %struct.vm_area_struct** %4, align 8
  store %struct.vm_area_struct* %19, %struct.vm_area_struct** %18, align 8
  %20 = getelementptr inbounds %struct.page_vma_mapped_walk, %struct.page_vma_mapped_walk* %8, i32 0, i32 3
  %21 = load %struct.page*, %struct.page** %5, align 8
  store %struct.page* %21, %struct.page** %20, align 8
  %22 = load i32, i32* @EFAULT, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %10, align 4
  %24 = load %struct.page*, %struct.page** %5, align 8
  %25 = load %struct.vm_area_struct*, %struct.vm_area_struct** %4, align 8
  %26 = call i32 @page_address_in_vma(%struct.page* %24, %struct.vm_area_struct* %25)
  %27 = getelementptr inbounds %struct.page_vma_mapped_walk, %struct.page_vma_mapped_walk* %8, i32 0, i32 0
  store i32 %26, i32* %27, align 8
  %28 = getelementptr inbounds %struct.page_vma_mapped_walk, %struct.page_vma_mapped_walk* %8, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = load i32, i32* @EFAULT, align 4
  %31 = sub nsw i32 0, %30
  %32 = icmp eq i32 %29, %31
  br i1 %32, label %33, label %34

33:                                               ; preds = %3
  br label %158

34:                                               ; preds = %3
  %35 = load %struct.page*, %struct.page** %5, align 8
  %36 = call i32 @PageTransCompound(%struct.page* %35)
  %37 = call i32 @BUG_ON(i32 %36)
  %38 = load i32, i32* @MMU_NOTIFY_CLEAR, align 4
  %39 = load %struct.vm_area_struct*, %struct.vm_area_struct** %4, align 8
  %40 = load %struct.mm_struct*, %struct.mm_struct** %7, align 8
  %41 = getelementptr inbounds %struct.page_vma_mapped_walk, %struct.page_vma_mapped_walk* %8, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = getelementptr inbounds %struct.page_vma_mapped_walk, %struct.page_vma_mapped_walk* %8, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = sext i32 %44 to i64
  %46 = load i64, i64* @PAGE_SIZE, align 8
  %47 = add nsw i64 %45, %46
  %48 = call i32 @mmu_notifier_range_init(%struct.mmu_notifier_range* %11, i32 %38, i32 0, %struct.vm_area_struct* %39, %struct.mm_struct* %40, i32 %42, i64 %47)
  %49 = call i32 @mmu_notifier_invalidate_range_start(%struct.mmu_notifier_range* %11)
  %50 = call i32 @page_vma_mapped_walk(%struct.page_vma_mapped_walk* %8)
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %53, label %52

52:                                               ; preds = %34
  br label %156

53:                                               ; preds = %34
  %54 = getelementptr inbounds %struct.page_vma_mapped_walk, %struct.page_vma_mapped_walk* %8, i32 0, i32 1
  %55 = load i32*, i32** %54, align 8
  %56 = icmp ne i32* %55, null
  %57 = xor i1 %56, true
  %58 = zext i1 %57 to i32
  %59 = call i64 @WARN_ONCE(i32 %58, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %62

61:                                               ; preds = %53
  br label %154

62:                                               ; preds = %53
  %63 = getelementptr inbounds %struct.page_vma_mapped_walk, %struct.page_vma_mapped_walk* %8, i32 0, i32 1
  %64 = load i32*, i32** %63, align 8
  %65 = load i32, i32* %64, align 4
  %66 = call i64 @pte_write(i32 %65)
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %90, label %68

68:                                               ; preds = %62
  %69 = getelementptr inbounds %struct.page_vma_mapped_walk, %struct.page_vma_mapped_walk* %8, i32 0, i32 1
  %70 = load i32*, i32** %69, align 8
  %71 = load i32, i32* %70, align 4
  %72 = call i64 @pte_dirty(i32 %71)
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %90, label %74

74:                                               ; preds = %68
  %75 = getelementptr inbounds %struct.page_vma_mapped_walk, %struct.page_vma_mapped_walk* %8, i32 0, i32 1
  %76 = load i32*, i32** %75, align 8
  %77 = load i32, i32* %76, align 4
  %78 = call i64 @pte_protnone(i32 %77)
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %86

80:                                               ; preds = %74
  %81 = getelementptr inbounds %struct.page_vma_mapped_walk, %struct.page_vma_mapped_walk* %8, i32 0, i32 1
  %82 = load i32*, i32** %81, align 8
  %83 = load i32, i32* %82, align 4
  %84 = call i64 @pte_savedwrite(i32 %83)
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %90, label %86

86:                                               ; preds = %80, %74
  %87 = load %struct.mm_struct*, %struct.mm_struct** %7, align 8
  %88 = call i64 @mm_tlb_flush_pending(%struct.mm_struct* %87)
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %90, label %149

90:                                               ; preds = %86, %80, %68, %62
  %91 = load %struct.page*, %struct.page** %5, align 8
  %92 = call i32 @PageSwapCache(%struct.page* %91)
  store i32 %92, i32* %9, align 4
  %93 = load %struct.vm_area_struct*, %struct.vm_area_struct** %4, align 8
  %94 = getelementptr inbounds %struct.page_vma_mapped_walk, %struct.page_vma_mapped_walk* %8, i32 0, i32 0
  %95 = load i32, i32* %94, align 8
  %96 = load %struct.page*, %struct.page** %5, align 8
  %97 = call i32 @page_to_pfn(%struct.page* %96)
  %98 = call i32 @flush_cache_page(%struct.vm_area_struct* %93, i32 %95, i32 %97)
  %99 = load %struct.vm_area_struct*, %struct.vm_area_struct** %4, align 8
  %100 = getelementptr inbounds %struct.page_vma_mapped_walk, %struct.page_vma_mapped_walk* %8, i32 0, i32 0
  %101 = load i32, i32* %100, align 8
  %102 = getelementptr inbounds %struct.page_vma_mapped_walk, %struct.page_vma_mapped_walk* %8, i32 0, i32 1
  %103 = load i32*, i32** %102, align 8
  %104 = call i32 @ptep_clear_flush(%struct.vm_area_struct* %99, i32 %101, i32* %103)
  store i32 %104, i32* %12, align 4
  %105 = load %struct.page*, %struct.page** %5, align 8
  %106 = call i64 @page_mapcount(%struct.page* %105)
  %107 = add nsw i64 %106, 1
  %108 = load i32, i32* %9, align 4
  %109 = sext i32 %108 to i64
  %110 = add nsw i64 %107, %109
  %111 = load %struct.page*, %struct.page** %5, align 8
  %112 = call i64 @page_count(%struct.page* %111)
  %113 = icmp ne i64 %110, %112
  br i1 %113, label %114, label %122

114:                                              ; preds = %90
  %115 = load %struct.mm_struct*, %struct.mm_struct** %7, align 8
  %116 = getelementptr inbounds %struct.page_vma_mapped_walk, %struct.page_vma_mapped_walk* %8, i32 0, i32 0
  %117 = load i32, i32* %116, align 8
  %118 = getelementptr inbounds %struct.page_vma_mapped_walk, %struct.page_vma_mapped_walk* %8, i32 0, i32 1
  %119 = load i32*, i32** %118, align 8
  %120 = load i32, i32* %12, align 4
  %121 = call i32 @set_pte_at(%struct.mm_struct* %115, i32 %117, i32* %119, i32 %120)
  br label %154

122:                                              ; preds = %90
  %123 = load i32, i32* %12, align 4
  %124 = call i64 @pte_dirty(i32 %123)
  %125 = icmp ne i64 %124, 0
  br i1 %125, label %126, label %129

126:                                              ; preds = %122
  %127 = load %struct.page*, %struct.page** %5, align 8
  %128 = call i32 @set_page_dirty(%struct.page* %127)
  br label %129

129:                                              ; preds = %126, %122
  %130 = load i32, i32* %12, align 4
  %131 = call i64 @pte_protnone(i32 %130)
  %132 = icmp ne i64 %131, 0
  br i1 %132, label %133, label %137

133:                                              ; preds = %129
  %134 = load i32, i32* %12, align 4
  %135 = call i32 @pte_clear_savedwrite(i32 %134)
  %136 = call i32 @pte_mkclean(i32 %135)
  store i32 %136, i32* %12, align 4
  br label %141

137:                                              ; preds = %129
  %138 = load i32, i32* %12, align 4
  %139 = call i32 @pte_wrprotect(i32 %138)
  %140 = call i32 @pte_mkclean(i32 %139)
  store i32 %140, i32* %12, align 4
  br label %141

141:                                              ; preds = %137, %133
  %142 = load %struct.mm_struct*, %struct.mm_struct** %7, align 8
  %143 = getelementptr inbounds %struct.page_vma_mapped_walk, %struct.page_vma_mapped_walk* %8, i32 0, i32 0
  %144 = load i32, i32* %143, align 8
  %145 = getelementptr inbounds %struct.page_vma_mapped_walk, %struct.page_vma_mapped_walk* %8, i32 0, i32 1
  %146 = load i32*, i32** %145, align 8
  %147 = load i32, i32* %12, align 4
  %148 = call i32 @set_pte_at_notify(%struct.mm_struct* %142, i32 %144, i32* %146, i32 %147)
  br label %149

149:                                              ; preds = %141, %86
  %150 = getelementptr inbounds %struct.page_vma_mapped_walk, %struct.page_vma_mapped_walk* %8, i32 0, i32 1
  %151 = load i32*, i32** %150, align 8
  %152 = load i32, i32* %151, align 4
  %153 = load i32*, i32** %6, align 8
  store i32 %152, i32* %153, align 4
  store i32 0, i32* %10, align 4
  br label %154

154:                                              ; preds = %149, %114, %61
  %155 = call i32 @page_vma_mapped_walk_done(%struct.page_vma_mapped_walk* %8)
  br label %156

156:                                              ; preds = %154, %52
  %157 = call i32 @mmu_notifier_invalidate_range_end(%struct.mmu_notifier_range* %11)
  br label %158

158:                                              ; preds = %156, %33
  %159 = load i32, i32* %10, align 4
  ret i32 %159
}

declare dso_local i32 @page_address_in_vma(%struct.page*, %struct.vm_area_struct*) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @PageTransCompound(%struct.page*) #1

declare dso_local i32 @mmu_notifier_range_init(%struct.mmu_notifier_range*, i32, i32, %struct.vm_area_struct*, %struct.mm_struct*, i32, i64) #1

declare dso_local i32 @mmu_notifier_invalidate_range_start(%struct.mmu_notifier_range*) #1

declare dso_local i32 @page_vma_mapped_walk(%struct.page_vma_mapped_walk*) #1

declare dso_local i64 @WARN_ONCE(i32, i8*) #1

declare dso_local i64 @pte_write(i32) #1

declare dso_local i64 @pte_dirty(i32) #1

declare dso_local i64 @pte_protnone(i32) #1

declare dso_local i64 @pte_savedwrite(i32) #1

declare dso_local i64 @mm_tlb_flush_pending(%struct.mm_struct*) #1

declare dso_local i32 @PageSwapCache(%struct.page*) #1

declare dso_local i32 @flush_cache_page(%struct.vm_area_struct*, i32, i32) #1

declare dso_local i32 @page_to_pfn(%struct.page*) #1

declare dso_local i32 @ptep_clear_flush(%struct.vm_area_struct*, i32, i32*) #1

declare dso_local i64 @page_mapcount(%struct.page*) #1

declare dso_local i64 @page_count(%struct.page*) #1

declare dso_local i32 @set_pte_at(%struct.mm_struct*, i32, i32*, i32) #1

declare dso_local i32 @set_page_dirty(%struct.page*) #1

declare dso_local i32 @pte_mkclean(i32) #1

declare dso_local i32 @pte_clear_savedwrite(i32) #1

declare dso_local i32 @pte_wrprotect(i32) #1

declare dso_local i32 @set_pte_at_notify(%struct.mm_struct*, i32, i32*, i32) #1

declare dso_local i32 @page_vma_mapped_walk_done(%struct.page_vma_mapped_walk*) #1

declare dso_local i32 @mmu_notifier_invalidate_range_end(%struct.mmu_notifier_range*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
