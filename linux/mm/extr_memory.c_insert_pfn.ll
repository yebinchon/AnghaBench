; ModuleID = '/home/carl/AnghaBench/linux/mm/extr_memory.c_insert_pfn.c'
source_filename = "/home/carl/AnghaBench/linux/mm/extr_memory.c_insert_pfn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vm_area_struct = type { %struct.mm_struct* }
%struct.mm_struct = type { i32 }

@VM_FAULT_OOM = common dso_local global i32 0, align 4
@VM_FAULT_NOPAGE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vm_area_struct*, i64, i32, i32, i32)* @insert_pfn to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @insert_pfn(%struct.vm_area_struct* %0, i64 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.vm_area_struct*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.mm_struct*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32*, align 8
  store %struct.vm_area_struct* %0, %struct.vm_area_struct** %7, align 8
  store i64 %1, i64* %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %16 = load %struct.vm_area_struct*, %struct.vm_area_struct** %7, align 8
  %17 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %16, i32 0, i32 0
  %18 = load %struct.mm_struct*, %struct.mm_struct** %17, align 8
  store %struct.mm_struct* %18, %struct.mm_struct** %12, align 8
  %19 = load %struct.mm_struct*, %struct.mm_struct** %12, align 8
  %20 = load i64, i64* %8, align 8
  %21 = call i32* @get_locked_pte(%struct.mm_struct* %19, i64 %20, i32** %15)
  store i32* %21, i32** %13, align 8
  %22 = load i32*, i32** %13, align 8
  %23 = icmp ne i32* %22, null
  br i1 %23, label %26, label %24

24:                                               ; preds = %5
  %25 = load i32, i32* @VM_FAULT_OOM, align 4
  store i32 %25, i32* %6, align 4
  br label %110

26:                                               ; preds = %5
  %27 = load i32*, i32** %13, align 8
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @pte_none(i32 %28)
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %71, label %31

31:                                               ; preds = %26
  %32 = load i32, i32* %11, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %70

34:                                               ; preds = %31
  %35 = load i32*, i32** %13, align 8
  %36 = load i32, i32* %35, align 4
  %37 = call i64 @pte_pfn(i32 %36)
  %38 = load i32, i32* %9, align 4
  %39 = call i64 @pfn_t_to_pfn(i32 %38)
  %40 = icmp ne i64 %37, %39
  br i1 %40, label %41, label %50

41:                                               ; preds = %34
  %42 = load i32*, i32** %13, align 8
  %43 = load i32, i32* %42, align 4
  %44 = call i64 @pte_pfn(i32 %43)
  %45 = call i32 @is_zero_pfn(i64 %44)
  %46 = icmp ne i32 %45, 0
  %47 = xor i1 %46, true
  %48 = zext i1 %47 to i32
  %49 = call i32 @WARN_ON_ONCE(i32 %48)
  br label %105

50:                                               ; preds = %34
  %51 = load i32*, i32** %13, align 8
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @pte_mkyoung(i32 %52)
  store i32 %53, i32* %14, align 4
  %54 = load i32, i32* %14, align 4
  %55 = call i32 @pte_mkdirty(i32 %54)
  %56 = load %struct.vm_area_struct*, %struct.vm_area_struct** %7, align 8
  %57 = call i32 @maybe_mkwrite(i32 %55, %struct.vm_area_struct* %56)
  store i32 %57, i32* %14, align 4
  %58 = load %struct.vm_area_struct*, %struct.vm_area_struct** %7, align 8
  %59 = load i64, i64* %8, align 8
  %60 = load i32*, i32** %13, align 8
  %61 = load i32, i32* %14, align 4
  %62 = call i64 @ptep_set_access_flags(%struct.vm_area_struct* %58, i64 %59, i32* %60, i32 %61, i32 1)
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %69

64:                                               ; preds = %50
  %65 = load %struct.vm_area_struct*, %struct.vm_area_struct** %7, align 8
  %66 = load i64, i64* %8, align 8
  %67 = load i32*, i32** %13, align 8
  %68 = call i32 @update_mmu_cache(%struct.vm_area_struct* %65, i64 %66, i32* %67)
  br label %69

69:                                               ; preds = %64, %50
  br label %70

70:                                               ; preds = %69, %31
  br label %105

71:                                               ; preds = %26
  %72 = load i32, i32* %9, align 4
  %73 = call i64 @pfn_t_devmap(i32 %72)
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %80

75:                                               ; preds = %71
  %76 = load i32, i32* %9, align 4
  %77 = load i32, i32* %10, align 4
  %78 = call i32 @pfn_t_pte(i32 %76, i32 %77)
  %79 = call i32 @pte_mkdevmap(i32 %78)
  store i32 %79, i32* %14, align 4
  br label %85

80:                                               ; preds = %71
  %81 = load i32, i32* %9, align 4
  %82 = load i32, i32* %10, align 4
  %83 = call i32 @pfn_t_pte(i32 %81, i32 %82)
  %84 = call i32 @pte_mkspecial(i32 %83)
  store i32 %84, i32* %14, align 4
  br label %85

85:                                               ; preds = %80, %75
  %86 = load i32, i32* %11, align 4
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %95

88:                                               ; preds = %85
  %89 = load i32, i32* %14, align 4
  %90 = call i32 @pte_mkyoung(i32 %89)
  store i32 %90, i32* %14, align 4
  %91 = load i32, i32* %14, align 4
  %92 = call i32 @pte_mkdirty(i32 %91)
  %93 = load %struct.vm_area_struct*, %struct.vm_area_struct** %7, align 8
  %94 = call i32 @maybe_mkwrite(i32 %92, %struct.vm_area_struct* %93)
  store i32 %94, i32* %14, align 4
  br label %95

95:                                               ; preds = %88, %85
  %96 = load %struct.mm_struct*, %struct.mm_struct** %12, align 8
  %97 = load i64, i64* %8, align 8
  %98 = load i32*, i32** %13, align 8
  %99 = load i32, i32* %14, align 4
  %100 = call i32 @set_pte_at(%struct.mm_struct* %96, i64 %97, i32* %98, i32 %99)
  %101 = load %struct.vm_area_struct*, %struct.vm_area_struct** %7, align 8
  %102 = load i64, i64* %8, align 8
  %103 = load i32*, i32** %13, align 8
  %104 = call i32 @update_mmu_cache(%struct.vm_area_struct* %101, i64 %102, i32* %103)
  br label %105

105:                                              ; preds = %95, %70, %41
  %106 = load i32*, i32** %13, align 8
  %107 = load i32*, i32** %15, align 8
  %108 = call i32 @pte_unmap_unlock(i32* %106, i32* %107)
  %109 = load i32, i32* @VM_FAULT_NOPAGE, align 4
  store i32 %109, i32* %6, align 4
  br label %110

110:                                              ; preds = %105, %24
  %111 = load i32, i32* %6, align 4
  ret i32 %111
}

