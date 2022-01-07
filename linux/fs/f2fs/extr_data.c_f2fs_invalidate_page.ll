; ModuleID = '/home/carl/AnghaBench/linux/fs/f2fs/extr_data.c_f2fs_invalidate_page.c'
source_filename = "/home/carl/AnghaBench/linux/fs/f2fs/extr_data.c_f2fs_invalidate_page.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.page = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.inode* }
%struct.inode = type { i64 }
%struct.f2fs_sb_info = type { i32 }

@PAGE_SIZE = common dso_local global i32 0, align 4
@F2FS_DIRTY_META = common dso_local global i32 0, align 4
@F2FS_DIRTY_NODES = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @f2fs_invalidate_page(%struct.page* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.page*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.inode*, align 8
  %8 = alloca %struct.f2fs_sb_info*, align 8
  store %struct.page* %0, %struct.page** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %9 = load %struct.page*, %struct.page** %4, align 8
  %10 = getelementptr inbounds %struct.page, %struct.page* %9, i32 0, i32 0
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load %struct.inode*, %struct.inode** %12, align 8
  store %struct.inode* %13, %struct.inode** %7, align 8
  %14 = load %struct.inode*, %struct.inode** %7, align 8
  %15 = call %struct.f2fs_sb_info* @F2FS_I_SB(%struct.inode* %14)
  store %struct.f2fs_sb_info* %15, %struct.f2fs_sb_info** %8, align 8
  %16 = load %struct.inode*, %struct.inode** %7, align 8
  %17 = getelementptr inbounds %struct.inode, %struct.inode* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %8, align 8
  %20 = call i64 @F2FS_ROOT_INO(%struct.f2fs_sb_info* %19)
  %21 = icmp sge i64 %18, %20
  br i1 %21, label %22, label %32

22:                                               ; preds = %3
  %23 = load i32, i32* %5, align 4
  %24 = load i32, i32* @PAGE_SIZE, align 4
  %25 = urem i32 %23, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %31, label %27

27:                                               ; preds = %22
  %28 = load i32, i32* %6, align 4
  %29 = load i32, i32* @PAGE_SIZE, align 4
  %30 = icmp ne i32 %28, %29
  br i1 %30, label %31, label %32

31:                                               ; preds = %27, %22
  br label %77

32:                                               ; preds = %27, %3
  %33 = load %struct.page*, %struct.page** %4, align 8
  %34 = call i64 @PageDirty(%struct.page* %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %65

36:                                               ; preds = %32
  %37 = load %struct.inode*, %struct.inode** %7, align 8
  %38 = getelementptr inbounds %struct.inode, %struct.inode* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %8, align 8
  %41 = call i64 @F2FS_META_INO(%struct.f2fs_sb_info* %40)
  %42 = icmp eq i64 %39, %41
  br i1 %42, label %43, label %47

43:                                               ; preds = %36
  %44 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %8, align 8
  %45 = load i32, i32* @F2FS_DIRTY_META, align 4
  %46 = call i32 @dec_page_count(%struct.f2fs_sb_info* %44, i32 %45)
  br label %64

47:                                               ; preds = %36
  %48 = load %struct.inode*, %struct.inode** %7, align 8
  %49 = getelementptr inbounds %struct.inode, %struct.inode* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %8, align 8
  %52 = call i64 @F2FS_NODE_INO(%struct.f2fs_sb_info* %51)
  %53 = icmp eq i64 %50, %52
  br i1 %53, label %54, label %58

54:                                               ; preds = %47
  %55 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %8, align 8
  %56 = load i32, i32* @F2FS_DIRTY_NODES, align 4
  %57 = call i32 @dec_page_count(%struct.f2fs_sb_info* %55, i32 %56)
  br label %63

58:                                               ; preds = %47
  %59 = load %struct.inode*, %struct.inode** %7, align 8
  %60 = call i32 @inode_dec_dirty_pages(%struct.inode* %59)
  %61 = load %struct.inode*, %struct.inode** %7, align 8
  %62 = call i32 @f2fs_remove_dirty_inode(%struct.inode* %61)
  br label %63

63:                                               ; preds = %58, %54
  br label %64

64:                                               ; preds = %63, %43
  br label %65

65:                                               ; preds = %64, %32
  %66 = load %struct.page*, %struct.page** %4, align 8
  %67 = call i32 @clear_cold_data(%struct.page* %66)
  %68 = load %struct.page*, %struct.page** %4, align 8
  %69 = call i64 @IS_ATOMIC_WRITTEN_PAGE(%struct.page* %68)
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %74

71:                                               ; preds = %65
  %72 = load %struct.inode*, %struct.inode** %7, align 8
  %73 = load %struct.page*, %struct.page** %4, align 8
  call void @f2fs_drop_inmem_page(%struct.inode* %72, %struct.page* %73)
  br label %77

74:                                               ; preds = %65
  %75 = load %struct.page*, %struct.page** %4, align 8
  %76 = call i32 @f2fs_clear_page_private(%struct.page* %75)
  br label %77

77:                                               ; preds = %74, %71, %31
  ret void
}

declare dso_local %struct.f2fs_sb_info* @F2FS_I_SB(%struct.inode*) #1

declare dso_local i64 @F2FS_ROOT_INO(%struct.f2fs_sb_info*) #1

declare dso_local i64 @PageDirty(%struct.page*) #1

declare dso_local i64 @F2FS_META_INO(%struct.f2fs_sb_info*) #1

declare dso_local i32 @dec_page_count(%struct.f2fs_sb_info*, i32) #1

declare dso_local i64 @F2FS_NODE_INO(%struct.f2fs_sb_info*) #1

declare dso_local i32 @inode_dec_dirty_pages(%struct.inode*) #1

declare dso_local i32 @f2fs_remove_dirty_inode(%struct.inode*) #1

declare dso_local i32 @clear_cold_data(%struct.page*) #1

declare dso_local i64 @IS_ATOMIC_WRITTEN_PAGE(%struct.page*) #1

declare dso_local void @f2fs_drop_inmem_page(%struct.inode*, %struct.page*) #1

declare dso_local i32 @f2fs_clear_page_private(%struct.page*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
