; ModuleID = '/home/carl/AnghaBench/linux/mm/extr_hugetlb.c_alloc_huge_page.c'
source_filename = "/home/carl/AnghaBench/linux/mm/extr_hugetlb.c_alloc_huge_page.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.page = type { i32 }
%struct.vm_area_struct = type { i32 }
%struct.hugepage_subpool = type { i32 }
%struct.hstate = type { i32, i32 }
%struct.hugetlb_cgroup = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4
@ENOSPC = common dso_local global i32 0, align 4
@hugetlb_lock = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.page* @alloc_huge_page(%struct.vm_area_struct* %0, i64 %1, i32 %2) #0 {
  %4 = alloca %struct.page*, align 8
  %5 = alloca %struct.vm_area_struct*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.hugepage_subpool*, align 8
  %9 = alloca %struct.hstate*, align 8
  %10 = alloca %struct.page*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.hugetlb_cgroup*, align 8
  %17 = alloca i64, align 8
  store %struct.vm_area_struct* %0, %struct.vm_area_struct** %5, align 8
  store i64 %1, i64* %6, align 8
  store i32 %2, i32* %7, align 4
  %18 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %19 = call %struct.hugepage_subpool* @subpool_vma(%struct.vm_area_struct* %18)
  store %struct.hugepage_subpool* %19, %struct.hugepage_subpool** %8, align 8
  %20 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %21 = call %struct.hstate* @hstate_vma(%struct.vm_area_struct* %20)
  store %struct.hstate* %21, %struct.hstate** %9, align 8
  %22 = load %struct.hstate*, %struct.hstate** %9, align 8
  %23 = call i32 @hstate_index(%struct.hstate* %22)
  store i32 %23, i32* %15, align 4
  %24 = load %struct.hstate*, %struct.hstate** %9, align 8
  %25 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %26 = load i64, i64* %6, align 8
  %27 = call i64 @vma_needs_reservation(%struct.hstate* %24, %struct.vm_area_struct* %25, i64 %26)
  store i64 %27, i64* %13, align 8
  store i64 %27, i64* %11, align 8
  %28 = load i64, i64* %11, align 8
  %29 = icmp slt i64 %28, 0
  br i1 %29, label %30, label %34

30:                                               ; preds = %3
  %31 = load i32, i32* @ENOMEM, align 4
  %32 = sub nsw i32 0, %31
  %33 = call %struct.page* @ERR_PTR(i32 %32)
  store %struct.page* %33, %struct.page** %4, align 8
  br label %161

34:                                               ; preds = %3
  %35 = load i64, i64* %11, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %40, label %37

37:                                               ; preds = %34
  %38 = load i32, i32* %7, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %58

40:                                               ; preds = %37, %34
  %41 = load %struct.hugepage_subpool*, %struct.hugepage_subpool** %8, align 8
  %42 = call i64 @hugepage_subpool_get_pages(%struct.hugepage_subpool* %41, i32 1)
  store i64 %42, i64* %13, align 8
  %43 = load i64, i64* %13, align 8
  %44 = icmp slt i64 %43, 0
  br i1 %44, label %45, label %53

45:                                               ; preds = %40
  %46 = load %struct.hstate*, %struct.hstate** %9, align 8
  %47 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %48 = load i64, i64* %6, align 8
  %49 = call i32 @vma_end_reservation(%struct.hstate* %46, %struct.vm_area_struct* %47, i64 %48)
  %50 = load i32, i32* @ENOSPC, align 4
  %51 = sub nsw i32 0, %50
  %52 = call %struct.page* @ERR_PTR(i32 %51)
  store %struct.page* %52, %struct.page** %4, align 8
  br label %161

53:                                               ; preds = %40
  %54 = load i32, i32* %7, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %57

56:                                               ; preds = %53
  store i64 1, i64* %13, align 8
  br label %57

57:                                               ; preds = %56, %53
  br label %58

58:                                               ; preds = %57, %37
  %59 = load i32, i32* %15, align 4
  %60 = load %struct.hstate*, %struct.hstate** %9, align 8
  %61 = call i32 @pages_per_huge_page(%struct.hstate* %60)
  %62 = call i32 @hugetlb_cgroup_charge_cgroup(i32 %59, i32 %61, %struct.hugetlb_cgroup** %16)
  store i32 %62, i32* %14, align 4
  %63 = load i32, i32* %14, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %66

65:                                               ; preds = %58
  br label %144

