; ModuleID = '/home/carl/AnghaBench/linux/mm/extr_hugetlb.c_hugetlb_change_protection.c'
source_filename = "/home/carl/AnghaBench/linux/mm/extr_hugetlb.c_hugetlb_change_protection.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vm_area_struct = type { %struct.TYPE_2__*, %struct.mm_struct* }
%struct.TYPE_2__ = type { i32 }
%struct.mm_struct = type { i32 }
%struct.hstate = type { i64 }
%struct.mmu_notifier_range = type { i64, i64 }

@MMU_NOTIFY_PROTECTION_VMA = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @hugetlb_change_protection(%struct.vm_area_struct* %0, i64 %1, i64 %2, i32 %3) #0 {
  %5 = alloca %struct.vm_area_struct*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.mm_struct*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.hstate*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca %struct.mmu_notifier_range, align 8
  %17 = alloca i32*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  store %struct.vm_area_struct* %0, %struct.vm_area_struct** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  store i32 %3, i32* %8, align 4
  %21 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %22 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %21, i32 0, i32 1
  %23 = load %struct.mm_struct*, %struct.mm_struct** %22, align 8
  store %struct.mm_struct* %23, %struct.mm_struct** %9, align 8
  %24 = load i64, i64* %6, align 8
  store i64 %24, i64* %10, align 8
  %25 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %26 = call %struct.hstate* @hstate_vma(%struct.vm_area_struct* %25)
  store %struct.hstate* %26, %struct.hstate** %13, align 8
  store i64 0, i64* %14, align 8
  store i32 0, i32* %15, align 4
  %27 = load i32, i32* @MMU_NOTIFY_PROTECTION_VMA, align 4
  %28 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %29 = load %struct.mm_struct*, %struct.mm_struct** %9, align 8
  %30 = load i64, i64* %10, align 8
  %31 = load i64, i64* %7, align 8
  %32 = call i32 @mmu_notifier_range_init(%struct.mmu_notifier_range* %16, i32 %27, i32 0, %struct.vm_area_struct* %28, %struct.mm_struct* %29, i64 %30, i64 %31)
  %33 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %34 = getelementptr inbounds %struct.mmu_notifier_range, %struct.mmu_notifier_range* %16, i32 0, i32 0
  %35 = getelementptr inbounds %struct.mmu_notifier_range, %struct.mmu_notifier_range* %16, i32 0, i32 1
  %36 = call i32 @adjust_range_if_pmd_sharing_possible(%struct.vm_area_struct* %33, i64* %34, i64* %35)
  %37 = load i64, i64* %6, align 8
  %38 = load i64, i64* %7, align 8
  %39 = icmp uge i64 %37, %38
  %40 = zext i1 %39 to i32
  %41 = call i32 @BUG_ON(i32 %40)
  %42 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %43 = getelementptr inbounds %struct.mmu_notifier_range, %struct.mmu_notifier_range* %16, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = getelementptr inbounds %struct.mmu_notifier_range, %struct.mmu_notifier_range* %16, i32 0, i32 1
  %46 = load i64, i64* %45, align 8
  %47 = call i32 @flush_cache_range(%struct.vm_area_struct* %42, i64 %44, i64 %46)
  %48 = call i32 @mmu_notifier_invalidate_range_start(%struct.mmu_notifier_range* %16)
  %49 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %50 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %49, i32 0, i32 0
  %51 = load %struct.TYPE_2__*, %struct.TYPE_2__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @i_mmap_lock_write(i32 %53)
  br label %55

55:                                               ; preds = %146, %4
  %56 = load i64, i64* %6, align 8
  %57 = load i64, i64* %7, align 8
  %58 = icmp ult i64 %56, %57
  br i1 %58, label %59, label %151

59:                                               ; preds = %55
  %60 = load %struct.mm_struct*, %struct.mm_struct** %9, align 8
  %61 = load i64, i64* %6, align 8
  %62 = load %struct.hstate*, %struct.hstate** %13, align 8
  %63 = call i64 @huge_page_size(%struct.hstate* %62)
  %64 = call i32* @huge_pte_offset(%struct.mm_struct* %60, i64 %61, i64 %63)
  store i32* %64, i32** %11, align 8
  %65 = load i32*, i32** %11, align 8
  %66 = icmp ne i32* %65, null
  br i1 %66, label %68, label %67

67:                                               ; preds = %59
  br label %146

