; ModuleID = '/home/carl/AnghaBench/linux/mm/extr_mprotect.c_change_pmd_range.c'
source_filename = "/home/carl/AnghaBench/linux/mm/extr_mprotect.c_change_pmd_range.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vm_area_struct = type { i32 }
%struct.mmu_notifier_range = type { i64 }

@MMU_NOTIFY_PROTECTION_VMA = common dso_local global i32 0, align 4
@HPAGE_PMD_SIZE = common dso_local global i64 0, align 8
@HPAGE_PMD_NR = common dso_local global i32 0, align 4
@NUMA_HUGE_PTE_UPDATES = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.vm_area_struct*, i32*, i64, i64, i32, i32, i32)* @change_pmd_range to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @change_pmd_range(%struct.vm_area_struct* %0, i32* %1, i64 %2, i64 %3, i32 %4, i32 %5, i32 %6) #0 {
  %8 = alloca %struct.vm_area_struct*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32*, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca %struct.mmu_notifier_range, align 8
  %20 = alloca i64, align 8
  %21 = alloca i32, align 4
  store %struct.vm_area_struct* %0, %struct.vm_area_struct** %8, align 8
  store i32* %1, i32** %9, align 8
  store i64 %2, i64* %10, align 8
  store i64 %3, i64* %11, align 8
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  store i32 %6, i32* %14, align 4
  store i64 0, i64* %17, align 8
  store i64 0, i64* %18, align 8
  %22 = getelementptr inbounds %struct.mmu_notifier_range, %struct.mmu_notifier_range* %19, i32 0, i32 0
  store i64 0, i64* %22, align 8
  %23 = load i32*, i32** %9, align 8
  %24 = load i64, i64* %10, align 8
  %25 = call i32* @pmd_offset(i32* %23, i64 %24)
  store i32* %25, i32** %15, align 8
  br label %26

