; ModuleID = '/home/carl/AnghaBench/linux/mm/extr_hugetlb.c_free_huge_page.c'
source_filename = "/home/carl/AnghaBench/linux/mm/extr_hugetlb.c_free_huge_page.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.page = type { i32, i32* }
%struct.hstate = type { i64*, i32, i32 }
%struct.hugepage_subpool = type { i32 }

@hugetlb_lock = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @free_huge_page(%struct.page* %0) #0 {
  %2 = alloca %struct.page*, align 8
  %3 = alloca %struct.hstate*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.hugepage_subpool*, align 8
  %6 = alloca i32, align 4
  store %struct.page* %0, %struct.page** %2, align 8
  %7 = load %struct.page*, %struct.page** %2, align 8
  %8 = call %struct.hstate* @page_hstate(%struct.page* %7)
  store %struct.hstate* %8, %struct.hstate** %3, align 8
  %9 = load %struct.page*, %struct.page** %2, align 8
  %10 = call i32 @page_to_nid(%struct.page* %9)
  store i32 %10, i32* %4, align 4
  %11 = load %struct.page*, %struct.page** %2, align 8
  %12 = call i64 @page_private(%struct.page* %11)
  %13 = inttoptr i64 %12 to %struct.hugepage_subpool*
  store %struct.hugepage_subpool* %13, %struct.hugepage_subpool** %5, align 8
  %14 = load %struct.page*, %struct.page** %2, align 8
  %15 = call i32 @page_count(%struct.page* %14)
  %16 = load %struct.page*, %struct.page** %2, align 8
  %17 = call i32 @VM_BUG_ON_PAGE(i32 %15, %struct.page* %16)
  %18 = load %struct.page*, %struct.page** %2, align 8
  %19 = call i32 @page_mapcount(%struct.page* %18)
  %20 = load %struct.page*, %struct.page** %2, align 8
  %21 = call i32 @VM_BUG_ON_PAGE(i32 %19, %struct.page* %20)
  %22 = load %struct.page*, %struct.page** %2, align 8
  %23 = call i32 @set_page_private(%struct.page* %22, i32 0)
  %24 = load %struct.page*, %struct.page** %2, align 8
  %25 = getelementptr inbounds %struct.page, %struct.page* %24, i32 0, i32 1
  store i32* null, i32** %25, align 8
  %26 = load %struct.page*, %struct.page** %2, align 8
  %27 = call i32 @PagePrivate(%struct.page* %26)
  store i32 %27, i32* %6, align 4
  %28 = load %struct.page*, %struct.page** %2, align 8
  %29 = call i32 @ClearPagePrivate(%struct.page* %28)
  %30 = load i32, i32* %6, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %38, label %32

32:                                               ; preds = %1
  %33 = load %struct.hugepage_subpool*, %struct.hugepage_subpool** %5, align 8
  %34 = call i64 @hugepage_subpool_put_pages(%struct.hugepage_subpool* %33, i32 1)
  %35 = icmp eq i64 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %32
  store i32 1, i32* %6, align 4
  br label %37

37:                                               ; preds = %36, %32
  br label %38

38:                                               ; preds = %37, %1
  %39 = call i32 @spin_lock(i32* @hugetlb_lock)
  %40 = load %struct.page*, %struct.page** %2, align 8
  %41 = call i32 @clear_page_huge_active(%struct.page* %40)
  %42 = load %struct.hstate*, %struct.hstate** %3, align 8
  %43 = call i32 @hstate_index(%struct.hstate* %42)
  %44 = load %struct.hstate*, %struct.hstate** %3, align 8
  %45 = call i32 @pages_per_huge_page(%struct.hstate* %44)
  %46 = load %struct.page*, %struct.page** %2, align 8
  %47 = call i32 @hugetlb_cgroup_uncharge_page(i32 %43, i32 %45, %struct.page* %46)
  %48 = load i32, i32* %6, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %55

50:                                               ; preds = %38
  %51 = load %struct.hstate*, %struct.hstate** %3, align 8
  %52 = getelementptr inbounds %struct.hstate, %struct.hstate* %51, i32 0, i32 2
  %53 = load i32, i32* %52, align 4
  %54 = add nsw i32 %53, 1
  store i32 %54, i32* %52, align 4
  br label %55

55:                                               ; preds = %50, %38
  %56 = load %struct.page*, %struct.page** %2, align 8
  %57 = call i64 @PageHugeTemporary(%struct.page* %56)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %68

