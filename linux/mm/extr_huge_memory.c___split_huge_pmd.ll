; ModuleID = '/home/carl/AnghaBench/linux/mm/extr_huge_memory.c___split_huge_pmd.c'
source_filename = "/home/carl/AnghaBench/linux/mm/extr_huge_memory.c___split_huge_pmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vm_area_struct = type { i32 }
%struct.page = type { i32 }
%struct.mmu_notifier_range = type { i32 }

@MMU_NOTIFY_CLEAR = common dso_local global i32 0, align 4
@HPAGE_PMD_MASK = common dso_local global i64 0, align 8
@HPAGE_PMD_SIZE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @__split_huge_pmd(%struct.vm_area_struct* %0, i32* %1, i64 %2, i32 %3, %struct.page* %4) #0 {
  %6 = alloca %struct.vm_area_struct*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.page*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca %struct.mmu_notifier_range, align 4
  store %struct.vm_area_struct* %0, %struct.vm_area_struct** %6, align 8
  store i32* %1, i32** %7, align 8
  store i64 %2, i64* %8, align 8
  store i32 %3, i32* %9, align 4
  store %struct.page* %4, %struct.page** %10, align 8
  %13 = load i32, i32* @MMU_NOTIFY_CLEAR, align 4
  %14 = load %struct.vm_area_struct*, %struct.vm_area_struct** %6, align 8
  %15 = load %struct.vm_area_struct*, %struct.vm_area_struct** %6, align 8
  %16 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load i64, i64* %8, align 8
  %19 = load i64, i64* @HPAGE_PMD_MASK, align 8
  %20 = and i64 %18, %19
  %21 = load i64, i64* %8, align 8
  %22 = load i64, i64* @HPAGE_PMD_MASK, align 8
  %23 = and i64 %21, %22
  %24 = load i64, i64* @HPAGE_PMD_SIZE, align 8
  %25 = add i64 %23, %24
  %26 = call i32 @mmu_notifier_range_init(%struct.mmu_notifier_range* %12, i32 %13, i32 0, %struct.vm_area_struct* %14, i32 %17, i64 %20, i64 %25)
  %27 = call i32 @mmu_notifier_invalidate_range_start(%struct.mmu_notifier_range* %12)
  %28 = load %struct.vm_area_struct*, %struct.vm_area_struct** %6, align 8
  %29 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load i32*, i32** %7, align 8
  %32 = call i32* @pmd_lock(i32 %30, i32* %31)
  store i32* %32, i32** %11, align 8
  %33 = load i32, i32* %9, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %39

35:                                               ; preds = %5
  %36 = load %struct.page*, %struct.page** %10, align 8
  %37 = icmp ne %struct.page* %36, null
  %38 = xor i1 %37, true
  br label %39

39:                                               ; preds = %35, %5
  %40 = phi i1 [ false, %5 ], [ %38, %35 ]
  %41 = zext i1 %40 to i32
  %42 = call i32 @VM_BUG_ON(i32 %41)
  %43 = load %struct.page*, %struct.page** %10, align 8
  %44 = icmp ne %struct.page* %43, null
  br i1 %44, label %45, label %52

45:                                               ; preds = %39
  %46 = load %struct.page*, %struct.page** %10, align 8
  %47 = load i32*, i32** %7, align 8
  %48 = load i32, i32* %47, align 4
  %49 = call %struct.page* @pmd_page(i32 %48)
  %50 = icmp ne %struct.page* %46, %49
  br i1 %50, label %51, label %52

51:                                               ; preds = %45
  br label %87

52:                                               ; preds = %45, %39
  %53 = load i32*, i32** %7, align 8
  %54 = load i32, i32* %53, align 4
  %55 = call i64 @pmd_trans_huge(i32 %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %68

57:                                               ; preds = %52
  %58 = load i32*, i32** %7, align 8
  %59 = load i32, i32* %58, align 4
  %60 = call %struct.page* @pmd_page(i32 %59)
  store %struct.page* %60, %struct.page** %10, align 8
  %61 = load %struct.page*, %struct.page** %10, align 8
  %62 = call i64 @PageMlocked(%struct.page* %61)
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %67

64:                                               ; preds = %57
  %65 = load %struct.page*, %struct.page** %10, align 8
  %66 = call i32 @clear_page_mlock(%struct.page* %65)
  br label %67

67:                                               ; preds = %64, %57
  br label %80

68:                                               ; preds = %52
  %69 = load i32*, i32** %7, align 8
  %70 = load i32, i32* %69, align 4
  %71 = call i64 @pmd_devmap(i32 %70)
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %79, label %73

73:                                               ; preds = %68
  %74 = load i32*, i32** %7, align 8
  %75 = load i32, i32* %74, align 4
  %76 = call i64 @is_pmd_migration_entry(i32 %75)
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %79, label %78

78:                                               ; preds = %73
  br label %87

79:                                               ; preds = %73, %68
  br label %80

80:                                               ; preds = %79, %67
  %81 = load %struct.vm_area_struct*, %struct.vm_area_struct** %6, align 8
  %82 = load i32*, i32** %7, align 8
  %83 = getelementptr inbounds %struct.mmu_notifier_range, %struct.mmu_notifier_range* %12, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = load i32, i32* %9, align 4
  %86 = call i32 @__split_huge_pmd_locked(%struct.vm_area_struct* %81, i32* %82, i32 %84, i32 %85)
  br label %87

87:                                               ; preds = %80, %78, %51
  %88 = load i32*, i32** %11, align 8
  %89 = call i32 @spin_unlock(i32* %88)
  %90 = call i32 @mmu_notifier_invalidate_range_only_end(%struct.mmu_notifier_range* %12)
  ret void
}

declare dso_local i32 @mmu_notifier_range_init(%struct.mmu_notifier_range*, i32, i32, %struct.vm_area_struct*, i32, i64, i64) #1

declare dso_local i32 @mmu_notifier_invalidate_range_start(%struct.mmu_notifier_range*) #1

declare dso_local i32* @pmd_lock(i32, i32*) #1

declare dso_local i32 @VM_BUG_ON(i32) #1

declare dso_local %struct.page* @pmd_page(i32) #1

declare dso_local i64 @pmd_trans_huge(i32) #1

declare dso_local i64 @PageMlocked(%struct.page*) #1

declare dso_local i32 @clear_page_mlock(%struct.page*) #1

declare dso_local i64 @pmd_devmap(i32) #1

declare dso_local i64 @is_pmd_migration_entry(i32) #1

declare dso_local i32 @__split_huge_pmd_locked(%struct.vm_area_struct*, i32*, i32, i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @mmu_notifier_invalidate_range_only_end(%struct.mmu_notifier_range*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
