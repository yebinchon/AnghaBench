; ModuleID = '/home/carl/AnghaBench/linux/mm/extr_huge_memory.c_zap_huge_pmd.c'
source_filename = "/home/carl/AnghaBench/linux/mm/extr_huge_memory.c_zap_huge_pmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mmu_gather = type { i32, i32 }
%struct.vm_area_struct = type { i32 }
%struct.page = type { i32 }

@HPAGE_PMD_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [52 x i8] c"Non present huge pmd without pmd migration enabled!\00", align 1
@MM_ANONPAGES = common dso_local global i32 0, align 4
@HPAGE_PMD_NR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @zap_huge_pmd(%struct.mmu_gather* %0, %struct.vm_area_struct* %1, i32* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.mmu_gather*, align 8
  %7 = alloca %struct.vm_area_struct*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca %struct.page*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.mmu_gather* %0, %struct.mmu_gather** %6, align 8
  store %struct.vm_area_struct* %1, %struct.vm_area_struct** %7, align 8
  store i32* %2, i32** %8, align 8
  store i64 %3, i64* %9, align 8
  %15 = load %struct.mmu_gather*, %struct.mmu_gather** %6, align 8
  %16 = load i32, i32* @HPAGE_PMD_SIZE, align 4
  %17 = call i32 @tlb_change_page_size(%struct.mmu_gather* %15, i32 %16)
  %18 = load i32*, i32** %8, align 8
  %19 = load %struct.vm_area_struct*, %struct.vm_area_struct** %7, align 8
  %20 = call i32* @__pmd_trans_huge_lock(i32* %18, %struct.vm_area_struct* %19)
  store i32* %20, i32** %11, align 8
  %21 = load i32*, i32** %11, align 8
  %22 = icmp ne i32* %21, null
  br i1 %22, label %24, label %23

23:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  br label %168

24:                                               ; preds = %4
  %25 = load %struct.mmu_gather*, %struct.mmu_gather** %6, align 8
  %26 = getelementptr inbounds %struct.mmu_gather, %struct.mmu_gather* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load i64, i64* %9, align 8
  %29 = load i32*, i32** %8, align 8
  %30 = load %struct.mmu_gather*, %struct.mmu_gather** %6, align 8
  %31 = getelementptr inbounds %struct.mmu_gather, %struct.mmu_gather* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @pmdp_huge_get_and_clear_full(i32 %27, i64 %28, i32* %29, i32 %32)
  store i32 %33, i32* %10, align 4
  %34 = load %struct.mmu_gather*, %struct.mmu_gather** %6, align 8
  %35 = load i32*, i32** %8, align 8
  %36 = load i64, i64* %9, align 8
  %37 = call i32 @tlb_remove_pmd_tlb_entry(%struct.mmu_gather* %34, i32* %35, i64 %36)
  %38 = load %struct.vm_area_struct*, %struct.vm_area_struct** %7, align 8
  %39 = call i64 @vma_is_dax(%struct.vm_area_struct* %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %63

41:                                               ; preds = %24
  %42 = call i64 (...) @arch_needs_pgtable_deposit()
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %50

44:                                               ; preds = %41
  %45 = load %struct.mmu_gather*, %struct.mmu_gather** %6, align 8
  %46 = getelementptr inbounds %struct.mmu_gather, %struct.mmu_gather* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = load i32*, i32** %8, align 8
  %49 = call i32 @zap_deposited_table(i32 %47, i32* %48)
  br label %50

50:                                               ; preds = %44, %41
  %51 = load i32*, i32** %11, align 8
  %52 = call i32 @spin_unlock(i32* %51)
  %53 = load i32, i32* %10, align 4
  %54 = call i64 @is_huge_zero_pmd(i32 %53)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %62

56:                                               ; preds = %50
  %57 = load %struct.mmu_gather*, %struct.mmu_gather** %6, align 8
  %58 = load i32, i32* %10, align 4
  %59 = call %struct.page* @pmd_page(i32 %58)
  %60 = load i32, i32* @HPAGE_PMD_SIZE, align 4
  %61 = call i32 @tlb_remove_page_size(%struct.mmu_gather* %57, %struct.page* %59, i32 %60)
  br label %62

62:                                               ; preds = %56, %50
  br label %167

63:                                               ; preds = %24
  %64 = load i32, i32* %10, align 4
  %65 = call i64 @is_huge_zero_pmd(i32 %64)
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %80

67:                                               ; preds = %63
  %68 = load %struct.mmu_gather*, %struct.mmu_gather** %6, align 8
  %69 = getelementptr inbounds %struct.mmu_gather, %struct.mmu_gather* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = load i32*, i32** %8, align 8
  %72 = call i32 @zap_deposited_table(i32 %70, i32* %71)
  %73 = load i32*, i32** %11, align 8
  %74 = call i32 @spin_unlock(i32* %73)
  %75 = load %struct.mmu_gather*, %struct.mmu_gather** %6, align 8
  %76 = load i32, i32* %10, align 4
  %77 = call %struct.page* @pmd_page(i32 %76)
  %78 = load i32, i32* @HPAGE_PMD_SIZE, align 4
  %79 = call i32 @tlb_remove_page_size(%struct.mmu_gather* %75, %struct.page* %77, i32 %78)
  br label %166

80:                                               ; preds = %63
  store %struct.page* null, %struct.page** %12, align 8
  store i32 1, i32* %13, align 4
  %81 = load i32, i32* %10, align 4
  %82 = call i64 @pmd_present(i32 %81)
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %102

84:                                               ; preds = %80
  %85 = load i32, i32* %10, align 4
  %86 = call %struct.page* @pmd_page(i32 %85)
  store %struct.page* %86, %struct.page** %12, align 8
  %87 = load %struct.page*, %struct.page** %12, align 8
  %88 = call i32 @page_remove_rmap(%struct.page* %87, i32 1)
  %89 = load %struct.page*, %struct.page** %12, align 8
  %90 = call i64 @page_mapcount(%struct.page* %89)
  %91 = icmp slt i64 %90, 0
  %92 = zext i1 %91 to i32
  %93 = load %struct.page*, %struct.page** %12, align 8
  %94 = call i32 @VM_BUG_ON_PAGE(i32 %92, %struct.page* %93)
  %95 = load %struct.page*, %struct.page** %12, align 8
  %96 = call i32 @PageHead(%struct.page* %95)
  %97 = icmp ne i32 %96, 0
  %98 = xor i1 %97, true
  %99 = zext i1 %98 to i32
  %100 = load %struct.page*, %struct.page** %12, align 8
  %101 = call i32 @VM_BUG_ON_PAGE(i32 %99, %struct.page* %100)
  br label %120

102:                                              ; preds = %80
  %103 = call i64 (...) @thp_migration_supported()
  %104 = icmp ne i64 %103, 0
  br i1 %104, label %105, label %117

105:                                              ; preds = %102
  %106 = load i32, i32* %10, align 4
  %107 = call i32 @is_pmd_migration_entry(i32 %106)
  %108 = icmp ne i32 %107, 0
  %109 = xor i1 %108, true
  %110 = zext i1 %109 to i32
  %111 = call i32 @VM_BUG_ON(i32 %110)
  %112 = load i32, i32* %10, align 4
  %113 = call i32 @pmd_to_swp_entry(i32 %112)
  store i32 %113, i32* %14, align 4
  %114 = load i32, i32* %14, align 4
  %115 = call i32 @swp_offset(i32 %114)
  %116 = call %struct.page* @pfn_to_page(i32 %115)
  store %struct.page* %116, %struct.page** %12, align 8
  store i32 0, i32* %13, align 4
  br label %119

117:                                              ; preds = %102
  %118 = call i32 @WARN_ONCE(i32 1, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str, i64 0, i64 0))
  br label %119

119:                                              ; preds = %117, %105
  br label %120

120:                                              ; preds = %119, %84
  %121 = load %struct.page*, %struct.page** %12, align 8
  %122 = call i64 @PageAnon(%struct.page* %121)
  %123 = icmp ne i64 %122, 0
  br i1 %123, label %124, label %137

124:                                              ; preds = %120
  %125 = load %struct.mmu_gather*, %struct.mmu_gather** %6, align 8
  %126 = getelementptr inbounds %struct.mmu_gather, %struct.mmu_gather* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 4
  %128 = load i32*, i32** %8, align 8
  %129 = call i32 @zap_deposited_table(i32 %127, i32* %128)
  %130 = load %struct.mmu_gather*, %struct.mmu_gather** %6, align 8
  %131 = getelementptr inbounds %struct.mmu_gather, %struct.mmu_gather* %130, i32 0, i32 0
  %132 = load i32, i32* %131, align 4
  %133 = load i32, i32* @MM_ANONPAGES, align 4
  %134 = load i32, i32* @HPAGE_PMD_NR, align 4
  %135 = sub nsw i32 0, %134
  %136 = call i32 @add_mm_counter(i32 %132, i32 %133, i32 %135)
  br label %155

137:                                              ; preds = %120
  %138 = call i64 (...) @arch_needs_pgtable_deposit()
  %139 = icmp ne i64 %138, 0
  br i1 %139, label %140, label %146

140:                                              ; preds = %137
  %141 = load %struct.mmu_gather*, %struct.mmu_gather** %6, align 8
  %142 = getelementptr inbounds %struct.mmu_gather, %struct.mmu_gather* %141, i32 0, i32 0
  %143 = load i32, i32* %142, align 4
  %144 = load i32*, i32** %8, align 8
  %145 = call i32 @zap_deposited_table(i32 %143, i32* %144)
  br label %146

146:                                              ; preds = %140, %137
  %147 = load %struct.mmu_gather*, %struct.mmu_gather** %6, align 8
  %148 = getelementptr inbounds %struct.mmu_gather, %struct.mmu_gather* %147, i32 0, i32 0
  %149 = load i32, i32* %148, align 4
  %150 = load %struct.page*, %struct.page** %12, align 8
  %151 = call i32 @mm_counter_file(%struct.page* %150)
  %152 = load i32, i32* @HPAGE_PMD_NR, align 4
  %153 = sub nsw i32 0, %152
  %154 = call i32 @add_mm_counter(i32 %149, i32 %151, i32 %153)
  br label %155

155:                                              ; preds = %146, %124
  %156 = load i32*, i32** %11, align 8
  %157 = call i32 @spin_unlock(i32* %156)
  %158 = load i32, i32* %13, align 4
  %159 = icmp ne i32 %158, 0
  br i1 %159, label %160, label %165

160:                                              ; preds = %155
  %161 = load %struct.mmu_gather*, %struct.mmu_gather** %6, align 8
  %162 = load %struct.page*, %struct.page** %12, align 8
  %163 = load i32, i32* @HPAGE_PMD_SIZE, align 4
  %164 = call i32 @tlb_remove_page_size(%struct.mmu_gather* %161, %struct.page* %162, i32 %163)
  br label %165

165:                                              ; preds = %160, %155
  br label %166

166:                                              ; preds = %165, %67
  br label %167

167:                                              ; preds = %166, %62
  store i32 1, i32* %5, align 4
  br label %168

168:                                              ; preds = %167, %23
  %169 = load i32, i32* %5, align 4
  ret i32 %169
}

