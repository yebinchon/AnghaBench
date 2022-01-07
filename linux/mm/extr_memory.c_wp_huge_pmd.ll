; ModuleID = '/home/carl/AnghaBench/linux/mm/extr_memory.c_wp_huge_pmd.c'
source_filename = "/home/carl/AnghaBench/linux/mm/extr_memory.c_wp_huge_pmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vm_fault = type { i32, i32, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { {}* }

@PE_SIZE_PMD = common dso_local global i32 0, align 4
@VM_SHARED = common dso_local global i32 0, align 4
@VM_FAULT_FALLBACK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vm_fault*, i32)* @wp_huge_pmd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wp_huge_pmd(%struct.vm_fault* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.vm_fault*, align 8
  %5 = alloca i32, align 4
  store %struct.vm_fault* %0, %struct.vm_fault** %4, align 8
  store i32 %1, i32* %5, align 4
  %6 = load %struct.vm_fault*, %struct.vm_fault** %4, align 8
  %7 = getelementptr inbounds %struct.vm_fault, %struct.vm_fault* %6, i32 0, i32 2
  %8 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %9 = call i64 @vma_is_anonymous(%struct.TYPE_6__* %8)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %15

11:                                               ; preds = %2
  %12 = load %struct.vm_fault*, %struct.vm_fault** %4, align 8
  %13 = load i32, i32* %5, align 4
  %14 = call i32 @do_huge_pmd_wp_page(%struct.vm_fault* %12, i32 %13)
  store i32 %14, i32* %3, align 4
  br label %60

15:                                               ; preds = %2
  %16 = load %struct.vm_fault*, %struct.vm_fault** %4, align 8
  %17 = getelementptr inbounds %struct.vm_fault, %struct.vm_fault* %16, i32 0, i32 2
  %18 = load %struct.TYPE_6__*, %struct.TYPE_6__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %18, i32 0, i32 1
  %20 = load %struct.TYPE_5__*, %struct.TYPE_5__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %20, i32 0, i32 0
  %22 = bitcast {}** %21 to i32 (%struct.vm_fault*, i32)**
  %23 = load i32 (%struct.vm_fault*, i32)*, i32 (%struct.vm_fault*, i32)** %22, align 8
  %24 = icmp ne i32 (%struct.vm_fault*, i32)* %23, null
  br i1 %24, label %25, label %37

25:                                               ; preds = %15
  %26 = load %struct.vm_fault*, %struct.vm_fault** %4, align 8
  %27 = getelementptr inbounds %struct.vm_fault, %struct.vm_fault* %26, i32 0, i32 2
  %28 = load %struct.TYPE_6__*, %struct.TYPE_6__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %28, i32 0, i32 1
  %30 = load %struct.TYPE_5__*, %struct.TYPE_5__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %30, i32 0, i32 0
  %32 = bitcast {}** %31 to i32 (%struct.vm_fault*, i32)**
  %33 = load i32 (%struct.vm_fault*, i32)*, i32 (%struct.vm_fault*, i32)** %32, align 8
  %34 = load %struct.vm_fault*, %struct.vm_fault** %4, align 8
  %35 = load i32, i32* @PE_SIZE_PMD, align 4
  %36 = call i32 %33(%struct.vm_fault* %34, i32 %35)
  store i32 %36, i32* %3, align 4
  br label %60

37:                                               ; preds = %15
  %38 = load %struct.vm_fault*, %struct.vm_fault** %4, align 8
  %39 = getelementptr inbounds %struct.vm_fault, %struct.vm_fault* %38, i32 0, i32 2
  %40 = load %struct.TYPE_6__*, %struct.TYPE_6__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = load i32, i32* @VM_SHARED, align 4
  %44 = and i32 %42, %43
  %45 = load %struct.vm_fault*, %struct.vm_fault** %4, align 8
  %46 = getelementptr inbounds %struct.vm_fault, %struct.vm_fault* %45, i32 0, i32 2
  %47 = load %struct.TYPE_6__*, %struct.TYPE_6__** %46, align 8
  %48 = call i32 @VM_BUG_ON_VMA(i32 %44, %struct.TYPE_6__* %47)
  %49 = load %struct.vm_fault*, %struct.vm_fault** %4, align 8
  %50 = getelementptr inbounds %struct.vm_fault, %struct.vm_fault* %49, i32 0, i32 2
  %51 = load %struct.TYPE_6__*, %struct.TYPE_6__** %50, align 8
  %52 = load %struct.vm_fault*, %struct.vm_fault** %4, align 8
  %53 = getelementptr inbounds %struct.vm_fault, %struct.vm_fault* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = load %struct.vm_fault*, %struct.vm_fault** %4, align 8
  %56 = getelementptr inbounds %struct.vm_fault, %struct.vm_fault* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = call i32 @__split_huge_pmd(%struct.TYPE_6__* %51, i32 %54, i32 %57, i32 0, i32* null)
  %59 = load i32, i32* @VM_FAULT_FALLBACK, align 4
  store i32 %59, i32* %3, align 4
  br label %60

60:                                               ; preds = %37, %25, %11
  %61 = load i32, i32* %3, align 4
  ret i32 %61
}

declare dso_local i64 @vma_is_anonymous(%struct.TYPE_6__*) #1

declare dso_local i32 @do_huge_pmd_wp_page(%struct.vm_fault*, i32) #1

declare dso_local i32 @VM_BUG_ON_VMA(i32, %struct.TYPE_6__*) #1

declare dso_local i32 @__split_huge_pmd(%struct.TYPE_6__*, i32, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
