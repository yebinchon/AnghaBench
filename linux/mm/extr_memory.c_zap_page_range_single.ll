; ModuleID = '/home/carl/AnghaBench/linux/mm/extr_memory.c_zap_page_range_single.c'
source_filename = "/home/carl/AnghaBench/linux/mm/extr_memory.c_zap_page_range_single.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vm_area_struct = type { i32 }
%struct.zap_details = type { i32 }
%struct.mmu_notifier_range = type { i32 }
%struct.mmu_gather = type { i32 }

@MMU_NOTIFY_CLEAR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vm_area_struct*, i64, i64, %struct.zap_details*)* @zap_page_range_single to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @zap_page_range_single(%struct.vm_area_struct* %0, i64 %1, i64 %2, %struct.zap_details* %3) #0 {
  %5 = alloca %struct.vm_area_struct*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.zap_details*, align 8
  %9 = alloca %struct.mmu_notifier_range, align 4
  %10 = alloca %struct.mmu_gather, align 4
  store %struct.vm_area_struct* %0, %struct.vm_area_struct** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  store %struct.zap_details* %3, %struct.zap_details** %8, align 8
  %11 = call i32 (...) @lru_add_drain()
  %12 = load i32, i32* @MMU_NOTIFY_CLEAR, align 4
  %13 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %14 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %15 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load i64, i64* %6, align 8
  %18 = load i64, i64* %6, align 8
  %19 = load i64, i64* %7, align 8
  %20 = add i64 %18, %19
  %21 = call i32 @mmu_notifier_range_init(%struct.mmu_notifier_range* %9, i32 %12, i32 0, %struct.vm_area_struct* %13, i32 %16, i64 %17, i64 %20)
  %22 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %23 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load i64, i64* %6, align 8
  %26 = getelementptr inbounds %struct.mmu_notifier_range, %struct.mmu_notifier_range* %9, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @tlb_gather_mmu(%struct.mmu_gather* %10, i32 %24, i64 %25, i32 %27)
  %29 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %30 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @update_hiwater_rss(i32 %31)
  %33 = call i32 @mmu_notifier_invalidate_range_start(%struct.mmu_notifier_range* %9)
  %34 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %35 = load i64, i64* %6, align 8
  %36 = getelementptr inbounds %struct.mmu_notifier_range, %struct.mmu_notifier_range* %9, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.zap_details*, %struct.zap_details** %8, align 8
  %39 = call i32 @unmap_single_vma(%struct.mmu_gather* %10, %struct.vm_area_struct* %34, i64 %35, i32 %37, %struct.zap_details* %38)
  %40 = call i32 @mmu_notifier_invalidate_range_end(%struct.mmu_notifier_range* %9)
  %41 = load i64, i64* %6, align 8
  %42 = getelementptr inbounds %struct.mmu_notifier_range, %struct.mmu_notifier_range* %9, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @tlb_finish_mmu(%struct.mmu_gather* %10, i64 %41, i32 %43)
  ret void
}

declare dso_local i32 @lru_add_drain(...) #1

declare dso_local i32 @mmu_notifier_range_init(%struct.mmu_notifier_range*, i32, i32, %struct.vm_area_struct*, i32, i64, i64) #1

declare dso_local i32 @tlb_gather_mmu(%struct.mmu_gather*, i32, i64, i32) #1

declare dso_local i32 @update_hiwater_rss(i32) #1

declare dso_local i32 @mmu_notifier_invalidate_range_start(%struct.mmu_notifier_range*) #1

declare dso_local i32 @unmap_single_vma(%struct.mmu_gather*, %struct.vm_area_struct*, i64, i32, %struct.zap_details*) #1

declare dso_local i32 @mmu_notifier_invalidate_range_end(%struct.mmu_notifier_range*) #1

declare dso_local i32 @tlb_finish_mmu(%struct.mmu_gather*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
