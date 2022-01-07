; ModuleID = '/home/carl/AnghaBench/linux/mm/extr_khugepaged.c_hugepage_vma_revalidate.c'
source_filename = "/home/carl/AnghaBench/linux/mm/extr_khugepaged.c_hugepage_vma_revalidate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mm_struct = type { i32 }
%struct.vm_area_struct = type { i64, i64, i32 }

@SCAN_ANY_PROCESS = common dso_local global i32 0, align 4
@SCAN_VMA_NULL = common dso_local global i32 0, align 4
@HPAGE_PMD_MASK = common dso_local global i64 0, align 8
@HPAGE_PMD_SIZE = common dso_local global i64 0, align 8
@SCAN_ADDRESS_RANGE = common dso_local global i32 0, align 4
@SCAN_VMA_CHECK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mm_struct*, i64, %struct.vm_area_struct**)* @hugepage_vma_revalidate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hugepage_vma_revalidate(%struct.mm_struct* %0, i64 %1, %struct.vm_area_struct** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.mm_struct*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.vm_area_struct**, align 8
  %8 = alloca %struct.vm_area_struct*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  store %struct.mm_struct* %0, %struct.mm_struct** %5, align 8
  store i64 %1, i64* %6, align 8
  store %struct.vm_area_struct** %2, %struct.vm_area_struct*** %7, align 8
  %11 = load %struct.mm_struct*, %struct.mm_struct** %5, align 8
  %12 = call i32 @khugepaged_test_exit(%struct.mm_struct* %11)
  %13 = call i64 @unlikely(i32 %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %3
  %16 = load i32, i32* @SCAN_ANY_PROCESS, align 4
  store i32 %16, i32* %4, align 4
  br label %61

17:                                               ; preds = %3
  %18 = load %struct.mm_struct*, %struct.mm_struct** %5, align 8
  %19 = load i64, i64* %6, align 8
  %20 = call %struct.vm_area_struct* @find_vma(%struct.mm_struct* %18, i64 %19)
  store %struct.vm_area_struct* %20, %struct.vm_area_struct** %8, align 8
  %21 = load %struct.vm_area_struct**, %struct.vm_area_struct*** %7, align 8
  store %struct.vm_area_struct* %20, %struct.vm_area_struct** %21, align 8
  %22 = load %struct.vm_area_struct*, %struct.vm_area_struct** %8, align 8
  %23 = icmp ne %struct.vm_area_struct* %22, null
  br i1 %23, label %26, label %24

24:                                               ; preds = %17
  %25 = load i32, i32* @SCAN_VMA_NULL, align 4
  store i32 %25, i32* %4, align 4
  br label %61

26:                                               ; preds = %17
  %27 = load %struct.vm_area_struct*, %struct.vm_area_struct** %8, align 8
  %28 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @HPAGE_PMD_MASK, align 8
  %31 = xor i64 %30, -1
  %32 = add i64 %29, %31
  %33 = load i64, i64* @HPAGE_PMD_MASK, align 8
  %34 = and i64 %32, %33
  store i64 %34, i64* %9, align 8
  %35 = load %struct.vm_area_struct*, %struct.vm_area_struct** %8, align 8
  %36 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %35, i32 0, i32 1
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* @HPAGE_PMD_MASK, align 8
  %39 = and i64 %37, %38
  store i64 %39, i64* %10, align 8
  %40 = load i64, i64* %6, align 8
  %41 = load i64, i64* %9, align 8
  %42 = icmp ult i64 %40, %41
  br i1 %42, label %49, label %43

43:                                               ; preds = %26
  %44 = load i64, i64* %6, align 8
  %45 = load i64, i64* @HPAGE_PMD_SIZE, align 8
  %46 = add i64 %44, %45
  %47 = load i64, i64* %10, align 8
  %48 = icmp ugt i64 %46, %47
  br i1 %48, label %49, label %51

49:                                               ; preds = %43, %26
  %50 = load i32, i32* @SCAN_ADDRESS_RANGE, align 4
  store i32 %50, i32* %4, align 4
  br label %61

51:                                               ; preds = %43
  %52 = load %struct.vm_area_struct*, %struct.vm_area_struct** %8, align 8
  %53 = load %struct.vm_area_struct*, %struct.vm_area_struct** %8, align 8
  %54 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %53, i32 0, i32 2
  %55 = load i32, i32* %54, align 8
  %56 = call i32 @hugepage_vma_check(%struct.vm_area_struct* %52, i32 %55)
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %60, label %58

58:                                               ; preds = %51
  %59 = load i32, i32* @SCAN_VMA_CHECK, align 4
  store i32 %59, i32* %4, align 4
  br label %61

60:                                               ; preds = %51
  store i32 0, i32* %4, align 4
  br label %61

61:                                               ; preds = %60, %58, %49, %24, %15
  %62 = load i32, i32* %4, align 4
  ret i32 %62
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @khugepaged_test_exit(%struct.mm_struct*) #1

declare dso_local %struct.vm_area_struct* @find_vma(%struct.mm_struct*, i64) #1

declare dso_local i32 @hugepage_vma_check(%struct.vm_area_struct*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
