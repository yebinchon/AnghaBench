; ModuleID = '/home/carl/AnghaBench/linux/mm/extr_hugetlb.c_alloc_surplus_huge_page.c'
source_filename = "/home/carl/AnghaBench/linux/mm/extr_hugetlb.c_alloc_surplus_huge_page.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.page = type { i32 }
%struct.hstate = type { i64, i64, i32* }

@hugetlb_lock = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.page* (%struct.hstate*, i32, i32, i32*)* @alloc_surplus_huge_page to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.page* @alloc_surplus_huge_page(%struct.hstate* %0, i32 %1, i32 %2, i32* %3) #0 {
  %5 = alloca %struct.page*, align 8
  %6 = alloca %struct.hstate*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca %struct.page*, align 8
  store %struct.hstate* %0, %struct.hstate** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32* %3, i32** %9, align 8
  store %struct.page* null, %struct.page** %10, align 8
  %11 = load %struct.hstate*, %struct.hstate** %6, align 8
  %12 = call i64 @hstate_is_gigantic(%struct.hstate* %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %4
  store %struct.page* null, %struct.page** %5, align 8
  br label %67

15:                                               ; preds = %4
  %16 = call i32 @spin_lock(i32* @hugetlb_lock)
  %17 = load %struct.hstate*, %struct.hstate** %6, align 8
  %18 = getelementptr inbounds %struct.hstate, %struct.hstate* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load %struct.hstate*, %struct.hstate** %6, align 8
  %21 = getelementptr inbounds %struct.hstate, %struct.hstate* %20, i32 0, i32 1
  %22 = load i64, i64* %21, align 8
  %23 = icmp sge i64 %19, %22
  br i1 %23, label %24, label %25

24:                                               ; preds = %15
  br label %64

25:                                               ; preds = %15
  %26 = call i32 @spin_unlock(i32* @hugetlb_lock)
  %27 = load %struct.hstate*, %struct.hstate** %6, align 8
  %28 = load i32, i32* %7, align 4
  %29 = load i32, i32* %8, align 4
  %30 = load i32*, i32** %9, align 8
  %31 = call %struct.page* @alloc_fresh_huge_page(%struct.hstate* %27, i32 %28, i32 %29, i32* %30, i32* null)
  store %struct.page* %31, %struct.page** %10, align 8
  %32 = load %struct.page*, %struct.page** %10, align 8
  %33 = icmp ne %struct.page* %32, null
  br i1 %33, label %35, label %34

34:                                               ; preds = %25
  store %struct.page* null, %struct.page** %5, align 8
  br label %67

35:                                               ; preds = %25
  %36 = call i32 @spin_lock(i32* @hugetlb_lock)
  %37 = load %struct.hstate*, %struct.hstate** %6, align 8
  %38 = getelementptr inbounds %struct.hstate, %struct.hstate* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = load %struct.hstate*, %struct.hstate** %6, align 8
  %41 = getelementptr inbounds %struct.hstate, %struct.hstate* %40, i32 0, i32 1
  %42 = load i64, i64* %41, align 8
  %43 = icmp sge i64 %39, %42
  br i1 %43, label %44, label %50

44:                                               ; preds = %35
  %45 = load %struct.page*, %struct.page** %10, align 8
  %46 = call i32 @SetPageHugeTemporary(%struct.page* %45)
  %47 = call i32 @spin_unlock(i32* @hugetlb_lock)
  %48 = load %struct.page*, %struct.page** %10, align 8
  %49 = call i32 @put_page(%struct.page* %48)
  store %struct.page* null, %struct.page** %5, align 8
  br label %67

50:                                               ; preds = %35
  %51 = load %struct.hstate*, %struct.hstate** %6, align 8
  %52 = getelementptr inbounds %struct.hstate, %struct.hstate* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = add nsw i64 %53, 1
  store i64 %54, i64* %52, align 8
  %55 = load %struct.hstate*, %struct.hstate** %6, align 8
  %56 = getelementptr inbounds %struct.hstate, %struct.hstate* %55, i32 0, i32 2
  %57 = load i32*, i32** %56, align 8
  %58 = load %struct.page*, %struct.page** %10, align 8
  %59 = call i64 @page_to_nid(%struct.page* %58)
  %60 = getelementptr inbounds i32, i32* %57, i64 %59
  %61 = load i32, i32* %60, align 4
  %62 = add nsw i32 %61, 1
  store i32 %62, i32* %60, align 4
  br label %63

63:                                               ; preds = %50
  br label %64

64:                                               ; preds = %63, %24
  %65 = call i32 @spin_unlock(i32* @hugetlb_lock)
  %66 = load %struct.page*, %struct.page** %10, align 8
  store %struct.page* %66, %struct.page** %5, align 8
  br label %67

67:                                               ; preds = %64, %44, %34, %14
  %68 = load %struct.page*, %struct.page** %5, align 8
  ret %struct.page* %68
}

declare dso_local i64 @hstate_is_gigantic(%struct.hstate*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local %struct.page* @alloc_fresh_huge_page(%struct.hstate*, i32, i32, i32*, i32*) #1

declare dso_local i32 @SetPageHugeTemporary(%struct.page*) #1

declare dso_local i32 @put_page(%struct.page*) #1

declare dso_local i64 @page_to_nid(%struct.page*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
