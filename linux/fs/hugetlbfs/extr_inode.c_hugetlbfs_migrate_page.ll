; ModuleID = '/home/carl/AnghaBench/linux/fs/hugetlbfs/extr_inode.c_hugetlbfs_migrate_page.c'
source_filename = "/home/carl/AnghaBench/linux/fs/hugetlbfs/extr_inode.c_hugetlbfs_migrate_page.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.address_space = type { i32 }
%struct.page = type { i32 }

@MIGRATEPAGE_SUCCESS = common dso_local global i32 0, align 4
@MIGRATE_SYNC_NO_COPY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.address_space*, %struct.page*, %struct.page*, i32)* @hugetlbfs_migrate_page to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hugetlbfs_migrate_page(%struct.address_space* %0, %struct.page* %1, %struct.page* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.address_space*, align 8
  %7 = alloca %struct.page*, align 8
  %8 = alloca %struct.page*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.address_space* %0, %struct.address_space** %6, align 8
  store %struct.page* %1, %struct.page** %7, align 8
  store %struct.page* %2, %struct.page** %8, align 8
  store i32 %3, i32* %9, align 4
  %11 = load %struct.address_space*, %struct.address_space** %6, align 8
  %12 = load %struct.page*, %struct.page** %7, align 8
  %13 = load %struct.page*, %struct.page** %8, align 8
  %14 = call i32 @migrate_huge_page_move_mapping(%struct.address_space* %11, %struct.page* %12, %struct.page* %13)
  store i32 %14, i32* %10, align 4
  %15 = load i32, i32* %10, align 4
  %16 = load i32, i32* @MIGRATEPAGE_SUCCESS, align 4
  %17 = icmp ne i32 %15, %16
  br i1 %17, label %18, label %20

18:                                               ; preds = %4
  %19 = load i32, i32* %10, align 4
  store i32 %19, i32* %5, align 4
  br label %45

20:                                               ; preds = %4
  %21 = load %struct.page*, %struct.page** %8, align 8
  %22 = call i64 @page_private(%struct.page* %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %31

24:                                               ; preds = %20
  %25 = load %struct.page*, %struct.page** %7, align 8
  %26 = load %struct.page*, %struct.page** %8, align 8
  %27 = call i64 @page_private(%struct.page* %26)
  %28 = call i32 @set_page_private(%struct.page* %25, i64 %27)
  %29 = load %struct.page*, %struct.page** %8, align 8
  %30 = call i32 @set_page_private(%struct.page* %29, i64 0)
  br label %31

31:                                               ; preds = %24, %20
  %32 = load i32, i32* %9, align 4
  %33 = load i32, i32* @MIGRATE_SYNC_NO_COPY, align 4
  %34 = icmp ne i32 %32, %33
  br i1 %34, label %35, label %39

35:                                               ; preds = %31
  %36 = load %struct.page*, %struct.page** %7, align 8
  %37 = load %struct.page*, %struct.page** %8, align 8
  %38 = call i32 @migrate_page_copy(%struct.page* %36, %struct.page* %37)
  br label %43

39:                                               ; preds = %31
  %40 = load %struct.page*, %struct.page** %7, align 8
  %41 = load %struct.page*, %struct.page** %8, align 8
  %42 = call i32 @migrate_page_states(%struct.page* %40, %struct.page* %41)
  br label %43

43:                                               ; preds = %39, %35
  %44 = load i32, i32* @MIGRATEPAGE_SUCCESS, align 4
  store i32 %44, i32* %5, align 4
  br label %45

45:                                               ; preds = %43, %18
  %46 = load i32, i32* %5, align 4
  ret i32 %46
}

declare dso_local i32 @migrate_huge_page_move_mapping(%struct.address_space*, %struct.page*, %struct.page*) #1

declare dso_local i64 @page_private(%struct.page*) #1

declare dso_local i32 @set_page_private(%struct.page*, i64) #1

declare dso_local i32 @migrate_page_copy(%struct.page*, %struct.page*) #1

declare dso_local i32 @migrate_page_states(%struct.page*, %struct.page*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
