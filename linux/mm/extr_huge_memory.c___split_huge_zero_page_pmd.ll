; ModuleID = '/home/carl/AnghaBench/linux/mm/extr_huge_memory.c___split_huge_zero_page_pmd.c'
source_filename = "/home/carl/AnghaBench/linux/mm/extr_huge_memory.c___split_huge_zero_page_pmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vm_area_struct = type { i32, %struct.mm_struct* }
%struct.mm_struct = type { i32 }

@HPAGE_PMD_NR = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vm_area_struct*, i64, i32*)* @__split_huge_zero_page_pmd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__split_huge_zero_page_pmd(%struct.vm_area_struct* %0, i64 %1, i32* %2) #0 {
  %4 = alloca %struct.vm_area_struct*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.mm_struct*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  store %struct.vm_area_struct* %0, %struct.vm_area_struct** %4, align 8
  store i64 %1, i64* %5, align 8
  store i32* %2, i32** %6, align 8
  %13 = load %struct.vm_area_struct*, %struct.vm_area_struct** %4, align 8
  %14 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %13, i32 0, i32 1
  %15 = load %struct.mm_struct*, %struct.mm_struct** %14, align 8
  store %struct.mm_struct* %15, %struct.mm_struct** %7, align 8
  %16 = load %struct.vm_area_struct*, %struct.vm_area_struct** %4, align 8
  %17 = load i64, i64* %5, align 8
  %18 = load i32*, i32** %6, align 8
  %19 = call i32 @pmdp_huge_clear_flush(%struct.vm_area_struct* %16, i64 %17, i32* %18)
  %20 = load %struct.mm_struct*, %struct.mm_struct** %7, align 8
  %21 = load i32*, i32** %6, align 8
  %22 = call i32 @pgtable_trans_huge_withdraw(%struct.mm_struct* %20, i32* %21)
  store i32 %22, i32* %8, align 4
  %23 = load %struct.mm_struct*, %struct.mm_struct** %7, align 8
  %24 = load i32, i32* %8, align 4
  %25 = call i32 @pmd_populate(%struct.mm_struct* %23, i32* %9, i32 %24)
  store i32 0, i32* %10, align 4
  br label %26

26:                                               ; preds = %55, %3
  %27 = load i32, i32* %10, align 4
  %28 = load i32, i32* @HPAGE_PMD_NR, align 4
  %29 = icmp slt i32 %27, %28
  br i1 %29, label %30, label %61

30:                                               ; preds = %26
  %31 = load i64, i64* %5, align 8
  %32 = call i32 @my_zero_pfn(i64 %31)
  %33 = load %struct.vm_area_struct*, %struct.vm_area_struct** %4, align 8
  %34 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = call i32 @pfn_pte(i32 %32, i32 %35)
  store i32 %36, i32* %12, align 4
  %37 = load i32, i32* %12, align 4
  %38 = call i32 @pte_mkspecial(i32 %37)
  store i32 %38, i32* %12, align 4
  %39 = load i64, i64* %5, align 8
  %40 = call i32* @pte_offset_map(i32* %9, i64 %39)
  store i32* %40, i32** %11, align 8
  %41 = load i32*, i32** %11, align 8
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @pte_none(i32 %42)
  %44 = icmp ne i32 %43, 0
  %45 = xor i1 %44, true
  %46 = zext i1 %45 to i32
  %47 = call i32 @VM_BUG_ON(i32 %46)
  %48 = load %struct.mm_struct*, %struct.mm_struct** %7, align 8
  %49 = load i64, i64* %5, align 8
  %50 = load i32*, i32** %11, align 8
  %51 = load i32, i32* %12, align 4
  %52 = call i32 @set_pte_at(%struct.mm_struct* %48, i64 %49, i32* %50, i32 %51)
  %53 = load i32*, i32** %11, align 8
  %54 = call i32 @pte_unmap(i32* %53)
  br label %55

55:                                               ; preds = %30
  %56 = load i32, i32* %10, align 4
  %57 = add nsw i32 %56, 1
  store i32 %57, i32* %10, align 4
  %58 = load i64, i64* @PAGE_SIZE, align 8
  %59 = load i64, i64* %5, align 8
  %60 = add i64 %59, %58
  store i64 %60, i64* %5, align 8
  br label %26

61:                                               ; preds = %26
  %62 = call i32 (...) @smp_wmb()
  %63 = load %struct.mm_struct*, %struct.mm_struct** %7, align 8
  %64 = load i32*, i32** %6, align 8
  %65 = load i32, i32* %8, align 4
  %66 = call i32 @pmd_populate(%struct.mm_struct* %63, i32* %64, i32 %65)
  ret void
}

declare dso_local i32 @pmdp_huge_clear_flush(%struct.vm_area_struct*, i64, i32*) #1

declare dso_local i32 @pgtable_trans_huge_withdraw(%struct.mm_struct*, i32*) #1

declare dso_local i32 @pmd_populate(%struct.mm_struct*, i32*, i32) #1

declare dso_local i32 @pfn_pte(i32, i32) #1

declare dso_local i32 @my_zero_pfn(i64) #1

declare dso_local i32 @pte_mkspecial(i32) #1

declare dso_local i32* @pte_offset_map(i32*, i64) #1

declare dso_local i32 @VM_BUG_ON(i32) #1

declare dso_local i32 @pte_none(i32) #1

declare dso_local i32 @set_pte_at(%struct.mm_struct*, i64, i32*, i32) #1

declare dso_local i32 @pte_unmap(i32*) #1

declare dso_local i32 @smp_wmb(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
