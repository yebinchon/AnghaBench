; ModuleID = '/home/carl/AnghaBench/linux/mm/extr_mremap.c_move_ptes.c'
source_filename = "/home/carl/AnghaBench/linux/mm/extr_mremap.c_move_ptes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vm_area_struct = type { i32, %struct.mm_struct* }
%struct.mm_struct = type { i32 }

@SINGLE_DEPTH_NESTING = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vm_area_struct*, i32*, i64, i64, %struct.vm_area_struct*, i32*, i64, i32)* @move_ptes to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @move_ptes(%struct.vm_area_struct* %0, i32* %1, i64 %2, i64 %3, %struct.vm_area_struct* %4, i32* %5, i64 %6, i32 %7) #0 {
  %9 = alloca %struct.vm_area_struct*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca %struct.vm_area_struct*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  %17 = alloca %struct.mm_struct*, align 8
  %18 = alloca i32*, align 8
  %19 = alloca i32*, align 8
  %20 = alloca i32, align 4
  %21 = alloca i32*, align 8
  %22 = alloca i32*, align 8
  %23 = alloca i32, align 4
  %24 = alloca i64, align 8
  store %struct.vm_area_struct* %0, %struct.vm_area_struct** %9, align 8
  store i32* %1, i32** %10, align 8
  store i64 %2, i64* %11, align 8
  store i64 %3, i64* %12, align 8
  store %struct.vm_area_struct* %4, %struct.vm_area_struct** %13, align 8
  store i32* %5, i32** %14, align 8
  store i64 %6, i64* %15, align 8
  store i32 %7, i32* %16, align 4
  %25 = load %struct.vm_area_struct*, %struct.vm_area_struct** %9, align 8
  %26 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %25, i32 0, i32 1
  %27 = load %struct.mm_struct*, %struct.mm_struct** %26, align 8
  store %struct.mm_struct* %27, %struct.mm_struct** %17, align 8
  store i32 0, i32* %23, align 4
  %28 = load i64, i64* %12, align 8
  %29 = load i64, i64* %11, align 8
  %30 = sub i64 %28, %29
  store i64 %30, i64* %24, align 8
  %31 = load i32, i32* %16, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %36

33:                                               ; preds = %8
  %34 = load %struct.vm_area_struct*, %struct.vm_area_struct** %9, align 8
  %35 = call i32 @take_rmap_locks(%struct.vm_area_struct* %34)
  br label %36

36:                                               ; preds = %33, %8
  %37 = load %struct.mm_struct*, %struct.mm_struct** %17, align 8
  %38 = load i32*, i32** %10, align 8
  %39 = load i64, i64* %11, align 8
  %40 = call i32* @pte_offset_map_lock(%struct.mm_struct* %37, i32* %38, i64 %39, i32** %21)
  store i32* %40, i32** %18, align 8
  %41 = load i32*, i32** %14, align 8
  %42 = load i64, i64* %15, align 8
  %43 = call i32* @pte_offset_map(i32* %41, i64 %42)
  store i32* %43, i32** %19, align 8
  %44 = load %struct.mm_struct*, %struct.mm_struct** %17, align 8
  %45 = load i32*, i32** %14, align 8
  %46 = call i32* @pte_lockptr(%struct.mm_struct* %44, i32* %45)
  store i32* %46, i32** %22, align 8
  %47 = load i32*, i32** %22, align 8
  %48 = load i32*, i32** %21, align 8
  %49 = icmp ne i32* %47, %48
  br i1 %49, label %50, label %54

50:                                               ; preds = %36
  %51 = load i32*, i32** %22, align 8
  %52 = load i32, i32* @SINGLE_DEPTH_NESTING, align 4
  %53 = call i32 @spin_lock_nested(i32* %51, i32 %52)
  br label %54

54:                                               ; preds = %50, %36
  %55 = load %struct.vm_area_struct*, %struct.vm_area_struct** %9, align 8
  %56 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %55, i32 0, i32 1
  %57 = load %struct.mm_struct*, %struct.mm_struct** %56, align 8
  %58 = call i32 @flush_tlb_batched_pending(%struct.mm_struct* %57)
  %59 = call i32 (...) @arch_enter_lazy_mmu_mode()
  br label %60

60:                                               ; preds = %94, %54
  %61 = load i64, i64* %11, align 8
  %62 = load i64, i64* %12, align 8
  %63 = icmp ult i64 %61, %62
  br i1 %63, label %64, label %105

64:                                               ; preds = %60
  %65 = load i32*, i32** %18, align 8
  %66 = load i32, i32* %65, align 4
  %67 = call i64 @pte_none(i32 %66)
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %70

69:                                               ; preds = %64
  br label %94

70:                                               ; preds = %64
  %71 = load %struct.mm_struct*, %struct.mm_struct** %17, align 8
  %72 = load i64, i64* %11, align 8
  %73 = load i32*, i32** %18, align 8
  %74 = call i32 @ptep_get_and_clear(%struct.mm_struct* %71, i64 %72, i32* %73)
  store i32 %74, i32* %20, align 4
  %75 = load i32, i32* %20, align 4
  %76 = call i64 @pte_present(i32 %75)
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %79

