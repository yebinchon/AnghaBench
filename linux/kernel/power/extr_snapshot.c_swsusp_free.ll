; ModuleID = '/home/carl/AnghaBench/linux/kernel/power/extr_snapshot.c_swsusp_free.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/power/extr_snapshot.c_swsusp_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.page = type { i32 }

@forbidden_pages_map = common dso_local global i32 0, align 4
@free_pages_map = common dso_local global i32 0, align 4
@BM_END_OF_MAP = common dso_local global i64 0, align 8
@nr_copy_pages = common dso_local global i64 0, align 8
@nr_meta_pages = common dso_local global i64 0, align 8
@restore_pblist = common dso_local global i32* null, align 8
@buffer = common dso_local global i32* null, align 8
@alloc_normal = common dso_local global i64 0, align 8
@alloc_highmem = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @swsusp_free() #0 {
  %1 = alloca i64, align 8
  %2 = alloca i64, align 8
  %3 = alloca %struct.page*, align 8
  %4 = load i32, i32* @forbidden_pages_map, align 4
  %5 = icmp ne i32 %4, 0
  br i1 %5, label %6, label %9

6:                                                ; preds = %0
  %7 = load i32, i32* @free_pages_map, align 4
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %10, label %9

9:                                                ; preds = %6, %0
  br label %60

10:                                               ; preds = %6
  %11 = load i32, i32* @forbidden_pages_map, align 4
  %12 = call i32 @memory_bm_position_reset(i32 %11)
  %13 = load i32, i32* @free_pages_map, align 4
  %14 = call i32 @memory_bm_position_reset(i32 %13)
  br label %15

15:                                               ; preds = %47, %10
  %16 = load i32, i32* @free_pages_map, align 4
  %17 = call i64 @memory_bm_next_pfn(i32 %16)
  store i64 %17, i64* %2, align 8
  %18 = load i32, i32* @forbidden_pages_map, align 4
  %19 = call i64 @memory_bm_next_pfn(i32 %18)
  store i64 %19, i64* %1, align 8
  br label %20

20:                                               ; preds = %35, %15
  %21 = load i64, i64* %1, align 8
  %22 = load i64, i64* %2, align 8
  %23 = icmp ult i64 %21, %22
  br i1 %23, label %24, label %27

24:                                               ; preds = %20
  %25 = load i32, i32* @forbidden_pages_map, align 4
  %26 = call i64 @memory_bm_next_pfn(i32 %25)
  store i64 %26, i64* %1, align 8
  br label %27

27:                                               ; preds = %24, %20
  %28 = load i64, i64* %2, align 8
  %29 = load i64, i64* %1, align 8
  %30 = icmp ult i64 %28, %29
  br i1 %30, label %31, label %34

31:                                               ; preds = %27
  %32 = load i32, i32* @free_pages_map, align 4
  %33 = call i64 @memory_bm_next_pfn(i32 %32)
  store i64 %33, i64* %2, align 8
  br label %34

34:                                               ; preds = %31, %27
  br label %35

35:                                               ; preds = %34
  %36 = load i64, i64* %1, align 8
  %37 = load i64, i64* %2, align 8
  %38 = icmp ne i64 %36, %37
  br i1 %38, label %20, label %39

39:                                               ; preds = %35
  %40 = load i64, i64* %2, align 8
  %41 = load i64, i64* @BM_END_OF_MAP, align 8
  %42 = icmp ne i64 %40, %41
  br i1 %42, label %43, label %59

43:                                               ; preds = %39
  %44 = load i64, i64* %2, align 8
  %45 = call i64 @pfn_valid(i64 %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %59

47:                                               ; preds = %43
  %48 = load i64, i64* %2, align 8
  %49 = call %struct.page* @pfn_to_page(i64 %48)
  store %struct.page* %49, %struct.page** %3, align 8
  %50 = load i32, i32* @forbidden_pages_map, align 4
  %51 = call i32 @memory_bm_clear_current(i32 %50)
  %52 = load i32, i32* @free_pages_map, align 4
  %53 = call i32 @memory_bm_clear_current(i32 %52)
  %54 = load %struct.page*, %struct.page** %3, align 8
  %55 = call i32 @page_address(%struct.page* %54)
  %56 = call i32 @hibernate_restore_unprotect_page(i32 %55)
  %57 = load %struct.page*, %struct.page** %3, align 8
  %58 = call i32 @__free_page(%struct.page* %57)
  br label %15

59:                                               ; preds = %43, %39
  br label %60

60:                                               ; preds = %59, %9
  store i64 0, i64* @nr_copy_pages, align 8
  store i64 0, i64* @nr_meta_pages, align 8
  store i32* null, i32** @restore_pblist, align 8
  store i32* null, i32** @buffer, align 8
  store i64 0, i64* @alloc_normal, align 8
  store i64 0, i64* @alloc_highmem, align 8
  %61 = call i32 (...) @hibernate_restore_protection_end()
  ret void
}

declare dso_local i32 @memory_bm_position_reset(i32) #1

declare dso_local i64 @memory_bm_next_pfn(i32) #1

declare dso_local i64 @pfn_valid(i64) #1

declare dso_local %struct.page* @pfn_to_page(i64) #1

declare dso_local i32 @memory_bm_clear_current(i32) #1

declare dso_local i32 @hibernate_restore_unprotect_page(i32) #1

declare dso_local i32 @page_address(%struct.page*) #1

declare dso_local i32 @__free_page(%struct.page*) #1

declare dso_local i32 @hibernate_restore_protection_end(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
