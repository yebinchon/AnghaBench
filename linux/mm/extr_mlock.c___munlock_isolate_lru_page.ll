; ModuleID = '/home/carl/AnghaBench/linux/mm/extr_mlock.c___munlock_isolate_lru_page.c'
source_filename = "/home/carl/AnghaBench/linux/mm/extr_mlock.c___munlock_isolate_lru_page.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.page = type { i32 }
%struct.lruvec = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.page*, i32)* @__munlock_isolate_lru_page to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__munlock_isolate_lru_page(%struct.page* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.page*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.lruvec*, align 8
  store %struct.page* %0, %struct.page** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.page*, %struct.page** %4, align 8
  %8 = call i64 @PageLRU(%struct.page* %7)
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %28

10:                                               ; preds = %2
  %11 = load %struct.page*, %struct.page** %4, align 8
  %12 = load %struct.page*, %struct.page** %4, align 8
  %13 = call i32 @page_pgdat(%struct.page* %12)
  %14 = call %struct.lruvec* @mem_cgroup_page_lruvec(%struct.page* %11, i32 %13)
  store %struct.lruvec* %14, %struct.lruvec** %6, align 8
  %15 = load i32, i32* %5, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %10
  %18 = load %struct.page*, %struct.page** %4, align 8
  %19 = call i32 @get_page(%struct.page* %18)
  br label %20

20:                                               ; preds = %17, %10
  %21 = load %struct.page*, %struct.page** %4, align 8
  %22 = call i32 @ClearPageLRU(%struct.page* %21)
  %23 = load %struct.page*, %struct.page** %4, align 8
  %24 = load %struct.lruvec*, %struct.lruvec** %6, align 8
  %25 = load %struct.page*, %struct.page** %4, align 8
  %26 = call i32 @page_lru(%struct.page* %25)
  %27 = call i32 @del_page_from_lru_list(%struct.page* %23, %struct.lruvec* %24, i32 %26)
  store i32 1, i32* %3, align 4
  br label %29

28:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %29

29:                                               ; preds = %28, %20
  %30 = load i32, i32* %3, align 4
  ret i32 %30
}

declare dso_local i64 @PageLRU(%struct.page*) #1

declare dso_local %struct.lruvec* @mem_cgroup_page_lruvec(%struct.page*, i32) #1

declare dso_local i32 @page_pgdat(%struct.page*) #1

declare dso_local i32 @get_page(%struct.page*) #1

declare dso_local i32 @ClearPageLRU(%struct.page*) #1

declare dso_local i32 @del_page_from_lru_list(%struct.page*, %struct.lruvec*, i32) #1

declare dso_local i32 @page_lru(%struct.page*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
