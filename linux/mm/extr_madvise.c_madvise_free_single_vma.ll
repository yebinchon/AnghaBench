; ModuleID = '/home/carl/AnghaBench/linux/mm/extr_madvise.c_madvise_free_single_vma.c'
source_filename = "/home/carl/AnghaBench/linux/mm/extr_madvise.c_madvise_free_single_vma.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vm_area_struct = type { i64, i64, %struct.mm_struct* }
%struct.mm_struct = type { i32 }
%struct.mmu_notifier_range = type { i64, i64 }
%struct.mmu_gather = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@MMU_NOTIFY_CLEAR = common dso_local global i32 0, align 4
@madvise_free_walk_ops = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vm_area_struct*, i64, i64)* @madvise_free_single_vma to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @madvise_free_single_vma(%struct.vm_area_struct* %0, i64 %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.vm_area_struct*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.mm_struct*, align 8
  %9 = alloca %struct.mmu_notifier_range, align 8
  %10 = alloca %struct.mmu_gather, align 4
  store %struct.vm_area_struct* %0, %struct.vm_area_struct** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  %11 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %12 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %11, i32 0, i32 2
  %13 = load %struct.mm_struct*, %struct.mm_struct** %12, align 8
  store %struct.mm_struct* %13, %struct.mm_struct** %8, align 8
  %14 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %15 = call i32 @vma_is_anonymous(%struct.vm_area_struct* %14)
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %20, label %17

17:                                               ; preds = %3
  %18 = load i32, i32* @EINVAL, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %4, align 4
  br label %89

20:                                               ; preds = %3
  %21 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %22 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* %6, align 8
  %25 = call i64 @max(i64 %23, i64 %24)
  %26 = getelementptr inbounds %struct.mmu_notifier_range, %struct.mmu_notifier_range* %9, i32 0, i32 0
  store i64 %25, i64* %26, align 8
  %27 = getelementptr inbounds %struct.mmu_notifier_range, %struct.mmu_notifier_range* %9, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %30 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %29, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  %32 = icmp sge i64 %28, %31
  br i1 %32, label %33, label %36

33:                                               ; preds = %20
  %34 = load i32, i32* @EINVAL, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %4, align 4
  br label %89

36:                                               ; preds = %20
  %37 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %38 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %37, i32 0, i32 1
  %39 = load i64, i64* %38, align 8
  %40 = load i64, i64* %7, align 8
  %41 = call i64 @min(i64 %39, i64 %40)
  %42 = getelementptr inbounds %struct.mmu_notifier_range, %struct.mmu_notifier_range* %9, i32 0, i32 1
  store i64 %41, i64* %42, align 8
  %43 = getelementptr inbounds %struct.mmu_notifier_range, %struct.mmu_notifier_range* %9, i32 0, i32 1
  %44 = load i64, i64* %43, align 8
  %45 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %46 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = icmp sle i64 %44, %47
  br i1 %48, label %49, label %52

49:                                               ; preds = %36
  %50 = load i32, i32* @EINVAL, align 4
  %51 = sub nsw i32 0, %50
  store i32 %51, i32* %4, align 4
  br label %89

52:                                               ; preds = %36
  %53 = load i32, i32* @MMU_NOTIFY_CLEAR, align 4
  %54 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %55 = load %struct.mm_struct*, %struct.mm_struct** %8, align 8
  %56 = getelementptr inbounds %struct.mmu_notifier_range, %struct.mmu_notifier_range* %9, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = getelementptr inbounds %struct.mmu_notifier_range, %struct.mmu_notifier_range* %9, i32 0, i32 1
  %59 = load i64, i64* %58, align 8
  %60 = call i32 @mmu_notifier_range_init(%struct.mmu_notifier_range* %9, i32 %53, i32 0, %struct.vm_area_struct* %54, %struct.mm_struct* %55, i64 %57, i64 %59)
  %61 = call i32 (...) @lru_add_drain()
  %62 = load %struct.mm_struct*, %struct.mm_struct** %8, align 8
  %63 = getelementptr inbounds %struct.mmu_notifier_range, %struct.mmu_notifier_range* %9, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = getelementptr inbounds %struct.mmu_notifier_range, %struct.mmu_notifier_range* %9, i32 0, i32 1
  %66 = load i64, i64* %65, align 8
  %67 = call i32 @tlb_gather_mmu(%struct.mmu_gather* %10, %struct.mm_struct* %62, i64 %64, i64 %66)
  %68 = load %struct.mm_struct*, %struct.mm_struct** %8, align 8
  %69 = call i32 @update_hiwater_rss(%struct.mm_struct* %68)
  %70 = call i32 @mmu_notifier_invalidate_range_start(%struct.mmu_notifier_range* %9)
  %71 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %72 = call i32 @tlb_start_vma(%struct.mmu_gather* %10, %struct.vm_area_struct* %71)
  %73 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %74 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %73, i32 0, i32 2
  %75 = load %struct.mm_struct*, %struct.mm_struct** %74, align 8
  %76 = getelementptr inbounds %struct.mmu_notifier_range, %struct.mmu_notifier_range* %9, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = getelementptr inbounds %struct.mmu_notifier_range, %struct.mmu_notifier_range* %9, i32 0, i32 1
  %79 = load i64, i64* %78, align 8
  %80 = call i32 @walk_page_range(%struct.mm_struct* %75, i64 %77, i64 %79, i32* @madvise_free_walk_ops, %struct.mmu_gather* %10)
  %81 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %82 = call i32 @tlb_end_vma(%struct.mmu_gather* %10, %struct.vm_area_struct* %81)
  %83 = call i32 @mmu_notifier_invalidate_range_end(%struct.mmu_notifier_range* %9)
  %84 = getelementptr inbounds %struct.mmu_notifier_range, %struct.mmu_notifier_range* %9, i32 0, i32 0
  %85 = load i64, i64* %84, align 8
  %86 = getelementptr inbounds %struct.mmu_notifier_range, %struct.mmu_notifier_range* %9, i32 0, i32 1
  %87 = load i64, i64* %86, align 8
  %88 = call i32 @tlb_finish_mmu(%struct.mmu_gather* %10, i64 %85, i64 %87)
  store i32 0, i32* %4, align 4
  br label %89

89:                                               ; preds = %52, %49, %33, %17
  %90 = load i32, i32* %4, align 4
  ret i32 %90
}

