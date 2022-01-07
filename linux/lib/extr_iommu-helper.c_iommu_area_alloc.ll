; ModuleID = '/home/carl/AnghaBench/linux/lib/extr_iommu-helper.c_iommu_area_alloc.c'
source_filename = "/home/carl/AnghaBench/linux/lib/extr_iommu-helper.c_iommu_area_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @iommu_area_alloc(i64* %0, i64 %1, i64 %2, i32 %3, i64 %4, i64 %5, i64 %6) #0 {
  %8 = alloca i64, align 8
  %9 = alloca i64*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  store i64* %0, i64** %9, align 8
  store i64 %1, i64* %10, align 8
  store i64 %2, i64* %11, align 8
  store i32 %3, i32* %12, align 4
  store i64 %4, i64* %13, align 8
  store i64 %5, i64* %14, align 8
  store i64 %6, i64* %15, align 8
  %17 = load i64, i64* %10, align 8
  %18 = sub i64 %17, 1
  store i64 %18, i64* %10, align 8
  br label %19

19:                                               ; preds = %36, %7
  %20 = load i64*, i64** %9, align 8
  %21 = load i64, i64* %10, align 8
  %22 = load i64, i64* %11, align 8
  %23 = load i32, i32* %12, align 4
  %24 = load i64, i64* %15, align 8
  %25 = call i64 @bitmap_find_next_zero_area(i64* %20, i64 %21, i64 %22, i32 %23, i64 %24)
  store i64 %25, i64* %16, align 8
  %26 = load i64, i64* %16, align 8
  %27 = load i64, i64* %10, align 8
  %28 = icmp ult i64 %26, %27
  br i1 %28, label %29, label %50

29:                                               ; preds = %19
  %30 = load i64, i64* %16, align 8
  %31 = load i32, i32* %12, align 4
  %32 = load i64, i64* %13, align 8
  %33 = load i64, i64* %14, align 8
  %34 = call i64 @iommu_is_span_boundary(i64 %30, i32 %31, i64 %32, i64 %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %44

36:                                               ; preds = %29
  %37 = load i64, i64* %13, align 8
  %38 = load i64, i64* %16, align 8
  %39 = add i64 %37, %38
  %40 = load i64, i64* %14, align 8
  %41 = call i64 @ALIGN(i64 %39, i64 %40)
  %42 = load i64, i64* %13, align 8
  %43 = sub i64 %41, %42
  store i64 %43, i64* %11, align 8
  br label %19

44:                                               ; preds = %29
  %45 = load i64*, i64** %9, align 8
  %46 = load i64, i64* %16, align 8
  %47 = load i32, i32* %12, align 4
  %48 = call i32 @bitmap_set(i64* %45, i64 %46, i32 %47)
  %49 = load i64, i64* %16, align 8
  store i64 %49, i64* %8, align 8
  br label %51

50:                                               ; preds = %19
  store i64 -1, i64* %8, align 8
  br label %51

51:                                               ; preds = %50, %44
  %52 = load i64, i64* %8, align 8
  ret i64 %52
}

declare dso_local i64 @bitmap_find_next_zero_area(i64*, i64, i64, i32, i64) #1

declare dso_local i64 @iommu_is_span_boundary(i64, i32, i64, i64) #1

declare dso_local i64 @ALIGN(i64, i64) #1

declare dso_local i32 @bitmap_set(i64*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
