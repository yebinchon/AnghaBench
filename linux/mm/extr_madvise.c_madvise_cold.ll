; ModuleID = '/home/carl/AnghaBench/linux/mm/extr_madvise.c_madvise_cold.c'
source_filename = "/home/carl/AnghaBench/linux/mm/extr_madvise.c_madvise_cold.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vm_area_struct = type { %struct.mm_struct* }
%struct.mm_struct = type { i32 }
%struct.mmu_gather = type { i32 }

@EINVAL = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.vm_area_struct*, %struct.vm_area_struct**, i64, i64)* @madvise_cold to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @madvise_cold(%struct.vm_area_struct* %0, %struct.vm_area_struct** %1, i64 %2, i64 %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca %struct.vm_area_struct*, align 8
  %7 = alloca %struct.vm_area_struct**, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.mm_struct*, align 8
  %11 = alloca %struct.mmu_gather, align 4
  store %struct.vm_area_struct* %0, %struct.vm_area_struct** %6, align 8
  store %struct.vm_area_struct** %1, %struct.vm_area_struct*** %7, align 8
  store i64 %2, i64* %8, align 8
  store i64 %3, i64* %9, align 8
  %12 = load %struct.vm_area_struct*, %struct.vm_area_struct** %6, align 8
  %13 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %12, i32 0, i32 0
  %14 = load %struct.mm_struct*, %struct.mm_struct** %13, align 8
  store %struct.mm_struct* %14, %struct.mm_struct** %10, align 8
  %15 = load %struct.vm_area_struct*, %struct.vm_area_struct** %6, align 8
  %16 = load %struct.vm_area_struct**, %struct.vm_area_struct*** %7, align 8
  store %struct.vm_area_struct* %15, %struct.vm_area_struct** %16, align 8
  %17 = load %struct.vm_area_struct*, %struct.vm_area_struct** %6, align 8
  %18 = call i32 @can_madv_lru_vma(%struct.vm_area_struct* %17)
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %23, label %20

20:                                               ; preds = %4
  %21 = load i64, i64* @EINVAL, align 8
  %22 = sub nsw i64 0, %21
  store i64 %22, i64* %5, align 8
  br label %36

23:                                               ; preds = %4
  %24 = call i32 (...) @lru_add_drain()
  %25 = load %struct.mm_struct*, %struct.mm_struct** %10, align 8
  %26 = load i64, i64* %8, align 8
  %27 = load i64, i64* %9, align 8
  %28 = call i32 @tlb_gather_mmu(%struct.mmu_gather* %11, %struct.mm_struct* %25, i64 %26, i64 %27)
  %29 = load %struct.vm_area_struct*, %struct.vm_area_struct** %6, align 8
  %30 = load i64, i64* %8, align 8
  %31 = load i64, i64* %9, align 8
  %32 = call i32 @madvise_cold_page_range(%struct.mmu_gather* %11, %struct.vm_area_struct* %29, i64 %30, i64 %31)
  %33 = load i64, i64* %8, align 8
  %34 = load i64, i64* %9, align 8
  %35 = call i32 @tlb_finish_mmu(%struct.mmu_gather* %11, i64 %33, i64 %34)
  store i64 0, i64* %5, align 8
  br label %36

36:                                               ; preds = %23, %20
  %37 = load i64, i64* %5, align 8
  ret i64 %37
}

declare dso_local i32 @can_madv_lru_vma(%struct.vm_area_struct*) #1

declare dso_local i32 @lru_add_drain(...) #1

declare dso_local i32 @tlb_gather_mmu(%struct.mmu_gather*, %struct.mm_struct*, i64, i64) #1

declare dso_local i32 @madvise_cold_page_range(%struct.mmu_gather*, %struct.vm_area_struct*, i64, i64) #1

declare dso_local i32 @tlb_finish_mmu(%struct.mmu_gather*, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
