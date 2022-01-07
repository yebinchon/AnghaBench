; ModuleID = '/home/carl/AnghaBench/linux/fs/f2fs/extr_super.c_f2fs_inode_synced.c'
source_filename = "/home/carl/AnghaBench/linux/fs/f2fs/extr_super.c_f2fs_inode_synced.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.f2fs_sb_info = type { i32* }
%struct.TYPE_2__ = type { i32 }

@DIRTY_META = common dso_local global i64 0, align 8
@FI_DIRTY_INODE = common dso_local global i32 0, align 4
@F2FS_DIRTY_IMETA = common dso_local global i32 0, align 4
@FI_AUTO_RECOVER = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @f2fs_inode_synced(%struct.inode* %0) #0 {
  %2 = alloca %struct.inode*, align 8
  %3 = alloca %struct.f2fs_sb_info*, align 8
  store %struct.inode* %0, %struct.inode** %2, align 8
  %4 = load %struct.inode*, %struct.inode** %2, align 8
  %5 = call %struct.f2fs_sb_info* @F2FS_I_SB(%struct.inode* %4)
  store %struct.f2fs_sb_info* %5, %struct.f2fs_sb_info** %3, align 8
  %6 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %3, align 8
  %7 = getelementptr inbounds %struct.f2fs_sb_info, %struct.f2fs_sb_info* %6, i32 0, i32 0
  %8 = load i32*, i32** %7, align 8
  %9 = load i64, i64* @DIRTY_META, align 8
  %10 = getelementptr inbounds i32, i32* %8, i64 %9
  %11 = call i32 @spin_lock(i32* %10)
  %12 = load %struct.inode*, %struct.inode** %2, align 8
  %13 = load i32, i32* @FI_DIRTY_INODE, align 4
  %14 = call i32 @is_inode_flag_set(%struct.inode* %12, i32 %13)
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %23, label %16

16:                                               ; preds = %1
  %17 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %3, align 8
  %18 = getelementptr inbounds %struct.f2fs_sb_info, %struct.f2fs_sb_info* %17, i32 0, i32 0
  %19 = load i32*, i32** %18, align 8
  %20 = load i64, i64* @DIRTY_META, align 8
  %21 = getelementptr inbounds i32, i32* %19, i64 %20
  %22 = call i32 @spin_unlock(i32* %21)
  br label %54

23:                                               ; preds = %1
  %24 = load %struct.inode*, %struct.inode** %2, align 8
  %25 = call %struct.TYPE_2__* @F2FS_I(%struct.inode* %24)
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = call i32 @list_empty(i32* %26)
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %37, label %29

29:                                               ; preds = %23
  %30 = load %struct.inode*, %struct.inode** %2, align 8
  %31 = call %struct.TYPE_2__* @F2FS_I(%struct.inode* %30)
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  %33 = call i32 @list_del_init(i32* %32)
  %34 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %3, align 8
  %35 = load i32, i32* @F2FS_DIRTY_IMETA, align 4
  %36 = call i32 @dec_page_count(%struct.f2fs_sb_info* %34, i32 %35)
  br label %37

37:                                               ; preds = %29, %23
  %38 = load %struct.inode*, %struct.inode** %2, align 8
  %39 = load i32, i32* @FI_DIRTY_INODE, align 4
  %40 = call i32 @clear_inode_flag(%struct.inode* %38, i32 %39)
  %41 = load %struct.inode*, %struct.inode** %2, align 8
  %42 = load i32, i32* @FI_AUTO_RECOVER, align 4
  %43 = call i32 @clear_inode_flag(%struct.inode* %41, i32 %42)
  %44 = load %struct.inode*, %struct.inode** %2, align 8
  %45 = call %struct.f2fs_sb_info* @F2FS_I_SB(%struct.inode* %44)
  %46 = load i64, i64* @DIRTY_META, align 8
  %47 = call i32 @stat_dec_dirty_inode(%struct.f2fs_sb_info* %45, i64 %46)
  %48 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %3, align 8
  %49 = getelementptr inbounds %struct.f2fs_sb_info, %struct.f2fs_sb_info* %48, i32 0, i32 0
  %50 = load i32*, i32** %49, align 8
  %51 = load i64, i64* @DIRTY_META, align 8
  %52 = getelementptr inbounds i32, i32* %50, i64 %51
  %53 = call i32 @spin_unlock(i32* %52)
  br label %54

54:                                               ; preds = %37, %16
  ret void
}

declare dso_local %struct.f2fs_sb_info* @F2FS_I_SB(%struct.inode*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @is_inode_flag_set(%struct.inode*, i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @list_empty(i32*) #1

declare dso_local %struct.TYPE_2__* @F2FS_I(%struct.inode*) #1

declare dso_local i32 @list_del_init(i32*) #1

declare dso_local i32 @dec_page_count(%struct.f2fs_sb_info*, i32) #1

declare dso_local i32 @clear_inode_flag(%struct.inode*, i32) #1

declare dso_local i32 @stat_dec_dirty_inode(%struct.f2fs_sb_info*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