68:                                               ; preds = %59
  %69 = load %struct.hstate*, %struct.hstate** %13, align 8
  %70 = load %struct.mm_struct*, %struct.mm_struct** %9, align 8
  %71 = load i32*, i32** %11, align 8
  %72 = call i32* @huge_pte_lock(%struct.hstate* %69, %struct.mm_struct* %70, i32* %71)
  store i32* %72, i32** %17, align 8
  %73 = load %struct.mm_struct*, %struct.mm_struct** %9, align 8
  %74 = load i32*, i32** %11, align 8
  %75 = call i64 @huge_pmd_unshare(%struct.mm_struct* %73, i64* %6, i32* %74)
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %82

77:                                               ; preds = %68
  %78 = load i64, i64* %14, align 8
  %79 = add i64 %78, 1
  store i64 %79, i64* %14, align 8
  %80 = load i32*, i32** %17, align 8
  %81 = call i32 @spin_unlock(i32* %80)
  store i32 1, i32* %15, align 4
  br label %146

82:                                               ; preds = %68
  %83 = load i32*, i32** %11, align 8
  %84 = call i32 @huge_ptep_get(i32* %83)
  store i32 %84, i32* %12, align 4
  %85 = load i32, i32* %12, align 4
  %86 = call i32 @is_hugetlb_entry_hwpoisoned(i32 %85)
  %87 = call i64 @unlikely(i32 %86)
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %92

89:                                               ; preds = %82
  %90 = load i32*, i32** %17, align 8
  %91 = call i32 @spin_unlock(i32* %90)
  br label %146

92:                                               ; preds = %82
  %93 = load i32, i32* %12, align 4
  %94 = call i32 @is_hugetlb_entry_migration(i32 %93)
  %95 = call i64 @unlikely(i32 %94)
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %97, label %119

97:                                               ; preds = %92
  %98 = load i32, i32* %12, align 4
  %99 = call i32 @pte_to_swp_entry(i32 %98)
  store i32 %99, i32* %18, align 4
  %100 = load i32, i32* %18, align 4
  %101 = call i64 @is_write_migration_entry(i32 %100)
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %103, label %116

103:                                              ; preds = %97
  %104 = call i32 @make_migration_entry_read(i32* %18)
  %105 = load i32, i32* %18, align 4
  %106 = call i32 @swp_entry_to_pte(i32 %105)
  store i32 %106, i32* %19, align 4
  %107 = load %struct.mm_struct*, %struct.mm_struct** %9, align 8
  %108 = load i64, i64* %6, align 8
  %109 = load i32*, i32** %11, align 8
  %110 = load i32, i32* %19, align 4
  %111 = load %struct.hstate*, %struct.hstate** %13, align 8
  %112 = call i64 @huge_page_size(%struct.hstate* %111)
  %113 = call i32 @set_huge_swap_pte_at(%struct.mm_struct* %107, i64 %108, i32* %109, i32 %110, i64 %112)
  %114 = load i64, i64* %14, align 8
  %115 = add i64 %114, 1
  store i64 %115, i64* %14, align 8
  br label %116

116:                                              ; preds = %103, %97
  %117 = load i32*, i32** %17, align 8
  %118 = call i32 @spin_unlock(i32* %117)
  br label %146

119:                                              ; preds = %92
  %120 = load i32, i32* %12, align 4
  %121 = call i32 @huge_pte_none(i32 %120)
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %143, label %123

123:                                              ; preds = %119
  %124 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %125 = load i64, i64* %6, align 8
  %126 = load i32*, i32** %11, align 8
  %127 = call i32 @huge_ptep_modify_prot_start(%struct.vm_area_struct* %124, i64 %125, i32* %126)
  store i32 %127, i32* %20, align 4
  %128 = load i32, i32* %20, align 4
  %129 = load i32, i32* %8, align 4
  %130 = call i32 @huge_pte_modify(i32 %128, i32 %129)
  %131 = call i32 @pte_mkhuge(i32 %130)
  store i32 %131, i32* %12, align 4
  %132 = load i32, i32* %12, align 4
  %133 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %134 = call i32 @arch_make_huge_pte(i32 %132, %struct.vm_area_struct* %133, i32* null, i32 0)
  store i32 %134, i32* %12, align 4
  %135 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %136 = load i64, i64* %6, align 8
  %137 = load i32*, i32** %11, align 8
  %138 = load i32, i32* %20, align 4
  %139 = load i32, i32* %12, align 4
  %140 = call i32 @huge_ptep_modify_prot_commit(%struct.vm_area_struct* %135, i64 %136, i32* %137, i32 %138, i32 %139)
  %141 = load i64, i64* %14, align 8
  %142 = add i64 %141, 1
  store i64 %142, i64* %14, align 8
  br label %143

143:                                              ; preds = %123, %119
  %144 = load i32*, i32** %17, align 8
  %145 = call i32 @spin_unlock(i32* %144)
  br label %146

