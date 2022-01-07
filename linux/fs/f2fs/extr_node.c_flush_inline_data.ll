; ModuleID = '/home/carl/AnghaBench/linux/fs/f2fs/extr_node.c_flush_inline_data.c'
source_filename = "/home/carl/AnghaBench/linux/fs/f2fs/extr_node.c_flush_inline_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.f2fs_sb_info = type { i32 }
%struct.inode = type { i32 }
%struct.page = type { i32 }

@FGP_LOCK = common dso_local global i32 0, align 4
@FGP_NOWAIT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.f2fs_sb_info*, i32)* @flush_inline_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @flush_inline_data(%struct.f2fs_sb_info* %0, i32 %1) #0 {
  %3 = alloca %struct.f2fs_sb_info*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.inode*, align 8
  %6 = alloca %struct.page*, align 8
  %7 = alloca i32, align 4
  store %struct.f2fs_sb_info* %0, %struct.f2fs_sb_info** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %3, align 8
  %9 = getelementptr inbounds %struct.f2fs_sb_info, %struct.f2fs_sb_info* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = load i32, i32* %4, align 4
  %12 = call %struct.inode* @ilookup(i32 %10, i32 %11)
  store %struct.inode* %12, %struct.inode** %5, align 8
  %13 = load %struct.inode*, %struct.inode** %5, align 8
  %14 = icmp ne %struct.inode* %13, null
  br i1 %14, label %16, label %15

15:                                               ; preds = %2
  br label %62

16:                                               ; preds = %2
  %17 = load %struct.inode*, %struct.inode** %5, align 8
  %18 = getelementptr inbounds %struct.inode, %struct.inode* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* @FGP_LOCK, align 4
  %21 = load i32, i32* @FGP_NOWAIT, align 4
  %22 = or i32 %20, %21
  %23 = call %struct.page* @f2fs_pagecache_get_page(i32 %19, i32 0, i32 %22, i32 0)
  store %struct.page* %23, %struct.page** %6, align 8
  %24 = load %struct.page*, %struct.page** %6, align 8
  %25 = icmp ne %struct.page* %24, null
  br i1 %25, label %27, label %26

26:                                               ; preds = %16
  br label %59

27:                                               ; preds = %16
  %28 = load %struct.page*, %struct.page** %6, align 8
  %29 = call i32 @PageUptodate(%struct.page* %28)
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %32, label %31

31:                                               ; preds = %27
  br label %56

32:                                               ; preds = %27
  %33 = load %struct.page*, %struct.page** %6, align 8
  %34 = call i32 @PageDirty(%struct.page* %33)
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %37, label %36

36:                                               ; preds = %32
  br label %56

37:                                               ; preds = %32
  %38 = load %struct.page*, %struct.page** %6, align 8
  %39 = call i32 @clear_page_dirty_for_io(%struct.page* %38)
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %42, label %41

41:                                               ; preds = %37
  br label %56

42:                                               ; preds = %37
  %43 = load %struct.inode*, %struct.inode** %5, align 8
  %44 = load %struct.page*, %struct.page** %6, align 8
  %45 = call i32 @f2fs_write_inline_data(%struct.inode* %43, %struct.page* %44)
  store i32 %45, i32* %7, align 4
  %46 = load %struct.inode*, %struct.inode** %5, align 8
  %47 = call i32 @inode_dec_dirty_pages(%struct.inode* %46)
  %48 = load %struct.inode*, %struct.inode** %5, align 8
  %49 = call i32 @f2fs_remove_dirty_inode(%struct.inode* %48)
  %50 = load i32, i32* %7, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %55

52:                                               ; preds = %42
  %53 = load %struct.page*, %struct.page** %6, align 8
  %54 = call i32 @set_page_dirty(%struct.page* %53)
  br label %55

55:                                               ; preds = %52, %42
  br label %56

56:                                               ; preds = %55, %41, %36, %31
  %57 = load %struct.page*, %struct.page** %6, align 8
  %58 = call i32 @f2fs_put_page(%struct.page* %57, i32 1)
  br label %59

59:                                               ; preds = %56, %26
  %60 = load %struct.inode*, %struct.inode** %5, align 8
  %61 = call i32 @iput(%struct.inode* %60)
  br label %62

62:                                               ; preds = %59, %15
  ret void
}

declare dso_local %struct.inode* @ilookup(i32, i32) #1

declare dso_local %struct.page* @f2fs_pagecache_get_page(i32, i32, i32, i32) #1

declare dso_local i32 @PageUptodate(%struct.page*) #1

declare dso_local i32 @PageDirty(%struct.page*) #1

declare dso_local i32 @clear_page_dirty_for_io(%struct.page*) #1

declare dso_local i32 @f2fs_write_inline_data(%struct.inode*, %struct.page*) #1

declare dso_local i32 @inode_dec_dirty_pages(%struct.inode*) #1

declare dso_local i32 @f2fs_remove_dirty_inode(%struct.inode*) #1

declare dso_local i32 @set_page_dirty(%struct.page*) #1

declare dso_local i32 @f2fs_put_page(%struct.page*, i32) #1

declare dso_local i32 @iput(%struct.inode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
