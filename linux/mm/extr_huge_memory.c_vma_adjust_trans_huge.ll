; ModuleID = '/home/carl/AnghaBench/linux/mm/extr_huge_memory.c_vma_adjust_trans_huge.c'
source_filename = "/home/carl/AnghaBench/linux/mm/extr_huge_memory.c_vma_adjust_trans_huge.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vm_area_struct = type { i64, i64, %struct.vm_area_struct* }

@HPAGE_PMD_MASK = common dso_local global i64 0, align 8
@HPAGE_PMD_SIZE = common dso_local global i64 0, align 8
@PAGE_SHIFT = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @vma_adjust_trans_huge(%struct.vm_area_struct* %0, i64 %1, i64 %2, i64 %3) #0 {
  %5 = alloca %struct.vm_area_struct*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.vm_area_struct*, align 8
  %10 = alloca i64, align 8
  store %struct.vm_area_struct* %0, %struct.vm_area_struct** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  store i64 %3, i64* %8, align 8
  %11 = load i64, i64* %6, align 8
  %12 = load i64, i64* @HPAGE_PMD_MASK, align 8
  %13 = xor i64 %12, -1
  %14 = and i64 %11, %13
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %38

16:                                               ; preds = %4
  %17 = load i64, i64* %6, align 8
  %18 = load i64, i64* @HPAGE_PMD_MASK, align 8
  %19 = and i64 %17, %18
  %20 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %21 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = icmp uge i64 %19, %22
  br i1 %23, label %24, label %38

24:                                               ; preds = %16
  %25 = load i64, i64* %6, align 8
  %26 = load i64, i64* @HPAGE_PMD_MASK, align 8
  %27 = and i64 %25, %26
  %28 = load i64, i64* @HPAGE_PMD_SIZE, align 8
  %29 = add i64 %27, %28
  %30 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %31 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %30, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  %33 = icmp ule i64 %29, %32
  br i1 %33, label %34, label %38

34:                                               ; preds = %24
  %35 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %36 = load i64, i64* %6, align 8
  %37 = call i32 @split_huge_pmd_address(%struct.vm_area_struct* %35, i64 %36, i32 0, i32* null)
  br label %38

38:                                               ; preds = %34, %24, %16, %4
  %39 = load i64, i64* %7, align 8
  %40 = load i64, i64* @HPAGE_PMD_MASK, align 8
  %41 = xor i64 %40, -1
  %42 = and i64 %39, %41
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %66

44:                                               ; preds = %38
  %45 = load i64, i64* %7, align 8
  %46 = load i64, i64* @HPAGE_PMD_MASK, align 8
  %47 = and i64 %45, %46
  %48 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %49 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = icmp uge i64 %47, %50
  br i1 %51, label %52, label %66

52:                                               ; preds = %44
  %53 = load i64, i64* %7, align 8
  %54 = load i64, i64* @HPAGE_PMD_MASK, align 8
  %55 = and i64 %53, %54
  %56 = load i64, i64* @HPAGE_PMD_SIZE, align 8
  %57 = add i64 %55, %56
  %58 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %59 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %58, i32 0, i32 1
  %60 = load i64, i64* %59, align 8
  %61 = icmp ule i64 %57, %60
  br i1 %61, label %62, label %66

62:                                               ; preds = %52
  %63 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %64 = load i64, i64* %7, align 8
  %65 = call i32 @split_huge_pmd_address(%struct.vm_area_struct* %63, i64 %64, i32 0, i32* null)
  br label %66

66:                                               ; preds = %62, %52, %44, %38
  %67 = load i64, i64* %8, align 8
  %68 = icmp sgt i64 %67, 0
  br i1 %68, label %69, label %109

69:                                               ; preds = %66
  %70 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %71 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %70, i32 0, i32 2
  %72 = load %struct.vm_area_struct*, %struct.vm_area_struct** %71, align 8
  store %struct.vm_area_struct* %72, %struct.vm_area_struct** %9, align 8
  %73 = load %struct.vm_area_struct*, %struct.vm_area_struct** %9, align 8
  %74 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %73, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  store i64 %75, i64* %10, align 8
  %76 = load i64, i64* %8, align 8
  %77 = load i64, i64* @PAGE_SHIFT, align 8
  %78 = shl i64 %76, %77
  %79 = load i64, i64* %10, align 8
  %80 = add i64 %79, %78
  store i64 %80, i64* %10, align 8
  %81 = load i64, i64* %10, align 8
  %82 = load i64, i64* @HPAGE_PMD_MASK, align 8
  %83 = xor i64 %82, -1
  %84 = and i64 %81, %83
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %108

86:                                               ; preds = %69
  %87 = load i64, i64* %10, align 8
  %88 = load i64, i64* @HPAGE_PMD_MASK, align 8
  %89 = and i64 %87, %88
  %90 = load %struct.vm_area_struct*, %struct.vm_area_struct** %9, align 8
  %91 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %90, i32 0, i32 0
  %92 = load i64, i64* %91, align 8
  %93 = icmp uge i64 %89, %92
  br i1 %93, label %94, label %108

94:                                               ; preds = %86
  %95 = load i64, i64* %10, align 8
  %96 = load i64, i64* @HPAGE_PMD_MASK, align 8
  %97 = and i64 %95, %96
  %98 = load i64, i64* @HPAGE_PMD_SIZE, align 8
  %99 = add i64 %97, %98
  %100 = load %struct.vm_area_struct*, %struct.vm_area_struct** %9, align 8
  %101 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %100, i32 0, i32 1
  %102 = load i64, i64* %101, align 8
  %103 = icmp ule i64 %99, %102
  br i1 %103, label %104, label %108

104:                                              ; preds = %94
  %105 = load %struct.vm_area_struct*, %struct.vm_area_struct** %9, align 8
  %106 = load i64, i64* %10, align 8
  %107 = call i32 @split_huge_pmd_address(%struct.vm_area_struct* %105, i64 %106, i32 0, i32* null)
  br label %108

108:                                              ; preds = %104, %94, %86, %69
  br label %109

109:                                              ; preds = %108, %66
  ret void
}

declare dso_local i32 @split_huge_pmd_address(%struct.vm_area_struct*, i64, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
