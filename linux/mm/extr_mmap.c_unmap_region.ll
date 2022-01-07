; ModuleID = '/home/carl/AnghaBench/linux/mm/extr_mmap.c_unmap_region.c'
source_filename = "/home/carl/AnghaBench/linux/mm/extr_mmap.c_unmap_region.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mm_struct = type { %struct.vm_area_struct* }
%struct.vm_area_struct = type { i32, i32, %struct.vm_area_struct* }
%struct.mmu_gather = type { i32 }

@FIRST_USER_ADDRESS = common dso_local global i32 0, align 4
@USER_PGTABLES_CEILING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mm_struct*, %struct.vm_area_struct*, %struct.vm_area_struct*, i64, i64)* @unmap_region to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @unmap_region(%struct.mm_struct* %0, %struct.vm_area_struct* %1, %struct.vm_area_struct* %2, i64 %3, i64 %4) #0 {
  %6 = alloca %struct.mm_struct*, align 8
  %7 = alloca %struct.vm_area_struct*, align 8
  %8 = alloca %struct.vm_area_struct*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.vm_area_struct*, align 8
  %12 = alloca %struct.mmu_gather, align 4
  store %struct.mm_struct* %0, %struct.mm_struct** %6, align 8
  store %struct.vm_area_struct* %1, %struct.vm_area_struct** %7, align 8
  store %struct.vm_area_struct* %2, %struct.vm_area_struct** %8, align 8
  store i64 %3, i64* %9, align 8
  store i64 %4, i64* %10, align 8
  %13 = load %struct.vm_area_struct*, %struct.vm_area_struct** %8, align 8
  %14 = icmp ne %struct.vm_area_struct* %13, null
  br i1 %14, label %15, label %19

15:                                               ; preds = %5
  %16 = load %struct.vm_area_struct*, %struct.vm_area_struct** %8, align 8
  %17 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %16, i32 0, i32 2
  %18 = load %struct.vm_area_struct*, %struct.vm_area_struct** %17, align 8
  br label %23

19:                                               ; preds = %5
  %20 = load %struct.mm_struct*, %struct.mm_struct** %6, align 8
  %21 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %20, i32 0, i32 0
  %22 = load %struct.vm_area_struct*, %struct.vm_area_struct** %21, align 8
  br label %23

23:                                               ; preds = %19, %15
  %24 = phi %struct.vm_area_struct* [ %18, %15 ], [ %22, %19 ]
  store %struct.vm_area_struct* %24, %struct.vm_area_struct** %11, align 8
  %25 = call i32 (...) @lru_add_drain()
  %26 = load %struct.mm_struct*, %struct.mm_struct** %6, align 8
  %27 = load i64, i64* %9, align 8
  %28 = load i64, i64* %10, align 8
  %29 = call i32 @tlb_gather_mmu(%struct.mmu_gather* %12, %struct.mm_struct* %26, i64 %27, i64 %28)
  %30 = load %struct.mm_struct*, %struct.mm_struct** %6, align 8
  %31 = call i32 @update_hiwater_rss(%struct.mm_struct* %30)
  %32 = load %struct.vm_area_struct*, %struct.vm_area_struct** %7, align 8
  %33 = load i64, i64* %9, align 8
  %34 = load i64, i64* %10, align 8
  %35 = call i32 @unmap_vmas(%struct.mmu_gather* %12, %struct.vm_area_struct* %32, i64 %33, i64 %34)
  %36 = load %struct.vm_area_struct*, %struct.vm_area_struct** %7, align 8
  %37 = load %struct.vm_area_struct*, %struct.vm_area_struct** %8, align 8
  %38 = icmp ne %struct.vm_area_struct* %37, null
  br i1 %38, label %39, label %43

39:                                               ; preds = %23
  %40 = load %struct.vm_area_struct*, %struct.vm_area_struct** %8, align 8
  %41 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  br label %45

43:                                               ; preds = %23
  %44 = load i32, i32* @FIRST_USER_ADDRESS, align 4
  br label %45

45:                                               ; preds = %43, %39
  %46 = phi i32 [ %42, %39 ], [ %44, %43 ]
  %47 = load %struct.vm_area_struct*, %struct.vm_area_struct** %11, align 8
  %48 = icmp ne %struct.vm_area_struct* %47, null
  br i1 %48, label %49, label %53

49:                                               ; preds = %45
  %50 = load %struct.vm_area_struct*, %struct.vm_area_struct** %11, align 8
  %51 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  br label %55

53:                                               ; preds = %45
  %54 = load i32, i32* @USER_PGTABLES_CEILING, align 4
  br label %55

55:                                               ; preds = %53, %49
  %56 = phi i32 [ %52, %49 ], [ %54, %53 ]
  %57 = call i32 @free_pgtables(%struct.mmu_gather* %12, %struct.vm_area_struct* %36, i32 %46, i32 %56)
  %58 = load i64, i64* %9, align 8
  %59 = load i64, i64* %10, align 8
  %60 = call i32 @tlb_finish_mmu(%struct.mmu_gather* %12, i64 %58, i64 %59)
  ret void
}

declare dso_local i32 @lru_add_drain(...) #1

declare dso_local i32 @tlb_gather_mmu(%struct.mmu_gather*, %struct.mm_struct*, i64, i64) #1

declare dso_local i32 @update_hiwater_rss(%struct.mm_struct*) #1

declare dso_local i32 @unmap_vmas(%struct.mmu_gather*, %struct.vm_area_struct*, i64, i64) #1

declare dso_local i32 @free_pgtables(%struct.mmu_gather*, %struct.vm_area_struct*, i32, i32) #1

declare dso_local i32 @tlb_finish_mmu(%struct.mmu_gather*, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
