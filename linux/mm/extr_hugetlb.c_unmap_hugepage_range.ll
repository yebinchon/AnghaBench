; ModuleID = '/home/carl/AnghaBench/linux/mm/extr_hugetlb.c_unmap_hugepage_range.c'
source_filename = "/home/carl/AnghaBench/linux/mm/extr_hugetlb.c_unmap_hugepage_range.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vm_area_struct = type { %struct.mm_struct* }
%struct.mm_struct = type { i32 }
%struct.page = type { i32 }
%struct.mmu_gather = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @unmap_hugepage_range(%struct.vm_area_struct* %0, i64 %1, i64 %2, %struct.page* %3) #0 {
  %5 = alloca %struct.vm_area_struct*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.page*, align 8
  %9 = alloca %struct.mm_struct*, align 8
  %10 = alloca %struct.mmu_gather, align 4
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  store %struct.vm_area_struct* %0, %struct.vm_area_struct** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  store %struct.page* %3, %struct.page** %8, align 8
  %13 = load i64, i64* %6, align 8
  store i64 %13, i64* %11, align 8
  %14 = load i64, i64* %7, align 8
  store i64 %14, i64* %12, align 8
  %15 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %16 = call i32 @adjust_range_if_pmd_sharing_possible(%struct.vm_area_struct* %15, i64* %11, i64* %12)
  %17 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %18 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %17, i32 0, i32 0
  %19 = load %struct.mm_struct*, %struct.mm_struct** %18, align 8
  store %struct.mm_struct* %19, %struct.mm_struct** %9, align 8
  %20 = load %struct.mm_struct*, %struct.mm_struct** %9, align 8
  %21 = load i64, i64* %11, align 8
  %22 = load i64, i64* %12, align 8
  %23 = call i32 @tlb_gather_mmu(%struct.mmu_gather* %10, %struct.mm_struct* %20, i64 %21, i64 %22)
  %24 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %25 = load i64, i64* %6, align 8
  %26 = load i64, i64* %7, align 8
  %27 = load %struct.page*, %struct.page** %8, align 8
  %28 = call i32 @__unmap_hugepage_range(%struct.mmu_gather* %10, %struct.vm_area_struct* %24, i64 %25, i64 %26, %struct.page* %27)
  %29 = load i64, i64* %11, align 8
  %30 = load i64, i64* %12, align 8
  %31 = call i32 @tlb_finish_mmu(%struct.mmu_gather* %10, i64 %29, i64 %30)
  ret void
}

declare dso_local i32 @adjust_range_if_pmd_sharing_possible(%struct.vm_area_struct*, i64*, i64*) #1

declare dso_local i32 @tlb_gather_mmu(%struct.mmu_gather*, %struct.mm_struct*, i64, i64) #1

declare dso_local i32 @__unmap_hugepage_range(%struct.mmu_gather*, %struct.vm_area_struct*, i64, i64, %struct.page*) #1

declare dso_local i32 @tlb_finish_mmu(%struct.mmu_gather*, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