declare dso_local i32 @tlb_change_page_size(%struct.mmu_gather*, i32) #1

declare dso_local i32* @__pmd_trans_huge_lock(i32*, %struct.vm_area_struct*) #1

declare dso_local i32 @pmdp_huge_get_and_clear_full(i32, i64, i32*, i32) #1

declare dso_local i32 @tlb_remove_pmd_tlb_entry(%struct.mmu_gather*, i32*, i64) #1

declare dso_local i64 @vma_is_dax(%struct.vm_area_struct*) #1

declare dso_local i64 @arch_needs_pgtable_deposit(...) #1

declare dso_local i32 @zap_deposited_table(i32, i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i64 @is_huge_zero_pmd(i32) #1

declare dso_local i32 @tlb_remove_page_size(%struct.mmu_gather*, %struct.page*, i32) #1

declare dso_local %struct.page* @pmd_page(i32) #1

declare dso_local i64 @pmd_present(i32) #1

declare dso_local i32 @page_remove_rmap(%struct.page*, i32) #1

declare dso_local i32 @VM_BUG_ON_PAGE(i32, %struct.page*) #1

declare dso_local i64 @page_mapcount(%struct.page*) #1

declare dso_local i32 @PageHead(%struct.page*) #1

declare dso_local i64 @thp_migration_supported(...) #1

declare dso_local i32 @VM_BUG_ON(i32) #1

declare dso_local i32 @is_pmd_migration_entry(i32) #1

declare dso_local i32 @pmd_to_swp_entry(i32) #1

declare dso_local %struct.page* @pfn_to_page(i32) #1

declare dso_local i32 @swp_offset(i32) #1

declare dso_local i32 @WARN_ONCE(i32, i8*) #1

declare dso_local i64 @PageAnon(%struct.page*) #1

declare dso_local i32 @add_mm_counter(i32, i32, i32) #1

declare dso_local i32 @mm_counter_file(%struct.page*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
