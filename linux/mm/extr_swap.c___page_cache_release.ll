; ModuleID = '/home/carl/AnghaBench/linux/mm/extr_swap.c___page_cache_release.c'
source_filename = "/home/carl/AnghaBench/linux/mm/extr_swap.c___page_cache_release.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.page = type { i32 }
%struct.TYPE_4__ = type { i32 }
%struct.lruvec = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.page*)* @__page_cache_release to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__page_cache_release(%struct.page* %0) #0 {
  %2 = alloca %struct.page*, align 8
  %3 = alloca %struct.TYPE_4__*, align 8
  %4 = alloca %struct.lruvec*, align 8
  %5 = alloca i64, align 8
  store %struct.page* %0, %struct.page** %2, align 8
  %6 = load %struct.page*, %struct.page** %2, align 8
  %7 = call i64 @PageLRU(%struct.page* %6)
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %37

9:                                                ; preds = %1
  %10 = load %struct.page*, %struct.page** %2, align 8
  %11 = call %struct.TYPE_4__* @page_pgdat(%struct.page* %10)
  store %struct.TYPE_4__* %11, %struct.TYPE_4__** %3, align 8
  %12 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  %14 = load i64, i64* %5, align 8
  %15 = call i32 @spin_lock_irqsave(i32* %13, i64 %14)
  %16 = load %struct.page*, %struct.page** %2, align 8
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %18 = call %struct.lruvec* @mem_cgroup_page_lruvec(%struct.page* %16, %struct.TYPE_4__* %17)
  store %struct.lruvec* %18, %struct.lruvec** %4, align 8
  %19 = load %struct.page*, %struct.page** %2, align 8
  %20 = call i64 @PageLRU(%struct.page* %19)
  %21 = icmp ne i64 %20, 0
  %22 = xor i1 %21, true
  %23 = zext i1 %22 to i32
  %24 = load %struct.page*, %struct.page** %2, align 8
  %25 = call i32 @VM_BUG_ON_PAGE(i32 %23, %struct.page* %24)
  %26 = load %struct.page*, %struct.page** %2, align 8
  %27 = call i32 @__ClearPageLRU(%struct.page* %26)
  %28 = load %struct.page*, %struct.page** %2, align 8
  %29 = load %struct.lruvec*, %struct.lruvec** %4, align 8
  %30 = load %struct.page*, %struct.page** %2, align 8
  %31 = call i32 @page_off_lru(%struct.page* %30)
  %32 = call i32 @del_page_from_lru_list(%struct.page* %28, %struct.lruvec* %29, i32 %31)
  %33 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 0
  %35 = load i64, i64* %5, align 8
  %36 = call i32 @spin_unlock_irqrestore(i32* %34, i64 %35)
  br label %37

37:                                               ; preds = %9, %1
  %38 = load %struct.page*, %struct.page** %2, align 8
  %39 = call i32 @__ClearPageWaiters(%struct.page* %38)
  ret void
}

declare dso_local i64 @PageLRU(%struct.page*) #1

declare dso_local %struct.TYPE_4__* @page_pgdat(%struct.page*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local %struct.lruvec* @mem_cgroup_page_lruvec(%struct.page*, %struct.TYPE_4__*) #1

declare dso_local i32 @VM_BUG_ON_PAGE(i32, %struct.page*) #1

declare dso_local i32 @__ClearPageLRU(%struct.page*) #1

declare dso_local i32 @del_page_from_lru_list(%struct.page*, %struct.lruvec*, i32) #1

declare dso_local i32 @page_off_lru(%struct.page*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @__ClearPageWaiters(%struct.page*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
