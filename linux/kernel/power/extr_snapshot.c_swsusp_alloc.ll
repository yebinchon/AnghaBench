; ModuleID = '/home/carl/AnghaBench/linux/kernel/power/extr_snapshot.c_swsusp_alloc.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/power/extr_snapshot.c_swsusp_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.memory_bitmap = type { i32 }
%struct.page = type { i32 }

@PG_ANY = common dso_local global i32 0, align 4
@alloc_highmem = common dso_local global i32 0, align 4
@alloc_normal = common dso_local global i32 0, align 4
@GFP_ATOMIC = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.memory_bitmap*, i32, i32)* @swsusp_alloc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @swsusp_alloc(%struct.memory_bitmap* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.memory_bitmap*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.page*, align 8
  store %struct.memory_bitmap* %0, %struct.memory_bitmap** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %9 = load i32, i32* %7, align 4
  %10 = icmp ugt i32 %9, 0
  br i1 %10, label %11, label %32

11:                                               ; preds = %3
  %12 = load i32, i32* @PG_ANY, align 4
  %13 = call i64 @get_highmem_buffer(i32 %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %11
  br label %57

16:                                               ; preds = %11
  %17 = load i32, i32* %7, align 4
  %18 = load i32, i32* @alloc_highmem, align 4
  %19 = icmp ugt i32 %17, %18
  br i1 %19, label %20, label %31

20:                                               ; preds = %16
  %21 = load i32, i32* @alloc_highmem, align 4
  %22 = load i32, i32* %7, align 4
  %23 = sub i32 %22, %21
  store i32 %23, i32* %7, align 4
  %24 = load %struct.memory_bitmap*, %struct.memory_bitmap** %5, align 8
  %25 = load i32, i32* %7, align 4
  %26 = call i64 @alloc_highmem_pages(%struct.memory_bitmap* %24, i32 %25)
  %27 = load i32, i32* %6, align 4
  %28 = zext i32 %27 to i64
  %29 = add nsw i64 %28, %26
  %30 = trunc i64 %29 to i32
  store i32 %30, i32* %6, align 4
  br label %31

31:                                               ; preds = %20, %16
  br label %32

32:                                               ; preds = %31, %3
  %33 = load i32, i32* %6, align 4
  %34 = load i32, i32* @alloc_normal, align 4
  %35 = icmp ugt i32 %33, %34
  br i1 %35, label %36, label %56

36:                                               ; preds = %32
  %37 = load i32, i32* @alloc_normal, align 4
  %38 = load i32, i32* %6, align 4
  %39 = sub i32 %38, %37
  store i32 %39, i32* %6, align 4
  br label %40

40:                                               ; preds = %50, %36
  %41 = load i32, i32* %6, align 4
  %42 = add i32 %41, -1
  store i32 %42, i32* %6, align 4
  %43 = icmp ugt i32 %41, 0
  br i1 %43, label %44, label %55

44:                                               ; preds = %40
  %45 = load i32, i32* @GFP_ATOMIC, align 4
  %46 = call %struct.page* @alloc_image_page(i32 %45)
  store %struct.page* %46, %struct.page** %8, align 8
  %47 = load %struct.page*, %struct.page** %8, align 8
  %48 = icmp ne %struct.page* %47, null
  br i1 %48, label %50, label %49

49:                                               ; preds = %44
  br label %57

50:                                               ; preds = %44
  %51 = load %struct.memory_bitmap*, %struct.memory_bitmap** %5, align 8
  %52 = load %struct.page*, %struct.page** %8, align 8
  %53 = call i32 @page_to_pfn(%struct.page* %52)
  %54 = call i32 @memory_bm_set_bit(%struct.memory_bitmap* %51, i32 %53)
  br label %40

55:                                               ; preds = %40
  br label %56

56:                                               ; preds = %55, %32
  store i32 0, i32* %4, align 4
  br label %61

57:                                               ; preds = %49, %15
  %58 = call i32 (...) @swsusp_free()
  %59 = load i32, i32* @ENOMEM, align 4
  %60 = sub nsw i32 0, %59
  store i32 %60, i32* %4, align 4
  br label %61

61:                                               ; preds = %57, %56
  %62 = load i32, i32* %4, align 4
  ret i32 %62
}

declare dso_local i64 @get_highmem_buffer(i32) #1

declare dso_local i64 @alloc_highmem_pages(%struct.memory_bitmap*, i32) #1

declare dso_local %struct.page* @alloc_image_page(i32) #1

declare dso_local i32 @memory_bm_set_bit(%struct.memory_bitmap*, i32) #1

declare dso_local i32 @page_to_pfn(%struct.page*) #1

declare dso_local i32 @swsusp_free(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
