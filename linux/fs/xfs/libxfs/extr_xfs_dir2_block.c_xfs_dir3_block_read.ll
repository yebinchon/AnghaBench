; ModuleID = '/home/carl/AnghaBench/linux/fs/xfs/libxfs/extr_xfs_dir2_block.c_xfs_dir3_block_read.c'
source_filename = "/home/carl/AnghaBench/linux/fs/xfs/libxfs/extr_xfs_dir2_block.c_xfs_dir3_block_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xfs_trans = type { i32 }
%struct.xfs_inode = type { %struct.xfs_mount* }
%struct.xfs_mount = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.xfs_buf = type { i32 }

@XFS_DATA_FORK = common dso_local global i32 0, align 4
@xfs_dir3_block_buf_ops = common dso_local global i32 0, align 4
@XFS_BLFT_DIR_BLOCK_BUF = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @xfs_dir3_block_read(%struct.xfs_trans* %0, %struct.xfs_inode* %1, %struct.xfs_buf** %2) #0 {
  %4 = alloca %struct.xfs_trans*, align 8
  %5 = alloca %struct.xfs_inode*, align 8
  %6 = alloca %struct.xfs_buf**, align 8
  %7 = alloca %struct.xfs_mount*, align 8
  %8 = alloca i32, align 4
  store %struct.xfs_trans* %0, %struct.xfs_trans** %4, align 8
  store %struct.xfs_inode* %1, %struct.xfs_inode** %5, align 8
  store %struct.xfs_buf** %2, %struct.xfs_buf*** %6, align 8
  %9 = load %struct.xfs_inode*, %struct.xfs_inode** %5, align 8
  %10 = getelementptr inbounds %struct.xfs_inode, %struct.xfs_inode* %9, i32 0, i32 0
  %11 = load %struct.xfs_mount*, %struct.xfs_mount** %10, align 8
  store %struct.xfs_mount* %11, %struct.xfs_mount** %7, align 8
  %12 = load %struct.xfs_trans*, %struct.xfs_trans** %4, align 8
  %13 = load %struct.xfs_inode*, %struct.xfs_inode** %5, align 8
  %14 = load %struct.xfs_mount*, %struct.xfs_mount** %7, align 8
  %15 = getelementptr inbounds %struct.xfs_mount, %struct.xfs_mount* %14, i32 0, i32 0
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.xfs_buf**, %struct.xfs_buf*** %6, align 8
  %20 = load i32, i32* @XFS_DATA_FORK, align 4
  %21 = call i32 @xfs_da_read_buf(%struct.xfs_trans* %12, %struct.xfs_inode* %13, i32 %18, i32 -1, %struct.xfs_buf** %19, i32 %20, i32* @xfs_dir3_block_buf_ops)
  store i32 %21, i32* %8, align 4
  %22 = load i32, i32* %8, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %37, label %24

24:                                               ; preds = %3
  %25 = load %struct.xfs_trans*, %struct.xfs_trans** %4, align 8
  %26 = icmp ne %struct.xfs_trans* %25, null
  br i1 %26, label %27, label %37

27:                                               ; preds = %24
  %28 = load %struct.xfs_buf**, %struct.xfs_buf*** %6, align 8
  %29 = load %struct.xfs_buf*, %struct.xfs_buf** %28, align 8
  %30 = icmp ne %struct.xfs_buf* %29, null
  br i1 %30, label %31, label %37

31:                                               ; preds = %27
  %32 = load %struct.xfs_trans*, %struct.xfs_trans** %4, align 8
  %33 = load %struct.xfs_buf**, %struct.xfs_buf*** %6, align 8
  %34 = load %struct.xfs_buf*, %struct.xfs_buf** %33, align 8
  %35 = load i32, i32* @XFS_BLFT_DIR_BLOCK_BUF, align 4
  %36 = call i32 @xfs_trans_buf_set_type(%struct.xfs_trans* %32, %struct.xfs_buf* %34, i32 %35)
  br label %37

37:                                               ; preds = %31, %27, %24, %3
  %38 = load i32, i32* %8, align 4
  ret i32 %38
}

declare dso_local i32 @xfs_da_read_buf(%struct.xfs_trans*, %struct.xfs_inode*, i32, i32, %struct.xfs_buf**, i32, i32*) #1

declare dso_local i32 @xfs_trans_buf_set_type(%struct.xfs_trans*, %struct.xfs_buf*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
