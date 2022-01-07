; ModuleID = '/home/carl/AnghaBench/linux/fs/f2fs/extr_extent_cache.c_f2fs_drop_extent_tree.c'
source_filename = "/home/carl/AnghaBench/linux/fs/f2fs/extr_extent_cache.c_f2fs_drop_extent_tree.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.f2fs_sb_info = type { i32 }
%struct.extent_tree = type { i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64 }
%struct.TYPE_4__ = type { %struct.extent_tree* }

@FI_NO_EXTENT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @f2fs_drop_extent_tree(%struct.inode* %0) #0 {
  %2 = alloca %struct.inode*, align 8
  %3 = alloca %struct.f2fs_sb_info*, align 8
  %4 = alloca %struct.extent_tree*, align 8
  %5 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %2, align 8
  %6 = load %struct.inode*, %struct.inode** %2, align 8
  %7 = call %struct.f2fs_sb_info* @F2FS_I_SB(%struct.inode* %6)
  store %struct.f2fs_sb_info* %7, %struct.f2fs_sb_info** %3, align 8
  %8 = load %struct.inode*, %struct.inode** %2, align 8
  %9 = call %struct.TYPE_4__* @F2FS_I(%struct.inode* %8)
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 0
  %11 = load %struct.extent_tree*, %struct.extent_tree** %10, align 8
  store %struct.extent_tree* %11, %struct.extent_tree** %4, align 8
  store i32 0, i32* %5, align 4
  %12 = load %struct.inode*, %struct.inode** %2, align 8
  %13 = call i32 @f2fs_may_extent_tree(%struct.inode* %12)
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %16, label %15

15:                                               ; preds = %1
  br label %44

16:                                               ; preds = %1
  %17 = load %struct.inode*, %struct.inode** %2, align 8
  %18 = load i32, i32* @FI_NO_EXTENT, align 4
  %19 = call i32 @set_inode_flag(%struct.inode* %17, i32 %18)
  %20 = load %struct.extent_tree*, %struct.extent_tree** %4, align 8
  %21 = getelementptr inbounds %struct.extent_tree, %struct.extent_tree* %20, i32 0, i32 0
  %22 = call i32 @write_lock(i32* %21)
  %23 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %3, align 8
  %24 = load %struct.extent_tree*, %struct.extent_tree** %4, align 8
  %25 = call i32 @__free_extent_tree(%struct.f2fs_sb_info* %23, %struct.extent_tree* %24)
  %26 = load %struct.extent_tree*, %struct.extent_tree** %4, align 8
  %27 = getelementptr inbounds %struct.extent_tree, %struct.extent_tree* %26, i32 0, i32 1
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %35

31:                                               ; preds = %16
  %32 = load %struct.extent_tree*, %struct.extent_tree** %4, align 8
  %33 = getelementptr inbounds %struct.extent_tree, %struct.extent_tree* %32, i32 0, i32 1
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 0
  store i64 0, i64* %34, align 8
  store i32 1, i32* %5, align 4
  br label %35

35:                                               ; preds = %31, %16
  %36 = load %struct.extent_tree*, %struct.extent_tree** %4, align 8
  %37 = getelementptr inbounds %struct.extent_tree, %struct.extent_tree* %36, i32 0, i32 0
  %38 = call i32 @write_unlock(i32* %37)
  %39 = load i32, i32* %5, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %44

41:                                               ; preds = %35
  %42 = load %struct.inode*, %struct.inode** %2, align 8
  %43 = call i32 @f2fs_mark_inode_dirty_sync(%struct.inode* %42, i32 1)
  br label %44

44:                                               ; preds = %15, %41, %35
  ret void
}

declare dso_local %struct.f2fs_sb_info* @F2FS_I_SB(%struct.inode*) #1

declare dso_local %struct.TYPE_4__* @F2FS_I(%struct.inode*) #1

declare dso_local i32 @f2fs_may_extent_tree(%struct.inode*) #1

declare dso_local i32 @set_inode_flag(%struct.inode*, i32) #1

declare dso_local i32 @write_lock(i32*) #1

declare dso_local i32 @__free_extent_tree(%struct.f2fs_sb_info*, %struct.extent_tree*) #1

declare dso_local i32 @write_unlock(i32*) #1

declare dso_local i32 @f2fs_mark_inode_dirty_sync(%struct.inode*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
