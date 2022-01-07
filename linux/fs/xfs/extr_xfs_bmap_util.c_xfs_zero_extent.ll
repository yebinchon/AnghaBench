; ModuleID = '/home/carl/AnghaBench/linux/fs/xfs/extr_xfs_bmap_util.c_xfs_zero_extent.c'
source_filename = "/home/carl/AnghaBench/linux/fs/xfs/extr_xfs_bmap_util.c_xfs_zero_extent.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xfs_inode = type { %struct.xfs_mount* }
%struct.xfs_mount = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@GFP_NOFS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @xfs_zero_extent(%struct.xfs_inode* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.xfs_inode*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.xfs_mount*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.xfs_inode* %0, %struct.xfs_inode** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %10 = load %struct.xfs_inode*, %struct.xfs_inode** %4, align 8
  %11 = getelementptr inbounds %struct.xfs_inode, %struct.xfs_inode* %10, i32 0, i32 0
  %12 = load %struct.xfs_mount*, %struct.xfs_mount** %11, align 8
  store %struct.xfs_mount* %12, %struct.xfs_mount** %7, align 8
  %13 = load %struct.xfs_inode*, %struct.xfs_inode** %4, align 8
  %14 = load i32, i32* %5, align 4
  %15 = call i32 @xfs_fsb_to_db(%struct.xfs_inode* %13, i32 %14)
  store i32 %15, i32* %8, align 4
  %16 = load %struct.xfs_mount*, %struct.xfs_mount** %7, align 8
  %17 = load i32, i32* %8, align 4
  %18 = call i32 @XFS_BB_TO_FSBT(%struct.xfs_mount* %16, i32 %17)
  store i32 %18, i32* %9, align 4
  %19 = load %struct.xfs_inode*, %struct.xfs_inode** %4, align 8
  %20 = call i32 @VFS_I(%struct.xfs_inode* %19)
  %21 = call i32 @xfs_find_bdev_for_inode(i32 %20)
  %22 = load i32, i32* %9, align 4
  %23 = load %struct.xfs_mount*, %struct.xfs_mount** %7, align 8
  %24 = getelementptr inbounds %struct.xfs_mount, %struct.xfs_mount* %23, i32 0, i32 0
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = sub nsw i32 %27, 9
  %29 = shl i32 %22, %28
  %30 = load i32, i32* %6, align 4
  %31 = load %struct.xfs_mount*, %struct.xfs_mount** %7, align 8
  %32 = getelementptr inbounds %struct.xfs_mount, %struct.xfs_mount* %31, i32 0, i32 0
  %33 = load %struct.TYPE_2__*, %struct.TYPE_2__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = sub nsw i32 %35, 9
  %37 = shl i32 %30, %36
  %38 = load i32, i32* @GFP_NOFS, align 4
  %39 = call i32 @blkdev_issue_zeroout(i32 %21, i32 %29, i32 %37, i32 %38, i32 0)
  ret i32 %39
}

declare dso_local i32 @xfs_fsb_to_db(%struct.xfs_inode*, i32) #1

declare dso_local i32 @XFS_BB_TO_FSBT(%struct.xfs_mount*, i32) #1

declare dso_local i32 @blkdev_issue_zeroout(i32, i32, i32, i32, i32) #1

declare dso_local i32 @xfs_find_bdev_for_inode(i32) #1

declare dso_local i32 @VFS_I(%struct.xfs_inode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
