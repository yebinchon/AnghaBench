; ModuleID = '/home/carl/AnghaBench/linux/mm/extr_memory.c_zap_page_range.c'
source_filename = "/home/carl/AnghaBench/linux/mm/extr_memory.c_zap_page_range.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vm_area_struct = type { i64, %struct.vm_area_struct*, i32 }
%struct.mmu_notifier_range = type { i64 }
%struct.mmu_gather = type { i32 }

@MMU_NOTIFY_CLEAR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @zap_page_range(%struct.vm_area_struct* %0, i64 %1, i64 %2) #0 {
  %4 = alloca %struct.vm_area_struct*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.mmu_notifier_range, align 8
  %8 = alloca %struct.mmu_gather, align 4
  store %struct.vm_area_struct* %0, %struct.vm_area_struct** %4, align 8
  store i64 %1, i64* %5, align 8
  store i64 %2, i64* %6, align 8
  %9 = call i32 (...) @lru_add_drain()
  %10 = load i32, i32* @MMU_NOTIFY_CLEAR, align 4
  %11 = load %struct.vm_area_struct*, %struct.vm_area_struct** %4, align 8
  %12 = load %struct.vm_area_struct*, %struct.vm_area_struct** %4, align 8
  %13 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %12, i32 0, i32 2
  %14 = load i32, i32* %13, align 8
  %15 = load i64, i64* %5, align 8
  %16 = load i64, i64* %5, align 8
  %17 = load i64, i64* %6, align 8
  %18 = add i64 %16, %17
  %19 = call i32 @mmu_notifier_range_init(%struct.mmu_notifier_range* %7, i32 %10, i32 0, %struct.vm_area_struct* %11, i32 %14, i64 %15, i64 %18)
  %20 = load %struct.vm_area_struct*, %struct.vm_area_struct** %4, align 8
  %21 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %20, i32 0, i32 2
  %22 = load i32, i32* %21, align 8
  %23 = load i64, i64* %5, align 8
  %24 = getelementptr inbounds %struct.mmu_notifier_range, %struct.mmu_notifier_range* %7, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = call i32 @tlb_gather_mmu(%struct.mmu_gather* %8, i32 %22, i64 %23, i64 %25)
  %27 = load %struct.vm_area_struct*, %struct.vm_area_struct** %4, align 8
  %28 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 8
  %30 = call i32 @update_hiwater_rss(i32 %29)
  %31 = call i32 @mmu_notifier_invalidate_range_start(%struct.mmu_notifier_range* %7)
  br label %32

32:                                               ; preds = %50, %3
  %33 = load %struct.vm_area_struct*, %struct.vm_area_struct** %4, align 8
  %34 = icmp ne %struct.vm_area_struct* %33, null
  br i1 %34, label %35, label %42

35:                                               ; preds = %32
  %36 = load %struct.vm_area_struct*, %struct.vm_area_struct** %4, align 8
  %37 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = getelementptr inbounds %struct.mmu_notifier_range, %struct.mmu_notifier_range* %7, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = icmp slt i64 %38, %40
  br label %42

42:                                               ; preds = %35, %32
  %43 = phi i1 [ false, %32 ], [ %41, %35 ]
  br i1 %43, label %44, label %54

44:                                               ; preds = %42
  %45 = load %struct.vm_area_struct*, %struct.vm_area_struct** %4, align 8
  %46 = load i64, i64* %5, align 8
  %47 = getelementptr inbounds %struct.mmu_notifier_range, %struct.mmu_notifier_range* %7, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = call i32 @unmap_single_vma(%struct.mmu_gather* %8, %struct.vm_area_struct* %45, i64 %46, i64 %48, i32* null)
  br label %50

50:                                               ; preds = %44
  %51 = load %struct.vm_area_struct*, %struct.vm_area_struct** %4, align 8
  %52 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %51, i32 0, i32 1
  %53 = load %struct.vm_area_struct*, %struct.vm_area_struct** %52, align 8
  store %struct.vm_area_struct* %53, %struct.vm_area_struct** %4, align 8
  br label %32

54:                                               ; preds = %42
  %55 = call i32 @mmu_notifier_invalidate_range_end(%struct.mmu_notifier_range* %7)
  %56 = load i64, i64* %5, align 8
  %57 = getelementptr inbounds %struct.mmu_notifier_range, %struct.mmu_notifier_range* %7, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = call i32 @tlb_finish_mmu(%struct.mmu_gather* %8, i64 %56, i64 %58)
  ret void
}

declare dso_local i32 @lru_add_drain(...) #1

declare dso_local i32 @mmu_notifier_range_init(%struct.mmu_notifier_range*, i32, i32, %struct.vm_area_struct*, i32, i64, i64) #1

declare dso_local i32 @tlb_gather_mmu(%struct.mmu_gather*, i32, i64, i64) #1

declare dso_local i32 @update_hiwater_rss(i32) #1

declare dso_local i32 @mmu_notifier_invalidate_range_start(%struct.mmu_notifier_range*) #1

declare dso_local i32 @unmap_single_vma(%struct.mmu_gather*, %struct.vm_area_struct*, i64, i64, i32*) #1

declare dso_local i32 @mmu_notifier_invalidate_range_end(%struct.mmu_notifier_range*) #1

declare dso_local i32 @tlb_finish_mmu(%struct.mmu_gather*, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
