; ModuleID = '/home/carl/AnghaBench/linux/mm/extr_huge_memory.c_vmf_insert_pfn_pmd.c'
source_filename = "/home/carl/AnghaBench/linux/mm/extr_huge_memory.c_vmf_insert_pfn_pmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vm_fault = type { i64, i32, %struct.vm_area_struct* }
%struct.vm_area_struct = type { i32, i64, i64, i32, i32 }

@PMD_MASK = common dso_local global i64 0, align 8
@VM_PFNMAP = common dso_local global i32 0, align 4
@VM_MIXEDMAP = common dso_local global i32 0, align 4
@VM_FAULT_SIGBUS = common dso_local global i32 0, align 4
@VM_FAULT_OOM = common dso_local global i32 0, align 4
@VM_FAULT_NOPAGE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vmf_insert_pfn_pmd(%struct.vm_fault* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.vm_fault*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca %struct.vm_area_struct*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  store %struct.vm_fault* %0, %struct.vm_fault** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %12 = load %struct.vm_fault*, %struct.vm_fault** %5, align 8
  %13 = getelementptr inbounds %struct.vm_fault, %struct.vm_fault* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @PMD_MASK, align 8
  %16 = and i64 %14, %15
  store i64 %16, i64* %8, align 8
  %17 = load %struct.vm_fault*, %struct.vm_fault** %5, align 8
  %18 = getelementptr inbounds %struct.vm_fault, %struct.vm_fault* %17, i32 0, i32 2
  %19 = load %struct.vm_area_struct*, %struct.vm_area_struct** %18, align 8
  store %struct.vm_area_struct* %19, %struct.vm_area_struct** %9, align 8
  %20 = load %struct.vm_area_struct*, %struct.vm_area_struct** %9, align 8
  %21 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %20, i32 0, i32 4
  %22 = load i32, i32* %21, align 4
  store i32 %22, i32* %10, align 4
  store i32* null, i32** %11, align 8
  %23 = load %struct.vm_area_struct*, %struct.vm_area_struct** %9, align 8
  %24 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = load i32, i32* @VM_PFNMAP, align 4
  %27 = load i32, i32* @VM_MIXEDMAP, align 4
  %28 = or i32 %26, %27
  %29 = and i32 %25, %28
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %36, label %31

31:                                               ; preds = %3
  %32 = load i32, i32* %6, align 4
  %33 = call i32 @pfn_t_devmap(i32 %32)
  %34 = icmp ne i32 %33, 0
  %35 = xor i1 %34, true
  br label %36

36:                                               ; preds = %31, %3
  %37 = phi i1 [ false, %3 ], [ %35, %31 ]
  %38 = zext i1 %37 to i32
  %39 = call i32 @BUG_ON(i32 %38)
  %40 = load %struct.vm_area_struct*, %struct.vm_area_struct** %9, align 8
  %41 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = load i32, i32* @VM_PFNMAP, align 4
  %44 = load i32, i32* @VM_MIXEDMAP, align 4
  %45 = or i32 %43, %44
  %46 = and i32 %42, %45
  %47 = load i32, i32* @VM_PFNMAP, align 4
  %48 = load i32, i32* @VM_MIXEDMAP, align 4
  %49 = or i32 %47, %48
  %50 = icmp eq i32 %46, %49
  %51 = zext i1 %50 to i32
  %52 = call i32 @BUG_ON(i32 %51)
  %53 = load %struct.vm_area_struct*, %struct.vm_area_struct** %9, align 8
  %54 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = load i32, i32* @VM_PFNMAP, align 4
  %57 = and i32 %55, %56
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %65

59:                                               ; preds = %36
  %60 = load %struct.vm_area_struct*, %struct.vm_area_struct** %9, align 8
  %61 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = call i64 @is_cow_mapping(i32 %62)
  %64 = icmp ne i64 %63, 0
  br label %65

65:                                               ; preds = %59, %36
  %66 = phi i1 [ false, %36 ], [ %64, %59 ]
  %67 = zext i1 %66 to i32
  %68 = call i32 @BUG_ON(i32 %67)
  %69 = load i64, i64* %8, align 8
  %70 = load %struct.vm_area_struct*, %struct.vm_area_struct** %9, align 8
  %71 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %70, i32 0, i32 1
  %72 = load i64, i64* %71, align 8
  %73 = icmp ult i64 %69, %72
  br i1 %73, label %80, label %74

74:                                               ; preds = %65
  %75 = load i64, i64* %8, align 8
  %76 = load %struct.vm_area_struct*, %struct.vm_area_struct** %9, align 8
  %77 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %76, i32 0, i32 2
  %78 = load i64, i64* %77, align 8
  %79 = icmp uge i64 %75, %78
  br i1 %79, label %80, label %82

80:                                               ; preds = %74, %65
  %81 = load i32, i32* @VM_FAULT_SIGBUS, align 4
  store i32 %81, i32* %4, align 4
  br label %110

82:                                               ; preds = %74
  %83 = call i64 (...) @arch_needs_pgtable_deposit()
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %95

85:                                               ; preds = %82
  %86 = load %struct.vm_area_struct*, %struct.vm_area_struct** %9, align 8
  %87 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %86, i32 0, i32 3
  %88 = load i32, i32* %87, align 8
  %89 = call i32* @pte_alloc_one(i32 %88)
  store i32* %89, i32** %11, align 8
  %90 = load i32*, i32** %11, align 8
  %91 = icmp ne i32* %90, null
  br i1 %91, label %94, label %92

92:                                               ; preds = %85
  %93 = load i32, i32* @VM_FAULT_OOM, align 4
  store i32 %93, i32* %4, align 4
  br label %110

94:                                               ; preds = %85
  br label %95

95:                                               ; preds = %94, %82
  %96 = load %struct.vm_area_struct*, %struct.vm_area_struct** %9, align 8
  %97 = load i32, i32* %6, align 4
  %98 = call i32 @track_pfn_insert(%struct.vm_area_struct* %96, i32* %10, i32 %97)
  %99 = load %struct.vm_area_struct*, %struct.vm_area_struct** %9, align 8
  %100 = load i64, i64* %8, align 8
  %101 = load %struct.vm_fault*, %struct.vm_fault** %5, align 8
  %102 = getelementptr inbounds %struct.vm_fault, %struct.vm_fault* %101, i32 0, i32 1
  %103 = load i32, i32* %102, align 8
  %104 = load i32, i32* %6, align 4
  %105 = load i32, i32* %10, align 4
  %106 = load i32, i32* %7, align 4
  %107 = load i32*, i32** %11, align 8
  %108 = call i32 @insert_pfn_pmd(%struct.vm_area_struct* %99, i64 %100, i32 %103, i32 %104, i32 %105, i32 %106, i32* %107)
  %109 = load i32, i32* @VM_FAULT_NOPAGE, align 4
  store i32 %109, i32* %4, align 4
  br label %110

110:                                              ; preds = %95, %92, %80
  %111 = load i32, i32* %4, align 4
  ret i32 %111
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @pfn_t_devmap(i32) #1

declare dso_local i64 @is_cow_mapping(i32) #1

declare dso_local i64 @arch_needs_pgtable_deposit(...) #1

declare dso_local i32* @pte_alloc_one(i32) #1

declare dso_local i32 @track_pfn_insert(%struct.vm_area_struct*, i32*, i32) #1

declare dso_local i32 @insert_pfn_pmd(%struct.vm_area_struct*, i64, i32, i32, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
