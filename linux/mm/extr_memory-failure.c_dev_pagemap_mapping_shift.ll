; ModuleID = '/home/carl/AnghaBench/linux/mm/extr_memory-failure.c_dev_pagemap_mapping_shift.c'
source_filename = "/home/carl/AnghaBench/linux/mm/extr_memory-failure.c_dev_pagemap_mapping_shift.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.page = type { i32 }
%struct.vm_area_struct = type { i32 }

@PUD_SHIFT = common dso_local global i64 0, align 8
@PMD_SHIFT = common dso_local global i64 0, align 8
@PAGE_SHIFT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.page*, %struct.vm_area_struct*)* @dev_pagemap_mapping_shift to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @dev_pagemap_mapping_shift(%struct.page* %0, %struct.vm_area_struct* %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.page*, align 8
  %5 = alloca %struct.vm_area_struct*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  store %struct.page* %0, %struct.page** %4, align 8
  store %struct.vm_area_struct* %1, %struct.vm_area_struct** %5, align 8
  %12 = load %struct.page*, %struct.page** %4, align 8
  %13 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %14 = call i64 @vma_address(%struct.page* %12, %struct.vm_area_struct* %13)
  store i64 %14, i64* %6, align 8
  %15 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %16 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load i64, i64* %6, align 8
  %19 = call i32* @pgd_offset(i32 %17, i64 %18)
  store i32* %19, i32** %7, align 8
  %20 = load i32*, i32** %7, align 8
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @pgd_present(i32 %21)
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %25, label %24

24:                                               ; preds = %2
  store i64 0, i64* %3, align 8
  br label %83

25:                                               ; preds = %2
  %26 = load i32*, i32** %7, align 8
  %27 = load i64, i64* %6, align 8
  %28 = call i32* @p4d_offset(i32* %26, i64 %27)
  store i32* %28, i32** %8, align 8
  %29 = load i32*, i32** %8, align 8
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @p4d_present(i32 %30)
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %34, label %33

33:                                               ; preds = %25
  store i64 0, i64* %3, align 8
  br label %83

34:                                               ; preds = %25
  %35 = load i32*, i32** %8, align 8
  %36 = load i64, i64* %6, align 8
  %37 = call i32* @pud_offset(i32* %35, i64 %36)
  store i32* %37, i32** %9, align 8
  %38 = load i32*, i32** %9, align 8
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @pud_present(i32 %39)
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %43, label %42

42:                                               ; preds = %34
  store i64 0, i64* %3, align 8
  br label %83

43:                                               ; preds = %34
  %44 = load i32*, i32** %9, align 8
  %45 = load i32, i32* %44, align 4
  %46 = call i64 @pud_devmap(i32 %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %50

48:                                               ; preds = %43
  %49 = load i64, i64* @PUD_SHIFT, align 8
  store i64 %49, i64* %3, align 8
  br label %83

50:                                               ; preds = %43
  %51 = load i32*, i32** %9, align 8
  %52 = load i64, i64* %6, align 8
  %53 = call i32* @pmd_offset(i32* %51, i64 %52)
  store i32* %53, i32** %10, align 8
  %54 = load i32*, i32** %10, align 8
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @pmd_present(i32 %55)
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %59, label %58

58:                                               ; preds = %50
  store i64 0, i64* %3, align 8
  br label %83

59:                                               ; preds = %50
  %60 = load i32*, i32** %10, align 8
  %61 = load i32, i32* %60, align 4
  %62 = call i64 @pmd_devmap(i32 %61)
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %66

64:                                               ; preds = %59
  %65 = load i64, i64* @PMD_SHIFT, align 8
  store i64 %65, i64* %3, align 8
  br label %83

66:                                               ; preds = %59
  %67 = load i32*, i32** %10, align 8
  %68 = load i64, i64* %6, align 8
  %69 = call i32* @pte_offset_map(i32* %67, i64 %68)
  store i32* %69, i32** %11, align 8
  %70 = load i32*, i32** %11, align 8
  %71 = load i32, i32* %70, align 4
  %72 = call i32 @pte_present(i32 %71)
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %75, label %74

74:                                               ; preds = %66
  store i64 0, i64* %3, align 8
  br label %83

75:                                               ; preds = %66
  %76 = load i32*, i32** %11, align 8
  %77 = load i32, i32* %76, align 4
  %78 = call i64 @pte_devmap(i32 %77)
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %82

80:                                               ; preds = %75
  %81 = load i64, i64* @PAGE_SHIFT, align 8
  store i64 %81, i64* %3, align 8
  br label %83

82:                                               ; preds = %75
  store i64 0, i64* %3, align 8
  br label %83

83:                                               ; preds = %82, %80, %74, %64, %58, %48, %42, %33, %24
  %84 = load i64, i64* %3, align 8
  ret i64 %84
}

declare dso_local i64 @vma_address(%struct.page*, %struct.vm_area_struct*) #1

declare dso_local i32* @pgd_offset(i32, i64) #1

declare dso_local i32 @pgd_present(i32) #1

declare dso_local i32* @p4d_offset(i32*, i64) #1

declare dso_local i32 @p4d_present(i32) #1

declare dso_local i32* @pud_offset(i32*, i64) #1

declare dso_local i32 @pud_present(i32) #1

declare dso_local i64 @pud_devmap(i32) #1

declare dso_local i32* @pmd_offset(i32*, i64) #1

declare dso_local i32 @pmd_present(i32) #1

declare dso_local i64 @pmd_devmap(i32) #1

declare dso_local i32* @pte_offset_map(i32*, i64) #1

declare dso_local i32 @pte_present(i32) #1

declare dso_local i64 @pte_devmap(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
