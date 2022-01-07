; ModuleID = '/home/carl/AnghaBench/linux/kernel/power/extr_snapshot.c_preallocate_image_pages.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/power/extr_snapshot.c_preallocate_image_pages.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.page = type { i32 }

@copy_bm = common dso_local global i32 0, align 4
@alloc_highmem = common dso_local global i32 0, align 4
@alloc_normal = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i64, i32)* @preallocate_image_pages to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @preallocate_image_pages(i64 %0, i32 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca %struct.page*, align 8
  store i64 %0, i64* %3, align 8
  store i32 %1, i32* %4, align 4
  store i64 0, i64* %5, align 8
  br label %7

7:                                                ; preds = %29, %2
  %8 = load i64, i64* %3, align 8
  %9 = icmp ugt i64 %8, 0
  br i1 %9, label %10, label %34

10:                                               ; preds = %7
  %11 = load i32, i32* %4, align 4
  %12 = call %struct.page* @alloc_image_page(i32 %11)
  store %struct.page* %12, %struct.page** %6, align 8
  %13 = load %struct.page*, %struct.page** %6, align 8
  %14 = icmp ne %struct.page* %13, null
  br i1 %14, label %16, label %15

15:                                               ; preds = %10
  br label %34

16:                                               ; preds = %10
  %17 = load %struct.page*, %struct.page** %6, align 8
  %18 = call i32 @page_to_pfn(%struct.page* %17)
  %19 = call i32 @memory_bm_set_bit(i32* @copy_bm, i32 %18)
  %20 = load %struct.page*, %struct.page** %6, align 8
  %21 = call i64 @PageHighMem(%struct.page* %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %16
  %24 = load i32, i32* @alloc_highmem, align 4
  %25 = add nsw i32 %24, 1
  store i32 %25, i32* @alloc_highmem, align 4
  br label %29

26:                                               ; preds = %16
  %27 = load i32, i32* @alloc_normal, align 4
  %28 = add nsw i32 %27, 1
  store i32 %28, i32* @alloc_normal, align 4
  br label %29

29:                                               ; preds = %26, %23
  %30 = load i64, i64* %3, align 8
  %31 = add i64 %30, -1
  store i64 %31, i64* %3, align 8
  %32 = load i64, i64* %5, align 8
  %33 = add i64 %32, 1
  store i64 %33, i64* %5, align 8
  br label %7

34:                                               ; preds = %15, %7
  %35 = load i64, i64* %5, align 8
  ret i64 %35
}

declare dso_local %struct.page* @alloc_image_page(i32) #1

declare dso_local i32 @memory_bm_set_bit(i32*, i32) #1

declare dso_local i32 @page_to_pfn(%struct.page*) #1

declare dso_local i64 @PageHighMem(%struct.page*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
