; ModuleID = '/home/carl/AnghaBench/linux/mm/extr_memcontrol.c_unlock_page_lru.c'
source_filename = "/home/carl/AnghaBench/linux/mm/extr_memcontrol.c_unlock_page_lru.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.page = type { i32 }
%struct.TYPE_4__ = type { i32 }
%struct.lruvec = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.page*, i32)* @unlock_page_lru to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @unlock_page_lru(%struct.page* %0, i32 %1) #0 {
  %3 = alloca %struct.page*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_4__*, align 8
  %6 = alloca %struct.lruvec*, align 8
  store %struct.page* %0, %struct.page** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.page*, %struct.page** %3, align 8
  %8 = call %struct.TYPE_4__* @page_pgdat(%struct.page* %7)
  store %struct.TYPE_4__* %8, %struct.TYPE_4__** %5, align 8
  %9 = load i32, i32* %4, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %26

11:                                               ; preds = %2
  %12 = load %struct.page*, %struct.page** %3, align 8
  %13 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %14 = call %struct.lruvec* @mem_cgroup_page_lruvec(%struct.page* %12, %struct.TYPE_4__* %13)
  store %struct.lruvec* %14, %struct.lruvec** %6, align 8
  %15 = load %struct.page*, %struct.page** %3, align 8
  %16 = call i32 @PageLRU(%struct.page* %15)
  %17 = load %struct.page*, %struct.page** %3, align 8
  %18 = call i32 @VM_BUG_ON_PAGE(i32 %16, %struct.page* %17)
  %19 = load %struct.page*, %struct.page** %3, align 8
  %20 = call i32 @SetPageLRU(%struct.page* %19)
  %21 = load %struct.page*, %struct.page** %3, align 8
  %22 = load %struct.lruvec*, %struct.lruvec** %6, align 8
  %23 = load %struct.page*, %struct.page** %3, align 8
  %24 = call i32 @page_lru(%struct.page* %23)
  %25 = call i32 @add_page_to_lru_list(%struct.page* %21, %struct.lruvec* %22, i32 %24)
  br label %26

26:                                               ; preds = %11, %2
  %27 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 0
  %29 = call i32 @spin_unlock_irq(i32* %28)
  ret void
}

declare dso_local %struct.TYPE_4__* @page_pgdat(%struct.page*) #1

declare dso_local %struct.lruvec* @mem_cgroup_page_lruvec(%struct.page*, %struct.TYPE_4__*) #1

declare dso_local i32 @VM_BUG_ON_PAGE(i32, %struct.page*) #1

declare dso_local i32 @PageLRU(%struct.page*) #1

declare dso_local i32 @SetPageLRU(%struct.page*) #1

declare dso_local i32 @add_page_to_lru_list(%struct.page*, %struct.lruvec*, i32) #1

declare dso_local i32 @page_lru(%struct.page*) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
