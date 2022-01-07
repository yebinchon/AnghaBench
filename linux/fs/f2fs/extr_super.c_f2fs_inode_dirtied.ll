; ModuleID = '/home/carl/AnghaBench/linux/fs/f2fs/extr_super.c_f2fs_inode_dirtied.c'
source_filename = "/home/carl/AnghaBench/linux/fs/f2fs/extr_super.c_f2fs_inode_dirtied.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.f2fs_sb_info = type { i32*, i32* }
%struct.TYPE_2__ = type { i32 }

@DIRTY_META = common dso_local global i64 0, align 8
@FI_DIRTY_INODE = common dso_local global i32 0, align 4
@F2FS_DIRTY_IMETA = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @f2fs_inode_dirtied(%struct.inode* %0, i32 %1) #0 {
  %3 = alloca %struct.inode*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.f2fs_sb_info*, align 8
  %6 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.inode*, %struct.inode** %3, align 8
  %8 = call %struct.f2fs_sb_info* @F2FS_I_SB(%struct.inode* %7)
  store %struct.f2fs_sb_info* %8, %struct.f2fs_sb_info** %5, align 8
  store i32 0, i32* %6, align 4
  %9 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %5, align 8
  %10 = getelementptr inbounds %struct.f2fs_sb_info, %struct.f2fs_sb_info* %9, i32 0, i32 0
  %11 = load i32*, i32** %10, align 8
  %12 = load i64, i64* @DIRTY_META, align 8
  %13 = getelementptr inbounds i32, i32* %11, i64 %12
  %14 = call i32 @spin_lock(i32* %13)
  %15 = load %struct.inode*, %struct.inode** %3, align 8
  %16 = load i32, i32* @FI_DIRTY_INODE, align 4
  %17 = call i64 @is_inode_flag_set(%struct.inode* %15, i32 %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %2
  store i32 1, i32* %6, align 4
  br label %27

20:                                               ; preds = %2
  %21 = load %struct.inode*, %struct.inode** %3, align 8
  %22 = load i32, i32* @FI_DIRTY_INODE, align 4
  %23 = call i32 @set_inode_flag(%struct.inode* %21, i32 %22)
  %24 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %5, align 8
  %25 = load i64, i64* @DIRTY_META, align 8
  %26 = call i32 @stat_inc_dirty_inode(%struct.f2fs_sb_info* %24, i64 %25)
  br label %27

27:                                               ; preds = %20, %19
  %28 = load i32, i32* %4, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %49

30:                                               ; preds = %27
  %31 = load %struct.inode*, %struct.inode** %3, align 8
  %32 = call %struct.TYPE_2__* @F2FS_I(%struct.inode* %31)
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  %34 = call i64 @list_empty(i32* %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %49

36:                                               ; preds = %30
  %37 = load %struct.inode*, %struct.inode** %3, align 8
  %38 = call %struct.TYPE_2__* @F2FS_I(%struct.inode* %37)
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 0
  %40 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %5, align 8
  %41 = getelementptr inbounds %struct.f2fs_sb_info, %struct.f2fs_sb_info* %40, i32 0, i32 1
  %42 = load i32*, i32** %41, align 8
  %43 = load i64, i64* @DIRTY_META, align 8
  %44 = getelementptr inbounds i32, i32* %42, i64 %43
  %45 = call i32 @list_add_tail(i32* %39, i32* %44)
  %46 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %5, align 8
  %47 = load i32, i32* @F2FS_DIRTY_IMETA, align 4
  %48 = call i32 @inc_page_count(%struct.f2fs_sb_info* %46, i32 %47)
  br label %49

49:                                               ; preds = %36, %30, %27
  %50 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %5, align 8
  %51 = getelementptr inbounds %struct.f2fs_sb_info, %struct.f2fs_sb_info* %50, i32 0, i32 0
  %52 = load i32*, i32** %51, align 8
  %53 = load i64, i64* @DIRTY_META, align 8
  %54 = getelementptr inbounds i32, i32* %52, i64 %53
  %55 = call i32 @spin_unlock(i32* %54)
  %56 = load i32, i32* %6, align 4
  ret i32 %56
}

declare dso_local %struct.f2fs_sb_info* @F2FS_I_SB(%struct.inode*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i64 @is_inode_flag_set(%struct.inode*, i32) #1

declare dso_local i32 @set_inode_flag(%struct.inode*, i32) #1

declare dso_local i32 @stat_inc_dirty_inode(%struct.f2fs_sb_info*, i64) #1

declare dso_local i64 @list_empty(i32*) #1

declare dso_local %struct.TYPE_2__* @F2FS_I(%struct.inode*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @inc_page_count(%struct.f2fs_sb_info*, i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
