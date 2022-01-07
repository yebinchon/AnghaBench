; ModuleID = '/home/carl/AnghaBench/linux/mm/extr_memory.c_vmf_insert_pfn_prot.c'
source_filename = "/home/carl/AnghaBench/linux/mm/extr_memory.c_vmf_insert_pfn_prot.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vm_area_struct = type { i32, i64, i64 }

@VM_PFNMAP = common dso_local global i32 0, align 4
@VM_MIXEDMAP = common dso_local global i32 0, align 4
@VM_FAULT_SIGBUS = common dso_local global i32 0, align 4
@PFN_DEV = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vmf_insert_pfn_prot(%struct.vm_area_struct* %0, i64 %1, i64 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.vm_area_struct*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store %struct.vm_area_struct* %0, %struct.vm_area_struct** %6, align 8
  store i64 %1, i64* %7, align 8
  store i64 %2, i64* %8, align 8
  store i32 %3, i32* %9, align 4
  %10 = load %struct.vm_area_struct*, %struct.vm_area_struct** %6, align 8
  %11 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = load i32, i32* @VM_PFNMAP, align 4
  %14 = load i32, i32* @VM_MIXEDMAP, align 4
  %15 = or i32 %13, %14
  %16 = and i32 %12, %15
  %17 = icmp ne i32 %16, 0
  %18 = xor i1 %17, true
  %19 = zext i1 %18 to i32
  %20 = call i32 @BUG_ON(i32 %19)
  %21 = load %struct.vm_area_struct*, %struct.vm_area_struct** %6, align 8
  %22 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = load i32, i32* @VM_PFNMAP, align 4
  %25 = load i32, i32* @VM_MIXEDMAP, align 4
  %26 = or i32 %24, %25
  %27 = and i32 %23, %26
  %28 = load i32, i32* @VM_PFNMAP, align 4
  %29 = load i32, i32* @VM_MIXEDMAP, align 4
  %30 = or i32 %28, %29
  %31 = icmp eq i32 %27, %30
  %32 = zext i1 %31 to i32
  %33 = call i32 @BUG_ON(i32 %32)
  %34 = load %struct.vm_area_struct*, %struct.vm_area_struct** %6, align 8
  %35 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = load i32, i32* @VM_PFNMAP, align 4
  %38 = and i32 %36, %37
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %46

40:                                               ; preds = %4
  %41 = load %struct.vm_area_struct*, %struct.vm_area_struct** %6, align 8
  %42 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = call i64 @is_cow_mapping(i32 %43)
  %45 = icmp ne i64 %44, 0
  br label %46

46:                                               ; preds = %40, %4
  %47 = phi i1 [ false, %4 ], [ %45, %40 ]
  %48 = zext i1 %47 to i32
  %49 = call i32 @BUG_ON(i32 %48)
  %50 = load %struct.vm_area_struct*, %struct.vm_area_struct** %6, align 8
  %51 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = load i32, i32* @VM_MIXEDMAP, align 4
  %54 = and i32 %52, %53
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %60

56:                                               ; preds = %46
  %57 = load i64, i64* %8, align 8
  %58 = call i64 @pfn_valid(i64 %57)
  %59 = icmp ne i64 %58, 0
  br label %60

60:                                               ; preds = %56, %46
  %61 = phi i1 [ false, %46 ], [ %59, %56 ]
  %62 = zext i1 %61 to i32
  %63 = call i32 @BUG_ON(i32 %62)
  %64 = load i64, i64* %7, align 8
  %65 = load %struct.vm_area_struct*, %struct.vm_area_struct** %6, align 8
  %66 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %65, i32 0, i32 1
  %67 = load i64, i64* %66, align 8
  %68 = icmp ult i64 %64, %67
  br i1 %68, label %75, label %69

69:                                               ; preds = %60
  %70 = load i64, i64* %7, align 8
  %71 = load %struct.vm_area_struct*, %struct.vm_area_struct** %6, align 8
  %72 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %71, i32 0, i32 2
  %73 = load i64, i64* %72, align 8
  %74 = icmp uge i64 %70, %73
  br i1 %74, label %75, label %77

75:                                               ; preds = %69, %60
  %76 = load i32, i32* @VM_FAULT_SIGBUS, align 4
  store i32 %76, i32* %5, align 4
  br label %97

77:                                               ; preds = %69
  %78 = load i64, i64* %8, align 8
  %79 = load i32, i32* %9, align 4
  %80 = call i32 @pfn_modify_allowed(i64 %78, i32 %79)
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %84, label %82

82:                                               ; preds = %77
  %83 = load i32, i32* @VM_FAULT_SIGBUS, align 4
  store i32 %83, i32* %5, align 4
  br label %97

84:                                               ; preds = %77
  %85 = load %struct.vm_area_struct*, %struct.vm_area_struct** %6, align 8
  %86 = load i64, i64* %8, align 8
  %87 = load i32, i32* @PFN_DEV, align 4
  %88 = call i32 @__pfn_to_pfn_t(i64 %86, i32 %87)
  %89 = call i32 @track_pfn_insert(%struct.vm_area_struct* %85, i32* %9, i32 %88)
  %90 = load %struct.vm_area_struct*, %struct.vm_area_struct** %6, align 8
  %91 = load i64, i64* %7, align 8
  %92 = load i64, i64* %8, align 8
  %93 = load i32, i32* @PFN_DEV, align 4
  %94 = call i32 @__pfn_to_pfn_t(i64 %92, i32 %93)
  %95 = load i32, i32* %9, align 4
  %96 = call i32 @insert_pfn(%struct.vm_area_struct* %90, i64 %91, i32 %94, i32 %95, i32 0)
  store i32 %96, i32* %5, align 4
  br label %97

97:                                               ; preds = %84, %82, %75
  %98 = load i32, i32* %5, align 4
  ret i32 %98
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i64 @is_cow_mapping(i32) #1

declare dso_local i64 @pfn_valid(i64) #1

declare dso_local i32 @pfn_modify_allowed(i64, i32) #1

declare dso_local i32 @track_pfn_insert(%struct.vm_area_struct*, i32*, i32) #1

declare dso_local i32 @__pfn_to_pfn_t(i64, i32) #1

declare dso_local i32 @insert_pfn(%struct.vm_area_struct*, i64, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
