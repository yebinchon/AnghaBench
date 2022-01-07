; ModuleID = '/home/carl/AnghaBench/linux/mm/extr_huge_memory.c_insert_pfn_pmd.c'
source_filename = "/home/carl/AnghaBench/linux/mm/extr_huge_memory.c_insert_pfn_pmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vm_area_struct = type { %struct.mm_struct* }
%struct.mm_struct = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vm_area_struct*, i64, i32*, i32, i32, i32, i32*)* @insert_pfn_pmd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @insert_pfn_pmd(%struct.vm_area_struct* %0, i64 %1, i32* %2, i32 %3, i32 %4, i32 %5, i32* %6) #0 {
  %8 = alloca %struct.vm_area_struct*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32*, align 8
  %15 = alloca %struct.mm_struct*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32*, align 8
  store %struct.vm_area_struct* %0, %struct.vm_area_struct** %8, align 8
  store i64 %1, i64* %9, align 8
  store i32* %2, i32** %10, align 8
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  store i32* %6, i32** %14, align 8
  %18 = load %struct.vm_area_struct*, %struct.vm_area_struct** %8, align 8
  %19 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %18, i32 0, i32 0
  %20 = load %struct.mm_struct*, %struct.mm_struct** %19, align 8
  store %struct.mm_struct* %20, %struct.mm_struct** %15, align 8
  %21 = load %struct.mm_struct*, %struct.mm_struct** %15, align 8
  %22 = load i32*, i32** %10, align 8
  %23 = call i32* @pmd_lock(%struct.mm_struct* %21, i32* %22)
  store i32* %23, i32** %17, align 8
  %24 = load i32*, i32** %10, align 8
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @pmd_none(i32 %25)
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %67, label %28

28:                                               ; preds = %7
  %29 = load i32, i32* %13, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %66

31:                                               ; preds = %28
  %32 = load i32*, i32** %10, align 8
  %33 = load i32, i32* %32, align 4
  %34 = call i64 @pmd_pfn(i32 %33)
  %35 = load i32, i32* %11, align 4
  %36 = call i64 @pfn_t_to_pfn(i32 %35)
  %37 = icmp ne i64 %34, %36
  br i1 %37, label %38, label %46

38:                                               ; preds = %31
  %39 = load i32*, i32** %10, align 8
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @is_huge_zero_pmd(i32 %40)
  %42 = icmp ne i32 %41, 0
  %43 = xor i1 %42, true
  %44 = zext i1 %43 to i32
  %45 = call i32 @WARN_ON_ONCE(i32 %44)
  br label %108

46:                                               ; preds = %31
  %47 = load i32*, i32** %10, align 8
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @pmd_mkyoung(i32 %48)
  store i32 %49, i32* %16, align 4
  %50 = load i32, i32* %16, align 4
  %51 = call i32 @pmd_mkdirty(i32 %50)
  %52 = load %struct.vm_area_struct*, %struct.vm_area_struct** %8, align 8
  %53 = call i32 @maybe_pmd_mkwrite(i32 %51, %struct.vm_area_struct* %52)
  store i32 %53, i32* %16, align 4
  %54 = load %struct.vm_area_struct*, %struct.vm_area_struct** %8, align 8
  %55 = load i64, i64* %9, align 8
  %56 = load i32*, i32** %10, align 8
  %57 = load i32, i32* %16, align 4
  %58 = call i64 @pmdp_set_access_flags(%struct.vm_area_struct* %54, i64 %55, i32* %56, i32 %57, i32 1)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %65

60:                                               ; preds = %46
  %61 = load %struct.vm_area_struct*, %struct.vm_area_struct** %8, align 8
  %62 = load i64, i64* %9, align 8
  %63 = load i32*, i32** %10, align 8
  %64 = call i32 @update_mmu_cache_pmd(%struct.vm_area_struct* %61, i64 %62, i32* %63)
  br label %65

65:                                               ; preds = %60, %46
  br label %66

66:                                               ; preds = %65, %28
  br label %108

67:                                               ; preds = %7
  %68 = load i32, i32* %11, align 4
  %69 = load i32, i32* %12, align 4
  %70 = call i32 @pfn_t_pmd(i32 %68, i32 %69)
  %71 = call i32 @pmd_mkhuge(i32 %70)
  store i32 %71, i32* %16, align 4
  %72 = load i32, i32* %11, align 4
  %73 = call i64 @pfn_t_devmap(i32 %72)
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %78

