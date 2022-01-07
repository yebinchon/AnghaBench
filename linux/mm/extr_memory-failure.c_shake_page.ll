; ModuleID = '/home/carl/AnghaBench/linux/mm/extr_memory-failure.c_shake_page.c'
source_filename = "/home/carl/AnghaBench/linux/mm/extr_memory-failure.c_shake_page.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.page = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @shake_page(%struct.page* %0, i32 %1) #0 {
  %3 = alloca %struct.page*, align 8
  %4 = alloca i32, align 4
  store %struct.page* %0, %struct.page** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %struct.page*, %struct.page** %3, align 8
  %6 = call i64 @PageHuge(%struct.page* %5)
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %9

8:                                                ; preds = %2
  br label %39

9:                                                ; preds = %2
  %10 = load %struct.page*, %struct.page** %3, align 8
  %11 = call i32 @PageSlab(%struct.page* %10)
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %32, label %13

13:                                               ; preds = %9
  %14 = call i32 (...) @lru_add_drain_all()
  %15 = load %struct.page*, %struct.page** %3, align 8
  %16 = call i64 @PageLRU(%struct.page* %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %13
  br label %39

19:                                               ; preds = %13
  %20 = load %struct.page*, %struct.page** %3, align 8
  %21 = call i32 @page_zone(%struct.page* %20)
  %22 = call i32 @drain_all_pages(i32 %21)
  %23 = load %struct.page*, %struct.page** %3, align 8
  %24 = call i64 @PageLRU(%struct.page* %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %30, label %26

26:                                               ; preds = %19
  %27 = load %struct.page*, %struct.page** %3, align 8
  %28 = call i64 @is_free_buddy_page(%struct.page* %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %26, %19
  br label %39

31:                                               ; preds = %26
  br label %32

32:                                               ; preds = %31, %9
  %33 = load i32, i32* %4, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %39

35:                                               ; preds = %32
  %36 = load %struct.page*, %struct.page** %3, align 8
  %37 = call i32 @page_to_nid(%struct.page* %36)
  %38 = call i32 @drop_slab_node(i32 %37)
  br label %39

39:                                               ; preds = %8, %18, %30, %35, %32
  ret void
}

declare dso_local i64 @PageHuge(%struct.page*) #1

declare dso_local i32 @PageSlab(%struct.page*) #1

declare dso_local i32 @lru_add_drain_all(...) #1

declare dso_local i64 @PageLRU(%struct.page*) #1

declare dso_local i32 @drain_all_pages(i32) #1

declare dso_local i32 @page_zone(%struct.page*) #1

declare dso_local i64 @is_free_buddy_page(%struct.page*) #1

declare dso_local i32 @drop_slab_node(i32) #1

declare dso_local i32 @page_to_nid(%struct.page*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