26:                                               ; preds = %126, %7
  %27 = load i64, i64* %10, align 8
  %28 = load i64, i64* %11, align 8
  %29 = call i64 @pmd_addr_end(i64 %27, i64 %28)
  store i64 %29, i64* %16, align 8
  %30 = load i32*, i32** %15, align 8
  %31 = load i32, i32* %30, align 4
  %32 = call i64 @is_swap_pmd(i32 %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %49, label %34

34:                                               ; preds = %26
  %35 = load i32*, i32** %15, align 8
  %36 = load i32, i32* %35, align 4
  %37 = call i64 @pmd_trans_huge(i32 %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %49, label %39

39:                                               ; preds = %34
  %40 = load i32*, i32** %15, align 8
  %41 = load i32, i32* %40, align 4
  %42 = call i64 @pmd_devmap(i32 %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %49, label %44

44:                                               ; preds = %39
  %45 = load i32*, i32** %15, align 8
  %46 = call i64 @pmd_none_or_clear_bad(i32* %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %49

48:                                               ; preds = %44
  br label %124

49:                                               ; preds = %44, %39, %34, %26
  %50 = getelementptr inbounds %struct.mmu_notifier_range, %struct.mmu_notifier_range* %19, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %63, label %53

53:                                               ; preds = %49
  %54 = load i32, i32* @MMU_NOTIFY_PROTECTION_VMA, align 4
  %55 = load %struct.vm_area_struct*, %struct.vm_area_struct** %8, align 8
  %56 = load %struct.vm_area_struct*, %struct.vm_area_struct** %8, align 8
  %57 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = load i64, i64* %10, align 8
  %60 = load i64, i64* %11, align 8
  %61 = call i32 @mmu_notifier_range_init(%struct.mmu_notifier_range* %19, i32 %54, i32 0, %struct.vm_area_struct* %55, i32 %58, i64 %59, i64 %60)
  %62 = call i32 @mmu_notifier_invalidate_range_start(%struct.mmu_notifier_range* %19)
  br label %63

63:                                               ; preds = %53, %49
  %64 = load i32*, i32** %15, align 8
  %65 = load i32, i32* %64, align 4
  %66 = call i64 @is_swap_pmd(i32 %65)
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %78, label %68

68:                                               ; preds = %63
  %69 = load i32*, i32** %15, align 8
  %70 = load i32, i32* %69, align 4
  %71 = call i64 @pmd_trans_huge(i32 %70)
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %78, label %73

73:                                               ; preds = %68
  %74 = load i32*, i32** %15, align 8
  %75 = load i32, i32* %74, align 4
  %76 = call i64 @pmd_devmap(i32 %75)
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %112

78:                                               ; preds = %73, %68, %63
  %79 = load i64, i64* %16, align 8
  %80 = load i64, i64* %10, align 8
  %81 = sub i64 %79, %80
  %82 = load i64, i64* @HPAGE_PMD_SIZE, align 8
  %83 = icmp ne i64 %81, %82
  br i1 %83, label %84, label %89

84:                                               ; preds = %78
  %85 = load %struct.vm_area_struct*, %struct.vm_area_struct** %8, align 8
  %86 = load i32*, i32** %15, align 8
  %87 = load i64, i64* %10, align 8
  %88 = call i32 @__split_huge_pmd(%struct.vm_area_struct* %85, i32* %86, i64 %87, i32 0, i32* null)
  br label %111

89:                                               ; preds = %78
  %90 = load %struct.vm_area_struct*, %struct.vm_area_struct** %8, align 8
  %91 = load i32*, i32** %15, align 8
  %92 = load i64, i64* %10, align 8
  %93 = load i32, i32* %12, align 4
  %94 = load i32, i32* %14, align 4
  %95 = call i32 @change_huge_pmd(%struct.vm_area_struct* %90, i32* %91, i64 %92, i32 %93, i32 %94)
  store i32 %95, i32* %21, align 4
  %96 = load i32, i32* %21, align 4
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %110

98:                                               ; preds = %89
  %99 = load i32, i32* %21, align 4
  %100 = load i32, i32* @HPAGE_PMD_NR, align 4
  %101 = icmp eq i32 %99, %100
  br i1 %101, label %102, label %109

102:                                              ; preds = %98
  %103 = load i32, i32* @HPAGE_PMD_NR, align 4
  %104 = sext i32 %103 to i64
  %105 = load i64, i64* %17, align 8
  %106 = add i64 %105, %104
  store i64 %106, i64* %17, align 8
  %107 = load i64, i64* %18, align 8
  %108 = add i64 %107, 1
  store i64 %108, i64* %18, align 8
  br label %109

109:                                              ; preds = %102, %98
  br label %124

110:                                              ; preds = %89
  br label %111

111:                                              ; preds = %110, %84
  br label %112

112:                                              ; preds = %111, %73
  %113 = load %struct.vm_area_struct*, %struct.vm_area_struct** %8, align 8
  %114 = load i32*, i32** %15, align 8
  %115 = load i64, i64* %10, align 8
  %116 = load i64, i64* %16, align 8
  %117 = load i32, i32* %12, align 4
  %118 = load i32, i32* %13, align 4
  %119 = load i32, i32* %14, align 4
  %120 = call i64 @change_pte_range(%struct.vm_area_struct* %113, i32* %114, i64 %115, i64 %116, i32 %117, i32 %118, i32 %119)
  store i64 %120, i64* %20, align 8
  %121 = load i64, i64* %20, align 8
  %122 = load i64, i64* %17, align 8
  %123 = add i64 %122, %121
  store i64 %123, i64* %17, align 8
  br label %124

124:                                              ; preds = %112, %109, %48
  %125 = call i32 (...) @cond_resched()
  br label %126

126:                                              ; preds = %124
  %127 = load i32*, i32** %15, align 8
  %128 = getelementptr inbounds i32, i32* %127, i32 1
  store i32* %128, i32** %15, align 8
  %129 = load i64, i64* %16, align 8
  store i64 %129, i64* %10, align 8
  %130 = load i64, i64* %10, align 8
  %131 = load i64, i64* %11, align 8
  %132 = icmp ne i64 %130, %131
  br i1 %132, label %26, label %133

133:                                              ; preds = %126
  %134 = getelementptr inbounds %struct.mmu_notifier_range, %struct.mmu_notifier_range* %19, i32 0, i32 0
  %135 = load i64, i64* %134, align 8
  %136 = icmp ne i64 %135, 0
  br i1 %136, label %137, label %139

137:                                              ; preds = %133
  %138 = call i32 @mmu_notifier_invalidate_range_end(%struct.mmu_notifier_range* %19)
  br label %139

139:                                              ; preds = %137, %133
  %140 = load i64, i64* %18, align 8
  %141 = icmp ne i64 %140, 0
  br i1 %141, label %142, label %146

142:                                              ; preds = %139
  %143 = load i32, i32* @NUMA_HUGE_PTE_UPDATES, align 4
  %144 = load i64, i64* %18, align 8
  %145 = call i32 @count_vm_numa_events(i32 %143, i64 %144)
  br label %146

146:                                              ; preds = %142, %139
  %147 = load i64, i64* %17, align 8
  ret i64 %147
}

declare dso_local i32* @pmd_offset(i32*, i64) #1

declare dso_local i64 @pmd_addr_end(i64, i64) #1

declare dso_local i64 @is_swap_pmd(i32) #1

declare dso_local i64 @pmd_trans_huge(i32) #1

declare dso_local i64 @pmd_devmap(i32) #1

declare dso_local i64 @pmd_none_or_clear_bad(i32*) #1

declare dso_local i32 @mmu_notifier_range_init(%struct.mmu_notifier_range*, i32, i32, %struct.vm_area_struct*, i32, i64, i64) #1

declare dso_local i32 @mmu_notifier_invalidate_range_start(%struct.mmu_notifier_range*) #1

declare dso_local i32 @__split_huge_pmd(%struct.vm_area_struct*, i32*, i64, i32, i32*) #1

declare dso_local i32 @change_huge_pmd(%struct.vm_area_struct*, i32*, i64, i32, i32) #1

declare dso_local i64 @change_pte_range(%struct.vm_area_struct*, i32*, i64, i64, i32, i32, i32) #1

declare dso_local i32 @cond_resched(...) #1

declare dso_local i32 @mmu_notifier_invalidate_range_end(%struct.mmu_notifier_range*) #1

declare dso_local i32 @count_vm_numa_events(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
