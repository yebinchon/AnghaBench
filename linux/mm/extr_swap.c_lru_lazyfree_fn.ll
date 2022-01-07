; ModuleID = '/home/carl/AnghaBench/linux/mm/extr_swap.c_lru_lazyfree_fn.c'
source_filename = "/home/carl/AnghaBench/linux/mm/extr_swap.c_lru_lazyfree_fn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.page = type { i32 }
%struct.lruvec = type { i32 }

@LRU_INACTIVE_ANON = common dso_local global i64 0, align 8
@LRU_INACTIVE_FILE = common dso_local global i32 0, align 4
@PGLAZYFREE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.page*, %struct.lruvec*, i8*)* @lru_lazyfree_fn to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @lru_lazyfree_fn(%struct.page* %0, %struct.lruvec* %1, i8* %2) #0 {
  %4 = alloca %struct.page*, align 8
  %5 = alloca %struct.lruvec*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  store %struct.page* %0, %struct.page** %4, align 8
  store %struct.lruvec* %1, %struct.lruvec** %5, align 8
  store i8* %2, i8** %6, align 8
  %8 = load %struct.page*, %struct.page** %4, align 8
  %9 = call i64 @PageLRU(%struct.page* %8)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %56

11:                                               ; preds = %3
  %12 = load %struct.page*, %struct.page** %4, align 8
  %13 = call i64 @PageAnon(%struct.page* %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %56

15:                                               ; preds = %11
  %16 = load %struct.page*, %struct.page** %4, align 8
  %17 = call i64 @PageSwapBacked(%struct.page* %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %56

19:                                               ; preds = %15
  %20 = load %struct.page*, %struct.page** %4, align 8
  %21 = call i32 @PageSwapCache(%struct.page* %20)
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %56, label %23

23:                                               ; preds = %19
  %24 = load %struct.page*, %struct.page** %4, align 8
  %25 = call i32 @PageUnevictable(%struct.page* %24)
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %56, label %27

27:                                               ; preds = %23
  %28 = load %struct.page*, %struct.page** %4, align 8
  %29 = call i32 @PageActive(%struct.page* %28)
  store i32 %29, i32* %7, align 4
  %30 = load %struct.page*, %struct.page** %4, align 8
  %31 = load %struct.lruvec*, %struct.lruvec** %5, align 8
  %32 = load i64, i64* @LRU_INACTIVE_ANON, align 8
  %33 = load i32, i32* %7, align 4
  %34 = sext i32 %33 to i64
  %35 = add nsw i64 %32, %34
  %36 = call i32 @del_page_from_lru_list(%struct.page* %30, %struct.lruvec* %31, i64 %35)
  %37 = load %struct.page*, %struct.page** %4, align 8
  %38 = call i32 @ClearPageActive(%struct.page* %37)
  %39 = load %struct.page*, %struct.page** %4, align 8
  %40 = call i32 @ClearPageReferenced(%struct.page* %39)
  %41 = load %struct.page*, %struct.page** %4, align 8
  %42 = call i32 @ClearPageSwapBacked(%struct.page* %41)
  %43 = load %struct.page*, %struct.page** %4, align 8
  %44 = load %struct.lruvec*, %struct.lruvec** %5, align 8
  %45 = load i32, i32* @LRU_INACTIVE_FILE, align 4
  %46 = call i32 @add_page_to_lru_list(%struct.page* %43, %struct.lruvec* %44, i32 %45)
  %47 = load i32, i32* @PGLAZYFREE, align 4
  %48 = load %struct.page*, %struct.page** %4, align 8
  %49 = call i32 @hpage_nr_pages(%struct.page* %48)
  %50 = call i32 @__count_vm_events(i32 %47, i32 %49)
  %51 = load %struct.page*, %struct.page** %4, align 8
  %52 = load i32, i32* @PGLAZYFREE, align 4
  %53 = call i32 @count_memcg_page_event(%struct.page* %51, i32 %52)
  %54 = load %struct.lruvec*, %struct.lruvec** %5, align 8
  %55 = call i32 @update_page_reclaim_stat(%struct.lruvec* %54, i32 1, i32 0)
  br label %56

56:                                               ; preds = %27, %23, %19, %15, %11, %3
  ret void
}

declare dso_local i64 @PageLRU(%struct.page*) #1

declare dso_local i64 @PageAnon(%struct.page*) #1

declare dso_local i64 @PageSwapBacked(%struct.page*) #1

declare dso_local i32 @PageSwapCache(%struct.page*) #1

declare dso_local i32 @PageUnevictable(%struct.page*) #1

declare dso_local i32 @PageActive(%struct.page*) #1

declare dso_local i32 @del_page_from_lru_list(%struct.page*, %struct.lruvec*, i64) #1

declare dso_local i32 @ClearPageActive(%struct.page*) #1

declare dso_local i32 @ClearPageReferenced(%struct.page*) #1

declare dso_local i32 @ClearPageSwapBacked(%struct.page*) #1

declare dso_local i32 @add_page_to_lru_list(%struct.page*, %struct.lruvec*, i32) #1

declare dso_local i32 @__count_vm_events(i32, i32) #1

declare dso_local i32 @hpage_nr_pages(%struct.page*) #1

declare dso_local i32 @count_memcg_page_event(%struct.page*, i32) #1

declare dso_local i32 @update_page_reclaim_stat(%struct.lruvec*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
