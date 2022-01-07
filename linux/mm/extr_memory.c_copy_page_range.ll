; ModuleID = '/home/carl/AnghaBench/linux/mm/extr_memory.c_copy_page_range.c'
source_filename = "/home/carl/AnghaBench/linux/mm/extr_memory.c_copy_page_range.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mm_struct = type { i32 }
%struct.vm_area_struct = type { i64, i64, i32, i32 }
%struct.mmu_notifier_range = type { i32 }

@VM_HUGETLB = common dso_local global i32 0, align 4
@VM_PFNMAP = common dso_local global i32 0, align 4
@VM_MIXEDMAP = common dso_local global i32 0, align 4
@MMU_NOTIFY_PROTECTION_PAGE = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @copy_page_range(%struct.mm_struct* %0, %struct.mm_struct* %1, %struct.vm_area_struct* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.mm_struct*, align 8
  %6 = alloca %struct.mm_struct*, align 8
  %7 = alloca %struct.vm_area_struct*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca %struct.mmu_notifier_range, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.mm_struct* %0, %struct.mm_struct** %5, align 8
  store %struct.mm_struct* %1, %struct.mm_struct** %6, align 8
  store %struct.vm_area_struct* %2, %struct.vm_area_struct** %7, align 8
  %16 = load %struct.vm_area_struct*, %struct.vm_area_struct** %7, align 8
  %17 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  store i64 %18, i64* %11, align 8
  %19 = load %struct.vm_area_struct*, %struct.vm_area_struct** %7, align 8
  %20 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %19, i32 0, i32 1
  %21 = load i64, i64* %20, align 8
  store i64 %21, i64* %12, align 8
  %22 = load %struct.vm_area_struct*, %struct.vm_area_struct** %7, align 8
  %23 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %22, i32 0, i32 2
  %24 = load i32, i32* %23, align 8
  %25 = load i32, i32* @VM_HUGETLB, align 4
  %26 = load i32, i32* @VM_PFNMAP, align 4
  %27 = or i32 %25, %26
  %28 = load i32, i32* @VM_MIXEDMAP, align 4
  %29 = or i32 %27, %28
  %30 = and i32 %24, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %38, label %32

32:                                               ; preds = %3
  %33 = load %struct.vm_area_struct*, %struct.vm_area_struct** %7, align 8
  %34 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %33, i32 0, i32 3
  %35 = load i32, i32* %34, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %38, label %37

37:                                               ; preds = %32
  store i32 0, i32* %4, align 4
  br label %124

38:                                               ; preds = %32, %3
  %39 = load %struct.vm_area_struct*, %struct.vm_area_struct** %7, align 8
  %40 = call i64 @is_vm_hugetlb_page(%struct.vm_area_struct* %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %47

42:                                               ; preds = %38
  %43 = load %struct.mm_struct*, %struct.mm_struct** %5, align 8
  %44 = load %struct.mm_struct*, %struct.mm_struct** %6, align 8
  %45 = load %struct.vm_area_struct*, %struct.vm_area_struct** %7, align 8
  %46 = call i32 @copy_hugetlb_page_range(%struct.mm_struct* %43, %struct.mm_struct* %44, %struct.vm_area_struct* %45)
  store i32 %46, i32* %4, align 4
  br label %124

47:                                               ; preds = %38
  %48 = load %struct.vm_area_struct*, %struct.vm_area_struct** %7, align 8
  %49 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %48, i32 0, i32 2
  %50 = load i32, i32* %49, align 8
  %51 = load i32, i32* @VM_PFNMAP, align 4
  %52 = and i32 %50, %51
  %53 = call i64 @unlikely(i32 %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %63

55:                                               ; preds = %47
  %56 = load %struct.vm_area_struct*, %struct.vm_area_struct** %7, align 8
  %57 = call i32 @track_pfn_copy(%struct.vm_area_struct* %56)
  store i32 %57, i32* %15, align 4
  %58 = load i32, i32* %15, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %62

60:                                               ; preds = %55
  %61 = load i32, i32* %15, align 4
  store i32 %61, i32* %4, align 4
  br label %124

62:                                               ; preds = %55
  br label %63

63:                                               ; preds = %62, %47
  %64 = load %struct.vm_area_struct*, %struct.vm_area_struct** %7, align 8
  %65 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %64, i32 0, i32 2
  %66 = load i32, i32* %65, align 8
  %67 = call i32 @is_cow_mapping(i32 %66)
  store i32 %67, i32* %14, align 4
  %68 = load i32, i32* %14, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %78

70:                                               ; preds = %63
  %71 = load i32, i32* @MMU_NOTIFY_PROTECTION_PAGE, align 4
  %72 = load %struct.vm_area_struct*, %struct.vm_area_struct** %7, align 8
  %73 = load %struct.mm_struct*, %struct.mm_struct** %6, align 8
  %74 = load i64, i64* %11, align 8
  %75 = load i64, i64* %12, align 8
  %76 = call i32 @mmu_notifier_range_init(%struct.mmu_notifier_range* %13, i32 %71, i32 0, %struct.vm_area_struct* %72, %struct.mm_struct* %73, i64 %74, i64 %75)
  %77 = call i32 @mmu_notifier_invalidate_range_start(%struct.mmu_notifier_range* %13)
  br label %78

78:                                               ; preds = %70, %63
  store i32 0, i32* %15, align 4
  %79 = load %struct.mm_struct*, %struct.mm_struct** %5, align 8
  %80 = load i64, i64* %11, align 8
  %81 = call i32* @pgd_offset(%struct.mm_struct* %79, i64 %80)
  store i32* %81, i32** %9, align 8
  %82 = load %struct.mm_struct*, %struct.mm_struct** %6, align 8
  %83 = load i64, i64* %11, align 8
  %84 = call i32* @pgd_offset(%struct.mm_struct* %82, i64 %83)
  store i32* %84, i32** %8, align 8
  br label %85

85:                                               ; preds = %108, %78
  %86 = load i64, i64* %11, align 8
  %87 = load i64, i64* %12, align 8
  %88 = call i64 @pgd_addr_end(i64 %86, i64 %87)
  store i64 %88, i64* %10, align 8
  %89 = load i32*, i32** %8, align 8
  %90 = call i64 @pgd_none_or_clear_bad(i32* %89)
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %92, label %93

92:                                               ; preds = %85
  br label %108

93:                                               ; preds = %85
  %94 = load %struct.mm_struct*, %struct.mm_struct** %5, align 8
  %95 = load %struct.mm_struct*, %struct.mm_struct** %6, align 8
  %96 = load i32*, i32** %9, align 8
  %97 = load i32*, i32** %8, align 8
  %98 = load %struct.vm_area_struct*, %struct.vm_area_struct** %7, align 8
  %99 = load i64, i64* %11, align 8
  %100 = load i64, i64* %10, align 8
  %101 = call i32 @copy_p4d_range(%struct.mm_struct* %94, %struct.mm_struct* %95, i32* %96, i32* %97, %struct.vm_area_struct* %98, i64 %99, i64 %100)
  %102 = call i64 @unlikely(i32 %101)
  %103 = icmp ne i64 %102, 0
  br i1 %103, label %104, label %107

104:                                              ; preds = %93
  %105 = load i32, i32* @ENOMEM, align 4
  %106 = sub nsw i32 0, %105
  store i32 %106, i32* %15, align 4
  br label %117

107:                                              ; preds = %93
  br label %108

108:                                              ; preds = %107, %92
  %109 = load i32*, i32** %9, align 8
  %110 = getelementptr inbounds i32, i32* %109, i32 1
  store i32* %110, i32** %9, align 8
  %111 = load i32*, i32** %8, align 8
  %112 = getelementptr inbounds i32, i32* %111, i32 1
  store i32* %112, i32** %8, align 8
  %113 = load i64, i64* %10, align 8
  store i64 %113, i64* %11, align 8
  %114 = load i64, i64* %11, align 8
  %115 = load i64, i64* %12, align 8
  %116 = icmp ne i64 %114, %115
  br i1 %116, label %85, label %117

117:                                              ; preds = %108, %104
  %118 = load i32, i32* %14, align 4
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %120, label %122

120:                                              ; preds = %117
  %121 = call i32 @mmu_notifier_invalidate_range_end(%struct.mmu_notifier_range* %13)
  br label %122

122:                                              ; preds = %120, %117
  %123 = load i32, i32* %15, align 4
  store i32 %123, i32* %4, align 4
  br label %124

124:                                              ; preds = %122, %60, %42, %37
  %125 = load i32, i32* %4, align 4
  ret i32 %125
}

declare dso_local i64 @is_vm_hugetlb_page(%struct.vm_area_struct*) #1

declare dso_local i32 @copy_hugetlb_page_range(%struct.mm_struct*, %struct.mm_struct*, %struct.vm_area_struct*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @track_pfn_copy(%struct.vm_area_struct*) #1

declare dso_local i32 @is_cow_mapping(i32) #1

declare dso_local i32 @mmu_notifier_range_init(%struct.mmu_notifier_range*, i32, i32, %struct.vm_area_struct*, %struct.mm_struct*, i64, i64) #1

declare dso_local i32 @mmu_notifier_invalidate_range_start(%struct.mmu_notifier_range*) #1

declare dso_local i32* @pgd_offset(%struct.mm_struct*, i64) #1

declare dso_local i64 @pgd_addr_end(i64, i64) #1

declare dso_local i64 @pgd_none_or_clear_bad(i32*) #1

declare dso_local i32 @copy_p4d_range(%struct.mm_struct*, %struct.mm_struct*, i32*, i32*, %struct.vm_area_struct*, i64, i64) #1

declare dso_local i32 @mmu_notifier_invalidate_range_end(%struct.mmu_notifier_range*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
