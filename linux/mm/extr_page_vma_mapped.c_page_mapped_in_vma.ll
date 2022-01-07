; ModuleID = '/home/carl/AnghaBench/linux/mm/extr_page_vma_mapped.c_page_mapped_in_vma.c'
source_filename = "/home/carl/AnghaBench/linux/mm/extr_page_vma_mapped.c_page_mapped_in_vma.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.page = type { i32 }
%struct.vm_area_struct = type { i64, i64 }
%struct.page_vma_mapped_walk = type { i32, i32, %struct.vm_area_struct*, %struct.page* }

@PVMW_SYNC = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @page_mapped_in_vma(%struct.page* %0, %struct.vm_area_struct* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.page*, align 8
  %5 = alloca %struct.vm_area_struct*, align 8
  %6 = alloca %struct.page_vma_mapped_walk, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store %struct.page* %0, %struct.page** %4, align 8
  store %struct.vm_area_struct* %1, %struct.vm_area_struct** %5, align 8
  %9 = getelementptr inbounds %struct.page_vma_mapped_walk, %struct.page_vma_mapped_walk* %6, i32 0, i32 0
  store i32 0, i32* %9, align 8
  %10 = getelementptr inbounds %struct.page_vma_mapped_walk, %struct.page_vma_mapped_walk* %6, i32 0, i32 1
  %11 = load i32, i32* @PVMW_SYNC, align 4
  store i32 %11, i32* %10, align 4
  %12 = getelementptr inbounds %struct.page_vma_mapped_walk, %struct.page_vma_mapped_walk* %6, i32 0, i32 2
  %13 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  store %struct.vm_area_struct* %13, %struct.vm_area_struct** %12, align 8
  %14 = getelementptr inbounds %struct.page_vma_mapped_walk, %struct.page_vma_mapped_walk* %6, i32 0, i32 3
  %15 = load %struct.page*, %struct.page** %4, align 8
  store %struct.page* %15, %struct.page** %14, align 8
  %16 = load %struct.page*, %struct.page** %4, align 8
  %17 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %18 = call i64 @__vma_address(%struct.page* %16, %struct.vm_area_struct* %17)
  store i64 %18, i64* %7, align 8
  %19 = load i64, i64* %7, align 8
  %20 = load i32, i32* @PAGE_SIZE, align 4
  %21 = load %struct.page*, %struct.page** %4, align 8
  %22 = call i32 @hpage_nr_pages(%struct.page* %21)
  %23 = sub nsw i32 %22, 1
  %24 = mul nsw i32 %20, %23
  %25 = sext i32 %24 to i64
  %26 = add i64 %19, %25
  store i64 %26, i64* %8, align 8
  %27 = load i64, i64* %8, align 8
  %28 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %29 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = icmp ult i64 %27, %30
  br i1 %31, label %38, label %32

32:                                               ; preds = %2
  %33 = load i64, i64* %7, align 8
  %34 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %35 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %34, i32 0, i32 1
  %36 = load i64, i64* %35, align 8
  %37 = icmp uge i64 %33, %36
  br label %38

38:                                               ; preds = %32, %2
  %39 = phi i1 [ true, %2 ], [ %37, %32 ]
  %40 = zext i1 %39 to i32
  %41 = call i64 @unlikely(i32 %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %38
  store i32 0, i32* %3, align 4
  br label %56

44:                                               ; preds = %38
  %45 = load i64, i64* %7, align 8
  %46 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %47 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = call i32 @max(i64 %45, i64 %48)
  %50 = getelementptr inbounds %struct.page_vma_mapped_walk, %struct.page_vma_mapped_walk* %6, i32 0, i32 0
  store i32 %49, i32* %50, align 8
  %51 = call i32 @page_vma_mapped_walk(%struct.page_vma_mapped_walk* %6)
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %54, label %53

53:                                               ; preds = %44
  store i32 0, i32* %3, align 4
  br label %56

54:                                               ; preds = %44
  %55 = call i32 @page_vma_mapped_walk_done(%struct.page_vma_mapped_walk* %6)
  store i32 1, i32* %3, align 4
  br label %56

56:                                               ; preds = %54, %53, %43
  %57 = load i32, i32* %3, align 4
  ret i32 %57
}

declare dso_local i64 @__vma_address(%struct.page*, %struct.vm_area_struct*) #1

declare dso_local i32 @hpage_nr_pages(%struct.page*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @max(i64, i64) #1

declare dso_local i32 @page_vma_mapped_walk(%struct.page_vma_mapped_walk*) #1

declare dso_local i32 @page_vma_mapped_walk_done(%struct.page_vma_mapped_walk*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
