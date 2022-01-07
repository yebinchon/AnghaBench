; ModuleID = '/home/carl/AnghaBench/linux/mm/extr_memory.c_do_fault.c'
source_filename = "/home/carl/AnghaBench/linux/mm/extr_memory.c_do_fault.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vm_fault = type { i32, i32*, i32, i32*, i32, i32*, %struct.vm_area_struct* }
%struct.vm_area_struct = type { i32, %struct.mm_struct*, %struct.TYPE_2__* }
%struct.mm_struct = type { i32 }
%struct.TYPE_2__ = type { i32 }

@VM_FAULT_SIGBUS = common dso_local global i32 0, align 4
@VM_FAULT_NOPAGE = common dso_local global i32 0, align 4
@FAULT_FLAG_WRITE = common dso_local global i32 0, align 4
@VM_SHARED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vm_fault*)* @do_fault to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @do_fault(%struct.vm_fault* %0) #0 {
  %2 = alloca %struct.vm_fault*, align 8
  %3 = alloca %struct.vm_area_struct*, align 8
  %4 = alloca %struct.mm_struct*, align 8
  %5 = alloca i32, align 4
  store %struct.vm_fault* %0, %struct.vm_fault** %2, align 8
  %6 = load %struct.vm_fault*, %struct.vm_fault** %2, align 8
  %7 = getelementptr inbounds %struct.vm_fault, %struct.vm_fault* %6, i32 0, i32 6
  %8 = load %struct.vm_area_struct*, %struct.vm_area_struct** %7, align 8
  store %struct.vm_area_struct* %8, %struct.vm_area_struct** %3, align 8
  %9 = load %struct.vm_area_struct*, %struct.vm_area_struct** %3, align 8
  %10 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %9, i32 0, i32 1
  %11 = load %struct.mm_struct*, %struct.mm_struct** %10, align 8
  store %struct.mm_struct* %11, %struct.mm_struct** %4, align 8
  %12 = load %struct.vm_area_struct*, %struct.vm_area_struct** %3, align 8
  %13 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %12, i32 0, i32 2
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %68, label %18

