; ModuleID = '/home/carl/AnghaBench/linux/mm/extr_memcontrol.c_lock_page_lru.c'
source_filename = "/home/carl/AnghaBench/linux/mm/extr_memcontrol.c_lock_page_lru.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.page = type { i32 }
%struct.TYPE_4__ = type { i32 }
%struct.lruvec = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.page*, i32*)* @lock_page_lru to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @lock_page_lru(%struct.page* %0, i32* %1) #0 {
  %3 = alloca %struct.page*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_4__*, align 8
  %6 = alloca %struct.lruvec*, align 8
  store %struct.page* %0, %struct.page** %3, align 8
  store i32* %1, i32** %4, align 8
  %7 = load %struct.page*, %struct.page** %3, align 8
  %8 = call %struct.TYPE_4__* @page_pgdat(%struct.page* %7)
  store %struct.TYPE_4__* %8, %struct.TYPE_4__** %5, align 8
  %9 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 0
  %11 = call i32 @spin_lock_irq(i32* %10)
  %12 = load %struct.page*, %struct.page** %3, align 8
  %13 = call i64 @PageLRU(%struct.page* %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %27

15:                                               ; preds = %2
  %16 = load %struct.page*, %struct.page** %3, align 8
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %18 = call %struct.lruvec* @mem_cgroup_page_lruvec(%struct.page* %16, %struct.TYPE_4__* %17)
  store %struct.lruvec* %18, %struct.lruvec** %6, align 8
  %19 = load %struct.page*, %struct.page** %3, align 8
  %20 = call i32 @ClearPageLRU(%struct.page* %19)
  %21 = load %struct.page*, %struct.page** %3, align 8
  %22 = load %struct.lruvec*, %struct.lruvec** %6, align 8
  %23 = load %struct.page*, %struct.page** %3, align 8
  %24 = call i32 @page_lru(%struct.page* %23)
  %25 = call i32 @del_page_from_lru_list(%struct.page* %21, %struct.lruvec* %22, i32 %24)
  %26 = load i32*, i32** %4, align 8
  store i32 1, i32* %26, align 4
  br label %29

27:                                               ; preds = %2
  %28 = load i32*, i32** %4, align 8
  store i32 0, i32* %28, align 4
  br label %29

29:                                               ; preds = %27, %15
  ret void
}

declare dso_local %struct.TYPE_4__* @page_pgdat(%struct.page*) #1

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i64 @PageLRU(%struct.page*) #1

declare dso_local %struct.lruvec* @mem_cgroup_page_lruvec(%struct.page*, %struct.TYPE_4__*) #1

declare dso_local i32 @ClearPageLRU(%struct.page*) #1

declare dso_local i32 @del_page_from_lru_list(%struct.page*, %struct.lruvec*, i32) #1

declare dso_local i32 @page_lru(%struct.page*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
