; ModuleID = '/home/carl/AnghaBench/linux/fs/xfs/libxfs/extr_xfs_attr_leaf.c_xfs_attr_fork_remove.c'
source_filename = "/home/carl/AnghaBench/linux/fs/xfs/libxfs/extr_xfs_attr_leaf.c_xfs_attr_fork_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xfs_inode = type { i32*, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i32, i64 }
%struct.xfs_trans = type { i32 }

@XFS_ATTR_FORK = common dso_local global i32 0, align 4
@XFS_DINODE_FMT_EXTENTS = common dso_local global i32 0, align 4
@XFS_ILOG_CORE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @xfs_attr_fork_remove(%struct.xfs_inode* %0, %struct.xfs_trans* %1) #0 {
  %3 = alloca %struct.xfs_inode*, align 8
  %4 = alloca %struct.xfs_trans*, align 8
  store %struct.xfs_inode* %0, %struct.xfs_inode** %3, align 8
  store %struct.xfs_trans* %1, %struct.xfs_trans** %4, align 8
  %5 = load %struct.xfs_inode*, %struct.xfs_inode** %3, align 8
  %6 = load i32, i32* @XFS_ATTR_FORK, align 4
  %7 = call i32 @xfs_idestroy_fork(%struct.xfs_inode* %5, i32 %6)
  %8 = load %struct.xfs_inode*, %struct.xfs_inode** %3, align 8
  %9 = getelementptr inbounds %struct.xfs_inode, %struct.xfs_inode* %8, i32 0, i32 1
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 2
  store i64 0, i64* %10, align 8
  %11 = load i32, i32* @XFS_DINODE_FMT_EXTENTS, align 4
  %12 = load %struct.xfs_inode*, %struct.xfs_inode** %3, align 8
  %13 = getelementptr inbounds %struct.xfs_inode, %struct.xfs_inode* %12, i32 0, i32 1
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 1
  store i32 %11, i32* %14, align 8
  %15 = load %struct.xfs_inode*, %struct.xfs_inode** %3, align 8
  %16 = getelementptr inbounds %struct.xfs_inode, %struct.xfs_inode* %15, i32 0, i32 1
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = icmp eq i64 %18, 0
  %20 = zext i1 %19 to i32
  %21 = call i32 @ASSERT(i32 %20)
  %22 = load %struct.xfs_inode*, %struct.xfs_inode** %3, align 8
  %23 = getelementptr inbounds %struct.xfs_inode, %struct.xfs_inode* %22, i32 0, i32 0
  %24 = load i32*, i32** %23, align 8
  %25 = icmp eq i32* %24, null
  %26 = zext i1 %25 to i32
  %27 = call i32 @ASSERT(i32 %26)
  %28 = load %struct.xfs_trans*, %struct.xfs_trans** %4, align 8
  %29 = load %struct.xfs_inode*, %struct.xfs_inode** %3, align 8
  %30 = load i32, i32* @XFS_ILOG_CORE, align 4
  %31 = call i32 @xfs_trans_log_inode(%struct.xfs_trans* %28, %struct.xfs_inode* %29, i32 %30)
  ret void
}

declare dso_local i32 @xfs_idestroy_fork(%struct.xfs_inode*, i32) #1

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i32 @xfs_trans_log_inode(%struct.xfs_trans*, %struct.xfs_inode*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