18:                                               ; preds = %1
  %19 = load %struct.vm_fault*, %struct.vm_fault** %2, align 8
  %20 = getelementptr inbounds %struct.vm_fault, %struct.vm_fault* %19, i32 0, i32 5
  %21 = load i32*, i32** %20, align 8
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @pmd_present(i32 %22)
  %24 = icmp ne i32 %23, 0
  %25 = xor i1 %24, true
  %26 = zext i1 %25 to i32
  %27 = call i64 @unlikely(i32 %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %18
  %30 = load i32, i32* @VM_FAULT_SIGBUS, align 4
  store i32 %30, i32* %5, align 4
  br label %67

31:                                               ; preds = %18
  %32 = load %struct.vm_fault*, %struct.vm_fault** %2, align 8
  %33 = getelementptr inbounds %struct.vm_fault, %struct.vm_fault* %32, i32 0, i32 6
  %34 = load %struct.vm_area_struct*, %struct.vm_area_struct** %33, align 8
  %35 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %34, i32 0, i32 1
  %36 = load %struct.mm_struct*, %struct.mm_struct** %35, align 8
  %37 = load %struct.vm_fault*, %struct.vm_fault** %2, align 8
  %38 = getelementptr inbounds %struct.vm_fault, %struct.vm_fault* %37, i32 0, i32 5
  %39 = load i32*, i32** %38, align 8
  %40 = load %struct.vm_fault*, %struct.vm_fault** %2, align 8
  %41 = getelementptr inbounds %struct.vm_fault, %struct.vm_fault* %40, i32 0, i32 4
  %42 = load i32, i32* %41, align 8
  %43 = load %struct.vm_fault*, %struct.vm_fault** %2, align 8
  %44 = getelementptr inbounds %struct.vm_fault, %struct.vm_fault* %43, i32 0, i32 2
  %45 = call i32* @pte_offset_map_lock(%struct.mm_struct* %36, i32* %39, i32 %42, i32* %44)
  %46 = load %struct.vm_fault*, %struct.vm_fault** %2, align 8
  %47 = getelementptr inbounds %struct.vm_fault, %struct.vm_fault* %46, i32 0, i32 3
  store i32* %45, i32** %47, align 8
  %48 = load %struct.vm_fault*, %struct.vm_fault** %2, align 8
  %49 = getelementptr inbounds %struct.vm_fault, %struct.vm_fault* %48, i32 0, i32 3
  %50 = load i32*, i32** %49, align 8
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @pte_none(i32 %51)
  %53 = call i64 @unlikely(i32 %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %57

55:                                               ; preds = %31
  %56 = load i32, i32* @VM_FAULT_SIGBUS, align 4
  store i32 %56, i32* %5, align 4
  br label %59

57:                                               ; preds = %31
  %58 = load i32, i32* @VM_FAULT_NOPAGE, align 4
  store i32 %58, i32* %5, align 4
  br label %59

59:                                               ; preds = %57, %55
  %60 = load %struct.vm_fault*, %struct.vm_fault** %2, align 8
  %61 = getelementptr inbounds %struct.vm_fault, %struct.vm_fault* %60, i32 0, i32 3
  %62 = load i32*, i32** %61, align 8
  %63 = load %struct.vm_fault*, %struct.vm_fault** %2, align 8
  %64 = getelementptr inbounds %struct.vm_fault, %struct.vm_fault* %63, i32 0, i32 2
  %65 = load i32, i32* %64, align 8
  %66 = call i32 @pte_unmap_unlock(i32* %62, i32 %65)
  br label %67

67:                                               ; preds = %59, %29
  br label %93

68:                                               ; preds = %1
  %69 = load %struct.vm_fault*, %struct.vm_fault** %2, align 8
  %70 = getelementptr inbounds %struct.vm_fault, %struct.vm_fault* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = load i32, i32* @FAULT_FLAG_WRITE, align 4
  %73 = and i32 %71, %72
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %78, label %75

75:                                               ; preds = %68
  %76 = load %struct.vm_fault*, %struct.vm_fault** %2, align 8
  %77 = call i32 @do_read_fault(%struct.vm_fault* %76)
  store i32 %77, i32* %5, align 4
  br label %92

78:                                               ; preds = %68
  %79 = load %struct.vm_area_struct*, %struct.vm_area_struct** %3, align 8
  %80 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  %82 = load i32, i32* @VM_SHARED, align 4
  %83 = and i32 %81, %82
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %88, label %85

85:                                               ; preds = %78
  %86 = load %struct.vm_fault*, %struct.vm_fault** %2, align 8
  %87 = call i32 @do_cow_fault(%struct.vm_fault* %86)
  store i32 %87, i32* %5, align 4
  br label %91

88:                                               ; preds = %78
  %89 = load %struct.vm_fault*, %struct.vm_fault** %2, align 8
  %90 = call i32 @do_shared_fault(%struct.vm_fault* %89)
  store i32 %90, i32* %5, align 4
  br label %91

91:                                               ; preds = %88, %85
  br label %92

92:                                               ; preds = %91, %75
  br label %93

93:                                               ; preds = %92, %67
  %94 = load %struct.vm_fault*, %struct.vm_fault** %2, align 8
  %95 = getelementptr inbounds %struct.vm_fault, %struct.vm_fault* %94, i32 0, i32 1
  %96 = load i32*, i32** %95, align 8
  %97 = icmp ne i32* %96, null
  br i1 %97, label %98, label %106

98:                                               ; preds = %93
  %99 = load %struct.mm_struct*, %struct.mm_struct** %4, align 8
  %100 = load %struct.vm_fault*, %struct.vm_fault** %2, align 8
  %101 = getelementptr inbounds %struct.vm_fault, %struct.vm_fault* %100, i32 0, i32 1
  %102 = load i32*, i32** %101, align 8
  %103 = call i32 @pte_free(%struct.mm_struct* %99, i32* %102)
  %104 = load %struct.vm_fault*, %struct.vm_fault** %2, align 8
  %105 = getelementptr inbounds %struct.vm_fault, %struct.vm_fault* %104, i32 0, i32 1
  store i32* null, i32** %105, align 8
  br label %106

106:                                              ; preds = %98, %93
  %107 = load i32, i32* %5, align 4
  ret i32 %107
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @pmd_present(i32) #1

declare dso_local i32* @pte_offset_map_lock(%struct.mm_struct*, i32*, i32, i32*) #1

declare dso_local i32 @pte_none(i32) #1

declare dso_local i32 @pte_unmap_unlock(i32*, i32) #1

declare dso_local i32 @do_read_fault(%struct.vm_fault*) #1

declare dso_local i32 @do_cow_fault(%struct.vm_fault*) #1

declare dso_local i32 @do_shared_fault(%struct.vm_fault*) #1

declare dso_local i32 @pte_free(%struct.mm_struct*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
