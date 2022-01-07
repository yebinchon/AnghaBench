; ModuleID = '/home/carl/AnghaBench/linux/mm/extr_hugetlb.c_hugetlb_fix_reserve_counts.c'
source_filename = "/home/carl/AnghaBench/linux/mm/extr_hugetlb.c_hugetlb_fix_reserve_counts.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.hugepage_subpool = type { i32 }
%struct.hstate = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @hugetlb_fix_reserve_counts(%struct.inode* %0) #0 {
  %2 = alloca %struct.inode*, align 8
  %3 = alloca %struct.hugepage_subpool*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.hstate*, align 8
  store %struct.inode* %0, %struct.inode** %2, align 8
  %6 = load %struct.inode*, %struct.inode** %2, align 8
  %7 = call %struct.hugepage_subpool* @subpool_inode(%struct.inode* %6)
  store %struct.hugepage_subpool* %7, %struct.hugepage_subpool** %3, align 8
  %8 = load %struct.hugepage_subpool*, %struct.hugepage_subpool** %3, align 8
  %9 = call i64 @hugepage_subpool_get_pages(%struct.hugepage_subpool* %8, i32 1)
  store i64 %9, i64* %4, align 8
  %10 = load i64, i64* %4, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %17

12:                                               ; preds = %1
  %13 = load %struct.inode*, %struct.inode** %2, align 8
  %14 = call %struct.hstate* @hstate_inode(%struct.inode* %13)
  store %struct.hstate* %14, %struct.hstate** %5, align 8
  %15 = load %struct.hstate*, %struct.hstate** %5, align 8
  %16 = call i32 @hugetlb_acct_memory(%struct.hstate* %15, i32 1)
  br label %17

17:                                               ; preds = %12, %1
  ret void
}

declare dso_local %struct.hugepage_subpool* @subpool_inode(%struct.inode*) #1

declare dso_local i64 @hugepage_subpool_get_pages(%struct.hugepage_subpool*, i32) #1

declare dso_local %struct.hstate* @hstate_inode(%struct.inode*) #1

declare dso_local i32 @hugetlb_acct_memory(%struct.hstate*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
