; ModuleID = '/home/carl/AnghaBench/linux/mm/extr_hugetlb.c_alloc_huge_page_node.c'
source_filename = "/home/carl/AnghaBench/linux/mm/extr_hugetlb.c_alloc_huge_page_node.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.page = type { i32 }
%struct.hstate = type { i64, i64 }

@NUMA_NO_NODE = common dso_local global i32 0, align 4
@__GFP_THISNODE = common dso_local global i32 0, align 4
@hugetlb_lock = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.page* @alloc_huge_page_node(%struct.hstate* %0, i32 %1) #0 {
  %3 = alloca %struct.hstate*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.page*, align 8
  store %struct.hstate* %0, %struct.hstate** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.hstate*, %struct.hstate** %3, align 8
  %8 = call i32 @htlb_alloc_mask(%struct.hstate* %7)
  store i32 %8, i32* %5, align 4
  store %struct.page* null, %struct.page** %6, align 8
  %9 = load i32, i32* %4, align 4
  %10 = load i32, i32* @NUMA_NO_NODE, align 4
  %11 = icmp ne i32 %9, %10
  br i1 %11, label %12, label %16

12:                                               ; preds = %2
  %13 = load i32, i32* @__GFP_THISNODE, align 4
  %14 = load i32, i32* %5, align 4
  %15 = or i32 %14, %13
  store i32 %15, i32* %5, align 4
  br label %16

16:                                               ; preds = %12, %2
  %17 = call i32 @spin_lock(i32* @hugetlb_lock)
  %18 = load %struct.hstate*, %struct.hstate** %3, align 8
  %19 = getelementptr inbounds %struct.hstate, %struct.hstate* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load %struct.hstate*, %struct.hstate** %3, align 8
  %22 = getelementptr inbounds %struct.hstate, %struct.hstate* %21, i32 0, i32 1
  %23 = load i64, i64* %22, align 8
  %24 = sub nsw i64 %20, %23
  %25 = icmp sgt i64 %24, 0
  br i1 %25, label %26, label %31

26:                                               ; preds = %16
  %27 = load %struct.hstate*, %struct.hstate** %3, align 8
  %28 = load i32, i32* %5, align 4
  %29 = load i32, i32* %4, align 4
  %30 = call %struct.page* @dequeue_huge_page_nodemask(%struct.hstate* %27, i32 %28, i32 %29, i32* null)
  store %struct.page* %30, %struct.page** %6, align 8
  br label %31

31:                                               ; preds = %26, %16
  %32 = call i32 @spin_unlock(i32* @hugetlb_lock)
  %33 = load %struct.page*, %struct.page** %6, align 8
  %34 = icmp ne %struct.page* %33, null
  br i1 %34, label %40, label %35

35:                                               ; preds = %31
  %36 = load %struct.hstate*, %struct.hstate** %3, align 8
  %37 = load i32, i32* %5, align 4
  %38 = load i32, i32* %4, align 4
  %39 = call %struct.page* @alloc_migrate_huge_page(%struct.hstate* %36, i32 %37, i32 %38, i32* null)
  store %struct.page* %39, %struct.page** %6, align 8
  br label %40

40:                                               ; preds = %35, %31
  %41 = load %struct.page*, %struct.page** %6, align 8
  ret %struct.page* %41
}

declare dso_local i32 @htlb_alloc_mask(%struct.hstate*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local %struct.page* @dequeue_huge_page_nodemask(%struct.hstate*, i32, i32, i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local %struct.page* @alloc_migrate_huge_page(%struct.hstate*, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