declare dso_local i32 @vma_is_anonymous(%struct.vm_area_struct*) #1

declare dso_local i64 @max(i64, i64) #1

declare dso_local i64 @min(i64, i64) #1

declare dso_local i32 @mmu_notifier_range_init(%struct.mmu_notifier_range*, i32, i32, %struct.vm_area_struct*, %struct.mm_struct*, i64, i64) #1

declare dso_local i32 @lru_add_drain(...) #1

declare dso_local i32 @tlb_gather_mmu(%struct.mmu_gather*, %struct.mm_struct*, i64, i64) #1

declare dso_local i32 @update_hiwater_rss(%struct.mm_struct*) #1

declare dso_local i32 @mmu_notifier_invalidate_range_start(%struct.mmu_notifier_range*) #1

declare dso_local i32 @tlb_start_vma(%struct.mmu_gather*, %struct.vm_area_struct*) #1

declare dso_local i32 @walk_page_range(%struct.mm_struct*, i64, i64, i32*, %struct.mmu_gather*) #1

declare dso_local i32 @tlb_end_vma(%struct.mmu_gather*, %struct.vm_area_struct*) #1

declare dso_local i32 @mmu_notifier_invalidate_range_end(%struct.mmu_notifier_range*) #1

declare dso_local i32 @tlb_finish_mmu(%struct.mmu_gather*, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
