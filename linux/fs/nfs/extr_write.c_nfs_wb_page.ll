; ModuleID = '/home/carl/AnghaBench/linux/fs/nfs/extr_write.c_nfs_wb_page.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfs/extr_write.c_nfs_wb_page.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.page = type { i32 }
%struct.writeback_control = type { i64, i64, i32, i32 }

@PAGE_SIZE = common dso_local global i32 0, align 4
@WB_SYNC_ALL = common dso_local global i32 0, align 4
@FLUSH_SYNC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nfs_wb_page(%struct.inode* %0, %struct.page* %1) #0 {
  %3 = alloca %struct.inode*, align 8
  %4 = alloca %struct.page*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.writeback_control, align 8
  %8 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %3, align 8
  store %struct.page* %1, %struct.page** %4, align 8
  %9 = load %struct.page*, %struct.page** %4, align 8
  %10 = call i64 @page_file_offset(%struct.page* %9)
  store i64 %10, i64* %5, align 8
  %11 = load i64, i64* %5, align 8
  %12 = load i32, i32* @PAGE_SIZE, align 4
  %13 = sub nsw i32 %12, 1
  %14 = sext i32 %13 to i64
  %15 = add nsw i64 %11, %14
  store i64 %15, i64* %6, align 8
  %16 = getelementptr inbounds %struct.writeback_control, %struct.writeback_control* %7, i32 0, i32 0
  %17 = load i64, i64* %6, align 8
  store i64 %17, i64* %16, align 8
  %18 = getelementptr inbounds %struct.writeback_control, %struct.writeback_control* %7, i32 0, i32 1
  %19 = load i64, i64* %5, align 8
  store i64 %19, i64* %18, align 8
  %20 = getelementptr inbounds %struct.writeback_control, %struct.writeback_control* %7, i32 0, i32 2
  store i32 0, i32* %20, align 8
  %21 = getelementptr inbounds %struct.writeback_control, %struct.writeback_control* %7, i32 0, i32 3
  %22 = load i32, i32* @WB_SYNC_ALL, align 4
  store i32 %22, i32* %21, align 4
  %23 = load %struct.inode*, %struct.inode** %3, align 8
  %24 = call i32 @trace_nfs_writeback_page_enter(%struct.inode* %23)
  br label %25

25:                                               ; preds = %50, %37, %2
  %26 = load %struct.page*, %struct.page** %4, align 8
  %27 = call i32 @wait_on_page_writeback(%struct.page* %26)
  %28 = load %struct.page*, %struct.page** %4, align 8
  %29 = call i64 @clear_page_dirty_for_io(%struct.page* %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %38

31:                                               ; preds = %25
  %32 = load %struct.page*, %struct.page** %4, align 8
  %33 = call i32 @nfs_writepage_locked(%struct.page* %32, %struct.writeback_control* %7)
  store i32 %33, i32* %8, align 4
  %34 = load i32, i32* %8, align 4
  %35 = icmp slt i32 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %31
  br label %52

37:                                               ; preds = %31
  br label %25

38:                                               ; preds = %25
  store i32 0, i32* %8, align 4
  %39 = load %struct.page*, %struct.page** %4, align 8
  %40 = call i32 @PagePrivate(%struct.page* %39)
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %43, label %42

42:                                               ; preds = %38
  br label %51

43:                                               ; preds = %38
  %44 = load %struct.inode*, %struct.inode** %3, align 8
  %45 = load i32, i32* @FLUSH_SYNC, align 4
  %46 = call i32 @nfs_commit_inode(%struct.inode* %44, i32 %45)
  store i32 %46, i32* %8, align 4
  %47 = load i32, i32* %8, align 4
  %48 = icmp slt i32 %47, 0
  br i1 %48, label %49, label %50

49:                                               ; preds = %43
  br label %52

50:                                               ; preds = %43
  br label %25

51:                                               ; preds = %42
  br label %52

52:                                               ; preds = %51, %49, %36
  %53 = load %struct.inode*, %struct.inode** %3, align 8
  %54 = load i32, i32* %8, align 4
  %55 = call i32 @trace_nfs_writeback_page_exit(%struct.inode* %53, i32 %54)
  %56 = load i32, i32* %8, align 4
  ret i32 %56
}

declare dso_local i64 @page_file_offset(%struct.page*) #1

declare dso_local i32 @trace_nfs_writeback_page_enter(%struct.inode*) #1

declare dso_local i32 @wait_on_page_writeback(%struct.page*) #1

declare dso_local i64 @clear_page_dirty_for_io(%struct.page*) #1

declare dso_local i32 @nfs_writepage_locked(%struct.page*, %struct.writeback_control*) #1

declare dso_local i32 @PagePrivate(%struct.page*) #1

declare dso_local i32 @nfs_commit_inode(%struct.inode*, i32) #1

declare dso_local i32 @trace_nfs_writeback_page_exit(%struct.inode*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