146:                                              ; preds = %143, %116, %89, %77, %67
  %147 = load %struct.hstate*, %struct.hstate** %13, align 8
  %148 = call i64 @huge_page_size(%struct.hstate* %147)
  %149 = load i64, i64* %6, align 8
  %150 = add i64 %149, %148
  store i64 %150, i64* %6, align 8
  br label %55

151:                                              ; preds = %55
  %152 = load i32, i32* %15, align 4
  %153 = icmp ne i32 %152, 0
  br i1 %153, label %154, label %161

154:                                              ; preds = %151
  %155 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %156 = getelementptr inbounds %struct.mmu_notifier_range, %struct.mmu_notifier_range* %16, i32 0, i32 0
  %157 = load i64, i64* %156, align 8
  %158 = getelementptr inbounds %struct.mmu_notifier_range, %struct.mmu_notifier_range* %16, i32 0, i32 1
  %159 = load i64, i64* %158, align 8
  %160 = call i32 @flush_hugetlb_tlb_range(%struct.vm_area_struct* %155, i64 %157, i64 %159)
  br label %166

161:                                              ; preds = %151
  %162 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %163 = load i64, i64* %10, align 8
  %164 = load i64, i64* %7, align 8
  %165 = call i32 @flush_hugetlb_tlb_range(%struct.vm_area_struct* %162, i64 %163, i64 %164)
  br label %166

166:                                              ; preds = %161, %154
  %167 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %168 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %167, i32 0, i32 0
  %169 = load %struct.TYPE_2__*, %struct.TYPE_2__** %168, align 8
  %170 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %169, i32 0, i32 0
  %171 = load i32, i32* %170, align 4
  %172 = call i32 @i_mmap_unlock_write(i32 %171)
  %173 = call i32 @mmu_notifier_invalidate_range_end(%struct.mmu_notifier_range* %16)
  %174 = load i64, i64* %14, align 8
  %175 = load %struct.hstate*, %struct.hstate** %13, align 8
  %176 = getelementptr inbounds %struct.hstate, %struct.hstate* %175, i32 0, i32 0
  %177 = load i64, i64* %176, align 8
  %178 = shl i64 %174, %177
  ret i64 %178
}

declare dso_local %struct.hstate* @hstate_vma(%struct.vm_area_struct*) #1

declare dso_local i32 @mmu_notifier_range_init(%struct.mmu_notifier_range*, i32, i32, %struct.vm_area_struct*, %struct.mm_struct*, i64, i64) #1

declare dso_local i32 @adjust_range_if_pmd_sharing_possible(%struct.vm_area_struct*, i64*, i64*) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @flush_cache_range(%struct.vm_area_struct*, i64, i64) #1

declare dso_local i32 @mmu_notifier_invalidate_range_start(%struct.mmu_notifier_range*) #1

declare dso_local i32 @i_mmap_lock_write(i32) #1

declare dso_local i32* @huge_pte_offset(%struct.mm_struct*, i64, i64) #1

declare dso_local i64 @huge_page_size(%struct.hstate*) #1

declare dso_local i32* @huge_pte_lock(%struct.hstate*, %struct.mm_struct*, i32*) #1

declare dso_local i64 @huge_pmd_unshare(%struct.mm_struct*, i64*, i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @huge_ptep_get(i32*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @is_hugetlb_entry_hwpoisoned(i32) #1

declare dso_local i32 @is_hugetlb_entry_migration(i32) #1

declare dso_local i32 @pte_to_swp_entry(i32) #1

declare dso_local i64 @is_write_migration_entry(i32) #1

declare dso_local i32 @make_migration_entry_read(i32*) #1

declare dso_local i32 @swp_entry_to_pte(i32) #1

declare dso_local i32 @set_huge_swap_pte_at(%struct.mm_struct*, i64, i32*, i32, i64) #1

declare dso_local i32 @huge_pte_none(i32) #1

declare dso_local i32 @huge_ptep_modify_prot_start(%struct.vm_area_struct*, i64, i32*) #1

declare dso_local i32 @pte_mkhuge(i32) #1

declare dso_local i32 @huge_pte_modify(i32, i32) #1

declare dso_local i32 @arch_make_huge_pte(i32, %struct.vm_area_struct*, i32*, i32) #1

declare dso_local i32 @huge_ptep_modify_prot_commit(%struct.vm_area_struct*, i64, i32*, i32, i32) #1

declare dso_local i32 @flush_hugetlb_tlb_range(%struct.vm_area_struct*, i64, i64) #1

declare dso_local i32 @i_mmap_unlock_write(i32) #1

declare dso_local i32 @mmu_notifier_invalidate_range_end(%struct.mmu_notifier_range*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
