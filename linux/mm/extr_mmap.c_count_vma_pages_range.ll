; ModuleID = '/home/carl/AnghaBench/linux/mm/extr_mmap.c_count_vma_pages_range.c'
source_filename = "/home/carl/AnghaBench/linux/mm/extr_mmap.c_count_vma_pages_range.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mm_struct = type { i32 }
%struct.vm_area_struct = type { i64, i32, %struct.vm_area_struct* }

@PAGE_SHIFT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.mm_struct*, i64, i64)* @count_vma_pages_range to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @count_vma_pages_range(%struct.mm_struct* %0, i64 %1, i64 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.mm_struct*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.vm_area_struct*, align 8
  %10 = alloca i64, align 8
  store %struct.mm_struct* %0, %struct.mm_struct** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  store i64 0, i64* %8, align 8
  %11 = load %struct.mm_struct*, %struct.mm_struct** %5, align 8
  %12 = load i64, i64* %6, align 8
  %13 = load i64, i64* %7, align 8
  %14 = call %struct.vm_area_struct* @find_vma_intersection(%struct.mm_struct* %11, i64 %12, i64 %13)
  store %struct.vm_area_struct* %14, %struct.vm_area_struct** %9, align 8
  %15 = load %struct.vm_area_struct*, %struct.vm_area_struct** %9, align 8
  %16 = icmp ne %struct.vm_area_struct* %15, null
  br i1 %16, label %18, label %17

17:                                               ; preds = %3
  store i64 0, i64* %4, align 8
  br label %66

18:                                               ; preds = %3
  %19 = load i64, i64* %7, align 8
  %20 = load %struct.vm_area_struct*, %struct.vm_area_struct** %9, align 8
  %21 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 8
  %23 = call i64 @min(i64 %19, i32 %22)
  %24 = load i64, i64* %6, align 8
  %25 = load %struct.vm_area_struct*, %struct.vm_area_struct** %9, align 8
  %26 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = call i64 @max(i64 %24, i64 %27)
  %29 = sub i64 %23, %28
  %30 = load i64, i64* @PAGE_SHIFT, align 8
  %31 = lshr i64 %29, %30
  store i64 %31, i64* %8, align 8
  %32 = load %struct.vm_area_struct*, %struct.vm_area_struct** %9, align 8
  %33 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %32, i32 0, i32 2
  %34 = load %struct.vm_area_struct*, %struct.vm_area_struct** %33, align 8
  store %struct.vm_area_struct* %34, %struct.vm_area_struct** %9, align 8
  br label %35

35:                                               ; preds = %60, %18
  %36 = load %struct.vm_area_struct*, %struct.vm_area_struct** %9, align 8
  %37 = icmp ne %struct.vm_area_struct* %36, null
  br i1 %37, label %38, label %64

38:                                               ; preds = %35
  %39 = load %struct.vm_area_struct*, %struct.vm_area_struct** %9, align 8
  %40 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = load i64, i64* %7, align 8
  %43 = icmp ugt i64 %41, %42
  br i1 %43, label %44, label %45

44:                                               ; preds = %38
  br label %64

45:                                               ; preds = %38
  %46 = load i64, i64* %7, align 8
  %47 = load %struct.vm_area_struct*, %struct.vm_area_struct** %9, align 8
  %48 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 8
  %50 = call i64 @min(i64 %46, i32 %49)
  %51 = load %struct.vm_area_struct*, %struct.vm_area_struct** %9, align 8
  %52 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = sub i64 %50, %53
  store i64 %54, i64* %10, align 8
  %55 = load i64, i64* %10, align 8
  %56 = load i64, i64* @PAGE_SHIFT, align 8
  %57 = lshr i64 %55, %56
  %58 = load i64, i64* %8, align 8
  %59 = add i64 %58, %57
  store i64 %59, i64* %8, align 8
  br label %60

60:                                               ; preds = %45
  %61 = load %struct.vm_area_struct*, %struct.vm_area_struct** %9, align 8
  %62 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %61, i32 0, i32 2
  %63 = load %struct.vm_area_struct*, %struct.vm_area_struct** %62, align 8
  store %struct.vm_area_struct* %63, %struct.vm_area_struct** %9, align 8
  br label %35

64:                                               ; preds = %44, %35
  %65 = load i64, i64* %8, align 8
  store i64 %65, i64* %4, align 8
  br label %66

66:                                               ; preds = %64, %17
  %67 = load i64, i64* %4, align 8
  ret i64 %67
}

declare dso_local %struct.vm_area_struct* @find_vma_intersection(%struct.mm_struct*, i64, i64) #1

declare dso_local i64 @min(i64, i32) #1

declare dso_local i64 @max(i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
