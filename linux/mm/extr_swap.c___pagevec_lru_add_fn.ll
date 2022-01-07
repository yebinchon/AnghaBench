; ModuleID = '/home/carl/AnghaBench/linux/mm/extr_swap.c___pagevec_lru_add_fn.c'
source_filename = "/home/carl/AnghaBench/linux/mm/extr_swap.c___pagevec_lru_add_fn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.page = type { i32 }
%struct.lruvec = type { i32 }

@UNEVICTABLE_PGRESCUED = common dso_local global i32 0, align 4
@LRU_UNEVICTABLE = common dso_local global i32 0, align 4
@UNEVICTABLE_PGCULLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.page*, %struct.lruvec*, i8*)* @__pagevec_lru_add_fn to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__pagevec_lru_add_fn(%struct.page* %0, %struct.lruvec* %1, i8* %2) #0 {
  %4 = alloca %struct.page*, align 8
  %5 = alloca %struct.lruvec*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.page* %0, %struct.page** %4, align 8
  store %struct.lruvec* %1, %struct.lruvec** %5, align 8
  store i8* %2, i8** %6, align 8
  %9 = load %struct.page*, %struct.page** %4, align 8
  %10 = call i32 @TestClearPageUnevictable(%struct.page* %9)
  store i32 %10, i32* %8, align 4
  %11 = load %struct.page*, %struct.page** %4, align 8
  %12 = call i32 @PageLRU(%struct.page* %11)
  %13 = load %struct.page*, %struct.page** %4, align 8
  %14 = call i32 @VM_BUG_ON_PAGE(i32 %12, %struct.page* %13)
  %15 = load %struct.page*, %struct.page** %4, align 8
  %16 = call i32 @SetPageLRU(%struct.page* %15)
  %17 = call i32 (...) @smp_mb()
  %18 = load %struct.page*, %struct.page** %4, align 8
  %19 = call i64 @page_evictable(%struct.page* %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %36

21:                                               ; preds = %3
  %22 = load %struct.page*, %struct.page** %4, align 8
  %23 = call i32 @page_lru(%struct.page* %22)
  store i32 %23, i32* %7, align 4
  %24 = load %struct.lruvec*, %struct.lruvec** %5, align 8
  %25 = load %struct.page*, %struct.page** %4, align 8
  %26 = call i32 @page_is_file_cache(%struct.page* %25)
  %27 = load %struct.page*, %struct.page** %4, align 8
  %28 = call i32 @PageActive(%struct.page* %27)
  %29 = call i32 @update_page_reclaim_stat(%struct.lruvec* %24, i32 %26, i32 %28)
  %30 = load i32, i32* %8, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %35

32:                                               ; preds = %21
  %33 = load i32, i32* @UNEVICTABLE_PGRESCUED, align 4
  %34 = call i32 @count_vm_event(i32 %33)
  br label %35

35:                                               ; preds = %32, %21
  br label %48

36:                                               ; preds = %3
  %37 = load i32, i32* @LRU_UNEVICTABLE, align 4
  store i32 %37, i32* %7, align 4
  %38 = load %struct.page*, %struct.page** %4, align 8
  %39 = call i32 @ClearPageActive(%struct.page* %38)
  %40 = load %struct.page*, %struct.page** %4, align 8
  %41 = call i32 @SetPageUnevictable(%struct.page* %40)
  %42 = load i32, i32* %8, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %47, label %44

44:                                               ; preds = %36
  %45 = load i32, i32* @UNEVICTABLE_PGCULLED, align 4
  %46 = call i32 @count_vm_event(i32 %45)
  br label %47

47:                                               ; preds = %44, %36
  br label %48

48:                                               ; preds = %47, %35
  %49 = load %struct.page*, %struct.page** %4, align 8
  %50 = load %struct.lruvec*, %struct.lruvec** %5, align 8
  %51 = load i32, i32* %7, align 4
  %52 = call i32 @add_page_to_lru_list(%struct.page* %49, %struct.lruvec* %50, i32 %51)
  %53 = load %struct.page*, %struct.page** %4, align 8
  %54 = load i32, i32* %7, align 4
  %55 = call i32 @trace_mm_lru_insertion(%struct.page* %53, i32 %54)
  ret void
}

declare dso_local i32 @TestClearPageUnevictable(%struct.page*) #1

declare dso_local i32 @VM_BUG_ON_PAGE(i32, %struct.page*) #1

declare dso_local i32 @PageLRU(%struct.page*) #1

declare dso_local i32 @SetPageLRU(%struct.page*) #1

declare dso_local i32 @smp_mb(...) #1

declare dso_local i64 @page_evictable(%struct.page*) #1

declare dso_local i32 @page_lru(%struct.page*) #1

declare dso_local i32 @update_page_reclaim_stat(%struct.lruvec*, i32, i32) #1

declare dso_local i32 @page_is_file_cache(%struct.page*) #1

declare dso_local i32 @PageActive(%struct.page*) #1

declare dso_local i32 @count_vm_event(i32) #1

declare dso_local i32 @ClearPageActive(%struct.page*) #1

declare dso_local i32 @SetPageUnevictable(%struct.page*) #1

declare dso_local i32 @add_page_to_lru_list(%struct.page*, %struct.lruvec*, i32) #1

declare dso_local i32 @trace_mm_lru_insertion(%struct.page*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
