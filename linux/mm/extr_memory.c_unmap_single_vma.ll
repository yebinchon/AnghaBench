; ModuleID = '/home/carl/AnghaBench/linux/mm/extr_memory.c_unmap_single_vma.c'
source_filename = "/home/carl/AnghaBench/linux/mm/extr_memory.c_unmap_single_vma.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mmu_gather = type { i32 }
%struct.vm_area_struct = type { i64, i64, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.zap_details = type { i32 }

@VM_PFNMAP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mmu_gather*, %struct.vm_area_struct*, i64, i64, %struct.zap_details*)* @unmap_single_vma to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @unmap_single_vma(%struct.mmu_gather* %0, %struct.vm_area_struct* %1, i64 %2, i64 %3, %struct.zap_details* %4) #0 {
  %6 = alloca %struct.mmu_gather*, align 8
  %7 = alloca %struct.vm_area_struct*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.zap_details*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  store %struct.mmu_gather* %0, %struct.mmu_gather** %6, align 8
  store %struct.vm_area_struct* %1, %struct.vm_area_struct** %7, align 8
  store i64 %2, i64* %8, align 8
  store i64 %3, i64* %9, align 8
  store %struct.zap_details* %4, %struct.zap_details** %10, align 8
  %13 = load %struct.vm_area_struct*, %struct.vm_area_struct** %7, align 8
  %14 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* %8, align 8
  %17 = call i64 @max(i64 %15, i64 %16)
  store i64 %17, i64* %11, align 8
  %18 = load i64, i64* %11, align 8
  %19 = load %struct.vm_area_struct*, %struct.vm_area_struct** %7, align 8
  %20 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %19, i32 0, i32 1
  %21 = load i64, i64* %20, align 8
  %22 = icmp uge i64 %18, %21
  br i1 %22, label %23, label %24

23:                                               ; preds = %5
  br label %98

24:                                               ; preds = %5
  %25 = load %struct.vm_area_struct*, %struct.vm_area_struct** %7, align 8
  %26 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %25, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* %9, align 8
  %29 = call i64 @min(i64 %27, i64 %28)
  store i64 %29, i64* %12, align 8
  %30 = load i64, i64* %12, align 8
  %31 = load %struct.vm_area_struct*, %struct.vm_area_struct** %7, align 8
  %32 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = icmp ule i64 %30, %33
  br i1 %34, label %35, label %36

35:                                               ; preds = %24
  br label %98

36:                                               ; preds = %24
  %37 = load %struct.vm_area_struct*, %struct.vm_area_struct** %7, align 8
  %38 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %37, i32 0, i32 3
  %39 = load %struct.TYPE_2__*, %struct.TYPE_2__** %38, align 8
  %40 = icmp ne %struct.TYPE_2__* %39, null
  br i1 %40, label %41, label %46

41:                                               ; preds = %36
  %42 = load %struct.vm_area_struct*, %struct.vm_area_struct** %7, align 8
  %43 = load i64, i64* %11, align 8
  %44 = load i64, i64* %12, align 8
  %45 = call i32 @uprobe_munmap(%struct.vm_area_struct* %42, i64 %43, i64 %44)
  br label %46

46:                                               ; preds = %41, %36
  %47 = load %struct.vm_area_struct*, %struct.vm_area_struct** %7, align 8
  %48 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %47, i32 0, i32 2
  %49 = load i32, i32* %48, align 8
  %50 = load i32, i32* @VM_PFNMAP, align 4
  %51 = and i32 %49, %50
  %52 = call i64 @unlikely(i32 %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %57

54:                                               ; preds = %46
  %55 = load %struct.vm_area_struct*, %struct.vm_area_struct** %7, align 8
  %56 = call i32 @untrack_pfn(%struct.vm_area_struct* %55, i32 0, i32 0)
  br label %57

57:                                               ; preds = %54, %46
  %58 = load i64, i64* %11, align 8
  %59 = load i64, i64* %12, align 8
  %60 = icmp ne i64 %58, %59
  br i1 %60, label %61, label %98

61:                                               ; preds = %57
  %62 = load %struct.vm_area_struct*, %struct.vm_area_struct** %7, align 8
  %63 = call i32 @is_vm_hugetlb_page(%struct.vm_area_struct* %62)
  %64 = call i64 @unlikely(i32 %63)
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %90

66:                                               ; preds = %61
  %67 = load %struct.vm_area_struct*, %struct.vm_area_struct** %7, align 8
  %68 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %67, i32 0, i32 3
  %69 = load %struct.TYPE_2__*, %struct.TYPE_2__** %68, align 8
  %70 = icmp ne %struct.TYPE_2__* %69, null
  br i1 %70, label %71, label %89

71:                                               ; preds = %66
  %72 = load %struct.vm_area_struct*, %struct.vm_area_struct** %7, align 8
  %73 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %72, i32 0, i32 3
  %74 = load %struct.TYPE_2__*, %struct.TYPE_2__** %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = call i32 @i_mmap_lock_write(i32 %76)
  %78 = load %struct.mmu_gather*, %struct.mmu_gather** %6, align 8
  %79 = load %struct.vm_area_struct*, %struct.vm_area_struct** %7, align 8
  %80 = load i64, i64* %11, align 8
  %81 = load i64, i64* %12, align 8
  %82 = call i32 @__unmap_hugepage_range_final(%struct.mmu_gather* %78, %struct.vm_area_struct* %79, i64 %80, i64 %81, i32* null)
  %83 = load %struct.vm_area_struct*, %struct.vm_area_struct** %7, align 8
  %84 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %83, i32 0, i32 3
  %85 = load %struct.TYPE_2__*, %struct.TYPE_2__** %84, align 8
  %86 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = call i32 @i_mmap_unlock_write(i32 %87)
  br label %89

89:                                               ; preds = %71, %66
  br label %97

90:                                               ; preds = %61
  %91 = load %struct.mmu_gather*, %struct.mmu_gather** %6, align 8
  %92 = load %struct.vm_area_struct*, %struct.vm_area_struct** %7, align 8
  %93 = load i64, i64* %11, align 8
  %94 = load i64, i64* %12, align 8
  %95 = load %struct.zap_details*, %struct.zap_details** %10, align 8
  %96 = call i32 @unmap_page_range(%struct.mmu_gather* %91, %struct.vm_area_struct* %92, i64 %93, i64 %94, %struct.zap_details* %95)
  br label %97

97:                                               ; preds = %90, %89
  br label %98

98:                                               ; preds = %23, %35, %97, %57
  ret void
}

declare dso_local i64 @max(i64, i64) #1

declare dso_local i64 @min(i64, i64) #1

declare dso_local i32 @uprobe_munmap(%struct.vm_area_struct*, i64, i64) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @untrack_pfn(%struct.vm_area_struct*, i32, i32) #1

declare dso_local i32 @is_vm_hugetlb_page(%struct.vm_area_struct*) #1

declare dso_local i32 @i_mmap_lock_write(i32) #1

declare dso_local i32 @__unmap_hugepage_range_final(%struct.mmu_gather*, %struct.vm_area_struct*, i64, i64, i32*) #1

declare dso_local i32 @i_mmap_unlock_write(i32) #1

declare dso_local i32 @unmap_page_range(%struct.mmu_gather*, %struct.vm_area_struct*, i64, i64, %struct.zap_details*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
