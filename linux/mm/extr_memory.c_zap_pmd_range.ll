; ModuleID = '/home/carl/AnghaBench/linux/mm/extr_memory.c_zap_pmd_range.c'
source_filename = "/home/carl/AnghaBench/linux/mm/extr_memory.c_zap_pmd_range.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mmu_gather = type { i32 }
%struct.vm_area_struct = type { i32 }
%struct.zap_details = type { i32 }

@HPAGE_PMD_SIZE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.mmu_gather*, %struct.vm_area_struct*, i32*, i64, i64, %struct.zap_details*)* @zap_pmd_range to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @zap_pmd_range(%struct.mmu_gather* %0, %struct.vm_area_struct* %1, i32* %2, i64 %3, i64 %4, %struct.zap_details* %5) #0 {
  %7 = alloca %struct.mmu_gather*, align 8
  %8 = alloca %struct.vm_area_struct*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.zap_details*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i64, align 8
  store %struct.mmu_gather* %0, %struct.mmu_gather** %7, align 8
  store %struct.vm_area_struct* %1, %struct.vm_area_struct** %8, align 8
  store i32* %2, i32** %9, align 8
  store i64 %3, i64* %10, align 8
  store i64 %4, i64* %11, align 8
  store %struct.zap_details* %5, %struct.zap_details** %12, align 8
  %15 = load i32*, i32** %9, align 8
  %16 = load i64, i64* %10, align 8
  %17 = call i32* @pmd_offset(i32* %15, i64 %16)
  store i32* %17, i32** %13, align 8
  br label %18

18:                                               ; preds = %72, %6
  %19 = load i64, i64* %10, align 8
  %20 = load i64, i64* %11, align 8
  %21 = call i64 @pmd_addr_end(i64 %19, i64 %20)
  store i64 %21, i64* %14, align 8
  %22 = load i32*, i32** %13, align 8
  %23 = load i32, i32* %22, align 4
  %24 = call i64 @is_swap_pmd(i32 %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %36, label %26

26:                                               ; preds = %18
  %27 = load i32*, i32** %13, align 8
  %28 = load i32, i32* %27, align 4
  %29 = call i64 @pmd_trans_huge(i32 %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %36, label %31

31:                                               ; preds = %26
  %32 = load i32*, i32** %13, align 8
  %33 = load i32, i32* %32, align 4
  %34 = call i64 @pmd_devmap(i32 %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %57

36:                                               ; preds = %31, %26, %18
  %37 = load i64, i64* %14, align 8
  %38 = load i64, i64* %10, align 8
  %39 = sub i64 %37, %38
  %40 = load i64, i64* @HPAGE_PMD_SIZE, align 8
  %41 = icmp ne i64 %39, %40
  br i1 %41, label %42, label %47

42:                                               ; preds = %36
  %43 = load %struct.vm_area_struct*, %struct.vm_area_struct** %8, align 8
  %44 = load i32*, i32** %13, align 8
  %45 = load i64, i64* %10, align 8
  %46 = call i32 @__split_huge_pmd(%struct.vm_area_struct* %43, i32* %44, i64 %45, i32 0, i32* null)
  br label %56

47:                                               ; preds = %36
  %48 = load %struct.mmu_gather*, %struct.mmu_gather** %7, align 8
  %49 = load %struct.vm_area_struct*, %struct.vm_area_struct** %8, align 8
  %50 = load i32*, i32** %13, align 8
  %51 = load i64, i64* %10, align 8
  %52 = call i64 @zap_huge_pmd(%struct.mmu_gather* %48, %struct.vm_area_struct* %49, i32* %50, i64 %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %55

54:                                               ; preds = %47
  br label %70

55:                                               ; preds = %47
  br label %56

56:                                               ; preds = %55, %42
  br label %57

57:                                               ; preds = %56, %31
  %58 = load i32*, i32** %13, align 8
  %59 = call i64 @pmd_none_or_trans_huge_or_clear_bad(i32* %58)
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %62

61:                                               ; preds = %57
  br label %70

62:                                               ; preds = %57
  %63 = load %struct.mmu_gather*, %struct.mmu_gather** %7, align 8
  %64 = load %struct.vm_area_struct*, %struct.vm_area_struct** %8, align 8
  %65 = load i32*, i32** %13, align 8
  %66 = load i64, i64* %10, align 8
  %67 = load i64, i64* %14, align 8
  %68 = load %struct.zap_details*, %struct.zap_details** %12, align 8
  %69 = call i64 @zap_pte_range(%struct.mmu_gather* %63, %struct.vm_area_struct* %64, i32* %65, i64 %66, i64 %67, %struct.zap_details* %68)
  store i64 %69, i64* %14, align 8
  br label %70

70:                                               ; preds = %62, %61, %54
  %71 = call i32 (...) @cond_resched()
  br label %72

72:                                               ; preds = %70
  %73 = load i32*, i32** %13, align 8
  %74 = getelementptr inbounds i32, i32* %73, i32 1
  store i32* %74, i32** %13, align 8
  %75 = load i64, i64* %14, align 8
  store i64 %75, i64* %10, align 8
  %76 = load i64, i64* %10, align 8
  %77 = load i64, i64* %11, align 8
  %78 = icmp ne i64 %76, %77
  br i1 %78, label %18, label %79

79:                                               ; preds = %72
  %80 = load i64, i64* %10, align 8
  ret i64 %80
}

declare dso_local i32* @pmd_offset(i32*, i64) #1

declare dso_local i64 @pmd_addr_end(i64, i64) #1

declare dso_local i64 @is_swap_pmd(i32) #1

declare dso_local i64 @pmd_trans_huge(i32) #1

declare dso_local i64 @pmd_devmap(i32) #1

declare dso_local i32 @__split_huge_pmd(%struct.vm_area_struct*, i32*, i64, i32, i32*) #1

declare dso_local i64 @zap_huge_pmd(%struct.mmu_gather*, %struct.vm_area_struct*, i32*, i64) #1

declare dso_local i64 @pmd_none_or_trans_huge_or_clear_bad(i32*) #1

declare dso_local i64 @zap_pte_range(%struct.mmu_gather*, %struct.vm_area_struct*, i32*, i64, i64, %struct.zap_details*) #1

declare dso_local i32 @cond_resched(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
