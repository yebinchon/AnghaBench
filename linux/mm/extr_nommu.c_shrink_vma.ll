; ModuleID = '/home/carl/AnghaBench/linux/mm/extr_nommu.c_shrink_vma.c'
source_filename = "/home/carl/AnghaBench/linux/mm/extr_nommu.c_shrink_vma.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mm_struct = type { i32 }
%struct.vm_area_struct = type { i64, i64, %struct.vm_region* }
%struct.vm_region = type { i32, i64, i64, i64 }

@nommu_region_sem = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mm_struct*, %struct.vm_area_struct*, i64, i64)* @shrink_vma to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @shrink_vma(%struct.mm_struct* %0, %struct.vm_area_struct* %1, i64 %2, i64 %3) #0 {
  %5 = alloca %struct.mm_struct*, align 8
  %6 = alloca %struct.vm_area_struct*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.vm_region*, align 8
  store %struct.mm_struct* %0, %struct.mm_struct** %5, align 8
  store %struct.vm_area_struct* %1, %struct.vm_area_struct** %6, align 8
  store i64 %2, i64* %7, align 8
  store i64 %3, i64* %8, align 8
  %10 = load %struct.vm_area_struct*, %struct.vm_area_struct** %6, align 8
  %11 = call i32 @delete_vma_from_mm(%struct.vm_area_struct* %10)
  %12 = load i64, i64* %7, align 8
  %13 = load %struct.vm_area_struct*, %struct.vm_area_struct** %6, align 8
  %14 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = icmp ugt i64 %12, %15
  br i1 %16, label %17, label %21

17:                                               ; preds = %4
  %18 = load i64, i64* %7, align 8
  %19 = load %struct.vm_area_struct*, %struct.vm_area_struct** %6, align 8
  %20 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %19, i32 0, i32 1
  store i64 %18, i64* %20, align 8
  br label %25

21:                                               ; preds = %4
  %22 = load i64, i64* %8, align 8
  %23 = load %struct.vm_area_struct*, %struct.vm_area_struct** %6, align 8
  %24 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %23, i32 0, i32 0
  store i64 %22, i64* %24, align 8
  br label %25

25:                                               ; preds = %21, %17
  %26 = load %struct.mm_struct*, %struct.mm_struct** %5, align 8
  %27 = load %struct.vm_area_struct*, %struct.vm_area_struct** %6, align 8
  %28 = call i32 @add_vma_to_mm(%struct.mm_struct* %26, %struct.vm_area_struct* %27)
  %29 = load %struct.vm_area_struct*, %struct.vm_area_struct** %6, align 8
  %30 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %29, i32 0, i32 2
  %31 = load %struct.vm_region*, %struct.vm_region** %30, align 8
  store %struct.vm_region* %31, %struct.vm_region** %9, align 8
  %32 = load %struct.vm_region*, %struct.vm_region** %9, align 8
  %33 = getelementptr inbounds %struct.vm_region, %struct.vm_region* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = icmp ne i32 %34, 1
  %36 = zext i1 %35 to i32
  %37 = call i32 @BUG_ON(i32 %36)
  %38 = call i32 @down_write(i32* @nommu_region_sem)
  %39 = load %struct.vm_region*, %struct.vm_region** %9, align 8
  %40 = call i32 @delete_nommu_region(%struct.vm_region* %39)
  %41 = load i64, i64* %7, align 8
  %42 = load %struct.vm_region*, %struct.vm_region** %9, align 8
  %43 = getelementptr inbounds %struct.vm_region, %struct.vm_region* %42, i32 0, i32 1
  %44 = load i64, i64* %43, align 8
  %45 = icmp ugt i64 %41, %44
  br i1 %45, label %46, label %55

46:                                               ; preds = %25
  %47 = load %struct.vm_region*, %struct.vm_region** %9, align 8
  %48 = getelementptr inbounds %struct.vm_region, %struct.vm_region* %47, i32 0, i32 2
  %49 = load i64, i64* %48, align 8
  store i64 %49, i64* %8, align 8
  %50 = load i64, i64* %7, align 8
  %51 = load %struct.vm_region*, %struct.vm_region** %9, align 8
  %52 = getelementptr inbounds %struct.vm_region, %struct.vm_region* %51, i32 0, i32 3
  store i64 %50, i64* %52, align 8
  %53 = load %struct.vm_region*, %struct.vm_region** %9, align 8
  %54 = getelementptr inbounds %struct.vm_region, %struct.vm_region* %53, i32 0, i32 2
  store i64 %50, i64* %54, align 8
  br label %59

55:                                               ; preds = %25
  %56 = load i64, i64* %8, align 8
  %57 = load %struct.vm_region*, %struct.vm_region** %9, align 8
  %58 = getelementptr inbounds %struct.vm_region, %struct.vm_region* %57, i32 0, i32 1
  store i64 %56, i64* %58, align 8
  br label %59

59:                                               ; preds = %55, %46
  %60 = load %struct.vm_region*, %struct.vm_region** %9, align 8
  %61 = call i32 @add_nommu_region(%struct.vm_region* %60)
  %62 = call i32 @up_write(i32* @nommu_region_sem)
  %63 = load i64, i64* %7, align 8
  %64 = load i64, i64* %8, align 8
  %65 = call i32 @free_page_series(i64 %63, i64 %64)
  ret i32 0
}

declare dso_local i32 @delete_vma_from_mm(%struct.vm_area_struct*) #1

declare dso_local i32 @add_vma_to_mm(%struct.mm_struct*, %struct.vm_area_struct*) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @down_write(i32*) #1

declare dso_local i32 @delete_nommu_region(%struct.vm_region*) #1

declare dso_local i32 @add_nommu_region(%struct.vm_region*) #1

declare dso_local i32 @up_write(i32*) #1

declare dso_local i32 @free_page_series(i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