75:                                               ; preds = %67
  %76 = load i32, i32* %16, align 4
  %77 = call i32 @pmd_mkdevmap(i32 %76)
  store i32 %77, i32* %16, align 4
  br label %78

78:                                               ; preds = %75, %67
  %79 = load i32, i32* %13, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %88

81:                                               ; preds = %78
  %82 = load i32, i32* %16, align 4
  %83 = call i32 @pmd_mkdirty(i32 %82)
  %84 = call i32 @pmd_mkyoung(i32 %83)
  store i32 %84, i32* %16, align 4
  %85 = load i32, i32* %16, align 4
  %86 = load %struct.vm_area_struct*, %struct.vm_area_struct** %8, align 8
  %87 = call i32 @maybe_pmd_mkwrite(i32 %85, %struct.vm_area_struct* %86)
  store i32 %87, i32* %16, align 4
  br label %88

88:                                               ; preds = %81, %78
  %89 = load i32*, i32** %14, align 8
  %90 = icmp ne i32* %89, null
  br i1 %90, label %91, label %98

91:                                               ; preds = %88
  %92 = load %struct.mm_struct*, %struct.mm_struct** %15, align 8
  %93 = load i32*, i32** %10, align 8
  %94 = load i32*, i32** %14, align 8
  %95 = call i32 @pgtable_trans_huge_deposit(%struct.mm_struct* %92, i32* %93, i32* %94)
  %96 = load %struct.mm_struct*, %struct.mm_struct** %15, align 8
  %97 = call i32 @mm_inc_nr_ptes(%struct.mm_struct* %96)
  store i32* null, i32** %14, align 8
  br label %98

98:                                               ; preds = %91, %88
  %99 = load %struct.mm_struct*, %struct.mm_struct** %15, align 8
  %100 = load i64, i64* %9, align 8
  %101 = load i32*, i32** %10, align 8
  %102 = load i32, i32* %16, align 4
  %103 = call i32 @set_pmd_at(%struct.mm_struct* %99, i64 %100, i32* %101, i32 %102)
  %104 = load %struct.vm_area_struct*, %struct.vm_area_struct** %8, align 8
  %105 = load i64, i64* %9, align 8
  %106 = load i32*, i32** %10, align 8
  %107 = call i32 @update_mmu_cache_pmd(%struct.vm_area_struct* %104, i64 %105, i32* %106)
  br label %108

108:                                              ; preds = %98, %66, %38
  %109 = load i32*, i32** %17, align 8
  %110 = call i32 @spin_unlock(i32* %109)
  %111 = load i32*, i32** %14, align 8
  %112 = icmp ne i32* %111, null
  br i1 %112, label %113, label %117

113:                                              ; preds = %108
  %114 = load %struct.mm_struct*, %struct.mm_struct** %15, align 8
  %115 = load i32*, i32** %14, align 8
  %116 = call i32 @pte_free(%struct.mm_struct* %114, i32* %115)
  br label %117

117:                                              ; preds = %113, %108
  ret void
}

declare dso_local i32* @pmd_lock(%struct.mm_struct*, i32*) #1

declare dso_local i32 @pmd_none(i32) #1

declare dso_local i64 @pmd_pfn(i32) #1

declare dso_local i64 @pfn_t_to_pfn(i32) #1

declare dso_local i32 @WARN_ON_ONCE(i32) #1

declare dso_local i32 @is_huge_zero_pmd(i32) #1

declare dso_local i32 @pmd_mkyoung(i32) #1

declare dso_local i32 @maybe_pmd_mkwrite(i32, %struct.vm_area_struct*) #1

declare dso_local i32 @pmd_mkdirty(i32) #1

declare dso_local i64 @pmdp_set_access_flags(%struct.vm_area_struct*, i64, i32*, i32, i32) #1

declare dso_local i32 @update_mmu_cache_pmd(%struct.vm_area_struct*, i64, i32*) #1

declare dso_local i32 @pmd_mkhuge(i32) #1

declare dso_local i32 @pfn_t_pmd(i32, i32) #1

declare dso_local i64 @pfn_t_devmap(i32) #1

declare dso_local i32 @pmd_mkdevmap(i32) #1

declare dso_local i32 @pgtable_trans_huge_deposit(%struct.mm_struct*, i32*, i32*) #1

declare dso_local i32 @mm_inc_nr_ptes(%struct.mm_struct*) #1

declare dso_local i32 @set_pmd_at(%struct.mm_struct*, i64, i32*, i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @pte_free(%struct.mm_struct*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
