; ModuleID = '/home/carl/AnghaBench/linux/mm/extr_mlock.c___putback_lru_fast_prepare.c'
source_filename = "/home/carl/AnghaBench/linux/mm/extr_mlock.c___putback_lru_fast_prepare.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.page = type { i32 }
%struct.pagevec = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.page*, %struct.pagevec*, i32*)* @__putback_lru_fast_prepare to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__putback_lru_fast_prepare(%struct.page* %0, %struct.pagevec* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.page*, align 8
  %6 = alloca %struct.pagevec*, align 8
  %7 = alloca i32*, align 8
  store %struct.page* %0, %struct.page** %5, align 8
  store %struct.pagevec* %1, %struct.pagevec** %6, align 8
  store i32* %2, i32** %7, align 8
  %8 = load %struct.page*, %struct.page** %5, align 8
  %9 = call i32 @PageLRU(%struct.page* %8)
  %10 = load %struct.page*, %struct.page** %5, align 8
  %11 = call i32 @VM_BUG_ON_PAGE(i32 %9, %struct.page* %10)
  %12 = load %struct.page*, %struct.page** %5, align 8
  %13 = call i32 @PageLocked(%struct.page* %12)
  %14 = icmp ne i32 %13, 0
  %15 = xor i1 %14, true
  %16 = zext i1 %15 to i32
  %17 = load %struct.page*, %struct.page** %5, align 8
  %18 = call i32 @VM_BUG_ON_PAGE(i32 %16, %struct.page* %17)
  %19 = load %struct.page*, %struct.page** %5, align 8
  %20 = call i32 @page_mapcount(%struct.page* %19)
  %21 = icmp sle i32 %20, 1
  br i1 %21, label %22, label %40

22:                                               ; preds = %3
  %23 = load %struct.page*, %struct.page** %5, align 8
  %24 = call i64 @page_evictable(%struct.page* %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %40

26:                                               ; preds = %22
  %27 = load %struct.pagevec*, %struct.pagevec** %6, align 8
  %28 = load %struct.page*, %struct.page** %5, align 8
  %29 = call i32 @pagevec_add(%struct.pagevec* %27, %struct.page* %28)
  %30 = load %struct.page*, %struct.page** %5, align 8
  %31 = call i64 @TestClearPageUnevictable(%struct.page* %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %37

33:                                               ; preds = %26
  %34 = load i32*, i32** %7, align 8
  %35 = load i32, i32* %34, align 4
  %36 = add nsw i32 %35, 1
  store i32 %36, i32* %34, align 4
  br label %37

37:                                               ; preds = %33, %26
  %38 = load %struct.page*, %struct.page** %5, align 8
  %39 = call i32 @unlock_page(%struct.page* %38)
  store i32 1, i32* %4, align 4
  br label %41

40:                                               ; preds = %22, %3
  store i32 0, i32* %4, align 4
  br label %41

41:                                               ; preds = %40, %37
  %42 = load i32, i32* %4, align 4
  ret i32 %42
}

declare dso_local i32 @VM_BUG_ON_PAGE(i32, %struct.page*) #1

declare dso_local i32 @PageLRU(%struct.page*) #1

declare dso_local i32 @PageLocked(%struct.page*) #1

declare dso_local i32 @page_mapcount(%struct.page*) #1

declare dso_local i64 @page_evictable(%struct.page*) #1

declare dso_local i32 @pagevec_add(%struct.pagevec*, %struct.page*) #1

declare dso_local i64 @TestClearPageUnevictable(%struct.page*) #1

declare dso_local i32 @unlock_page(%struct.page*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
