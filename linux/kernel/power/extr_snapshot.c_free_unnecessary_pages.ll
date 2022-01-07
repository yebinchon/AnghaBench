; ModuleID = '/home/carl/AnghaBench/linux/kernel/power/extr_snapshot.c_free_unnecessary_pages.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/power/extr_snapshot.c_free_unnecessary_pages.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.page = type { i32 }

@alloc_normal = common dso_local global i64 0, align 8
@alloc_highmem = common dso_local global i64 0, align 8
@copy_bm = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 ()* @free_unnecessary_pages to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @free_unnecessary_pages() #0 {
  %1 = alloca i64, align 8
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.page*, align 8
  %7 = call i64 (...) @count_data_pages()
  store i64 %7, i64* %1, align 8
  %8 = load i64, i64* @alloc_normal, align 8
  %9 = load i64, i64* %1, align 8
  %10 = icmp uge i64 %8, %9
  br i1 %10, label %11, label %15

11:                                               ; preds = %0
  %12 = load i64, i64* @alloc_normal, align 8
  %13 = load i64, i64* %1, align 8
  %14 = sub i64 %12, %13
  store i64 %14, i64* %2, align 8
  store i64 0, i64* %1, align 8
  br label %19

15:                                               ; preds = %0
  store i64 0, i64* %2, align 8
  %16 = load i64, i64* @alloc_normal, align 8
  %17 = load i64, i64* %1, align 8
  %18 = sub i64 %17, %16
  store i64 %18, i64* %1, align 8
  br label %19

19:                                               ; preds = %15, %11
  %20 = call i64 (...) @count_highmem_pages()
  %21 = load i64, i64* %1, align 8
  %22 = add i64 %21, %20
  store i64 %22, i64* %1, align 8
  %23 = load i64, i64* @alloc_highmem, align 8
  %24 = load i64, i64* %1, align 8
  %25 = icmp uge i64 %23, %24
  br i1 %25, label %26, label %30

26:                                               ; preds = %19
  %27 = load i64, i64* @alloc_highmem, align 8
  %28 = load i64, i64* %1, align 8
  %29 = sub i64 %27, %28
  store i64 %29, i64* %3, align 8
  br label %43

30:                                               ; preds = %19
  store i64 0, i64* %3, align 8
  %31 = load i64, i64* @alloc_highmem, align 8
  %32 = load i64, i64* %1, align 8
  %33 = sub i64 %32, %31
  store i64 %33, i64* %1, align 8
  %34 = load i64, i64* %2, align 8
  %35 = load i64, i64* %1, align 8
  %36 = icmp ugt i64 %34, %35
  br i1 %36, label %37, label %41

37:                                               ; preds = %30
  %38 = load i64, i64* %1, align 8
  %39 = load i64, i64* %2, align 8
  %40 = sub i64 %39, %38
  store i64 %40, i64* %2, align 8
  br label %42

41:                                               ; preds = %30
  store i64 0, i64* %2, align 8
  br label %42

42:                                               ; preds = %41, %37
  br label %43

43:                                               ; preds = %42, %26
  %44 = load i64, i64* %2, align 8
  %45 = load i64, i64* %3, align 8
  %46 = add i64 %44, %45
  store i64 %46, i64* %4, align 8
  %47 = call i32 @memory_bm_position_reset(i32* @copy_bm)
  br label %48

48:                                               ; preds = %81, %75, %66, %43
  %49 = load i64, i64* %2, align 8
  %50 = icmp ugt i64 %49, 0
  br i1 %50, label %54, label %51

51:                                               ; preds = %48
  %52 = load i64, i64* %3, align 8
  %53 = icmp ugt i64 %52, 0
  br label %54

54:                                               ; preds = %51, %48
  %55 = phi i1 [ true, %48 ], [ %53, %51 ]
  br i1 %55, label %56, label %90

56:                                               ; preds = %54
  %57 = call i64 @memory_bm_next_pfn(i32* @copy_bm)
  store i64 %57, i64* %5, align 8
  %58 = load i64, i64* %5, align 8
  %59 = call %struct.page* @pfn_to_page(i64 %58)
  store %struct.page* %59, %struct.page** %6, align 8
  %60 = load %struct.page*, %struct.page** %6, align 8
  %61 = call i64 @PageHighMem(%struct.page* %60)
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %72

63:                                               ; preds = %56
  %64 = load i64, i64* %3, align 8
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %67, label %66

66:                                               ; preds = %63
  br label %48

67:                                               ; preds = %63
  %68 = load i64, i64* %3, align 8
  %69 = add i64 %68, -1
  store i64 %69, i64* %3, align 8
  %70 = load i64, i64* @alloc_highmem, align 8
  %71 = add i64 %70, -1
  store i64 %71, i64* @alloc_highmem, align 8
  br label %81

72:                                               ; preds = %56
  %73 = load i64, i64* %2, align 8
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %76, label %75

75:                                               ; preds = %72
  br label %48

76:                                               ; preds = %72
  %77 = load i64, i64* %2, align 8
  %78 = add i64 %77, -1
  store i64 %78, i64* %2, align 8
  %79 = load i64, i64* @alloc_normal, align 8
  %80 = add i64 %79, -1
  store i64 %80, i64* @alloc_normal, align 8
  br label %81

81:                                               ; preds = %76, %67
  %82 = load i64, i64* %5, align 8
  %83 = call i32 @memory_bm_clear_bit(i32* @copy_bm, i64 %82)
  %84 = load %struct.page*, %struct.page** %6, align 8
  %85 = call i32 @swsusp_unset_page_forbidden(%struct.page* %84)
  %86 = load %struct.page*, %struct.page** %6, align 8
  %87 = call i32 @swsusp_unset_page_free(%struct.page* %86)
  %88 = load %struct.page*, %struct.page** %6, align 8
  %89 = call i32 @__free_page(%struct.page* %88)
  br label %48

90:                                               ; preds = %54
  %91 = load i64, i64* %4, align 8
  ret i64 %91
}

declare dso_local i64 @count_data_pages(...) #1

declare dso_local i64 @count_highmem_pages(...) #1

declare dso_local i32 @memory_bm_position_reset(i32*) #1

declare dso_local i64 @memory_bm_next_pfn(i32*) #1

declare dso_local %struct.page* @pfn_to_page(i64) #1

declare dso_local i64 @PageHighMem(%struct.page*) #1

declare dso_local i32 @memory_bm_clear_bit(i32*, i64) #1

declare dso_local i32 @swsusp_unset_page_forbidden(%struct.page*) #1

declare dso_local i32 @swsusp_unset_page_free(%struct.page*) #1

declare dso_local i32 @__free_page(%struct.page*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
