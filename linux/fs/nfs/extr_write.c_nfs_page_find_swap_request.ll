; ModuleID = '/home/carl/AnghaBench/linux/fs/nfs/extr_write.c_nfs_page_find_swap_request.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfs/extr_write.c_nfs_page_find_swap_request.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfs_page = type { i32, %struct.nfs_page* }
%struct.page = type { i32 }
%struct.inode = type { i32 }
%struct.nfs_inode = type { i32 }
%struct.TYPE_2__ = type { %struct.inode* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.nfs_page* (%struct.page*)* @nfs_page_find_swap_request to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.nfs_page* @nfs_page_find_swap_request(%struct.page* %0) #0 {
  %2 = alloca %struct.nfs_page*, align 8
  %3 = alloca %struct.page*, align 8
  %4 = alloca %struct.inode*, align 8
  %5 = alloca %struct.nfs_inode*, align 8
  %6 = alloca %struct.nfs_page*, align 8
  store %struct.page* %0, %struct.page** %3, align 8
  %7 = load %struct.page*, %struct.page** %3, align 8
  %8 = call %struct.TYPE_2__* @page_file_mapping(%struct.page* %7)
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = load %struct.inode*, %struct.inode** %9, align 8
  store %struct.inode* %10, %struct.inode** %4, align 8
  %11 = load %struct.inode*, %struct.inode** %4, align 8
  %12 = call %struct.nfs_inode* @NFS_I(%struct.inode* %11)
  store %struct.nfs_inode* %12, %struct.nfs_inode** %5, align 8
  store %struct.nfs_page* null, %struct.nfs_page** %6, align 8
  %13 = load %struct.page*, %struct.page** %3, align 8
  %14 = call i64 @PageSwapCache(%struct.page* %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %17, label %16

16:                                               ; preds = %1
  store %struct.nfs_page* null, %struct.nfs_page** %2, align 8
  br label %47

17:                                               ; preds = %1
  %18 = load %struct.nfs_inode*, %struct.nfs_inode** %5, align 8
  %19 = getelementptr inbounds %struct.nfs_inode, %struct.nfs_inode* %18, i32 0, i32 0
  %20 = call i32 @mutex_lock(i32* %19)
  %21 = load %struct.page*, %struct.page** %3, align 8
  %22 = call i64 @PageSwapCache(%struct.page* %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %42

24:                                               ; preds = %17
  %25 = load %struct.nfs_inode*, %struct.nfs_inode** %5, align 8
  %26 = load %struct.page*, %struct.page** %3, align 8
  %27 = call %struct.nfs_page* @nfs_page_search_commits_for_head_request_locked(%struct.nfs_inode* %25, %struct.page* %26)
  store %struct.nfs_page* %27, %struct.nfs_page** %6, align 8
  %28 = load %struct.nfs_page*, %struct.nfs_page** %6, align 8
  %29 = icmp ne %struct.nfs_page* %28, null
  br i1 %29, label %30, label %41

30:                                               ; preds = %24
  %31 = load %struct.nfs_page*, %struct.nfs_page** %6, align 8
  %32 = getelementptr inbounds %struct.nfs_page, %struct.nfs_page* %31, i32 0, i32 1
  %33 = load %struct.nfs_page*, %struct.nfs_page** %32, align 8
  %34 = load %struct.nfs_page*, %struct.nfs_page** %6, align 8
  %35 = icmp ne %struct.nfs_page* %33, %34
  %36 = zext i1 %35 to i32
  %37 = call i32 @WARN_ON_ONCE(i32 %36)
  %38 = load %struct.nfs_page*, %struct.nfs_page** %6, align 8
  %39 = getelementptr inbounds %struct.nfs_page, %struct.nfs_page* %38, i32 0, i32 0
  %40 = call i32 @kref_get(i32* %39)
  br label %41

41:                                               ; preds = %30, %24
  br label %42

42:                                               ; preds = %41, %17
  %43 = load %struct.nfs_inode*, %struct.nfs_inode** %5, align 8
  %44 = getelementptr inbounds %struct.nfs_inode, %struct.nfs_inode* %43, i32 0, i32 0
  %45 = call i32 @mutex_unlock(i32* %44)
  %46 = load %struct.nfs_page*, %struct.nfs_page** %6, align 8
  store %struct.nfs_page* %46, %struct.nfs_page** %2, align 8
  br label %47

47:                                               ; preds = %42, %16
  %48 = load %struct.nfs_page*, %struct.nfs_page** %2, align 8
  ret %struct.nfs_page* %48
}

declare dso_local %struct.TYPE_2__* @page_file_mapping(%struct.page*) #1

declare dso_local %struct.nfs_inode* @NFS_I(%struct.inode*) #1

declare dso_local i64 @PageSwapCache(%struct.page*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local %struct.nfs_page* @nfs_page_search_commits_for_head_request_locked(%struct.nfs_inode*, %struct.page*) #1

declare dso_local i32 @WARN_ON_ONCE(i32) #1

declare dso_local i32 @kref_get(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
