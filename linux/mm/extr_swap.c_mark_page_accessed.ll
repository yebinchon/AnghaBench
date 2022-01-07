; ModuleID = '/home/carl/AnghaBench/linux/mm/extr_swap.c_mark_page_accessed.c'
source_filename = "/home/carl/AnghaBench/linux/mm/extr_swap.c_mark_page_accessed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.page = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mark_page_accessed(%struct.page* %0) #0 {
  %2 = alloca %struct.page*, align 8
  store %struct.page* %0, %struct.page** %2, align 8
  %3 = load %struct.page*, %struct.page** %2, align 8
  %4 = call %struct.page* @compound_head(%struct.page* %3)
  store %struct.page* %4, %struct.page** %2, align 8
  %5 = load %struct.page*, %struct.page** %2, align 8
  %6 = call i32 @PageActive(%struct.page* %5)
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %36, label %8

8:                                                ; preds = %1
  %9 = load %struct.page*, %struct.page** %2, align 8
  %10 = call i32 @PageUnevictable(%struct.page* %9)
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %36, label %12

12:                                               ; preds = %8
  %13 = load %struct.page*, %struct.page** %2, align 8
  %14 = call i64 @PageReferenced(%struct.page* %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %36

16:                                               ; preds = %12
  %17 = load %struct.page*, %struct.page** %2, align 8
  %18 = call i64 @PageLRU(%struct.page* %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %16
  %21 = load %struct.page*, %struct.page** %2, align 8
  %22 = call i32 @activate_page(%struct.page* %21)
  br label %26

23:                                               ; preds = %16
  %24 = load %struct.page*, %struct.page** %2, align 8
  %25 = call i32 @__lru_cache_activate_page(%struct.page* %24)
  br label %26

26:                                               ; preds = %23, %20
  %27 = load %struct.page*, %struct.page** %2, align 8
  %28 = call i32 @ClearPageReferenced(%struct.page* %27)
  %29 = load %struct.page*, %struct.page** %2, align 8
  %30 = call i64 @page_is_file_cache(%struct.page* %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %35

32:                                               ; preds = %26
  %33 = load %struct.page*, %struct.page** %2, align 8
  %34 = call i32 @workingset_activation(%struct.page* %33)
  br label %35

35:                                               ; preds = %32, %26
  br label %44

36:                                               ; preds = %12, %8, %1
  %37 = load %struct.page*, %struct.page** %2, align 8
  %38 = call i64 @PageReferenced(%struct.page* %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %43, label %40

40:                                               ; preds = %36
  %41 = load %struct.page*, %struct.page** %2, align 8
  %42 = call i32 @SetPageReferenced(%struct.page* %41)
  br label %43

43:                                               ; preds = %40, %36
  br label %44

44:                                               ; preds = %43, %35
  %45 = load %struct.page*, %struct.page** %2, align 8
  %46 = call i64 @page_is_idle(%struct.page* %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %51

48:                                               ; preds = %44
  %49 = load %struct.page*, %struct.page** %2, align 8
  %50 = call i32 @clear_page_idle(%struct.page* %49)
  br label %51

51:                                               ; preds = %48, %44
  ret void
}

declare dso_local %struct.page* @compound_head(%struct.page*) #1

declare dso_local i32 @PageActive(%struct.page*) #1

declare dso_local i32 @PageUnevictable(%struct.page*) #1

declare dso_local i64 @PageReferenced(%struct.page*) #1

declare dso_local i64 @PageLRU(%struct.page*) #1

declare dso_local i32 @activate_page(%struct.page*) #1

declare dso_local i32 @__lru_cache_activate_page(%struct.page*) #1

declare dso_local i32 @ClearPageReferenced(%struct.page*) #1

declare dso_local i64 @page_is_file_cache(%struct.page*) #1

declare dso_local i32 @workingset_activation(%struct.page*) #1

declare dso_local i32 @SetPageReferenced(%struct.page*) #1

declare dso_local i64 @page_is_idle(%struct.page*) #1

declare dso_local i32 @clear_page_idle(%struct.page*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
