; ModuleID = '/home/carl/AnghaBench/linux/mm/extr_hugetlb.c_vma_kernel_pagesize.c'
source_filename = "/home/carl/AnghaBench/linux/mm/extr_hugetlb.c_vma_kernel_pagesize.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vm_area_struct = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { {}* }

@PAGE_SIZE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @vma_kernel_pagesize(%struct.vm_area_struct* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.vm_area_struct*, align 8
  store %struct.vm_area_struct* %0, %struct.vm_area_struct** %3, align 8
  %4 = load %struct.vm_area_struct*, %struct.vm_area_struct** %3, align 8
  %5 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %4, i32 0, i32 0
  %6 = load %struct.TYPE_2__*, %struct.TYPE_2__** %5, align 8
  %7 = icmp ne %struct.TYPE_2__* %6, null
  br i1 %7, label %8, label %25

8:                                                ; preds = %1
  %9 = load %struct.vm_area_struct*, %struct.vm_area_struct** %3, align 8
  %10 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %9, i32 0, i32 0
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = bitcast {}** %12 to i64 (%struct.vm_area_struct*)**
  %14 = load i64 (%struct.vm_area_struct*)*, i64 (%struct.vm_area_struct*)** %13, align 8
  %15 = icmp ne i64 (%struct.vm_area_struct*)* %14, null
  br i1 %15, label %16, label %25

16:                                               ; preds = %8
  %17 = load %struct.vm_area_struct*, %struct.vm_area_struct** %3, align 8
  %18 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %17, i32 0, i32 0
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = bitcast {}** %20 to i64 (%struct.vm_area_struct*)**
  %22 = load i64 (%struct.vm_area_struct*)*, i64 (%struct.vm_area_struct*)** %21, align 8
  %23 = load %struct.vm_area_struct*, %struct.vm_area_struct** %3, align 8
  %24 = call i64 %22(%struct.vm_area_struct* %23)
  store i64 %24, i64* %2, align 8
  br label %27

25:                                               ; preds = %8, %1
  %26 = load i64, i64* @PAGE_SIZE, align 8
  store i64 %26, i64* %2, align 8
  br label %27

27:                                               ; preds = %25, %16
  %28 = load i64, i64* %2, align 8
  ret i64 %28
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
