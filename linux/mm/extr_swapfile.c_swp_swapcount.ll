; ModuleID = '/home/carl/AnghaBench/linux/mm/extr_swapfile.c_swp_swapcount.c'
source_filename = "/home/carl/AnghaBench/linux/mm/extr_swapfile.c_swp_swapcount.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.swap_info_struct = type { i32* }
%struct.swap_cluster_info = type { i32 }
%struct.page = type { i32 }

@COUNT_CONTINUED = common dso_local global i32 0, align 4
@SWAP_MAP_MAX = common dso_local global i32 0, align 4
@PAGE_MASK = common dso_local global i64 0, align 8
@SWP_CONTINUED = common dso_local global i64 0, align 8
@lru = common dso_local global i32 0, align 4
@SWAP_CONT_MAX = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @swp_swapcount(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.swap_info_struct*, align 8
  %8 = alloca %struct.swap_cluster_info*, align 8
  %9 = alloca %struct.page*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i8*, align 8
  store i32 %0, i32* %3, align 4
  %12 = load i32, i32* %3, align 4
  %13 = call %struct.swap_info_struct* @_swap_info_get(i32 %12)
  store %struct.swap_info_struct* %13, %struct.swap_info_struct** %7, align 8
  %14 = load %struct.swap_info_struct*, %struct.swap_info_struct** %7, align 8
  %15 = icmp ne %struct.swap_info_struct* %14, null
  br i1 %15, label %17, label %16

16:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %94

17:                                               ; preds = %1
  %18 = load i32, i32* %3, align 4
  %19 = call i64 @swp_offset(i32 %18)
  store i64 %19, i64* %10, align 8
  %20 = load %struct.swap_info_struct*, %struct.swap_info_struct** %7, align 8
  %21 = load i64, i64* %10, align 8
  %22 = call %struct.swap_cluster_info* @lock_cluster_or_swap_info(%struct.swap_info_struct* %20, i64 %21)
  store %struct.swap_cluster_info* %22, %struct.swap_cluster_info** %8, align 8
  %23 = load %struct.swap_info_struct*, %struct.swap_info_struct** %7, align 8
  %24 = getelementptr inbounds %struct.swap_info_struct, %struct.swap_info_struct* %23, i32 0, i32 0
  %25 = load i32*, i32** %24, align 8
  %26 = load i64, i64* %10, align 8
  %27 = getelementptr inbounds i32, i32* %25, i64 %26
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @swap_count(i32 %28)
  store i32 %29, i32* %4, align 4
  %30 = load i32, i32* %4, align 4
  %31 = load i32, i32* @COUNT_CONTINUED, align 4
  %32 = and i32 %30, %31
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %35, label %34

34:                                               ; preds = %17
  br label %89

35:                                               ; preds = %17
  %36 = load i32, i32* @COUNT_CONTINUED, align 4
  %37 = xor i32 %36, -1
  %38 = load i32, i32* %4, align 4
  %39 = and i32 %38, %37
  store i32 %39, i32* %4, align 4
  %40 = load i32, i32* @SWAP_MAP_MAX, align 4
  %41 = add nsw i32 %40, 1
  store i32 %41, i32* %6, align 4
  %42 = load %struct.swap_info_struct*, %struct.swap_info_struct** %7, align 8
  %43 = getelementptr inbounds %struct.swap_info_struct, %struct.swap_info_struct* %42, i32 0, i32 0
  %44 = load i32*, i32** %43, align 8
  %45 = load i64, i64* %10, align 8
  %46 = getelementptr inbounds i32, i32* %44, i64 %45
  %47 = call %struct.page* @vmalloc_to_page(i32* %46)
  store %struct.page* %47, %struct.page** %9, align 8
  %48 = load i64, i64* @PAGE_MASK, align 8
  %49 = xor i64 %48, -1
  %50 = load i64, i64* %10, align 8
  %51 = and i64 %50, %49
  store i64 %51, i64* %10, align 8
  %52 = load %struct.page*, %struct.page** %9, align 8
  %53 = call i64 @page_private(%struct.page* %52)
  %54 = load i64, i64* @SWP_CONTINUED, align 8
  %55 = icmp ne i64 %53, %54
  %56 = zext i1 %55 to i32
  %57 = call i32 @VM_BUG_ON(i32 %56)
  br label %58

58:                                               ; preds = %83, %35
  %59 = load %struct.page*, %struct.page** %9, align 8
  %60 = load i32, i32* @lru, align 4
  %61 = call %struct.page* @list_next_entry(%struct.page* %59, i32 %60)
  store %struct.page* %61, %struct.page** %9, align 8
  %62 = load %struct.page*, %struct.page** %9, align 8
  %63 = call i8* @kmap_atomic(%struct.page* %62)
  store i8* %63, i8** %11, align 8
  %64 = load i8*, i8** %11, align 8
  %65 = load i64, i64* %10, align 8
  %66 = getelementptr inbounds i8, i8* %64, i64 %65
  %67 = load i8, i8* %66, align 1
  %68 = zext i8 %67 to i32
  store i32 %68, i32* %5, align 4
  %69 = load i8*, i8** %11, align 8
  %70 = call i32 @kunmap_atomic(i8* %69)
  %71 = load i32, i32* %5, align 4
  %72 = load i32, i32* @COUNT_CONTINUED, align 4
  %73 = xor i32 %72, -1
  %74 = and i32 %71, %73
  %75 = load i32, i32* %6, align 4
  %76 = mul nsw i32 %74, %75
  %77 = load i32, i32* %4, align 4
  %78 = add nsw i32 %77, %76
  store i32 %78, i32* %4, align 4
  %79 = load i32, i32* @SWAP_CONT_MAX, align 4
  %80 = add nsw i32 %79, 1
  %81 = load i32, i32* %6, align 4
  %82 = mul nsw i32 %81, %80
  store i32 %82, i32* %6, align 4
  br label %83

83:                                               ; preds = %58
  %84 = load i32, i32* %5, align 4
  %85 = load i32, i32* @COUNT_CONTINUED, align 4
  %86 = and i32 %84, %85
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %58, label %88

88:                                               ; preds = %83
  br label %89

89:                                               ; preds = %88, %34
  %90 = load %struct.swap_info_struct*, %struct.swap_info_struct** %7, align 8
  %91 = load %struct.swap_cluster_info*, %struct.swap_cluster_info** %8, align 8
  %92 = call i32 @unlock_cluster_or_swap_info(%struct.swap_info_struct* %90, %struct.swap_cluster_info* %91)
  %93 = load i32, i32* %4, align 4
  store i32 %93, i32* %2, align 4
  br label %94

94:                                               ; preds = %89, %16
  %95 = load i32, i32* %2, align 4
  ret i32 %95
}

declare dso_local %struct.swap_info_struct* @_swap_info_get(i32) #1

declare dso_local i64 @swp_offset(i32) #1

declare dso_local %struct.swap_cluster_info* @lock_cluster_or_swap_info(%struct.swap_info_struct*, i64) #1

declare dso_local i32 @swap_count(i32) #1

declare dso_local %struct.page* @vmalloc_to_page(i32*) #1

declare dso_local i32 @VM_BUG_ON(i32) #1

declare dso_local i64 @page_private(%struct.page*) #1

declare dso_local %struct.page* @list_next_entry(%struct.page*, i32) #1

declare dso_local i8* @kmap_atomic(%struct.page*) #1

declare dso_local i32 @kunmap_atomic(i8*) #1

declare dso_local i32 @unlock_cluster_or_swap_info(%struct.swap_info_struct*, %struct.swap_cluster_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
