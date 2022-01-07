; ModuleID = '/home/carl/AnghaBench/linux/mm/extr_memory.c_unmap_vmas.c'
source_filename = "/home/carl/AnghaBench/linux/mm/extr_memory.c_unmap_vmas.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mmu_gather = type { i32 }
%struct.vm_area_struct = type { i64, %struct.vm_area_struct*, i32 }
%struct.mmu_notifier_range = type { i32 }

@MMU_NOTIFY_UNMAP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @unmap_vmas(%struct.mmu_gather* %0, %struct.vm_area_struct* %1, i64 %2, i64 %3) #0 {
  %5 = alloca %struct.mmu_gather*, align 8
  %6 = alloca %struct.vm_area_struct*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.mmu_notifier_range, align 4
  store %struct.mmu_gather* %0, %struct.mmu_gather** %5, align 8
  store %struct.vm_area_struct* %1, %struct.vm_area_struct** %6, align 8
  store i64 %2, i64* %7, align 8
  store i64 %3, i64* %8, align 8
  %10 = load i32, i32* @MMU_NOTIFY_UNMAP, align 4
  %11 = load %struct.vm_area_struct*, %struct.vm_area_struct** %6, align 8
  %12 = load %struct.vm_area_struct*, %struct.vm_area_struct** %6, align 8
  %13 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %12, i32 0, i32 2
  %14 = load i32, i32* %13, align 8
  %15 = load i64, i64* %7, align 8
  %16 = load i64, i64* %8, align 8
  %17 = call i32 @mmu_notifier_range_init(%struct.mmu_notifier_range* %9, i32 %10, i32 0, %struct.vm_area_struct* %11, i32 %14, i64 %15, i64 %16)
  %18 = call i32 @mmu_notifier_invalidate_range_start(%struct.mmu_notifier_range* %9)
  br label %19

19:                                               ; preds = %36, %4
  %20 = load %struct.vm_area_struct*, %struct.vm_area_struct** %6, align 8
  %21 = icmp ne %struct.vm_area_struct* %20, null
  br i1 %21, label %22, label %28

22:                                               ; preds = %19
  %23 = load %struct.vm_area_struct*, %struct.vm_area_struct** %6, align 8
  %24 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* %8, align 8
  %27 = icmp ult i64 %25, %26
  br label %28

28:                                               ; preds = %22, %19
  %29 = phi i1 [ false, %19 ], [ %27, %22 ]
  br i1 %29, label %30, label %40

30:                                               ; preds = %28
  %31 = load %struct.mmu_gather*, %struct.mmu_gather** %5, align 8
  %32 = load %struct.vm_area_struct*, %struct.vm_area_struct** %6, align 8
  %33 = load i64, i64* %7, align 8
  %34 = load i64, i64* %8, align 8
  %35 = call i32 @unmap_single_vma(%struct.mmu_gather* %31, %struct.vm_area_struct* %32, i64 %33, i64 %34, i32* null)
  br label %36

36:                                               ; preds = %30
  %37 = load %struct.vm_area_struct*, %struct.vm_area_struct** %6, align 8
  %38 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %37, i32 0, i32 1
  %39 = load %struct.vm_area_struct*, %struct.vm_area_struct** %38, align 8
  store %struct.vm_area_struct* %39, %struct.vm_area_struct** %6, align 8
  br label %19

40:                                               ; preds = %28
  %41 = call i32 @mmu_notifier_invalidate_range_end(%struct.mmu_notifier_range* %9)
  ret void
}

declare dso_local i32 @mmu_notifier_range_init(%struct.mmu_notifier_range*, i32, i32, %struct.vm_area_struct*, i32, i64, i64) #1

declare dso_local i32 @mmu_notifier_invalidate_range_start(%struct.mmu_notifier_range*) #1

declare dso_local i32 @unmap_single_vma(%struct.mmu_gather*, %struct.vm_area_struct*, i64, i64, i32*) #1

declare dso_local i32 @mmu_notifier_invalidate_range_end(%struct.mmu_notifier_range*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
