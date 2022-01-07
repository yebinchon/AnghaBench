; ModuleID = '/home/carl/AnghaBench/linux/fs/xfs/libxfs/extr_xfs_bmap.c_xfs_bmap_wants_extents.c'
source_filename = "/home/carl/AnghaBench/linux/fs/xfs/libxfs/extr_xfs_bmap.c_xfs_bmap_wants_extents.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xfs_inode = type { i32 }

@XFS_COW_FORK = common dso_local global i32 0, align 4
@XFS_DINODE_FMT_BTREE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.xfs_inode*, i32)* @xfs_bmap_wants_extents to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xfs_bmap_wants_extents(%struct.xfs_inode* %0, i32 %1) #0 {
  %3 = alloca %struct.xfs_inode*, align 8
  %4 = alloca i32, align 4
  store %struct.xfs_inode* %0, %struct.xfs_inode** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* %4, align 4
  %6 = load i32, i32* @XFS_COW_FORK, align 4
  %7 = icmp ne i32 %5, %6
  br i1 %7, label %8, label %22

8:                                                ; preds = %2
  %9 = load %struct.xfs_inode*, %struct.xfs_inode** %3, align 8
  %10 = load i32, i32* %4, align 4
  %11 = call i64 @XFS_IFORK_FORMAT(%struct.xfs_inode* %9, i32 %10)
  %12 = load i64, i64* @XFS_DINODE_FMT_BTREE, align 8
  %13 = icmp eq i64 %11, %12
  br i1 %13, label %14, label %22

14:                                               ; preds = %8
  %15 = load %struct.xfs_inode*, %struct.xfs_inode** %3, align 8
  %16 = load i32, i32* %4, align 4
  %17 = call i64 @XFS_IFORK_NEXTENTS(%struct.xfs_inode* %15, i32 %16)
  %18 = load %struct.xfs_inode*, %struct.xfs_inode** %3, align 8
  %19 = load i32, i32* %4, align 4
  %20 = call i64 @XFS_IFORK_MAXEXT(%struct.xfs_inode* %18, i32 %19)
  %21 = icmp sle i64 %17, %20
  br label %22

22:                                               ; preds = %14, %8, %2
  %23 = phi i1 [ false, %8 ], [ false, %2 ], [ %21, %14 ]
  %24 = zext i1 %23 to i32
  ret i32 %24
}

declare dso_local i64 @XFS_IFORK_FORMAT(%struct.xfs_inode*, i32) #1

declare dso_local i64 @XFS_IFORK_NEXTENTS(%struct.xfs_inode*, i32) #1

declare dso_local i64 @XFS_IFORK_MAXEXT(%struct.xfs_inode*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