declare dso_local i32* @get_locked_pte(%struct.mm_struct*, i64, i32**) #1

declare dso_local i32 @pte_none(i32) #1

declare dso_local i64 @pte_pfn(i32) #1

declare dso_local i64 @pfn_t_to_pfn(i32) #1

declare dso_local i32 @WARN_ON_ONCE(i32) #1

declare dso_local i32 @is_zero_pfn(i64) #1

declare dso_local i32 @pte_mkyoung(i32) #1

declare dso_local i32 @maybe_mkwrite(i32, %struct.vm_area_struct*) #1

declare dso_local i32 @pte_mkdirty(i32) #1

declare dso_local i64 @ptep_set_access_flags(%struct.vm_area_struct*, i64, i32*, i32, i32) #1

declare dso_local i32 @update_mmu_cache(%struct.vm_area_struct*, i64, i32*) #1

declare dso_local i64 @pfn_t_devmap(i32) #1

declare dso_local i32 @pte_mkdevmap(i32) #1

declare dso_local i32 @pfn_t_pte(i32, i32) #1

declare dso_local i32 @pte_mkspecial(i32) #1

declare dso_local i32 @set_pte_at(%struct.mm_struct*, i64, i32*, i32) #1

declare dso_local i32 @pte_unmap_unlock(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