78:                                               ; preds = %70
  store i32 1, i32* %23, align 4
  br label %79

79:                                               ; preds = %78, %70
  %80 = load i32, i32* %20, align 4
  %81 = load %struct.vm_area_struct*, %struct.vm_area_struct** %13, align 8
  %82 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 8
  %84 = load i64, i64* %11, align 8
  %85 = load i64, i64* %15, align 8
  %86 = call i32 @move_pte(i32 %80, i32 %83, i64 %84, i64 %85)
  store i32 %86, i32* %20, align 4
  %87 = load i32, i32* %20, align 4
  %88 = call i32 @move_soft_dirty_pte(i32 %87)
  store i32 %88, i32* %20, align 4
  %89 = load %struct.mm_struct*, %struct.mm_struct** %17, align 8
  %90 = load i64, i64* %15, align 8
  %91 = load i32*, i32** %19, align 8
  %92 = load i32, i32* %20, align 4
  %93 = call i32 @set_pte_at(%struct.mm_struct* %89, i64 %90, i32* %91, i32 %92)
  br label %94

94:                                               ; preds = %79, %69
  %95 = load i32*, i32** %18, align 8
  %96 = getelementptr inbounds i32, i32* %95, i32 1
  store i32* %96, i32** %18, align 8
  %97 = load i64, i64* @PAGE_SIZE, align 8
  %98 = load i64, i64* %11, align 8
  %99 = add i64 %98, %97
  store i64 %99, i64* %11, align 8
  %100 = load i32*, i32** %19, align 8
  %101 = getelementptr inbounds i32, i32* %100, i32 1
  store i32* %101, i32** %19, align 8
  %102 = load i64, i64* @PAGE_SIZE, align 8
  %103 = load i64, i64* %15, align 8
  %104 = add i64 %103, %102
  store i64 %104, i64* %15, align 8
  br label %60

105:                                              ; preds = %60
  %106 = call i32 (...) @arch_leave_lazy_mmu_mode()
  %107 = load i32, i32* %23, align 4
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %109, label %116

109:                                              ; preds = %105
  %110 = load %struct.vm_area_struct*, %struct.vm_area_struct** %9, align 8
  %111 = load i64, i64* %12, align 8
  %112 = load i64, i64* %24, align 8
  %113 = sub i64 %111, %112
  %114 = load i64, i64* %12, align 8
  %115 = call i32 @flush_tlb_range(%struct.vm_area_struct* %110, i64 %113, i64 %114)
  br label %116

116:                                              ; preds = %109, %105
  %117 = load i32*, i32** %22, align 8
  %118 = load i32*, i32** %21, align 8
  %119 = icmp ne i32* %117, %118
  br i1 %119, label %120, label %123

120:                                              ; preds = %116
  %121 = load i32*, i32** %22, align 8
  %122 = call i32 @spin_unlock(i32* %121)
  br label %123

123:                                              ; preds = %120, %116
  %124 = load i32*, i32** %19, align 8
  %125 = getelementptr inbounds i32, i32* %124, i64 -1
  %126 = call i32 @pte_unmap(i32* %125)
  %127 = load i32*, i32** %18, align 8
  %128 = getelementptr inbounds i32, i32* %127, i64 -1
  %129 = load i32*, i32** %21, align 8
  %130 = call i32 @pte_unmap_unlock(i32* %128, i32* %129)
  %131 = load i32, i32* %16, align 4
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %133, label %136

133:                                              ; preds = %123
  %134 = load %struct.vm_area_struct*, %struct.vm_area_struct** %9, align 8
  %135 = call i32 @drop_rmap_locks(%struct.vm_area_struct* %134)
  br label %136

136:                                              ; preds = %133, %123
  ret void
}

declare dso_local i32 @take_rmap_locks(%struct.vm_area_struct*) #1

declare dso_local i32* @pte_offset_map_lock(%struct.mm_struct*, i32*, i64, i32**) #1

declare dso_local i32* @pte_offset_map(i32*, i64) #1

declare dso_local i32* @pte_lockptr(%struct.mm_struct*, i32*) #1

declare dso_local i32 @spin_lock_nested(i32*, i32) #1

declare dso_local i32 @flush_tlb_batched_pending(%struct.mm_struct*) #1

declare dso_local i32 @arch_enter_lazy_mmu_mode(...) #1

declare dso_local i64 @pte_none(i32) #1

declare dso_local i32 @ptep_get_and_clear(%struct.mm_struct*, i64, i32*) #1

declare dso_local i64 @pte_present(i32) #1

declare dso_local i32 @move_pte(i32, i32, i64, i64) #1

declare dso_local i32 @move_soft_dirty_pte(i32) #1

declare dso_local i32 @set_pte_at(%struct.mm_struct*, i64, i32*, i32) #1

declare dso_local i32 @arch_leave_lazy_mmu_mode(...) #1

declare dso_local i32 @flush_tlb_range(%struct.vm_area_struct*, i64, i64) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @pte_unmap(i32*) #1

declare dso_local i32 @pte_unmap_unlock(i32*, i32*) #1

declare dso_local i32 @drop_rmap_locks(%struct.vm_area_struct*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
