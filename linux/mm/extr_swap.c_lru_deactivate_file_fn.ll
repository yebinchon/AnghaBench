; ModuleID = '/home/carl/AnghaBench/linux/mm/extr_swap.c_lru_deactivate_file_fn.c'
source_filename = "/home/carl/AnghaBench/linux/mm/extr_swap.c_lru_deactivate_file_fn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.page = type { i32 }
%struct.lruvec = type { i32 }

@PGROTATED = common dso_local global i32 0, align 4
@PGDEACTIVATE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.page*, %struct.lruvec*, i8*)* @lru_deactivate_file_fn to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @lru_deactivate_file_fn(%struct.page* %0, %struct.lruvec* %1, i8* %2) #0 {
  %4 = alloca %struct.page*, align 8
  %5 = alloca %struct.lruvec*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.page* %0, %struct.page** %4, align 8
  store %struct.lruvec* %1, %struct.lruvec** %5, align 8
  store i8* %2, i8** %6, align 8
  %10 = load %struct.page*, %struct.page** %4, align 8
  %11 = call i32 @PageLRU(%struct.page* %10)
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %14, label %13

13:                                               ; preds = %3
  br label %72

14:                                               ; preds = %3
  %15 = load %struct.page*, %struct.page** %4, align 8
  %16 = call i64 @PageUnevictable(%struct.page* %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %14
  br label %72

19:                                               ; preds = %14
  %20 = load %struct.page*, %struct.page** %4, align 8
  %21 = call i64 @page_mapped(%struct.page* %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %19
  br label %72

24:                                               ; preds = %19
  %25 = load %struct.page*, %struct.page** %4, align 8
  %26 = call i32 @PageActive(%struct.page* %25)
  store i32 %26, i32* %9, align 4
  %27 = load %struct.page*, %struct.page** %4, align 8
  %28 = call i32 @page_is_file_cache(%struct.page* %27)
  store i32 %28, i32* %8, align 4
  %29 = load %struct.page*, %struct.page** %4, align 8
  %30 = call i32 @page_lru_base_type(%struct.page* %29)
  store i32 %30, i32* %7, align 4
  %31 = load %struct.page*, %struct.page** %4, align 8
  %32 = load %struct.lruvec*, %struct.lruvec** %5, align 8
  %33 = load i32, i32* %7, align 4
  %34 = load i32, i32* %9, align 4
  %35 = add nsw i32 %33, %34
  %36 = call i32 @del_page_from_lru_list(%struct.page* %31, %struct.lruvec* %32, i32 %35)
  %37 = load %struct.page*, %struct.page** %4, align 8
  %38 = call i32 @ClearPageActive(%struct.page* %37)
  %39 = load %struct.page*, %struct.page** %4, align 8
  %40 = call i32 @ClearPageReferenced(%struct.page* %39)
  %41 = load %struct.page*, %struct.page** %4, align 8
  %42 = call i64 @PageWriteback(%struct.page* %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %48, label %44

44:                                               ; preds = %24
  %45 = load %struct.page*, %struct.page** %4, align 8
  %46 = call i64 @PageDirty(%struct.page* %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %55

48:                                               ; preds = %44, %24
  %49 = load %struct.page*, %struct.page** %4, align 8
  %50 = load %struct.lruvec*, %struct.lruvec** %5, align 8
  %51 = load i32, i32* %7, align 4
  %52 = call i32 @add_page_to_lru_list(%struct.page* %49, %struct.lruvec* %50, i32 %51)
  %53 = load %struct.page*, %struct.page** %4, align 8
  %54 = call i32 @SetPageReclaim(%struct.page* %53)
  br label %62

55:                                               ; preds = %44
  %56 = load %struct.page*, %struct.page** %4, align 8
  %57 = load %struct.lruvec*, %struct.lruvec** %5, align 8
  %58 = load i32, i32* %7, align 4
  %59 = call i32 @add_page_to_lru_list_tail(%struct.page* %56, %struct.lruvec* %57, i32 %58)
  %60 = load i32, i32* @PGROTATED, align 4
  %61 = call i32 @__count_vm_event(i32 %60)
  br label %62

62:                                               ; preds = %55, %48
  %63 = load i32, i32* %9, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %68

65:                                               ; preds = %62
  %66 = load i32, i32* @PGDEACTIVATE, align 4
  %67 = call i32 @__count_vm_event(i32 %66)
  br label %68

68:                                               ; preds = %65, %62
  %69 = load %struct.lruvec*, %struct.lruvec** %5, align 8
  %70 = load i32, i32* %8, align 4
  %71 = call i32 @update_page_reclaim_stat(%struct.lruvec* %69, i32 %70, i32 0)
  br label %72

72:                                               ; preds = %68, %23, %18, %13
  ret void
}

declare dso_local i32 @PageLRU(%struct.page*) #1

declare dso_local i64 @PageUnevictable(%struct.page*) #1

declare dso_local i64 @page_mapped(%struct.page*) #1

declare dso_local i32 @PageActive(%struct.page*) #1

declare dso_local i32 @page_is_file_cache(%struct.page*) #1

declare dso_local i32 @page_lru_base_type(%struct.page*) #1

declare dso_local i32 @del_page_from_lru_list(%struct.page*, %struct.lruvec*, i32) #1

declare dso_local i32 @ClearPageActive(%struct.page*) #1

declare dso_local i32 @ClearPageReferenced(%struct.page*) #1

declare dso_local i64 @PageWriteback(%struct.page*) #1

declare dso_local i64 @PageDirty(%struct.page*) #1

declare dso_local i32 @add_page_to_lru_list(%struct.page*, %struct.lruvec*, i32) #1

declare dso_local i32 @SetPageReclaim(%struct.page*) #1

declare dso_local i32 @add_page_to_lru_list_tail(%struct.page*, %struct.lruvec*, i32) #1

declare dso_local i32 @__count_vm_event(i32) #1

declare dso_local i32 @update_page_reclaim_stat(%struct.lruvec*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
