; ModuleID = '/home/carl/AnghaBench/linux/fs/nfs/extr_write.c_nfs_wb_page_cancel.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfs/extr_write.c_nfs_wb_page_cancel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.page = type { i32 }
%struct.nfs_page = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nfs_wb_page_cancel(%struct.inode* %0, %struct.page* %1) #0 {
  %3 = alloca %struct.inode*, align 8
  %4 = alloca %struct.page*, align 8
  %5 = alloca %struct.nfs_page*, align 8
  %6 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %3, align 8
  store %struct.page* %1, %struct.page** %4, align 8
  store i32 0, i32* %6, align 4
  %7 = load %struct.page*, %struct.page** %4, align 8
  %8 = call i32 @wait_on_page_writeback(%struct.page* %7)
  %9 = load %struct.page*, %struct.page** %4, align 8
  %10 = call %struct.nfs_page* @nfs_lock_and_join_requests(%struct.page* %9)
  store %struct.nfs_page* %10, %struct.nfs_page** %5, align 8
  %11 = load %struct.nfs_page*, %struct.nfs_page** %5, align 8
  %12 = call i64 @IS_ERR(%struct.nfs_page* %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %17

14:                                               ; preds = %2
  %15 = load %struct.nfs_page*, %struct.nfs_page** %5, align 8
  %16 = call i32 @PTR_ERR(%struct.nfs_page* %15)
  store i32 %16, i32* %6, align 4
  br label %26

17:                                               ; preds = %2
  %18 = load %struct.nfs_page*, %struct.nfs_page** %5, align 8
  %19 = icmp ne %struct.nfs_page* %18, null
  br i1 %19, label %20, label %25

20:                                               ; preds = %17
  %21 = load %struct.nfs_page*, %struct.nfs_page** %5, align 8
  %22 = call i32 @nfs_inode_remove_request(%struct.nfs_page* %21)
  %23 = load %struct.nfs_page*, %struct.nfs_page** %5, align 8
  %24 = call i32 @nfs_unlock_and_release_request(%struct.nfs_page* %23)
  br label %25

25:                                               ; preds = %20, %17
  br label %26

26:                                               ; preds = %25, %14
  %27 = load i32, i32* %6, align 4
  ret i32 %27
}

declare dso_local i32 @wait_on_page_writeback(%struct.page*) #1

declare dso_local %struct.nfs_page* @nfs_lock_and_join_requests(%struct.page*) #1

declare dso_local i64 @IS_ERR(%struct.nfs_page*) #1

declare dso_local i32 @PTR_ERR(%struct.nfs_page*) #1

declare dso_local i32 @nfs_inode_remove_request(%struct.nfs_page*) #1

declare dso_local i32 @nfs_unlock_and_release_request(%struct.nfs_page*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
