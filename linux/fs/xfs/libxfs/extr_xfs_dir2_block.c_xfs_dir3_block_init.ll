; ModuleID = '/home/carl/AnghaBench/linux/fs/xfs/libxfs/extr_xfs_dir2_block.c_xfs_dir3_block_init.c'
source_filename = "/home/carl/AnghaBench/linux/fs/xfs/libxfs/extr_xfs_dir2_block.c_xfs_dir3_block_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xfs_mount = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.xfs_trans = type { i32 }
%struct.xfs_buf = type { i32, i32*, %struct.xfs_dir3_blk_hdr* }
%struct.xfs_dir3_blk_hdr = type { i8*, i32, i8*, i8* }
%struct.xfs_inode = type { i32 }

@xfs_dir3_block_buf_ops = common dso_local global i32 0, align 4
@XFS_BLFT_DIR_BLOCK_BUF = common dso_local global i32 0, align 4
@XFS_DIR3_BLOCK_MAGIC = common dso_local global i32 0, align 4
@XFS_DIR2_BLOCK_MAGIC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.xfs_mount*, %struct.xfs_trans*, %struct.xfs_buf*, %struct.xfs_inode*)* @xfs_dir3_block_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xfs_dir3_block_init(%struct.xfs_mount* %0, %struct.xfs_trans* %1, %struct.xfs_buf* %2, %struct.xfs_inode* %3) #0 {
  %5 = alloca %struct.xfs_mount*, align 8
  %6 = alloca %struct.xfs_trans*, align 8
  %7 = alloca %struct.xfs_buf*, align 8
  %8 = alloca %struct.xfs_inode*, align 8
  %9 = alloca %struct.xfs_dir3_blk_hdr*, align 8
  store %struct.xfs_mount* %0, %struct.xfs_mount** %5, align 8
  store %struct.xfs_trans* %1, %struct.xfs_trans** %6, align 8
  store %struct.xfs_buf* %2, %struct.xfs_buf** %7, align 8
  store %struct.xfs_inode* %3, %struct.xfs_inode** %8, align 8
  %10 = load %struct.xfs_buf*, %struct.xfs_buf** %7, align 8
  %11 = getelementptr inbounds %struct.xfs_buf, %struct.xfs_buf* %10, i32 0, i32 2
  %12 = load %struct.xfs_dir3_blk_hdr*, %struct.xfs_dir3_blk_hdr** %11, align 8
  store %struct.xfs_dir3_blk_hdr* %12, %struct.xfs_dir3_blk_hdr** %9, align 8
  %13 = load %struct.xfs_buf*, %struct.xfs_buf** %7, align 8
  %14 = getelementptr inbounds %struct.xfs_buf, %struct.xfs_buf* %13, i32 0, i32 1
  store i32* @xfs_dir3_block_buf_ops, i32** %14, align 8
  %15 = load %struct.xfs_trans*, %struct.xfs_trans** %6, align 8
  %16 = load %struct.xfs_buf*, %struct.xfs_buf** %7, align 8
  %17 = load i32, i32* @XFS_BLFT_DIR_BLOCK_BUF, align 4
  %18 = call i32 @xfs_trans_buf_set_type(%struct.xfs_trans* %15, %struct.xfs_buf* %16, i32 %17)
  %19 = load %struct.xfs_mount*, %struct.xfs_mount** %5, align 8
  %20 = getelementptr inbounds %struct.xfs_mount, %struct.xfs_mount* %19, i32 0, i32 0
  %21 = call i64 @xfs_sb_version_hascrc(%struct.TYPE_2__* %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %48

23:                                               ; preds = %4
  %24 = load %struct.xfs_dir3_blk_hdr*, %struct.xfs_dir3_blk_hdr** %9, align 8
  %25 = call i32 @memset(%struct.xfs_dir3_blk_hdr* %24, i32 0, i32 32)
  %26 = load i32, i32* @XFS_DIR3_BLOCK_MAGIC, align 4
  %27 = call i8* @cpu_to_be32(i32 %26)
  %28 = load %struct.xfs_dir3_blk_hdr*, %struct.xfs_dir3_blk_hdr** %9, align 8
  %29 = getelementptr inbounds %struct.xfs_dir3_blk_hdr, %struct.xfs_dir3_blk_hdr* %28, i32 0, i32 0
  store i8* %27, i8** %29, align 8
  %30 = load %struct.xfs_buf*, %struct.xfs_buf** %7, align 8
  %31 = getelementptr inbounds %struct.xfs_buf, %struct.xfs_buf* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = call i8* @cpu_to_be64(i32 %32)
  %34 = load %struct.xfs_dir3_blk_hdr*, %struct.xfs_dir3_blk_hdr** %9, align 8
  %35 = getelementptr inbounds %struct.xfs_dir3_blk_hdr, %struct.xfs_dir3_blk_hdr* %34, i32 0, i32 3
  store i8* %33, i8** %35, align 8
  %36 = load %struct.xfs_inode*, %struct.xfs_inode** %8, align 8
  %37 = getelementptr inbounds %struct.xfs_inode, %struct.xfs_inode* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = call i8* @cpu_to_be64(i32 %38)
  %40 = load %struct.xfs_dir3_blk_hdr*, %struct.xfs_dir3_blk_hdr** %9, align 8
  %41 = getelementptr inbounds %struct.xfs_dir3_blk_hdr, %struct.xfs_dir3_blk_hdr* %40, i32 0, i32 2
  store i8* %39, i8** %41, align 8
  %42 = load %struct.xfs_dir3_blk_hdr*, %struct.xfs_dir3_blk_hdr** %9, align 8
  %43 = getelementptr inbounds %struct.xfs_dir3_blk_hdr, %struct.xfs_dir3_blk_hdr* %42, i32 0, i32 1
  %44 = load %struct.xfs_mount*, %struct.xfs_mount** %5, align 8
  %45 = getelementptr inbounds %struct.xfs_mount, %struct.xfs_mount* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 0
  %47 = call i32 @uuid_copy(i32* %43, i32* %46)
  br label %53

48:                                               ; preds = %4
  %49 = load i32, i32* @XFS_DIR2_BLOCK_MAGIC, align 4
  %50 = call i8* @cpu_to_be32(i32 %49)
  %51 = load %struct.xfs_dir3_blk_hdr*, %struct.xfs_dir3_blk_hdr** %9, align 8
  %52 = getelementptr inbounds %struct.xfs_dir3_blk_hdr, %struct.xfs_dir3_blk_hdr* %51, i32 0, i32 0
  store i8* %50, i8** %52, align 8
  br label %53

53:                                               ; preds = %48, %23
  ret void
}

declare dso_local i32 @xfs_trans_buf_set_type(%struct.xfs_trans*, %struct.xfs_buf*, i32) #1

declare dso_local i64 @xfs_sb_version_hascrc(%struct.TYPE_2__*) #1

declare dso_local i32 @memset(%struct.xfs_dir3_blk_hdr*, i32, i32) #1

declare dso_local i8* @cpu_to_be32(i32) #1

declare dso_local i8* @cpu_to_be64(i32) #1

declare dso_local i32 @uuid_copy(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
