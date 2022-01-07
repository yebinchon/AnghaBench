; ModuleID = '/home/carl/AnghaBench/linux/mm/extr_hugetlb.c_hugetlb_unreserve_pages.c'
source_filename = "/home/carl/AnghaBench/linux/mm/extr_hugetlb.c_hugetlb_unreserve_pages.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i64, i32 }
%struct.hstate = type { i32 }
%struct.resv_map = type { i32 }
%struct.hugepage_subpool = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @hugetlb_unreserve_pages(%struct.inode* %0, i64 %1, i64 %2, i64 %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca %struct.inode*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.hstate*, align 8
  %11 = alloca %struct.resv_map*, align 8
  %12 = alloca i64, align 8
  %13 = alloca %struct.hugepage_subpool*, align 8
  %14 = alloca i64, align 8
  store %struct.inode* %0, %struct.inode** %6, align 8
  store i64 %1, i64* %7, align 8
  store i64 %2, i64* %8, align 8
  store i64 %3, i64* %9, align 8
  %15 = load %struct.inode*, %struct.inode** %6, align 8
  %16 = call %struct.hstate* @hstate_inode(%struct.inode* %15)
  store %struct.hstate* %16, %struct.hstate** %10, align 8
  %17 = load %struct.inode*, %struct.inode** %6, align 8
  %18 = call %struct.resv_map* @inode_resv_map(%struct.inode* %17)
  store %struct.resv_map* %18, %struct.resv_map** %11, align 8
  store i64 0, i64* %12, align 8
  %19 = load %struct.inode*, %struct.inode** %6, align 8
  %20 = call %struct.hugepage_subpool* @subpool_inode(%struct.inode* %19)
  store %struct.hugepage_subpool* %20, %struct.hugepage_subpool** %13, align 8
  %21 = load %struct.resv_map*, %struct.resv_map** %11, align 8
  %22 = icmp ne %struct.resv_map* %21, null
  br i1 %22, label %23, label %33

23:                                               ; preds = %4
  %24 = load %struct.resv_map*, %struct.resv_map** %11, align 8
  %25 = load i64, i64* %7, align 8
  %26 = load i64, i64* %8, align 8
  %27 = call i64 @region_del(%struct.resv_map* %24, i64 %25, i64 %26)
  store i64 %27, i64* %12, align 8
  %28 = load i64, i64* %12, align 8
  %29 = icmp slt i64 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %23
  %31 = load i64, i64* %12, align 8
  store i64 %31, i64* %5, align 8
  br label %57

32:                                               ; preds = %23
  br label %33

33:                                               ; preds = %32, %4
  %34 = load %struct.inode*, %struct.inode** %6, align 8
  %35 = getelementptr inbounds %struct.inode, %struct.inode* %34, i32 0, i32 1
  %36 = call i32 @spin_lock(i32* %35)
  %37 = load %struct.hstate*, %struct.hstate** %10, align 8
  %38 = call i64 @blocks_per_huge_page(%struct.hstate* %37)
  %39 = load i64, i64* %9, align 8
  %40 = mul nsw i64 %38, %39
  %41 = load %struct.inode*, %struct.inode** %6, align 8
  %42 = getelementptr inbounds %struct.inode, %struct.inode* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = sub nsw i64 %43, %40
  store i64 %44, i64* %42, align 8
  %45 = load %struct.inode*, %struct.inode** %6, align 8
  %46 = getelementptr inbounds %struct.inode, %struct.inode* %45, i32 0, i32 1
  %47 = call i32 @spin_unlock(i32* %46)
  %48 = load %struct.hugepage_subpool*, %struct.hugepage_subpool** %13, align 8
  %49 = load i64, i64* %12, align 8
  %50 = load i64, i64* %9, align 8
  %51 = sub nsw i64 %49, %50
  %52 = call i64 @hugepage_subpool_put_pages(%struct.hugepage_subpool* %48, i64 %51)
  store i64 %52, i64* %14, align 8
  %53 = load %struct.hstate*, %struct.hstate** %10, align 8
  %54 = load i64, i64* %14, align 8
  %55 = sub nsw i64 0, %54
  %56 = call i32 @hugetlb_acct_memory(%struct.hstate* %53, i64 %55)
  store i64 0, i64* %5, align 8
  br label %57

57:                                               ; preds = %33, %30
  %58 = load i64, i64* %5, align 8
  ret i64 %58
}

declare dso_local %struct.hstate* @hstate_inode(%struct.inode*) #1

declare dso_local %struct.resv_map* @inode_resv_map(%struct.inode*) #1

declare dso_local %struct.hugepage_subpool* @subpool_inode(%struct.inode*) #1

declare dso_local i64 @region_del(%struct.resv_map*, i64, i64) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i64 @blocks_per_huge_page(%struct.hstate*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i64 @hugepage_subpool_put_pages(%struct.hugepage_subpool*, i64) #1

declare dso_local i32 @hugetlb_acct_memory(%struct.hstate*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