59:                                               ; preds = %55
  %60 = load %struct.page*, %struct.page** %2, align 8
  %61 = getelementptr inbounds %struct.page, %struct.page* %60, i32 0, i32 0
  %62 = call i32 @list_del(i32* %61)
  %63 = load %struct.page*, %struct.page** %2, align 8
  %64 = call i32 @ClearPageHugeTemporary(%struct.page* %63)
  %65 = load %struct.hstate*, %struct.hstate** %3, align 8
  %66 = load %struct.page*, %struct.page** %2, align 8
  %67 = call i32 @update_and_free_page(%struct.hstate* %65, %struct.page* %66)
  br label %103

68:                                               ; preds = %55
  %69 = load %struct.hstate*, %struct.hstate** %3, align 8
  %70 = getelementptr inbounds %struct.hstate, %struct.hstate* %69, i32 0, i32 0
  %71 = load i64*, i64** %70, align 8
  %72 = load i32, i32* %4, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds i64, i64* %71, i64 %73
  %75 = load i64, i64* %74, align 8
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %96

77:                                               ; preds = %68
  %78 = load %struct.page*, %struct.page** %2, align 8
  %79 = getelementptr inbounds %struct.page, %struct.page* %78, i32 0, i32 0
  %80 = call i32 @list_del(i32* %79)
  %81 = load %struct.hstate*, %struct.hstate** %3, align 8
  %82 = load %struct.page*, %struct.page** %2, align 8
  %83 = call i32 @update_and_free_page(%struct.hstate* %81, %struct.page* %82)
  %84 = load %struct.hstate*, %struct.hstate** %3, align 8
  %85 = getelementptr inbounds %struct.hstate, %struct.hstate* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 8
  %87 = add nsw i32 %86, -1
  store i32 %87, i32* %85, align 8
  %88 = load %struct.hstate*, %struct.hstate** %3, align 8
  %89 = getelementptr inbounds %struct.hstate, %struct.hstate* %88, i32 0, i32 0
  %90 = load i64*, i64** %89, align 8
  %91 = load i32, i32* %4, align 4
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds i64, i64* %90, i64 %92
  %94 = load i64, i64* %93, align 8
  %95 = add nsw i64 %94, -1
  store i64 %95, i64* %93, align 8
  br label %102

96:                                               ; preds = %68
  %97 = load %struct.page*, %struct.page** %2, align 8
  %98 = call i32 @arch_clear_hugepage_flags(%struct.page* %97)
  %99 = load %struct.hstate*, %struct.hstate** %3, align 8
  %100 = load %struct.page*, %struct.page** %2, align 8
  %101 = call i32 @enqueue_huge_page(%struct.hstate* %99, %struct.page* %100)
  br label %102

102:                                              ; preds = %96, %77
  br label %103

103:                                              ; preds = %102, %59
  %104 = call i32 @spin_unlock(i32* @hugetlb_lock)
  ret void
}

declare dso_local %struct.hstate* @page_hstate(%struct.page*) #1

declare dso_local i32 @page_to_nid(%struct.page*) #1

declare dso_local i64 @page_private(%struct.page*) #1

declare dso_local i32 @VM_BUG_ON_PAGE(i32, %struct.page*) #1

declare dso_local i32 @page_count(%struct.page*) #1

declare dso_local i32 @page_mapcount(%struct.page*) #1

declare dso_local i32 @set_page_private(%struct.page*, i32) #1

declare dso_local i32 @PagePrivate(%struct.page*) #1

declare dso_local i32 @ClearPagePrivate(%struct.page*) #1

declare dso_local i64 @hugepage_subpool_put_pages(%struct.hugepage_subpool*, i32) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @clear_page_huge_active(%struct.page*) #1

declare dso_local i32 @hugetlb_cgroup_uncharge_page(i32, i32, %struct.page*) #1

declare dso_local i32 @hstate_index(%struct.hstate*) #1

declare dso_local i32 @pages_per_huge_page(%struct.hstate*) #1

declare dso_local i64 @PageHugeTemporary(%struct.page*) #1

declare dso_local i32 @list_del(i32*) #1

declare dso_local i32 @ClearPageHugeTemporary(%struct.page*) #1

declare dso_local i32 @update_and_free_page(%struct.hstate*, %struct.page*) #1

declare dso_local i32 @arch_clear_hugepage_flags(%struct.page*) #1

declare dso_local i32 @enqueue_huge_page(%struct.hstate*, %struct.page*) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
