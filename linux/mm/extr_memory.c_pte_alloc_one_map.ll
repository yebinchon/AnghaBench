; ModuleID = '/home/carl/AnghaBench/linux/mm/extr_memory.c_pte_alloc_one_map.c'
source_filename = "/home/carl/AnghaBench/linux/mm/extr_memory.c_pte_alloc_one_map.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vm_fault = type { i32, i32, i32*, i32, i32*, %struct.vm_area_struct* }
%struct.vm_area_struct = type { i32 }

@VM_FAULT_OOM = common dso_local global i32 0, align 4
@VM_FAULT_NOPAGE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vm_fault*)* @pte_alloc_one_map to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pte_alloc_one_map(%struct.vm_fault* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.vm_fault*, align 8
  %4 = alloca %struct.vm_area_struct*, align 8
  store %struct.vm_fault* %0, %struct.vm_fault** %3, align 8
  %5 = load %struct.vm_fault*, %struct.vm_fault** %3, align 8
  %6 = getelementptr inbounds %struct.vm_fault, %struct.vm_fault* %5, i32 0, i32 5
  %7 = load %struct.vm_area_struct*, %struct.vm_area_struct** %6, align 8
  store %struct.vm_area_struct* %7, %struct.vm_area_struct** %4, align 8
  %8 = load %struct.vm_fault*, %struct.vm_fault** %3, align 8
  %9 = getelementptr inbounds %struct.vm_fault, %struct.vm_fault* %8, i32 0, i32 2
  %10 = load i32*, i32** %9, align 8
  %11 = load i32, i32* %10, align 4
  %12 = call i32 @pmd_none(i32 %11)
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %15, label %14

14:                                               ; preds = %1
  br label %80

15:                                               ; preds = %1
  %16 = load %struct.vm_fault*, %struct.vm_fault** %3, align 8
  %17 = getelementptr inbounds %struct.vm_fault, %struct.vm_fault* %16, i32 0, i32 4
  %18 = load i32*, i32** %17, align 8
  %19 = icmp ne i32* %18, null
  br i1 %19, label %20, label %66

20:                                               ; preds = %15
  %21 = load %struct.vm_area_struct*, %struct.vm_area_struct** %4, align 8
  %22 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.vm_fault*, %struct.vm_fault** %3, align 8
  %25 = getelementptr inbounds %struct.vm_fault, %struct.vm_fault* %24, i32 0, i32 2
  %26 = load i32*, i32** %25, align 8
  %27 = call i32 @pmd_lock(i32 %23, i32* %26)
  %28 = load %struct.vm_fault*, %struct.vm_fault** %3, align 8
  %29 = getelementptr inbounds %struct.vm_fault, %struct.vm_fault* %28, i32 0, i32 0
  store i32 %27, i32* %29, align 8
  %30 = load %struct.vm_fault*, %struct.vm_fault** %3, align 8
  %31 = getelementptr inbounds %struct.vm_fault, %struct.vm_fault* %30, i32 0, i32 2
  %32 = load i32*, i32** %31, align 8
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @pmd_none(i32 %33)
  %35 = icmp ne i32 %34, 0
  %36 = xor i1 %35, true
  %37 = zext i1 %36 to i32
  %38 = call i64 @unlikely(i32 %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %45

40:                                               ; preds = %20
  %41 = load %struct.vm_fault*, %struct.vm_fault** %3, align 8
  %42 = getelementptr inbounds %struct.vm_fault, %struct.vm_fault* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = call i32 @spin_unlock(i32 %43)
  br label %80

45:                                               ; preds = %20
  %46 = load %struct.vm_area_struct*, %struct.vm_area_struct** %4, align 8
  %47 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @mm_inc_nr_ptes(i32 %48)
  %50 = load %struct.vm_area_struct*, %struct.vm_area_struct** %4, align 8
  %51 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.vm_fault*, %struct.vm_fault** %3, align 8
  %54 = getelementptr inbounds %struct.vm_fault, %struct.vm_fault* %53, i32 0, i32 2
  %55 = load i32*, i32** %54, align 8
  %56 = load %struct.vm_fault*, %struct.vm_fault** %3, align 8
  %57 = getelementptr inbounds %struct.vm_fault, %struct.vm_fault* %56, i32 0, i32 4
  %58 = load i32*, i32** %57, align 8
  %59 = call i32 @pmd_populate(i32 %52, i32* %55, i32* %58)
  %60 = load %struct.vm_fault*, %struct.vm_fault** %3, align 8
  %61 = getelementptr inbounds %struct.vm_fault, %struct.vm_fault* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = call i32 @spin_unlock(i32 %62)
  %64 = load %struct.vm_fault*, %struct.vm_fault** %3, align 8
  %65 = getelementptr inbounds %struct.vm_fault, %struct.vm_fault* %64, i32 0, i32 4
  store i32* null, i32** %65, align 8
  br label %79

66:                                               ; preds = %15
  %67 = load %struct.vm_area_struct*, %struct.vm_area_struct** %4, align 8
  %68 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = load %struct.vm_fault*, %struct.vm_fault** %3, align 8
  %71 = getelementptr inbounds %struct.vm_fault, %struct.vm_fault* %70, i32 0, i32 2
  %72 = load i32*, i32** %71, align 8
  %73 = call i32 @pte_alloc(i32 %69, i32* %72)
  %74 = call i64 @unlikely(i32 %73)
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %78

76:                                               ; preds = %66
  %77 = load i32, i32* @VM_FAULT_OOM, align 4
  store i32 %77, i32* %2, align 4
  br label %103

78:                                               ; preds = %66
  br label %79

79:                                               ; preds = %78, %45
  br label %80

80:                                               ; preds = %79, %40, %14
  %81 = load %struct.vm_fault*, %struct.vm_fault** %3, align 8
  %82 = getelementptr inbounds %struct.vm_fault, %struct.vm_fault* %81, i32 0, i32 2
  %83 = load i32*, i32** %82, align 8
  %84 = call i64 @pmd_devmap_trans_unstable(i32* %83)
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %88

86:                                               ; preds = %80
  %87 = load i32, i32* @VM_FAULT_NOPAGE, align 4
  store i32 %87, i32* %2, align 4
  br label %103

88:                                               ; preds = %80
  %89 = load %struct.vm_area_struct*, %struct.vm_area_struct** %4, align 8
  %90 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 4
  %92 = load %struct.vm_fault*, %struct.vm_fault** %3, align 8
  %93 = getelementptr inbounds %struct.vm_fault, %struct.vm_fault* %92, i32 0, i32 2
  %94 = load i32*, i32** %93, align 8
  %95 = load %struct.vm_fault*, %struct.vm_fault** %3, align 8
  %96 = getelementptr inbounds %struct.vm_fault, %struct.vm_fault* %95, i32 0, i32 1
  %97 = load i32, i32* %96, align 4
  %98 = load %struct.vm_fault*, %struct.vm_fault** %3, align 8
  %99 = getelementptr inbounds %struct.vm_fault, %struct.vm_fault* %98, i32 0, i32 0
  %100 = call i32 @pte_offset_map_lock(i32 %91, i32* %94, i32 %97, i32* %99)
  %101 = load %struct.vm_fault*, %struct.vm_fault** %3, align 8
  %102 = getelementptr inbounds %struct.vm_fault, %struct.vm_fault* %101, i32 0, i32 3
  store i32 %100, i32* %102, align 8
  store i32 0, i32* %2, align 4
  br label %103

103:                                              ; preds = %88, %86, %76
  %104 = load i32, i32* %2, align 4
  ret i32 %104
}

declare dso_local i32 @pmd_none(i32) #1

declare dso_local i32 @pmd_lock(i32, i32*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @spin_unlock(i32) #1

declare dso_local i32 @mm_inc_nr_ptes(i32) #1

declare dso_local i32 @pmd_populate(i32, i32*, i32*) #1

declare dso_local i32 @pte_alloc(i32, i32*) #1

declare dso_local i64 @pmd_devmap_trans_unstable(i32*) #1

declare dso_local i32 @pte_offset_map_lock(i32, i32*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
