; ModuleID = '/home/carl/AnghaBench/linux/mm/extr_swap.c_lru_deactivate_fn.c'
source_filename = "/home/carl/AnghaBench/linux/mm/extr_swap.c_lru_deactivate_fn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.page = type { i32 }
%struct.lruvec = type { i32 }

@LRU_ACTIVE = common dso_local global i64 0, align 8
@PGDEACTIVATE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.page*, %struct.lruvec*, i8*)* @lru_deactivate_fn to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @lru_deactivate_fn(%struct.page* %0, %struct.lruvec* %1, i8* %2) #0 {
  %4 = alloca %struct.page*, align 8
  %5 = alloca %struct.lruvec*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.page* %0, %struct.page** %4, align 8
  store %struct.lruvec* %1, %struct.lruvec** %5, align 8
  store i8* %2, i8** %6, align 8
  %9 = load %struct.page*, %struct.page** %4, align 8
  %10 = call i64 @PageLRU(%struct.page* %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %47

12:                                               ; preds = %3
  %13 = load %struct.page*, %struct.page** %4, align 8
  %14 = call i64 @PageActive(%struct.page* %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %47

16:                                               ; preds = %12
  %17 = load %struct.page*, %struct.page** %4, align 8
  %18 = call i32 @PageUnevictable(%struct.page* %17)
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %47, label %20

20:                                               ; preds = %16
  %21 = load %struct.page*, %struct.page** %4, align 8
  %22 = call i32 @page_is_file_cache(%struct.page* %21)
  store i32 %22, i32* %7, align 4
  %23 = load %struct.page*, %struct.page** %4, align 8
  %24 = call i32 @page_lru_base_type(%struct.page* %23)
  store i32 %24, i32* %8, align 4
  %25 = load %struct.page*, %struct.page** %4, align 8
  %26 = load %struct.lruvec*, %struct.lruvec** %5, align 8
  %27 = load i32, i32* %8, align 4
  %28 = sext i32 %27 to i64
  %29 = load i64, i64* @LRU_ACTIVE, align 8
  %30 = add nsw i64 %28, %29
  %31 = call i32 @del_page_from_lru_list(%struct.page* %25, %struct.lruvec* %26, i64 %30)
  %32 = load %struct.page*, %struct.page** %4, align 8
  %33 = call i32 @ClearPageActive(%struct.page* %32)
  %34 = load %struct.page*, %struct.page** %4, align 8
  %35 = call i32 @ClearPageReferenced(%struct.page* %34)
  %36 = load %struct.page*, %struct.page** %4, align 8
  %37 = load %struct.lruvec*, %struct.lruvec** %5, align 8
  %38 = load i32, i32* %8, align 4
  %39 = call i32 @add_page_to_lru_list(%struct.page* %36, %struct.lruvec* %37, i32 %38)
  %40 = load i32, i32* @PGDEACTIVATE, align 4
  %41 = load %struct.page*, %struct.page** %4, align 8
  %42 = call i32 @hpage_nr_pages(%struct.page* %41)
  %43 = call i32 @__count_vm_events(i32 %40, i32 %42)
  %44 = load %struct.lruvec*, %struct.lruvec** %5, align 8
  %45 = load i32, i32* %7, align 4
  %46 = call i32 @update_page_reclaim_stat(%struct.lruvec* %44, i32 %45, i32 0)
  br label %47

47:                                               ; preds = %20, %16, %12, %3
  ret void
}

declare dso_local i64 @PageLRU(%struct.page*) #1

declare dso_local i64 @PageActive(%struct.page*) #1

declare dso_local i32 @PageUnevictable(%struct.page*) #1

declare dso_local i32 @page_is_file_cache(%struct.page*) #1

declare dso_local i32 @page_lru_base_type(%struct.page*) #1

declare dso_local i32 @del_page_from_lru_list(%struct.page*, %struct.lruvec*, i64) #1

declare dso_local i32 @ClearPageActive(%struct.page*) #1

declare dso_local i32 @ClearPageReferenced(%struct.page*) #1

declare dso_local i32 @add_page_to_lru_list(%struct.page*, %struct.lruvec*, i32) #1

declare dso_local i32 @__count_vm_events(i32, i32) #1

declare dso_local i32 @hpage_nr_pages(%struct.page*) #1

declare dso_local i32 @update_page_reclaim_stat(%struct.lruvec*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
