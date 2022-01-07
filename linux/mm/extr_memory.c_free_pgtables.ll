; ModuleID = '/home/carl/AnghaBench/linux/mm/extr_memory.c_free_pgtables.c'
source_filename = "/home/carl/AnghaBench/linux/mm/extr_memory.c_free_pgtables.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mmu_gather = type { i32 }
%struct.vm_area_struct = type { i64, i64, %struct.vm_area_struct* }

@PMD_SIZE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @free_pgtables(%struct.mmu_gather* %0, %struct.vm_area_struct* %1, i64 %2, i64 %3) #0 {
  %5 = alloca %struct.mmu_gather*, align 8
  %6 = alloca %struct.vm_area_struct*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.vm_area_struct*, align 8
  %10 = alloca i64, align 8
  store %struct.mmu_gather* %0, %struct.mmu_gather** %5, align 8
  store %struct.vm_area_struct* %1, %struct.vm_area_struct** %6, align 8
  store i64 %2, i64* %7, align 8
  store i64 %3, i64* %8, align 8
  br label %11

11:                                               ; preds = %94, %4
  %12 = load %struct.vm_area_struct*, %struct.vm_area_struct** %6, align 8
  %13 = icmp ne %struct.vm_area_struct* %12, null
  br i1 %13, label %14, label %96

14:                                               ; preds = %11
  %15 = load %struct.vm_area_struct*, %struct.vm_area_struct** %6, align 8
  %16 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %15, i32 0, i32 2
  %17 = load %struct.vm_area_struct*, %struct.vm_area_struct** %16, align 8
  store %struct.vm_area_struct* %17, %struct.vm_area_struct** %9, align 8
  %18 = load %struct.vm_area_struct*, %struct.vm_area_struct** %6, align 8
  %19 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  store i64 %20, i64* %10, align 8
  %21 = load %struct.vm_area_struct*, %struct.vm_area_struct** %6, align 8
  %22 = call i32 @unlink_anon_vmas(%struct.vm_area_struct* %21)
  %23 = load %struct.vm_area_struct*, %struct.vm_area_struct** %6, align 8
  %24 = call i32 @unlink_file_vma(%struct.vm_area_struct* %23)
  %25 = load %struct.vm_area_struct*, %struct.vm_area_struct** %6, align 8
  %26 = call i64 @is_vm_hugetlb_page(%struct.vm_area_struct* %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %46

28:                                               ; preds = %14
  %29 = load %struct.mmu_gather*, %struct.mmu_gather** %5, align 8
  %30 = load i64, i64* %10, align 8
  %31 = load %struct.vm_area_struct*, %struct.vm_area_struct** %6, align 8
  %32 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %31, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* %7, align 8
  %35 = load %struct.vm_area_struct*, %struct.vm_area_struct** %9, align 8
  %36 = icmp ne %struct.vm_area_struct* %35, null
  br i1 %36, label %37, label %41

37:                                               ; preds = %28
  %38 = load %struct.vm_area_struct*, %struct.vm_area_struct** %9, align 8
  %39 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  br label %43

41:                                               ; preds = %28
  %42 = load i64, i64* %8, align 8
  br label %43

43:                                               ; preds = %41, %37
  %44 = phi i64 [ %40, %37 ], [ %42, %41 ]
  %45 = call i32 @hugetlb_free_pgd_range(%struct.mmu_gather* %29, i64 %30, i64 %33, i64 %34, i64 %44)
  br label %94

46:                                               ; preds = %14
  br label %47

47:                                               ; preds = %67, %46
  %48 = load %struct.vm_area_struct*, %struct.vm_area_struct** %9, align 8
  %49 = icmp ne %struct.vm_area_struct* %48, null
  br i1 %49, label %50, label %65

50:                                               ; preds = %47
  %51 = load %struct.vm_area_struct*, %struct.vm_area_struct** %9, align 8
  %52 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = load %struct.vm_area_struct*, %struct.vm_area_struct** %6, align 8
  %55 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %54, i32 0, i32 1
  %56 = load i64, i64* %55, align 8
  %57 = load i64, i64* @PMD_SIZE, align 8
  %58 = add nsw i64 %56, %57
  %59 = icmp ule i64 %53, %58
  br i1 %59, label %60, label %65

60:                                               ; preds = %50
  %61 = load %struct.vm_area_struct*, %struct.vm_area_struct** %9, align 8
  %62 = call i64 @is_vm_hugetlb_page(%struct.vm_area_struct* %61)
  %63 = icmp ne i64 %62, 0
  %64 = xor i1 %63, true
  br label %65

65:                                               ; preds = %60, %50, %47
  %66 = phi i1 [ false, %50 ], [ false, %47 ], [ %64, %60 ]
  br i1 %66, label %67, label %76

67:                                               ; preds = %65
  %68 = load %struct.vm_area_struct*, %struct.vm_area_struct** %9, align 8
  store %struct.vm_area_struct* %68, %struct.vm_area_struct** %6, align 8
  %69 = load %struct.vm_area_struct*, %struct.vm_area_struct** %6, align 8
  %70 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %69, i32 0, i32 2
  %71 = load %struct.vm_area_struct*, %struct.vm_area_struct** %70, align 8
  store %struct.vm_area_struct* %71, %struct.vm_area_struct** %9, align 8
  %72 = load %struct.vm_area_struct*, %struct.vm_area_struct** %6, align 8
  %73 = call i32 @unlink_anon_vmas(%struct.vm_area_struct* %72)
  %74 = load %struct.vm_area_struct*, %struct.vm_area_struct** %6, align 8
  %75 = call i32 @unlink_file_vma(%struct.vm_area_struct* %74)
  br label %47

76:                                               ; preds = %65
  %77 = load %struct.mmu_gather*, %struct.mmu_gather** %5, align 8
  %78 = load i64, i64* %10, align 8
  %79 = load %struct.vm_area_struct*, %struct.vm_area_struct** %6, align 8
  %80 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %79, i32 0, i32 1
  %81 = load i64, i64* %80, align 8
  %82 = load i64, i64* %7, align 8
  %83 = load %struct.vm_area_struct*, %struct.vm_area_struct** %9, align 8
  %84 = icmp ne %struct.vm_area_struct* %83, null
  br i1 %84, label %85, label %89

85:                                               ; preds = %76
  %86 = load %struct.vm_area_struct*, %struct.vm_area_struct** %9, align 8
  %87 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %86, i32 0, i32 0
  %88 = load i64, i64* %87, align 8
  br label %91

89:                                               ; preds = %76
  %90 = load i64, i64* %8, align 8
  br label %91

91:                                               ; preds = %89, %85
  %92 = phi i64 [ %88, %85 ], [ %90, %89 ]
  %93 = call i32 @free_pgd_range(%struct.mmu_gather* %77, i64 %78, i64 %81, i64 %82, i64 %92)
  br label %94

94:                                               ; preds = %91, %43
  %95 = load %struct.vm_area_struct*, %struct.vm_area_struct** %9, align 8
  store %struct.vm_area_struct* %95, %struct.vm_area_struct** %6, align 8
  br label %11

96:                                               ; preds = %11
  ret void
}

declare dso_local i32 @unlink_anon_vmas(%struct.vm_area_struct*) #1

declare dso_local i32 @unlink_file_vma(%struct.vm_area_struct*) #1

declare dso_local i64 @is_vm_hugetlb_page(%struct.vm_area_struct*) #1

declare dso_local i32 @hugetlb_free_pgd_range(%struct.mmu_gather*, i64, i64, i64, i64) #1

declare dso_local i32 @free_pgd_range(%struct.mmu_gather*, i64, i64, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
