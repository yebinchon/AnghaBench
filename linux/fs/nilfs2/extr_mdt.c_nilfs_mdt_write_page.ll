; ModuleID = '/home/carl/AnghaBench/linux/fs/nilfs2/extr_mdt.c_nilfs_mdt_write_page.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nilfs2/extr_mdt.c_nilfs_mdt_write_page.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.page = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.inode* }
%struct.inode = type { i32, %struct.super_block* }
%struct.super_block = type { i32 }
%struct.writeback_control = type { i64, i64 }

@EROFS = common dso_local global i32 0, align 4
@WB_SYNC_ALL = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.page*, %struct.writeback_control*)* @nilfs_mdt_write_page to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nilfs_mdt_write_page(%struct.page* %0, %struct.writeback_control* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.page*, align 8
  %5 = alloca %struct.writeback_control*, align 8
  %6 = alloca %struct.inode*, align 8
  %7 = alloca %struct.super_block*, align 8
  %8 = alloca i32, align 4
  store %struct.page* %0, %struct.page** %4, align 8
  store %struct.writeback_control* %1, %struct.writeback_control** %5, align 8
  %9 = load %struct.page*, %struct.page** %4, align 8
  %10 = getelementptr inbounds %struct.page, %struct.page* %9, i32 0, i32 0
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load %struct.inode*, %struct.inode** %12, align 8
  store %struct.inode* %13, %struct.inode** %6, align 8
  store i32 0, i32* %8, align 4
  %14 = load %struct.inode*, %struct.inode** %6, align 8
  %15 = icmp ne %struct.inode* %14, null
  br i1 %15, label %16, label %29

16:                                               ; preds = %2
  %17 = load %struct.inode*, %struct.inode** %6, align 8
  %18 = getelementptr inbounds %struct.inode, %struct.inode* %17, i32 0, i32 1
  %19 = load %struct.super_block*, %struct.super_block** %18, align 8
  %20 = call i64 @sb_rdonly(%struct.super_block* %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %29

22:                                               ; preds = %16
  %23 = load %struct.page*, %struct.page** %4, align 8
  %24 = call i32 @nilfs_clear_dirty_page(%struct.page* %23, i32 0)
  %25 = load %struct.page*, %struct.page** %4, align 8
  %26 = call i32 @unlock_page(%struct.page* %25)
  %27 = load i32, i32* @EROFS, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %3, align 4
  br label %64

29:                                               ; preds = %16, %2
  %30 = load %struct.writeback_control*, %struct.writeback_control** %5, align 8
  %31 = load %struct.page*, %struct.page** %4, align 8
  %32 = call i32 @redirty_page_for_writepage(%struct.writeback_control* %30, %struct.page* %31)
  %33 = load %struct.page*, %struct.page** %4, align 8
  %34 = call i32 @unlock_page(%struct.page* %33)
  %35 = load %struct.inode*, %struct.inode** %6, align 8
  %36 = icmp ne %struct.inode* %35, null
  br i1 %36, label %38, label %37

37:                                               ; preds = %29
  store i32 0, i32* %3, align 4
  br label %64

38:                                               ; preds = %29
  %39 = load %struct.inode*, %struct.inode** %6, align 8
  %40 = getelementptr inbounds %struct.inode, %struct.inode* %39, i32 0, i32 1
  %41 = load %struct.super_block*, %struct.super_block** %40, align 8
  store %struct.super_block* %41, %struct.super_block** %7, align 8
  %42 = load %struct.writeback_control*, %struct.writeback_control** %5, align 8
  %43 = getelementptr inbounds %struct.writeback_control, %struct.writeback_control* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = load i64, i64* @WB_SYNC_ALL, align 8
  %46 = icmp eq i64 %44, %45
  br i1 %46, label %47, label %50

47:                                               ; preds = %38
  %48 = load %struct.super_block*, %struct.super_block** %7, align 8
  %49 = call i32 @nilfs_construct_segment(%struct.super_block* %48)
  store i32 %49, i32* %8, align 4
  br label %62

50:                                               ; preds = %38
  %51 = load %struct.writeback_control*, %struct.writeback_control** %5, align 8
  %52 = getelementptr inbounds %struct.writeback_control, %struct.writeback_control* %51, i32 0, i32 1
  %53 = load i64, i64* %52, align 8
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %61

55:                                               ; preds = %50
  %56 = load %struct.super_block*, %struct.super_block** %7, align 8
  %57 = load %struct.inode*, %struct.inode** %6, align 8
  %58 = getelementptr inbounds %struct.inode, %struct.inode* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = call i32 @nilfs_flush_segment(%struct.super_block* %56, i32 %59)
  br label %61

61:                                               ; preds = %55, %50
  br label %62

62:                                               ; preds = %61, %47
  %63 = load i32, i32* %8, align 4
  store i32 %63, i32* %3, align 4
  br label %64

64:                                               ; preds = %62, %37, %22
  %65 = load i32, i32* %3, align 4
  ret i32 %65
}

declare dso_local i64 @sb_rdonly(%struct.super_block*) #1

declare dso_local i32 @nilfs_clear_dirty_page(%struct.page*, i32) #1

declare dso_local i32 @unlock_page(%struct.page*) #1

declare dso_local i32 @redirty_page_for_writepage(%struct.writeback_control*, %struct.page*) #1

declare dso_local i32 @nilfs_construct_segment(%struct.super_block*) #1

declare dso_local i32 @nilfs_flush_segment(%struct.super_block*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
