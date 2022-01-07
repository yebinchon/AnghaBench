; ModuleID = '/home/carl/AnghaBench/linux/mm/extr_hugetlb.c_alloc_huge_page_nodemask.c'
source_filename = "/home/carl/AnghaBench/linux/mm/extr_hugetlb.c_alloc_huge_page_nodemask.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.page = type { i32 }
%struct.hstate = type { i64, i64 }

@hugetlb_lock = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.page* @alloc_huge_page_nodemask(%struct.hstate* %0, i32 %1, i32* %2) #0 {
  %4 = alloca %struct.page*, align 8
  %5 = alloca %struct.hstate*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.page*, align 8
  store %struct.hstate* %0, %struct.hstate** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  %10 = load %struct.hstate*, %struct.hstate** %5, align 8
  %11 = call i32 @htlb_alloc_mask(%struct.hstate* %10)
  store i32 %11, i32* %8, align 4
  %12 = call i32 @spin_lock(i32* @hugetlb_lock)
  %13 = load %struct.hstate*, %struct.hstate** %5, align 8
  %14 = getelementptr inbounds %struct.hstate, %struct.hstate* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load %struct.hstate*, %struct.hstate** %5, align 8
  %17 = getelementptr inbounds %struct.hstate, %struct.hstate* %16, i32 0, i32 1
  %18 = load i64, i64* %17, align 8
  %19 = sub nsw i64 %15, %18
  %20 = icmp sgt i64 %19, 0
  br i1 %20, label %21, label %33

21:                                               ; preds = %3
  %22 = load %struct.hstate*, %struct.hstate** %5, align 8
  %23 = load i32, i32* %8, align 4
  %24 = load i32, i32* %6, align 4
  %25 = load i32*, i32** %7, align 8
  %26 = call %struct.page* @dequeue_huge_page_nodemask(%struct.hstate* %22, i32 %23, i32 %24, i32* %25)
  store %struct.page* %26, %struct.page** %9, align 8
  %27 = load %struct.page*, %struct.page** %9, align 8
  %28 = icmp ne %struct.page* %27, null
  br i1 %28, label %29, label %32

29:                                               ; preds = %21
  %30 = call i32 @spin_unlock(i32* @hugetlb_lock)
  %31 = load %struct.page*, %struct.page** %9, align 8
  store %struct.page* %31, %struct.page** %4, align 8
  br label %40

32:                                               ; preds = %21
  br label %33

33:                                               ; preds = %32, %3
  %34 = call i32 @spin_unlock(i32* @hugetlb_lock)
  %35 = load %struct.hstate*, %struct.hstate** %5, align 8
  %36 = load i32, i32* %8, align 4
  %37 = load i32, i32* %6, align 4
  %38 = load i32*, i32** %7, align 8
  %39 = call %struct.page* @alloc_migrate_huge_page(%struct.hstate* %35, i32 %36, i32 %37, i32* %38)
  store %struct.page* %39, %struct.page** %4, align 8
  br label %40

40:                                               ; preds = %33, %29
  %41 = load %struct.page*, %struct.page** %4, align 8
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
