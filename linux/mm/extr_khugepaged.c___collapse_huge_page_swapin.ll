; ModuleID = '/home/carl/AnghaBench/linux/mm/extr_khugepaged.c___collapse_huge_page_swapin.c'
source_filename = "/home/carl/AnghaBench/linux/mm/extr_khugepaged.c___collapse_huge_page_swapin.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mm_struct = type { i32 }
%struct.vm_area_struct = type { i32 }
%struct.vm_fault = type { i64, i32*, %struct.vm_area_struct*, i32, i32, i32*, i32 }

@FAULT_FLAG_ALLOW_RETRY = common dso_local global i32 0, align 4
@HPAGE_PMD_NR = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@VM_FAULT_RETRY = common dso_local global i32 0, align 4
@VM_FAULT_ERROR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mm_struct*, %struct.vm_area_struct*, i64, i32*, i32)* @__collapse_huge_page_swapin to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__collapse_huge_page_swapin(%struct.mm_struct* %0, %struct.vm_area_struct* %1, i64 %2, i32* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.mm_struct*, align 8
  %8 = alloca %struct.vm_area_struct*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.vm_fault, align 8
  store %struct.mm_struct* %0, %struct.mm_struct** %7, align 8
  store %struct.vm_area_struct* %1, %struct.vm_area_struct** %8, align 8
  store i64 %2, i64* %9, align 8
  store i32* %3, i32** %10, align 8
  store i32 %4, i32* %11, align 4
  store i32 0, i32* %12, align 4
  store i32 0, i32* %13, align 4
  %15 = getelementptr inbounds %struct.vm_fault, %struct.vm_fault* %14, i32 0, i32 0
  %16 = load i64, i64* %9, align 8
  store i64 %16, i64* %15, align 8
  %17 = getelementptr inbounds %struct.vm_fault, %struct.vm_fault* %14, i32 0, i32 1
  store i32* null, i32** %17, align 8
  %18 = getelementptr inbounds %struct.vm_fault, %struct.vm_fault* %14, i32 0, i32 2
  %19 = load %struct.vm_area_struct*, %struct.vm_area_struct** %8, align 8
  store %struct.vm_area_struct* %19, %struct.vm_area_struct** %18, align 8
  %20 = getelementptr inbounds %struct.vm_fault, %struct.vm_fault* %14, i32 0, i32 3
  store i32 0, i32* %20, align 8
  %21 = getelementptr inbounds %struct.vm_fault, %struct.vm_fault* %14, i32 0, i32 4
  %22 = load %struct.vm_area_struct*, %struct.vm_area_struct** %8, align 8
  %23 = load i64, i64* %9, align 8
  %24 = call i32 @linear_page_index(%struct.vm_area_struct* %22, i64 %23)
  store i32 %24, i32* %21, align 4
  %25 = getelementptr inbounds %struct.vm_fault, %struct.vm_fault* %14, i32 0, i32 5
  %26 = load i32*, i32** %10, align 8
  store i32* %26, i32** %25, align 8
  %27 = getelementptr inbounds %struct.vm_fault, %struct.vm_fault* %14, i32 0, i32 6
  %28 = load i32, i32* @FAULT_FLAG_ALLOW_RETRY, align 4
  store i32 %28, i32* %27, align 8
  %29 = load i32, i32* %11, align 4
  %30 = load i32, i32* @HPAGE_PMD_NR, align 4
  %31 = sdiv i32 %30, 2
  %32 = icmp slt i32 %29, %31
  br i1 %32, label %33, label %38

33:                                               ; preds = %5
  %34 = load %struct.mm_struct*, %struct.mm_struct** %7, align 8
  %35 = load i32, i32* %12, align 4
  %36 = load i32, i32* %11, align 4
  %37 = call i32 @trace_mm_collapse_huge_page_swapin(%struct.mm_struct* %34, i32 %35, i32 %36, i32 0)
  store i32 0, i32* %6, align 4
  br label %135

38:                                               ; preds = %5
  %39 = load i32*, i32** %10, align 8
  %40 = load i64, i64* %9, align 8
  %41 = call i8* @pte_offset_map(i32* %39, i64 %40)
  %42 = bitcast i8* %41 to i32*
  %43 = getelementptr inbounds %struct.vm_fault, %struct.vm_fault* %14, i32 0, i32 1
  store i32* %42, i32** %43, align 8
  br label %44

44:                                               ; preds = %115, %38
  %45 = getelementptr inbounds %struct.vm_fault, %struct.vm_fault* %14, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = load i64, i64* %9, align 8
  %48 = load i32, i32* @HPAGE_PMD_NR, align 4
  %49 = load i32, i32* @PAGE_SIZE, align 4
  %50 = mul nsw i32 %48, %49
  %51 = sext i32 %50 to i64
  %52 = add i64 %47, %51
  %53 = icmp ult i64 %46, %52
  br i1 %53, label %54, label %124

54:                                               ; preds = %44
  %55 = getelementptr inbounds %struct.vm_fault, %struct.vm_fault* %14, i32 0, i32 1
  %56 = load i32*, i32** %55, align 8
  %57 = load i32, i32* %56, align 4
  %58 = getelementptr inbounds %struct.vm_fault, %struct.vm_fault* %14, i32 0, i32 3
  store i32 %57, i32* %58, align 8
  %59 = getelementptr inbounds %struct.vm_fault, %struct.vm_fault* %14, i32 0, i32 3
  %60 = load i32, i32* %59, align 8
  %61 = call i32 @is_swap_pte(i32 %60)
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %64, label %63

63:                                               ; preds = %54
  br label %115

64:                                               ; preds = %54
  %65 = load i32, i32* %12, align 4
  %66 = add nsw i32 %65, 1
  store i32 %66, i32* %12, align 4
  %67 = call i32 @do_swap_page(%struct.vm_fault* %14)
  store i32 %67, i32* %13, align 4
  %68 = load i32, i32* %13, align 4
  %69 = load i32, i32* @VM_FAULT_RETRY, align 4
  %70 = and i32 %68, %69
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %98

72:                                               ; preds = %64
  %73 = load %struct.mm_struct*, %struct.mm_struct** %7, align 8
  %74 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %73, i32 0, i32 0
  %75 = call i32 @down_read(i32* %74)
  %76 = load %struct.mm_struct*, %struct.mm_struct** %7, align 8
  %77 = load i64, i64* %9, align 8
  %78 = getelementptr inbounds %struct.vm_fault, %struct.vm_fault* %14, i32 0, i32 2
  %79 = call i64 @hugepage_vma_revalidate(%struct.mm_struct* %76, i64 %77, %struct.vm_area_struct** %78)
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %86

81:                                               ; preds = %72
  %82 = load %struct.mm_struct*, %struct.mm_struct** %7, align 8
  %83 = load i32, i32* %12, align 4
  %84 = load i32, i32* %11, align 4
  %85 = call i32 @trace_mm_collapse_huge_page_swapin(%struct.mm_struct* %82, i32 %83, i32 %84, i32 0)
  store i32 0, i32* %6, align 4
  br label %135

86:                                               ; preds = %72
  %87 = load %struct.mm_struct*, %struct.mm_struct** %7, align 8
  %88 = load i64, i64* %9, align 8
  %89 = call i32* @mm_find_pmd(%struct.mm_struct* %87, i64 %88)
  %90 = load i32*, i32** %10, align 8
  %91 = icmp ne i32* %89, %90
  br i1 %91, label %92, label %97

92:                                               ; preds = %86
  %93 = load %struct.mm_struct*, %struct.mm_struct** %7, align 8
  %94 = load i32, i32* %12, align 4
  %95 = load i32, i32* %11, align 4
  %96 = call i32 @trace_mm_collapse_huge_page_swapin(%struct.mm_struct* %93, i32 %94, i32 %95, i32 0)
  store i32 0, i32* %6, align 4
  br label %135

97:                                               ; preds = %86
  br label %98

98:                                               ; preds = %97, %64
  %99 = load i32, i32* %13, align 4
  %100 = load i32, i32* @VM_FAULT_ERROR, align 4
  %101 = and i32 %99, %100
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %108

103:                                              ; preds = %98
  %104 = load %struct.mm_struct*, %struct.mm_struct** %7, align 8
  %105 = load i32, i32* %12, align 4
  %106 = load i32, i32* %11, align 4
  %107 = call i32 @trace_mm_collapse_huge_page_swapin(%struct.mm_struct* %104, i32 %105, i32 %106, i32 0)
  store i32 0, i32* %6, align 4
  br label %135

108:                                              ; preds = %98
  %109 = load i32*, i32** %10, align 8
  %110 = getelementptr inbounds %struct.vm_fault, %struct.vm_fault* %14, i32 0, i32 0
  %111 = load i64, i64* %110, align 8
  %112 = call i8* @pte_offset_map(i32* %109, i64 %111)
  %113 = bitcast i8* %112 to i32*
  %114 = getelementptr inbounds %struct.vm_fault, %struct.vm_fault* %14, i32 0, i32 1
  store i32* %113, i32** %114, align 8
  br label %115

115:                                              ; preds = %108, %63
  %116 = getelementptr inbounds %struct.vm_fault, %struct.vm_fault* %14, i32 0, i32 1
  %117 = load i32*, i32** %116, align 8
  %118 = getelementptr inbounds i32, i32* %117, i32 1
  store i32* %118, i32** %116, align 8
  %119 = load i32, i32* @PAGE_SIZE, align 4
  %120 = sext i32 %119 to i64
  %121 = getelementptr inbounds %struct.vm_fault, %struct.vm_fault* %14, i32 0, i32 0
  %122 = load i64, i64* %121, align 8
  %123 = add i64 %122, %120
  store i64 %123, i64* %121, align 8
  br label %44

124:                                              ; preds = %44
  %125 = getelementptr inbounds %struct.vm_fault, %struct.vm_fault* %14, i32 0, i32 1
  %126 = load i32*, i32** %125, align 8
  %127 = getelementptr inbounds i32, i32* %126, i32 -1
  store i32* %127, i32** %125, align 8
  %128 = getelementptr inbounds %struct.vm_fault, %struct.vm_fault* %14, i32 0, i32 1
  %129 = load i32*, i32** %128, align 8
  %130 = call i32 @pte_unmap(i32* %129)
  %131 = load %struct.mm_struct*, %struct.mm_struct** %7, align 8
  %132 = load i32, i32* %12, align 4
  %133 = load i32, i32* %11, align 4
  %134 = call i32 @trace_mm_collapse_huge_page_swapin(%struct.mm_struct* %131, i32 %132, i32 %133, i32 1)
  store i32 1, i32* %6, align 4
  br label %135

135:                                              ; preds = %124, %103, %92, %81, %33
  %136 = load i32, i32* %6, align 4
  ret i32 %136
}

declare dso_local i32 @linear_page_index(%struct.vm_area_struct*, i64) #1

declare dso_local i32 @trace_mm_collapse_huge_page_swapin(%struct.mm_struct*, i32, i32, i32) #1

declare dso_local i8* @pte_offset_map(i32*, i64) #1

declare dso_local i32 @is_swap_pte(i32) #1

declare dso_local i32 @do_swap_page(%struct.vm_fault*) #1

declare dso_local i32 @down_read(i32*) #1

declare dso_local i64 @hugepage_vma_revalidate(%struct.mm_struct*, i64, %struct.vm_area_struct**) #1

declare dso_local i32* @mm_find_pmd(%struct.mm_struct*, i64) #1

declare dso_local i32 @pte_unmap(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
