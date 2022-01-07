; ModuleID = '/home/carl/AnghaBench/linux/mm/extr_memory.c___do_fault.c'
source_filename = "/home/carl/AnghaBench/linux/mm/extr_memory.c___do_fault.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vm_fault = type { i32*, i64, %struct.vm_area_struct*, i32* }
%struct.vm_area_struct = type { %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { {}* }

@VM_FAULT_OOM = common dso_local global i32 0, align 4
@VM_FAULT_ERROR = common dso_local global i32 0, align 4
@VM_FAULT_NOPAGE = common dso_local global i32 0, align 4
@VM_FAULT_RETRY = common dso_local global i32 0, align 4
@VM_FAULT_DONE_COW = common dso_local global i32 0, align 4
@VM_FAULT_LOCKED = common dso_local global i32 0, align 4
@VM_FAULT_HWPOISON = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vm_fault*)* @__do_fault to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__do_fault(%struct.vm_fault* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.vm_fault*, align 8
  %4 = alloca %struct.vm_area_struct*, align 8
  %5 = alloca i32, align 4
  store %struct.vm_fault* %0, %struct.vm_fault** %3, align 8
  %6 = load %struct.vm_fault*, %struct.vm_fault** %3, align 8
  %7 = getelementptr inbounds %struct.vm_fault, %struct.vm_fault* %6, i32 0, i32 2
  %8 = load %struct.vm_area_struct*, %struct.vm_area_struct** %7, align 8
  store %struct.vm_area_struct* %8, %struct.vm_area_struct** %4, align 8
  %9 = load %struct.vm_fault*, %struct.vm_fault** %3, align 8
  %10 = getelementptr inbounds %struct.vm_fault, %struct.vm_fault* %9, i32 0, i32 3
  %11 = load i32*, i32** %10, align 8
  %12 = load i32, i32* %11, align 4
  %13 = call i64 @pmd_none(i32 %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %37

15:                                               ; preds = %1
  %16 = load %struct.vm_fault*, %struct.vm_fault** %3, align 8
  %17 = getelementptr inbounds %struct.vm_fault, %struct.vm_fault* %16, i32 0, i32 1
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %37, label %20

20:                                               ; preds = %15
  %21 = load %struct.vm_fault*, %struct.vm_fault** %3, align 8
  %22 = getelementptr inbounds %struct.vm_fault, %struct.vm_fault* %21, i32 0, i32 2
  %23 = load %struct.vm_area_struct*, %struct.vm_area_struct** %22, align 8
  %24 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 8
  %26 = call i64 @pte_alloc_one(i32 %25)
  %27 = load %struct.vm_fault*, %struct.vm_fault** %3, align 8
  %28 = getelementptr inbounds %struct.vm_fault, %struct.vm_fault* %27, i32 0, i32 1
  store i64 %26, i64* %28, align 8
  %29 = load %struct.vm_fault*, %struct.vm_fault** %3, align 8
  %30 = getelementptr inbounds %struct.vm_fault, %struct.vm_fault* %29, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %35, label %33

33:                                               ; preds = %20
  %34 = load i32, i32* @VM_FAULT_OOM, align 4
  store i32 %34, i32* %2, align 4
  br label %112

35:                                               ; preds = %20
  %36 = call i32 (...) @smp_wmb()
  br label %37

37:                                               ; preds = %35, %15, %1
  %38 = load %struct.vm_area_struct*, %struct.vm_area_struct** %4, align 8
  %39 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %38, i32 0, i32 0
  %40 = load %struct.TYPE_2__*, %struct.TYPE_2__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 0
  %42 = bitcast {}** %41 to i32 (%struct.vm_fault*)**
  %43 = load i32 (%struct.vm_fault*)*, i32 (%struct.vm_fault*)** %42, align 8
  %44 = load %struct.vm_fault*, %struct.vm_fault** %3, align 8
  %45 = call i32 %43(%struct.vm_fault* %44)
  store i32 %45, i32* %5, align 4
  %46 = load i32, i32* %5, align 4
  %47 = load i32, i32* @VM_FAULT_ERROR, align 4
  %48 = load i32, i32* @VM_FAULT_NOPAGE, align 4
  %49 = or i32 %47, %48
  %50 = load i32, i32* @VM_FAULT_RETRY, align 4
  %51 = or i32 %49, %50
  %52 = load i32, i32* @VM_FAULT_DONE_COW, align 4
  %53 = or i32 %51, %52
  %54 = and i32 %46, %53
  %55 = call i64 @unlikely(i32 %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %59

57:                                               ; preds = %37
  %58 = load i32, i32* %5, align 4
  store i32 %58, i32* %2, align 4
  br label %112

59:                                               ; preds = %37
  %60 = load %struct.vm_fault*, %struct.vm_fault** %3, align 8
  %61 = getelementptr inbounds %struct.vm_fault, %struct.vm_fault* %60, i32 0, i32 0
  %62 = load i32*, i32** %61, align 8
  %63 = call i32 @PageHWPoison(i32* %62)
  %64 = call i64 @unlikely(i32 %63)
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %84

66:                                               ; preds = %59
  %67 = load i32, i32* %5, align 4
  %68 = load i32, i32* @VM_FAULT_LOCKED, align 4
  %69 = and i32 %67, %68
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %76

71:                                               ; preds = %66
  %72 = load %struct.vm_fault*, %struct.vm_fault** %3, align 8
  %73 = getelementptr inbounds %struct.vm_fault, %struct.vm_fault* %72, i32 0, i32 0
  %74 = load i32*, i32** %73, align 8
  %75 = call i32 @unlock_page(i32* %74)
  br label %76

76:                                               ; preds = %71, %66
  %77 = load %struct.vm_fault*, %struct.vm_fault** %3, align 8
  %78 = getelementptr inbounds %struct.vm_fault, %struct.vm_fault* %77, i32 0, i32 0
  %79 = load i32*, i32** %78, align 8
  %80 = call i32 @put_page(i32* %79)
  %81 = load %struct.vm_fault*, %struct.vm_fault** %3, align 8
  %82 = getelementptr inbounds %struct.vm_fault, %struct.vm_fault* %81, i32 0, i32 0
  store i32* null, i32** %82, align 8
  %83 = load i32, i32* @VM_FAULT_HWPOISON, align 4
  store i32 %83, i32* %2, align 4
  br label %112

84:                                               ; preds = %59
  %85 = load i32, i32* %5, align 4
  %86 = load i32, i32* @VM_FAULT_LOCKED, align 4
  %87 = and i32 %85, %86
  %88 = icmp ne i32 %87, 0
  %89 = xor i1 %88, true
  %90 = zext i1 %89 to i32
  %91 = call i64 @unlikely(i32 %90)
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %93, label %98

93:                                               ; preds = %84
  %94 = load %struct.vm_fault*, %struct.vm_fault** %3, align 8
  %95 = getelementptr inbounds %struct.vm_fault, %struct.vm_fault* %94, i32 0, i32 0
  %96 = load i32*, i32** %95, align 8
  %97 = call i32 @lock_page(i32* %96)
  br label %110

98:                                               ; preds = %84
  %99 = load %struct.vm_fault*, %struct.vm_fault** %3, align 8
  %100 = getelementptr inbounds %struct.vm_fault, %struct.vm_fault* %99, i32 0, i32 0
  %101 = load i32*, i32** %100, align 8
  %102 = call i32 @PageLocked(i32* %101)
  %103 = icmp ne i32 %102, 0
  %104 = xor i1 %103, true
  %105 = zext i1 %104 to i32
  %106 = load %struct.vm_fault*, %struct.vm_fault** %3, align 8
  %107 = getelementptr inbounds %struct.vm_fault, %struct.vm_fault* %106, i32 0, i32 0
  %108 = load i32*, i32** %107, align 8
  %109 = call i32 @VM_BUG_ON_PAGE(i32 %105, i32* %108)
  br label %110

110:                                              ; preds = %98, %93
  %111 = load i32, i32* %5, align 4
  store i32 %111, i32* %2, align 4
  br label %112

112:                                              ; preds = %110, %76, %57, %33
  %113 = load i32, i32* %2, align 4
  ret i32 %113
}

declare dso_local i64 @pmd_none(i32) #1

declare dso_local i64 @pte_alloc_one(i32) #1

declare dso_local i32 @smp_wmb(...) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @PageHWPoison(i32*) #1

declare dso_local i32 @unlock_page(i32*) #1

declare dso_local i32 @put_page(i32*) #1

declare dso_local i32 @lock_page(i32*) #1

declare dso_local i32 @VM_BUG_ON_PAGE(i32, i32*) #1

declare dso_local i32 @PageLocked(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