66:                                               ; preds = %58
  %67 = call i32 @spin_lock(i32* @hugetlb_lock)
  %68 = load %struct.hstate*, %struct.hstate** %9, align 8
  %69 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %70 = load i64, i64* %6, align 8
  %71 = load i32, i32* %7, align 4
  %72 = load i64, i64* %13, align 8
  %73 = call %struct.page* @dequeue_huge_page_vma(%struct.hstate* %68, %struct.vm_area_struct* %69, i64 %70, i32 %71, i64 %72)
  store %struct.page* %73, %struct.page** %10, align 8
  %74 = load %struct.page*, %struct.page** %10, align 8
  %75 = icmp ne %struct.page* %74, null
  br i1 %75, label %107, label %76

76:                                               ; preds = %66
  %77 = call i32 @spin_unlock(i32* @hugetlb_lock)
  %78 = load %struct.hstate*, %struct.hstate** %9, align 8
  %79 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %80 = load i64, i64* %6, align 8
  %81 = call %struct.page* @alloc_buddy_huge_page_with_mpol(%struct.hstate* %78, %struct.vm_area_struct* %79, i64 %80)
  store %struct.page* %81, %struct.page** %10, align 8
  %82 = load %struct.page*, %struct.page** %10, align 8
  %83 = icmp ne %struct.page* %82, null
  br i1 %83, label %85, label %84

84:                                               ; preds = %76
  br label %138

85:                                               ; preds = %76
  %86 = load i32, i32* %7, align 4
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %100, label %88

88:                                               ; preds = %85
  %89 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %90 = load i64, i64* %13, align 8
  %91 = call i64 @vma_has_reserves(%struct.vm_area_struct* %89, i64 %90)
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %93, label %100

93:                                               ; preds = %88
  %94 = load %struct.page*, %struct.page** %10, align 8
  %95 = call i32 @SetPagePrivate(%struct.page* %94)
  %96 = load %struct.hstate*, %struct.hstate** %9, align 8
  %97 = getelementptr inbounds %struct.hstate, %struct.hstate* %96, i32 0, i32 1
  %98 = load i32, i32* %97, align 4
  %99 = add nsw i32 %98, -1
  store i32 %99, i32* %97, align 4
  br label %100

100:                                              ; preds = %93, %88, %85
  %101 = call i32 @spin_lock(i32* @hugetlb_lock)
  %102 = load %struct.page*, %struct.page** %10, align 8
  %103 = getelementptr inbounds %struct.page, %struct.page* %102, i32 0, i32 0
  %104 = load %struct.hstate*, %struct.hstate** %9, align 8
  %105 = getelementptr inbounds %struct.hstate, %struct.hstate* %104, i32 0, i32 0
  %106 = call i32 @list_move(i32* %103, i32* %105)
  br label %107

107:                                              ; preds = %100, %66
  %108 = load i32, i32* %15, align 4
  %109 = load %struct.hstate*, %struct.hstate** %9, align 8
  %110 = call i32 @pages_per_huge_page(%struct.hstate* %109)
  %111 = load %struct.hugetlb_cgroup*, %struct.hugetlb_cgroup** %16, align 8
  %112 = load %struct.page*, %struct.page** %10, align 8
  %113 = call i32 @hugetlb_cgroup_commit_charge(i32 %108, i32 %110, %struct.hugetlb_cgroup* %111, %struct.page* %112)
  %114 = call i32 @spin_unlock(i32* @hugetlb_lock)
  %115 = load %struct.page*, %struct.page** %10, align 8
  %116 = load %struct.hugepage_subpool*, %struct.hugepage_subpool** %8, align 8
  %117 = ptrtoint %struct.hugepage_subpool* %116 to i64
  %118 = call i32 @set_page_private(%struct.page* %115, i64 %117)
  %119 = load %struct.hstate*, %struct.hstate** %9, align 8
  %120 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %121 = load i64, i64* %6, align 8
  %122 = call i64 @vma_commit_reservation(%struct.hstate* %119, %struct.vm_area_struct* %120, i64 %121)
  store i64 %122, i64* %12, align 8
  %123 = load i64, i64* %11, align 8
  %124 = load i64, i64* %12, align 8
  %125 = icmp sgt i64 %123, %124
  %126 = zext i1 %125 to i32
  %127 = call i64 @unlikely(i32 %126)
  %128 = icmp ne i64 %127, 0
  br i1 %128, label %129, label %136

