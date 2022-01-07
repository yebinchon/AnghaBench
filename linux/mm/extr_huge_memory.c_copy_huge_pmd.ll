; ModuleID = '/home/carl/AnghaBench/linux/mm/extr_huge_memory.c_copy_huge_pmd.c'
source_filename = "/home/carl/AnghaBench/linux/mm/extr_huge_memory.c_copy_huge_pmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mm_struct = type { i32 }
%struct.vm_area_struct = type { i32 }
%struct.page = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4
@SINGLE_DEPTH_NESTING = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4
@MM_ANONPAGES = common dso_local global i32 0, align 4
@HPAGE_PMD_NR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @copy_huge_pmd(%struct.mm_struct* %0, %struct.mm_struct* %1, i32* %2, i32* %3, i64 %4, %struct.vm_area_struct* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.mm_struct*, align 8
  %9 = alloca %struct.mm_struct*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i64, align 8
  %13 = alloca %struct.vm_area_struct*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca %struct.page*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32*, align 8
  %19 = alloca i32, align 4
  %20 = alloca %struct.page*, align 8
  store %struct.mm_struct* %0, %struct.mm_struct** %8, align 8
  store %struct.mm_struct* %1, %struct.mm_struct** %9, align 8
  store i32* %2, i32** %10, align 8
  store i32* %3, i32** %11, align 8
  store i64 %4, i64* %12, align 8
  store %struct.vm_area_struct* %5, %struct.vm_area_struct** %13, align 8
  store i32* null, i32** %18, align 8
  %21 = load i32, i32* @ENOMEM, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %19, align 4
  %23 = load %struct.vm_area_struct*, %struct.vm_area_struct** %13, align 8
  %24 = call i32 @vma_is_anonymous(%struct.vm_area_struct* %23)
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %27, label %26

26:                                               ; preds = %6
  store i32 0, i32* %7, align 4
  br label %119

27:                                               ; preds = %6
  %28 = load %struct.mm_struct*, %struct.mm_struct** %8, align 8
  %29 = call i32* @pte_alloc_one(%struct.mm_struct* %28)
  store i32* %29, i32** %18, align 8
  %30 = load i32*, i32** %18, align 8
  %31 = icmp ne i32* %30, null
  %32 = xor i1 %31, true
  %33 = zext i1 %32 to i32
  %34 = call i64 @unlikely(i32 %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %27
  br label %117

37:                                               ; preds = %27
  %38 = load %struct.mm_struct*, %struct.mm_struct** %8, align 8
  %39 = load i32*, i32** %10, align 8
  %40 = call i32* @pmd_lock(%struct.mm_struct* %38, i32* %39)
  store i32* %40, i32** %14, align 8
  %41 = load %struct.mm_struct*, %struct.mm_struct** %9, align 8
  %42 = load i32*, i32** %11, align 8
  %43 = call i32* @pmd_lockptr(%struct.mm_struct* %41, i32* %42)
  store i32* %43, i32** %15, align 8
  %44 = load i32*, i32** %15, align 8
  %45 = load i32, i32* @SINGLE_DEPTH_NESTING, align 4
  %46 = call i32 @spin_lock_nested(i32* %44, i32 %45)
  %47 = load i32, i32* @EAGAIN, align 4
  %48 = sub nsw i32 0, %47
  store i32 %48, i32* %19, align 4
  %49 = load i32*, i32** %11, align 8
  %50 = load i32, i32* %49, align 4
  store i32 %50, i32* %17, align 4
  %51 = load i32, i32* %17, align 4
  %52 = call i32 @pmd_trans_huge(i32 %51)
  %53 = icmp ne i32 %52, 0
  %54 = xor i1 %53, true
  %55 = zext i1 %54 to i32
  %56 = call i64 @unlikely(i32 %55)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %62

58:                                               ; preds = %37
  %59 = load %struct.mm_struct*, %struct.mm_struct** %8, align 8
  %60 = load i32*, i32** %18, align 8
  %61 = call i32 @pte_free(%struct.mm_struct* %59, i32* %60)
  br label %112

62:                                               ; preds = %37
  %63 = load i32, i32* %17, align 4
  %64 = call i64 @is_huge_zero_pmd(i32 %63)
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %76

66:                                               ; preds = %62
  %67 = load %struct.mm_struct*, %struct.mm_struct** %8, align 8
  %68 = call %struct.page* @mm_get_huge_zero_page(%struct.mm_struct* %67)
  store %struct.page* %68, %struct.page** %20, align 8
  %69 = load i32*, i32** %18, align 8
  %70 = load %struct.mm_struct*, %struct.mm_struct** %8, align 8
  %71 = load %struct.vm_area_struct*, %struct.vm_area_struct** %13, align 8
  %72 = load i64, i64* %12, align 8
  %73 = load i32*, i32** %10, align 8
  %74 = load %struct.page*, %struct.page** %20, align 8
  %75 = call i32 @set_huge_zero_page(i32* %69, %struct.mm_struct* %70, %struct.vm_area_struct* %71, i64 %72, i32* %73, %struct.page* %74)
  store i32 0, i32* %19, align 4
  br label %112

76:                                               ; preds = %62
  %77 = load i32, i32* %17, align 4
  %78 = call %struct.page* @pmd_page(i32 %77)
  store %struct.page* %78, %struct.page** %16, align 8
  %79 = load %struct.page*, %struct.page** %16, align 8
  %80 = call i32 @PageHead(%struct.page* %79)
  %81 = icmp ne i32 %80, 0
  %82 = xor i1 %81, true
  %83 = zext i1 %82 to i32
  %84 = load %struct.page*, %struct.page** %16, align 8
  %85 = call i32 @VM_BUG_ON_PAGE(i32 %83, %struct.page* %84)
  %86 = load %struct.page*, %struct.page** %16, align 8
  %87 = call i32 @get_page(%struct.page* %86)
  %88 = load %struct.page*, %struct.page** %16, align 8
  %89 = call i32 @page_dup_rmap(%struct.page* %88, i32 1)
  %90 = load %struct.mm_struct*, %struct.mm_struct** %8, align 8
  %91 = load i32, i32* @MM_ANONPAGES, align 4
  %92 = load i32, i32* @HPAGE_PMD_NR, align 4
  %93 = call i32 @add_mm_counter(%struct.mm_struct* %90, i32 %91, i32 %92)
  %94 = load %struct.mm_struct*, %struct.mm_struct** %8, align 8
  %95 = call i32 @mm_inc_nr_ptes(%struct.mm_struct* %94)
  %96 = load %struct.mm_struct*, %struct.mm_struct** %8, align 8
  %97 = load i32*, i32** %10, align 8
  %98 = load i32*, i32** %18, align 8
  %99 = call i32 @pgtable_trans_huge_deposit(%struct.mm_struct* %96, i32* %97, i32* %98)
  %100 = load %struct.mm_struct*, %struct.mm_struct** %9, align 8
  %101 = load i64, i64* %12, align 8
  %102 = load i32*, i32** %11, align 8
  %103 = call i32 @pmdp_set_wrprotect(%struct.mm_struct* %100, i64 %101, i32* %102)
  %104 = load i32, i32* %17, align 4
  %105 = call i32 @pmd_wrprotect(i32 %104)
  %106 = call i32 @pmd_mkold(i32 %105)
  store i32 %106, i32* %17, align 4
  %107 = load %struct.mm_struct*, %struct.mm_struct** %8, align 8
  %108 = load i64, i64* %12, align 8
  %109 = load i32*, i32** %10, align 8
  %110 = load i32, i32* %17, align 4
  %111 = call i32 @set_pmd_at(%struct.mm_struct* %107, i64 %108, i32* %109, i32 %110)
  store i32 0, i32* %19, align 4
  br label %112

112:                                              ; preds = %76, %66, %58
  %113 = load i32*, i32** %15, align 8
  %114 = call i32 @spin_unlock(i32* %113)
  %115 = load i32*, i32** %14, align 8
  %116 = call i32 @spin_unlock(i32* %115)
  br label %117

117:                                              ; preds = %112, %36
  %118 = load i32, i32* %19, align 4
  store i32 %118, i32* %7, align 4
  br label %119

119:                                              ; preds = %117, %26
  %120 = load i32, i32* %7, align 4
  ret i32 %120
}

declare dso_local i32 @vma_is_anonymous(%struct.vm_area_struct*) #1

declare dso_local i32* @pte_alloc_one(%struct.mm_struct*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32* @pmd_lock(%struct.mm_struct*, i32*) #1

declare dso_local i32* @pmd_lockptr(%struct.mm_struct*, i32*) #1

declare dso_local i32 @spin_lock_nested(i32*, i32) #1

declare dso_local i32 @pmd_trans_huge(i32) #1

declare dso_local i32 @pte_free(%struct.mm_struct*, i32*) #1

declare dso_local i64 @is_huge_zero_pmd(i32) #1

declare dso_local %struct.page* @mm_get_huge_zero_page(%struct.mm_struct*) #1

declare dso_local i32 @set_huge_zero_page(i32*, %struct.mm_struct*, %struct.vm_area_struct*, i64, i32*, %struct.page*) #1

declare dso_local %struct.page* @pmd_page(i32) #1

declare dso_local i32 @VM_BUG_ON_PAGE(i32, %struct.page*) #1

declare dso_local i32 @PageHead(%struct.page*) #1

declare dso_local i32 @get_page(%struct.page*) #1

declare dso_local i32 @page_dup_rmap(%struct.page*, i32) #1

declare dso_local i32 @add_mm_counter(%struct.mm_struct*, i32, i32) #1

declare dso_local i32 @mm_inc_nr_ptes(%struct.mm_struct*) #1

declare dso_local i32 @pgtable_trans_huge_deposit(%struct.mm_struct*, i32*, i32*) #1

declare dso_local i32 @pmdp_set_wrprotect(%struct.mm_struct*, i64, i32*) #1

declare dso_local i32 @pmd_mkold(i32) #1

declare dso_local i32 @pmd_wrprotect(i32) #1

declare dso_local i32 @set_pmd_at(%struct.mm_struct*, i64, i32*, i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
