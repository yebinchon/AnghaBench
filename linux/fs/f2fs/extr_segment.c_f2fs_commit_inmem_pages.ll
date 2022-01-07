; ModuleID = '/home/carl/AnghaBench/linux/fs/f2fs/extr_segment.c_f2fs_commit_inmem_pages.c'
source_filename = "/home/carl/AnghaBench/linux/fs/f2fs/extr_segment.c_f2fs_commit_inmem_pages.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.f2fs_sb_info = type { i32 }
%struct.f2fs_inode_info = type { i32*, i32 }

@WRITE = common dso_local global i64 0, align 8
@FI_ATOMIC_COMMIT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @f2fs_commit_inmem_pages(%struct.inode* %0) #0 {
  %2 = alloca %struct.inode*, align 8
  %3 = alloca %struct.f2fs_sb_info*, align 8
  %4 = alloca %struct.f2fs_inode_info*, align 8
  %5 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %2, align 8
  %6 = load %struct.inode*, %struct.inode** %2, align 8
  %7 = call %struct.f2fs_sb_info* @F2FS_I_SB(%struct.inode* %6)
  store %struct.f2fs_sb_info* %7, %struct.f2fs_sb_info** %3, align 8
  %8 = load %struct.inode*, %struct.inode** %2, align 8
  %9 = call %struct.f2fs_inode_info* @F2FS_I(%struct.inode* %8)
  store %struct.f2fs_inode_info* %9, %struct.f2fs_inode_info** %4, align 8
  %10 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %3, align 8
  %11 = call i32 @f2fs_balance_fs(%struct.f2fs_sb_info* %10, i32 1)
  %12 = load %struct.f2fs_inode_info*, %struct.f2fs_inode_info** %4, align 8
  %13 = getelementptr inbounds %struct.f2fs_inode_info, %struct.f2fs_inode_info* %12, i32 0, i32 0
  %14 = load i32*, i32** %13, align 8
  %15 = load i64, i64* @WRITE, align 8
  %16 = getelementptr inbounds i32, i32* %14, i64 %15
  %17 = call i32 @down_write(i32* %16)
  %18 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %3, align 8
  %19 = call i32 @f2fs_lock_op(%struct.f2fs_sb_info* %18)
  %20 = load %struct.inode*, %struct.inode** %2, align 8
  %21 = load i32, i32* @FI_ATOMIC_COMMIT, align 4
  %22 = call i32 @set_inode_flag(%struct.inode* %20, i32 %21)
  %23 = load %struct.f2fs_inode_info*, %struct.f2fs_inode_info** %4, align 8
  %24 = getelementptr inbounds %struct.f2fs_inode_info, %struct.f2fs_inode_info* %23, i32 0, i32 1
  %25 = call i32 @mutex_lock(i32* %24)
  %26 = load %struct.inode*, %struct.inode** %2, align 8
  %27 = call i32 @__f2fs_commit_inmem_pages(%struct.inode* %26)
  store i32 %27, i32* %5, align 4
  %28 = load %struct.f2fs_inode_info*, %struct.f2fs_inode_info** %4, align 8
  %29 = getelementptr inbounds %struct.f2fs_inode_info, %struct.f2fs_inode_info* %28, i32 0, i32 1
  %30 = call i32 @mutex_unlock(i32* %29)
  %31 = load %struct.inode*, %struct.inode** %2, align 8
  %32 = load i32, i32* @FI_ATOMIC_COMMIT, align 4
  %33 = call i32 @clear_inode_flag(%struct.inode* %31, i32 %32)
  %34 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %3, align 8
  %35 = call i32 @f2fs_unlock_op(%struct.f2fs_sb_info* %34)
  %36 = load %struct.f2fs_inode_info*, %struct.f2fs_inode_info** %4, align 8
  %37 = getelementptr inbounds %struct.f2fs_inode_info, %struct.f2fs_inode_info* %36, i32 0, i32 0
  %38 = load i32*, i32** %37, align 8
  %39 = load i64, i64* @WRITE, align 8
  %40 = getelementptr inbounds i32, i32* %38, i64 %39
  %41 = call i32 @up_write(i32* %40)
  %42 = load i32, i32* %5, align 4
  ret i32 %42
}

declare dso_local %struct.f2fs_sb_info* @F2FS_I_SB(%struct.inode*) #1

declare dso_local %struct.f2fs_inode_info* @F2FS_I(%struct.inode*) #1

declare dso_local i32 @f2fs_balance_fs(%struct.f2fs_sb_info*, i32) #1

declare dso_local i32 @down_write(i32*) #1

declare dso_local i32 @f2fs_lock_op(%struct.f2fs_sb_info*) #1

declare dso_local i32 @set_inode_flag(%struct.inode*, i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @__f2fs_commit_inmem_pages(%struct.inode*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @clear_inode_flag(%struct.inode*, i32) #1

declare dso_local i32 @f2fs_unlock_op(%struct.f2fs_sb_info*) #1

declare dso_local i32 @up_write(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