129:                                              ; preds = %107
  %130 = load %struct.hugepage_subpool*, %struct.hugepage_subpool** %8, align 8
  %131 = call i64 @hugepage_subpool_put_pages(%struct.hugepage_subpool* %130, i32 1)
  store i64 %131, i64* %17, align 8
  %132 = load %struct.hstate*, %struct.hstate** %9, align 8
  %133 = load i64, i64* %17, align 8
  %134 = sub nsw i64 0, %133
  %135 = call i32 @hugetlb_acct_memory(%struct.hstate* %132, i64 %134)
  br label %136

136:                                              ; preds = %129, %107
  %137 = load %struct.page*, %struct.page** %10, align 8
  store %struct.page* %137, %struct.page** %4, align 8
  br label %161

138:                                              ; preds = %84
  %139 = load i32, i32* %15, align 4
  %140 = load %struct.hstate*, %struct.hstate** %9, align 8
  %141 = call i32 @pages_per_huge_page(%struct.hstate* %140)
  %142 = load %struct.hugetlb_cgroup*, %struct.hugetlb_cgroup** %16, align 8
  %143 = call i32 @hugetlb_cgroup_uncharge_cgroup(i32 %139, i32 %141, %struct.hugetlb_cgroup* %142)
  br label %144

144:                                              ; preds = %138, %65
  %145 = load i64, i64* %11, align 8
  %146 = icmp ne i64 %145, 0
  br i1 %146, label %150, label %147

147:                                              ; preds = %144
  %148 = load i32, i32* %7, align 4
  %149 = icmp ne i32 %148, 0
  br i1 %149, label %150, label %153

150:                                              ; preds = %147, %144
  %151 = load %struct.hugepage_subpool*, %struct.hugepage_subpool** %8, align 8
  %152 = call i64 @hugepage_subpool_put_pages(%struct.hugepage_subpool* %151, i32 1)
  br label %153

153:                                              ; preds = %150, %147
  %154 = load %struct.hstate*, %struct.hstate** %9, align 8
  %155 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %156 = load i64, i64* %6, align 8
  %157 = call i32 @vma_end_reservation(%struct.hstate* %154, %struct.vm_area_struct* %155, i64 %156)
  %158 = load i32, i32* @ENOSPC, align 4
  %159 = sub nsw i32 0, %158
  %160 = call %struct.page* @ERR_PTR(i32 %159)
  store %struct.page* %160, %struct.page** %4, align 8
  br label %161

161:                                              ; preds = %153, %136, %45, %30
  %162 = load %struct.page*, %struct.page** %4, align 8
  ret %struct.page* %162
}

declare dso_local %struct.hugepage_subpool* @subpool_vma(%struct.vm_area_struct*) #1

declare dso_local %struct.hstate* @hstate_vma(%struct.vm_area_struct*) #1

declare dso_local i32 @hstate_index(%struct.hstate*) #1

declare dso_local i64 @vma_needs_reservation(%struct.hstate*, %struct.vm_area_struct*, i64) #1

declare dso_local %struct.page* @ERR_PTR(i32) #1

declare dso_local i64 @hugepage_subpool_get_pages(%struct.hugepage_subpool*, i32) #1

declare dso_local i32 @vma_end_reservation(%struct.hstate*, %struct.vm_area_struct*, i64) #1

declare dso_local i32 @hugetlb_cgroup_charge_cgroup(i32, i32, %struct.hugetlb_cgroup**) #1

declare dso_local i32 @pages_per_huge_page(%struct.hstate*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local %struct.page* @dequeue_huge_page_vma(%struct.hstate*, %struct.vm_area_struct*, i64, i32, i64) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local %struct.page* @alloc_buddy_huge_page_with_mpol(%struct.hstate*, %struct.vm_area_struct*, i64) #1

declare dso_local i64 @vma_has_reserves(%struct.vm_area_struct*, i64) #1

declare dso_local i32 @SetPagePrivate(%struct.page*) #1

declare dso_local i32 @list_move(i32*, i32*) #1

declare dso_local i32 @hugetlb_cgroup_commit_charge(i32, i32, %struct.hugetlb_cgroup*, %struct.page*) #1

declare dso_local i32 @set_page_private(%struct.page*, i64) #1

declare dso_local i64 @vma_commit_reservation(%struct.hstate*, %struct.vm_area_struct*, i64) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i64 @hugepage_subpool_put_pages(%struct.hugepage_subpool*, i32) #1

declare dso_local i32 @hugetlb_acct_memory(%struct.hstate*, i64) #1

declare dso_local i32 @hugetlb_cgroup_uncharge_cgroup(i32, i32, %struct.hugetlb_cgroup*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
