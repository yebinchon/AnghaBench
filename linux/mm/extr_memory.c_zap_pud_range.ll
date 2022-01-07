; ModuleID = '/home/carl/AnghaBench/linux/mm/extr_memory.c_zap_pud_range.c'
source_filename = "/home/carl/AnghaBench/linux/mm/extr_memory.c_zap_pud_range.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mmu_gather = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.vm_area_struct = type { i32 }
%struct.zap_details = type { i32 }

@HPAGE_PUD_SIZE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.mmu_gather*, %struct.vm_area_struct*, i32*, i64, i64, %struct.zap_details*)* @zap_pud_range to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @zap_pud_range(%struct.mmu_gather* %0, %struct.vm_area_struct* %1, i32* %2, i64 %3, i64 %4, %struct.zap_details* %5) #0 {
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
  %17 = call i32* @pud_offset(i32* %15, i64 %16)
  store i32* %17, i32** %13, align 8
  br label %18

18:                                               ; preds = %77, %6
  %19 = load i64, i64* %10, align 8
  %20 = load i64, i64* %11, align 8
  %21 = call i64 @pud_addr_end(i64 %19, i64 %20)
  store i64 %21, i64* %14, align 8
  %22 = load i32*, i32** %13, align 8
  %23 = load i32, i32* %22, align 4
  %24 = call i64 @pud_trans_huge(i32 %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %31, label %26

26:                                               ; preds = %18
  %27 = load i32*, i32** %13, align 8
  %28 = load i32, i32* %27, align 4
  %29 = call i64 @pud_devmap(i32 %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %62

31:                                               ; preds = %26, %18
  %32 = load i64, i64* %14, align 8
  %33 = load i64, i64* %10, align 8
  %34 = sub i64 %32, %33
  %35 = load i64, i64* @HPAGE_PUD_SIZE, align 8
  %36 = icmp ne i64 %34, %35
  br i1 %36, label %37, label %52

37:                                               ; preds = %31
  %38 = load %struct.mmu_gather*, %struct.mmu_gather** %7, align 8
  %39 = getelementptr inbounds %struct.mmu_gather, %struct.mmu_gather* %38, i32 0, i32 0
  %40 = load %struct.TYPE_2__*, %struct.TYPE_2__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 0
  %42 = call i32 @rwsem_is_locked(i32* %41)
  %43 = icmp ne i32 %42, 0
  %44 = xor i1 %43, true
  %45 = zext i1 %44 to i32
  %46 = load %struct.vm_area_struct*, %struct.vm_area_struct** %8, align 8
  %47 = call i32 @VM_BUG_ON_VMA(i32 %45, %struct.vm_area_struct* %46)
  %48 = load %struct.vm_area_struct*, %struct.vm_area_struct** %8, align 8
  %49 = load i32*, i32** %13, align 8
  %50 = load i64, i64* %10, align 8
  %51 = call i32 @split_huge_pud(%struct.vm_area_struct* %48, i32* %49, i64 %50)
  br label %61

52:                                               ; preds = %31
  %53 = load %struct.mmu_gather*, %struct.mmu_gather** %7, align 8
  %54 = load %struct.vm_area_struct*, %struct.vm_area_struct** %8, align 8
  %55 = load i32*, i32** %13, align 8
  %56 = load i64, i64* %10, align 8
  %57 = call i64 @zap_huge_pud(%struct.mmu_gather* %53, %struct.vm_area_struct* %54, i32* %55, i64 %56)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %60

59:                                               ; preds = %52
  br label %75

60:                                               ; preds = %52
  br label %61

61:                                               ; preds = %60, %37
  br label %62

62:                                               ; preds = %61, %26
  %63 = load i32*, i32** %13, align 8
  %64 = call i64 @pud_none_or_clear_bad(i32* %63)
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %67

66:                                               ; preds = %62
  br label %77

67:                                               ; preds = %62
  %68 = load %struct.mmu_gather*, %struct.mmu_gather** %7, align 8
  %69 = load %struct.vm_area_struct*, %struct.vm_area_struct** %8, align 8
  %70 = load i32*, i32** %13, align 8
  %71 = load i64, i64* %10, align 8
  %72 = load i64, i64* %14, align 8
  %73 = load %struct.zap_details*, %struct.zap_details** %12, align 8
  %74 = call i64 @zap_pmd_range(%struct.mmu_gather* %68, %struct.vm_area_struct* %69, i32* %70, i64 %71, i64 %72, %struct.zap_details* %73)
  store i64 %74, i64* %14, align 8
  br label %75

75:                                               ; preds = %67, %59
  %76 = call i32 (...) @cond_resched()
  br label %77

77:                                               ; preds = %75, %66
  %78 = load i32*, i32** %13, align 8
  %79 = getelementptr inbounds i32, i32* %78, i32 1
  store i32* %79, i32** %13, align 8
  %80 = load i64, i64* %14, align 8
  store i64 %80, i64* %10, align 8
  %81 = load i64, i64* %10, align 8
  %82 = load i64, i64* %11, align 8
  %83 = icmp ne i64 %81, %82
  br i1 %83, label %18, label %84

84:                                               ; preds = %77
  %85 = load i64, i64* %10, align 8
  ret i64 %85
}

declare dso_local i32* @pud_offset(i32*, i64) #1

declare dso_local i64 @pud_addr_end(i64, i64) #1

declare dso_local i64 @pud_trans_huge(i32) #1

declare dso_local i64 @pud_devmap(i32) #1

declare dso_local i32 @VM_BUG_ON_VMA(i32, %struct.vm_area_struct*) #1

declare dso_local i32 @rwsem_is_locked(i32*) #1

declare dso_local i32 @split_huge_pud(%struct.vm_area_struct*, i32*, i64) #1

declare dso_local i64 @zap_huge_pud(%struct.mmu_gather*, %struct.vm_area_struct*, i32*, i64) #1

declare dso_local i64 @pud_none_or_clear_bad(i32*) #1

declare dso_local i64 @zap_pmd_range(%struct.mmu_gather*, %struct.vm_area_struct*, i32*, i64, i64, %struct.zap_details*) #1

declare dso_local i32 @cond_resched(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
